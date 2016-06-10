import os
import shutil

def copy_folder(src, dst):
	try:
		shutil.copytree(src, dst)
	except OSError as exc:
		if exc.errno == errno.ENOTDIR:
			shutil.copy(src, dst)
		else: raise

tempPath = '../release/ARCMF.VR'
if not os.path.exists(tempPath):
    os.makedirs(tempPath)

copy_folder("../ARCMF.VR", "{}/ARCMF.VR".format(tempPath))

shutil.make_archive('../release/ARCMF', 'zip', tempPath)

shutil.rmtree(tempPath)