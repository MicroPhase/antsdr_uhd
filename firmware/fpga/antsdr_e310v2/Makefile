.PHONY: all clean 
TARGET ?= e310v2
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
	rm -rf bd/$(TARGET)_ps_bd
	rm -f vivado*
	rm -rf NA