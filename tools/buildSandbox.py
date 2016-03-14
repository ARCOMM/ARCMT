import re
import shutil, errno

def copy_folder(src, dst):
	try:
		shutil.copytree(src, dst)
	except OSError as exc:
		if exc.errno == errno.ENOTDIR:
			shutil.copy(src, dst)
		else: raise
		
copy_folder("../ARCMF.VR", "../build/ARCMF_Sandbox.VR")

# Copy ARCMF folder
# Rename folder
# Edit description.ext and rename values
# Edit mission.sqm and rename values
# Package up mission in PBO