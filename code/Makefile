# Makefile for creating the plugin
HOST_GCC=g++
TARGET_GCC=gcc
PLUGIN_SOURCE_FILES=gcc-test.cc
GCCPLUGINS_DIR:= $(shell $(TARGET_GCC) -print-file-name=plugin)
CXXFLAGS+= -I$(GCCPLUGINS_DIR)/include -fPIC -fno-rtti -O2 -Wall -Wextra

gccanalyzer.so: $(PLUGIN_SOURCE_FILES)
	$(HOST_GCC) -shared $(CXXFLAGS) $^ -o out/$@
