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
	rm -rf vivado artifacts .Xil
	rm -f vivado*.log vivado*.jou
