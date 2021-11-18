EXCLUDE_ARCHS += eldk
EXCLUDE_VERSIONS += 3.14

MAGLPSLOC:=.
export MAGLPSLOC

include $(EPICS_ENV_PATH)/module.Makefile

PROJECT = ioc_cow_freia

#USR_DEPENDENCIES += autosave
#USR_DEPENDENCIES += asyn,konrad

SOURCES = -none-

STARTUPS = $(wildcard startup/*.cmd)

MISCS = $(AUTOMISCS)

OPIS = opi

calibration : ./calibrations/*.fic ./tools/ficFileConv
	./tools/ficFileConv
