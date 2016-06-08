import shutil

build_dir = "../release"
arcmf_dir = "../ARCMF.VR"
with open('../ARCMF.VR/version.txt') as v: version = v.read()

shutil.make_archive("{}/ARCMF".format(build_dir), 'zip', arcmf_dir)