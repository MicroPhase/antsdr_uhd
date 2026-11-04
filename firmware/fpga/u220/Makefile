.PHONY: all project bitstream export export-current-project-scripts rebuild clean

all: bitstream

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
	rm -rf antsdr_u220
	rm -f vivado*
	rm -rf NA
