
lib: $(OBJECTS)
	( cd externals/CXSparse ; $(MAKE) library )
	( cd externals/OpenBLAS ; $(MAKE) libs)
	( cd src ; $(MAKE) lib )

cli:
	( cd src ; $(MAKE) cli )

.PHONY : clean
clean :
	( cd src ; $(MAKE) clean )
