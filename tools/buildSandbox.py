import os
import re
import subprocess
import shutil, errno
from shutil import copyfile

def copy_folder(src, dst):
	try:
		shutil.copytree(src, dst)
	except OSError as exc:
		if exc.errno == errno.ENOTDIR:
			shutil.copy(src, dst)
		else: raise

sandbox_dir = "../build/ARCMF_Sandbox.VR"
orig_sqm = "../build/ARCMF_Sandbox.VR/mission.sqm"
new_sqm = "../build/ARCMF_Sandbox.VR/new_mission.sqm"
orig_ext = "../build/ARCMF_Sandbox.VR/description.ext"
new_ext = "../build/ARCMF_Sandbox.VR/new_description.ext"		

if os.path.isdir(sandbox_dir):
	shutil.rmtree(sandbox_dir)
	
copy_folder("../ARCMF.VR", sandbox_dir)

copyfile(orig_ext, new_ext)
with open(new_ext) as infile, open(orig_ext, 'w') as outfile:
	for line in infile:
		m_sandbox = re.match(r'^\tsandbox\s=\s0;', line, re.I)
		if m_sandbox:
			p = re.sub(r'^\tsandbox\s=\s0;', '\tsandbox = 1;', line)
			outfile.write(p)
		else:
			m_name = re.match(r'^onLoadName\s=\s"ARCMF";', line, re.I)
			if m_name:
				p = re.sub(r'^onLoadName\s=\s"ARCMF";', 'onLoadName = "ARCOMM Sandbox";', line)
				outfile.write(p)
			else:
				m_respawn = re.match(r'^respawn\s=\s4;', line, re.I)
				if m_respawn:
					p = re.sub(r'^respawn\s=\s4;', 'respawn = 3;', line)
					outfile.write(p)
				else:
					m_templates = re.match(r'^respawnTemplates\[\]\s=\s{"Seagull","f_spectator"};', line, re.I)
					if m_templates:
						p = re.sub(r'^respawnTemplates\[\]\s=\s{"Seagull","f_spectator"};', 'respawnTemplates[] = {"MenuPosition"};', line)
						outfile.write(p)
					else:
						outfile.write(line)

copyfile(orig_sqm, new_sqm)
with open(new_sqm) as infile, open(orig_sqm, 'w') as outfile:
	for line in infile:
		m_name = re.match(r'^\t\tbriefingName="ARCMF";', line, re.I)
		if m_name:
			p = re.sub(r'^\t\tbriefingName="ARCMF";', '\t\tbriefingName="ARCOMM Sandbox";', line)
			outfile.write(p)
		else:
			outfile.write(line)

os.remove(new_ext);
os.remove(new_sqm);

terrains = ["utes","Sara","fallujah","Chernarus","Chernarus_Summer","Caribou","Takistan","Zargabad","Desert_E","ProvingGrounds_PMC","Shapur_BAF","mbg_celle2","Stratis","bozcaada","Lost","LostW","Kunduz","Altis","lingor3","panthera3","vt5","mske"]

for t in terrains:
	try:
		subprocess.check_output([
			"makepbo",
			"-JNP",
			"-{}".format( os.path.abspath(sandbox_dir) ),
			t,
			"ARCMF_Sandbox.{}.pbo".format(t)
		])
	except:
		print("Failed to make ARCMF_Sandbox.{}.pbo".format(t))
	else:
		print("Successfully made ARCMF_Sandbox.{}.pbo".format(t))
