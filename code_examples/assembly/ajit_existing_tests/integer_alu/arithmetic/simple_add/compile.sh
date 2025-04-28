makeLinkerScript.py -t 0x0 -d 0x1000 -o LinkerScript.lnk
#compileToSparc.ForValidation.py  -E add2.elf  -H add2.hex -O add2.objdump -s add2.s  -L LinkerScript.lnk -V add2.vars -M add2.mmap
compileToSparcUclibc.py -N add2 -s add2.s  -L LinkerScript.lnk  -W ./
