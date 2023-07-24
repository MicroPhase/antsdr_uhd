.PHONY: all clean 
TARGET ?= t310
HDF_DIR = $(PWD)/antsdr_$(TARGET)/antsdr_$(TARGET).sdk/
all : 

ifeq ($(wildcard $(HDF_DIR)/system_top.hdf), )
	vivado -mode batch -source antsdr_$(TARGET).tcl
else
	@echo $(HDF_DIR)
	@echo "hdf exist"
endif

clean : 
	rm -rf antsdr_$(TARGET)
	rm -rf bd/*_bd
	rm -rf bd/pl_dram_buffer
	rm -f vivado*
	rm -rf NA