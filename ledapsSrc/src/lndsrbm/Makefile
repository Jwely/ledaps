EXTRA   = -Wall -O2
INCDIR  = -I. -I$(HDFINC) -I$(JPEGINC)
EXLIB   = -L$(HDFLIB) -lmfhdf -ldf -L$(JPEGLIB) -ljpeg -lz -lm
GEOLOC_DEPEND = LS_geoloc.o LS_geoloc_driver.c
GEOLOC_INCDIR = -I. -I$(HDFEOS_GCTPINC) -I$(XML2INC) -I$(ESPAINC)
GEOLOC_EXLIB  = -L$(HDFEOS_GCTPLIB) -lGctp \
   -L$(ESPALIB) -l_espa_raw_binary -l_espa_common \
   -L$(XML2LIB) -lxml2 -lz -lm

EXE     = comptemp dump_meta xy2geo geo2xy SDSreader3.0 lndsrbm
all : $(EXE)

comptemp : comptemp.c
	$(CC) $(EXTRA) -o $@ $? $(GEOLOC_INCDIR) $(GEOLOC_EXLIB)

LS_geoloc.o : LS_geoloc.c
	$(CC) $(EXTRA) -o $@ -c $?

xy2geo : $(GEOLOC_DEPEND)
	$(CC) $(EXTRA) -DINV -o $@ $(GEOLOC_DEPEND) $(GEOLOC_INCDIR) $(GEOLOC_EXLIB)

geo2xy : $(GEOLOC_DEPEND)
	$(CC) $(EXTRA) -o $@ $(GEOLOC_DEPEND) $(GEOLOC_INCDIR) $(GEOLOC_EXLIB)

lndsrbm : lndsrbm.c
	$(CC) $(EXTRA) -o $@ $? $(GEOLOC_INCDIR) $(GEOLOC_EXLIB)

dump_meta : dump_meta.c
	$(CC) $(EXTRA) -o $@ $? $(GEOLOC_INCDIR) $(GEOLOC_EXLIB)

SDSreader3.0 : SDSreader3.0.c
	$(CC) $(EXTRA) -o $@ $? $(INCDIR) $(EXLIB)

c.o : 
	$(CC) $(EXTRA) -o $@ -c $?

clean :
	rm -f *.o
	rm -f $(EXE)

install:
	install -d $(BIN)
	install -m 755 $(EXE) $(BIN)
	install -m 755 lndsrbm.ksh $(BIN)

