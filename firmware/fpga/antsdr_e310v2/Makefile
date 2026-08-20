.PHONY: all project bitstream export export-current-project-scripts rebuild clean

PROJECT_FILE := $(CURDIR)/vivado/project/antsdr_e310v2/antsdr_e310v2.xpr
ARTIFACT_DIR := $(CURDIR)/artifacts
HDF_CANDIDATES := $(ARTIFACT_DIR)/system_top.hdf \
	$(CURDIR)/antsdr_e310v2/antsdr_e310v2.sdk/system_top.hdf \
	$(CURDIR)/antsdr_e310v2/antsdr_e310v2.sdk/antsdr_e310v2.hdf
HDF := $(shell ls -t $(HDF_CANDIDATES) 2>/dev/null | head -n 1)

all:
ifeq ($(HDF),)
	./scripts/build_bitstream.sh
else
	@echo "Using existing $(HDF)"
endif

project:
	./scripts/recreate_vivado_project.sh

bitstream:
	./scripts/build_bitstream.sh

export:
	./scripts/export_artifacts.sh

export-current-project-scripts:
	./scripts/export_current_project_scripts.sh

rebuild: project
	./scripts/build_bitstream.sh

clean:
	rm -rf vivado artifacts
	rm -rf antsdr_e310v2
	rm -rf bd/$(notdir $(basename $(wildcard bd/*_ps_bd.tcl)))
	rm -f vivado*
	rm -rf NA
