import re
import os
from shutil import copyfile

copyfile("../ARCMF.VR/mission.sqm", "../ARCMF.VR/clean_mission.sqm")
with open('../ARCMF.VR/clean_mission.sqm') as infile, open('../ARCMF.VR/mission.sqm', 'w') as outfile:
	i = 0
	n = 2
	for line in infile:
		if re.match(r'^\t\tclass Item(.+)', line, re.I):
			outfile.write(re.sub(r'^\t\tclass Item(.+)', "\t\tclass Item" + str(i), line))
			i += 1
		else:
			if re.match(r'^[\s]+id=(.+);', line, re.I):
				outfile.write(re.sub(r'^[\s]+id=(.+);', "id=" + str(n) + ";", line))
				n += 2
			else:
				outfile.write(line)

os.remove("../ARCMF.VR/clean_mission.sqm");