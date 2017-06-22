import sys
import os
import re
import subprocess
import shutil, errno
import glob
from shutil import copyfile
from subprocess import call

def copy_folder(src, dst):
	try:
		shutil.copytree(src, dst)
	except OSError as exc:
		if exc.errno == errno.ENOTDIR:
			shutil.copy(src, dst)
		else: raise

build_dir = "../build"
sandbox_dir = "../build/ARCMF_Sandbox.VR"
orig_sqm = "../build/ARCMF_Sandbox.VR/mission.sqm"
new_sqm = "../build/ARCMF_Sandbox.VR/new_mission.sqm"
orig_ext = "../build/ARCMF_Sandbox.VR/description.ext"
new_ext = "../build/ARCMF_Sandbox.VR/new_description.ext"
with open('../ARCMF.VR/version.txt') as v: version = v.read().strip()

if os.path.isdir(sandbox_dir):
	shutil.rmtree(sandbox_dir)

copy_folder("../ARCMF.VR", sandbox_dir)

copyfile(orig_ext, new_ext)
with open(new_ext) as infile, open(orig_ext, 'w') as outfile:
	for line in infile:
		if re.match(r'^    sandbox\s=\s0;', line, re.I):
			outfile.write(re.sub(r'^    sandbox\s=\s0;', '    sandbox = 1;', line))
		else:
			if re.match(r'^onLoadName\s=\s"ARCMF";', line, re.I):
				outfile.write(re.sub(r'^onLoadName\s=\s"ARCMF";', 'onLoadName = "Sandbox {}";'.format(version), line))
			else:
				if re.match(r'^onLoadMission\s=\s"ARCOMM Mission Framework\.";', line, re.I):
					outfile.write(re.sub(r'^onLoadMission\s=\s"ARCOMM Mission Framework\.";', 'onLoadMission = "";', line))
				else:
					if re.match(r'^respawn\s=\s1;', line, re.I):
						outfile.write(re.sub(r'^respawn\s=\s1;', 'respawn = 3;', line))
					else:
						if re.match(r'^respawnTemplates\[\]\s=\s{"Seagull","f_spectator"};', line, re.I):
							outfile.write(re.sub(r'^respawnTemplates\[\]\s=\s{"Seagull","f_spectator"};', 'respawnTemplates[] = {"MenuPosition"};', line))
						else:
							outfile.write(line)

copyfile(orig_sqm, new_sqm)
with open(new_sqm) as infile, open(orig_sqm, 'w') as outfile:
	for line in infile:
		if re.match(r'^\t\tbriefingName="ARCMF";', line, re.I):
			outfile.write(re.sub(r'^\t\tbriefingName="ARCMF";', '\t\tbriefingName="Sandbox {}";'.format(version), line))
		else:
			outfile.write(line)

os.remove(new_ext)
os.remove(new_sqm)

call(["git", "clone", "https://github.com/ARCOMM/Loadouts.git"])

configStr = "class CfgSandboxThemes {"
paramStr = 'class arc_param_theme {title = "Loadout Preset";'
paramValues = "values[] = {0"
paramTexts = 'texts[] = {"Default"'
paramCode = "code = ""arc_param_theme = ['Default'"
loadoutCounter = 1

for fname in glob.glob("Loadouts/**/*.sqf"):
	fileName = os.path.splitext(os.path.basename(fname))[0]
	newFilePath = "{0}/f/themes/{1}/{1}.sqf".format(sandbox_dir, fileName)
	os.mkdir("{0}/f/themes/{1}".format(sandbox_dir, fileName))
	copyfile(fname, newFilePath)

	with open(newFilePath, "r+") as f:
		s = f.read()
		f.seek(0)
		f.write("params ['_unit', '_typeOfUnit'];\nthis = _unit;\n" + s)
		f.close()

	configStr += '{0} = "f\\themes\{0}\{0}.sqf";'.format(fileName)
	paramValues += ',{0}'.format(loadoutCounter)
	paramTexts += ', "{0}"'.format(fileName)
	paramCode += ", '{0}'".format(fileName)

	loadoutCounter += 1

paramValues += "};"
paramTexts += "};default = 0;"
paramCode += "] select %1"
configStr += "};"
paramStr += paramValues
paramStr += paramTexts
paramStr += paramCode
paramStr += "};"

with open("{0}/f/themes/config.hpp".format(sandbox_dir),'w') as f:
    f.write(configStr)

with open("{0}/f/themes/param.hpp".format(sandbox_dir),'w') as f:
    f.write(paramStr)

for t in ["abel","Altis","Bootcamp_ACR","Bozcaada","cain","Chernarus","Chernarus_Summer","Desert_E","Desert_Island","eden","fallujah","FDF_Isle1_a","IsolaDiCapraia","mbg_celle2","MCN_Aliabad","namalsk","noe","Porto","ProvingGrounds_PMC","Sara","Shapur_BAF","Stratis","Takistan","Tanoa","Thirsk","ThirskW","torabora","utes","VR","vt5","WL_WRoute191","Woodland_ACR","Zargabad","Caribou","pja310","pja314","lythium","fata","xcam_taunus","Malden"]:
	try:
		subprocess.check_output([
			"makepbo",
			"-JNP",
			"{}".format(os.path.abspath(sandbox_dir)),
			"{}/Sandbox.{}.pbo".format(build_dir, t)
		], stderr=subprocess.STDOUT)
	except:
		print("Failed to make Sandbox_{}.{}.pbo".format(version, t))
	else:
		print("Successfully made Sandbox_{}.{}.pbo".format(version, t))

if os.path.isdir(sandbox_dir):
	shutil.rmtree(sandbox_dir)
