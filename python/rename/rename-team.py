import os
import sys

os.chdir(sys.argv[1])

i = 0

for filename in os.listdir("."):
	os.rename(filename, sys.argv[2]+"{0:02d}".fotmat(i)
	+os.path.splitext(filename)[1])
i += 1
