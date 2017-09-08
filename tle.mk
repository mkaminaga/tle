﻿# makefile
# date 2017-09-07
# Copyright 2017 Mamoru kaminaga
CC = C:\"Program Files (x86)"\"Microsoft Visual Studio"\2017\Community\VC\Tools\MSVC\14.11.25503\bin\HostX86\x86\cl.exe
LIB = C:\"Program Files (x86)"\"Microsoft Visual Studio"\2017\Community\VC\Tools\MSVC\14.11.25503\bin\HostX86\x86\lib.exe
OUTDIR = build
TARGET = tle.lib
SRC = tle.cc
OBJ = $(OUTDIR)/tle.obj
CCFLAGS = /W4 /Zi /O2 /MT /EHsc /D"WIN32" /D"NODEBUG" /D"_LIB" /D"_UNICODE"\
	/D"UNICODE" /D"NOMINMAX=0x0800" /Fo"$(OUTDIR)\\"

$(TARGET): $(OBJ)
	$(LIB) /OUT:$(TARGET) $(OBJ)

.cc{$(OUTDIR)}.obj:
	$(CC) $(CCFLAGS) /c $<