import os
import re
import glob
from shutil import copyfile

for filename in glob.iglob('../ARCMF.VR/**/*.sqf', recursive=True):
	with open(filename, 'r+') as script:
		lines = script.readlines()
		script.seek(0)
		script.truncate()
		for line in lines:
			# tabs = line.count("\t")
			m_if = re.search('if\(([\s\S]*)\)', line)
			
			if m_if not None:
				print(line)