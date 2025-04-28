makeLinkerScript.py -t 0x0 -d 0x1000 -o LinkerScript.lnk
compileToSparc.ForValidation.py  -E ADD.elf  -H ADD.hex -O ADD.objdump -s ADD.s  -L LinkerScript.lnk -V ADD.vars -M ADD.mmap
#compileToSparcUclibc.py -N ADD -s ADD.s  -L LinkerScript.lnk  -W ./
