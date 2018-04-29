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
with open('../ARCMF.VR/version.txt') as v: version = v.read().strip()

if os.path.isdir(sandbox_dir):
	shutil.rmtree(sandbox_dir)

copy_folder("../ARCMF.VR", sandbox_dir)
shutil.copy("description.ext", sandbox_dir)

for t in ["abel","Altis","Bootcamp_ACR","Bozcaada","cain","Chernarus","Chernarus_Summer","Desert_E","Desert_Island","eden","FDF_Isle1_a","mbg_celle2","noe","Porto","ProvingGrounds_PMC","Sara","Shapur_BAF","Stratis","Takistan","Tanoa","Thirsk","ThirskW","utes","VR","WL_WRoute191","Woodland_ACR","Zargabad","Caribou","fata","Malden","ruha"]:
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
