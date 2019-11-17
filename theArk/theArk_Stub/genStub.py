from os import system, path, getcwd
import subprocess

mingwPath = 'C:\\mingw\\mingw32\\bin\\' 
gccPath = path.join(mingwPath, 'g++')
objCopyPath = path.join(mingwPath, 'objcopy')
stubFile = path.join(getcwd(), 'stub.cpp')

out_AsmScriptFile = path.join(getcwd(), 'asm.s')
out_ObjectFile = path.join(getcwd(), 'asm.o')
out_NativeBinaryRaw = path.join(getcwd(), 'asm.bin')
shellCmd = (f'{gccPath} {stubFile} -o {out_AsmScriptFile} \
	-fno-asynchronous-unwind-tables \
	-ffunction-sections \
	-S -Wa,-mintel \
	-falign-functions=1 -m32')
subprocess.call(shellCmd, shell=True, cwd=mingwPath)
shellCmd = (f'{gccPath} -c {out_AsmScriptFile} -o {out_ObjectFile} \
	-fno-asynchronous-unwind-tables \
	-ffunction-sections \
	-s -Wa,-mintel \
	-falign-functions=1')
subprocess.call(shellCmd, shell=True, cwd=mingwPath)

shellCmd = (f'{objCopyPath} -O binary -j shell {out_ObjectFile} {out_NativeBinaryRaw}')
subprocess.call(shellCmd, shell=True, cwd=mingwPath)

rawBin = open('asm.bin', 'rb').read()
print( ', '.join([ '0x%.2x' % c for c in rawBin  ]) )