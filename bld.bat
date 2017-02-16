@echo off
yasm -DBIN -fbin s4x.asm -os4x.bin
yasm -fwin32 s4x.asm -os4x.obj
cl /nologo /O2 /Os /GS- /c /Fa sm4.c
jwasm -nologo -bin sm4.asm
cl /nologo /DUSE_ASM test.c sm4.c s4x.obj