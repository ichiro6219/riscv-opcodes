SHELL := /bin/sh

ISASIM_H := ../riscv-isa-sim/riscv/encoding.h
PK_H := ../riscv-pk/machine/encoding.h
ENV_H := ../riscv-tests/env/encoding.h
OPENOCD_H := ../riscv-openocd/src/target/riscv/encoding.h

ALL_REAL_ILEN32_OPCODES := opcodes-rv32i opcodes-rv64i opcodes-rv32m opcodes-rv64m opcodes-rv32a opcodes-rv64a opcodes-rv32h opcodes-rv64h opcodes-rv32f opcodes-rv64f opcodes-rv32d opcodes-rv64d opcodes-rv32q opcodes-rv64q opcodes-rv32b opcodes-rv64b opcodes-system opcodes-rv32zfh opcodes-rv32d-zfh opcodes-rv32q-zfh opcodes-rv64zfh opcodes-rvk opcodes-rv32k opcodes-rv64k
ALL_REAL_OPCODES := $(ALL_REAL_ILEN32_OPCODES) opcodes-rvc opcodes-rv32c opcodes-rv64c opcodes-custom opcodes-rvv

ALL_OPCODES := opcodes-pseudo $(ALL_REAL_OPCODES) opcodes-rvv-pseudo

install: $(ISASIM_H) $(PK_H) $(ENV_H) $(OPENOCD_H) inst.chisel instr-table.tex priv-instr-table.tex

$(ISASIM_H) $(PK_H) $(ENV_H) $(OPENOCD_H): $(ALL_OPCODES) parse_opcodes encoding.h
	echo "/*" > $@
	echo " * This file is auto-generated by running 'make $@' in" >> $@
	echo " * https://github.com/riscv/riscv-opcodes (`git log -1 --format="format:%h"`)" >> $@
	echo " */" >> $@
	echo >> $@
	cat encoding.h >> $@
	cat $(ALL_OPCODES) | python ./parse_opcodes -c >> $@

inst.chisel: $(ALL_OPCODES) parse_opcodes
	cat $(ALL_OPCODES) | ./parse_opcodes -chisel > $@

inst.go: $(ALL_REAL_ILEN32_OPCODES) parse_opcodes
	cat $(ALL_REAL_ILEN32_OPCODES) | ./parse_opcodes -go > $@

inst.rs: $(ALL_OPCODES) parse_opcodes
	cat $(ALL_OPCODES) | ./parse_opcodes -rust > $@

inst.sverilog: $(ALL_OPCODES) parse_opcodes
	cat $(ALL_OPCODES) | ./parse_opcodes -sverilog > $@

instr-table.tex: $(ALL_OPCODES) parse_opcodes
	cat $(ALL_OPCODES) | ./parse_opcodes -tex > $@

priv-instr-table.tex: $(ALL_OPCODES) parse_opcodes
	cat $(ALL_OPCODES) | ./parse_opcodes -privtex > $@

.PHONY : install
