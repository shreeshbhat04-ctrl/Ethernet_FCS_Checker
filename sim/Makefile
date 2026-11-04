
SIM ?= icarus
TOPLEVEL_LANG ?= verilog
SIM_DIR    := $(patsubst %/,%,$(dir $(abspath $(firstword $(MAKEFILE_LIST)))))
PROJ_ROOT  := $(abspath $(SIM_DIR)/..)
SRC_DIR    = $(PROJ_ROOT)/rtl
RUN_DIR    = $(PROJ_ROOT)/openlane/runs/RUN_2026-11-01_13-16-05


ifeq ($(GATES),yes)
  
  COMPILE_ARGS += -DGL_TEST -DFUNCTIONAL

  SKY130_PRIMITIVES = $(PROJ_ROOT)/primitives.v
  SKY130_CELLS      = $(PROJ_ROOT)/sky130_fd_sc_hd.v
  NETLIST           = $(RUN_DIR)/final/nl/ethernet_fcs_checker.nl.v

  VERILOG_SOURCES = $(SKY130_PRIMITIVES) \
                    $(SKY130_CELLS) \
                    $(NETLIST) \
                    $(SRC_DIR)/tt_um_ethernet_fcs_checker.v

else
  
  COMPILE_ARGS += -I$(SRC_DIR)

  VERILOG_SOURCES = $(SRC_DIR)/ethernet_fcs_checker.v \
                    $(SRC_DIR)/tt_um_ethernet_fcs_checker.v \
                    $(SRC_DIR)/async_fifo.v
endif


TOPLEVEL = tt_um_ethernet_fcs_checker

MODULE = testbench

include $(shell cocotb-config --makefiles)/Makefile.sim

clean::
	rm -rf sim_build __pycache__ results.xml dump.vcd