OPIS = opi
OPIS_VERSION = 0.1.0
OPIS_HOME = /opt/epics/OPIS
OPI_NAME = CoW

Db/cernox-breaktables.dbd : ./calibrations/*.fic ./tools/ficFileConv
	./tools/ficFileConv

opiinstall:
	@rsync -va $(OPIS)/ $(OPIS_HOME)/$(OPI_NAME)/$(OPIS_VERSION)/
