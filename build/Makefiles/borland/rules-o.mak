# -*- Makefile -*- Time-stamp:
# $Id: rules-o.mak

#!message build\Makefiles\borland\rules-o.mak

.AUTODEPEND

# Rules for release output:

.cpp{$(OUTPUT_DIR)}.obj:
	$(COMPILE_cpp_REL) $(OUTPUT_OPTION) -o$@ $<

{$(SRCDIR)\cppunit;$(SRCDIR);.\$(USE_MAKE)}.cpp{.\$(OUTPUT_DIR)}.obj:
	$(COMPILE_cpp_REL) $(OUTPUT_OPTION) -o$@ $<

.cc{$(OUTPUT_DIR)}.obj:
	$(COMPILE_cpp_REL) $(OUTPUT_OPTION) -o$@ $<

{$(SRCDIR)}.cc{.\$(OUTPUT_DIR)}.obj:
	$(COMPILE_cpp_REL) $(OUTPUT_OPTION) -o$@ $<

.c{$(OUTPUT_DIR)}.obj:
	$(COMPILE_c_REL) $(OUTPUT_OPTION) -o$@ $<

{$(SRCDIR)}.c{.\$(OUTPUT_DIR)}.obj:
	$(COMPILE_c_REL) $(OUTPUT_OPTION) -o$@ $<

.rc{$(OUTPUT_DIR)}.res:
	$(COMPILE_rc_REL) $(RC_OUTPUT_OPTION) -o$@ $<

{$(SRCDIR)}.rc{.\$(OUTPUT_DIR)}.res:
	$(COMPILE_rc_REL) $(RC_OUTPUT_OPTION) -o$@ $<


# Rules for release output (static):

.cpp{$(OUTPUT_DIR_A)}.obj:
	$(COMPILE_cpp_STATIC) $(OUTPUT_OPTION_STATIC) -o$@ $<

{$(SRCDIR)\cppunit;$(SRCDIR);.\$(USE_MAKE)}.cpp{.\$(OUTPUT_DIR_A)}.obj:
	$(COMPILE_cpp_STATIC) $(OUTPUT_OPTION_STATIC) -o$@ $<

.cc{$(OUTPUT_DIR_A)}.obj:
	$(COMPILE_cpp_STATIC) $(OUTPUT_OPTION_STATIC) -o$@ $<

{$(SRCDIR)}.cc{.\$(OUTPUT_DIR_A)}.obj:
	$(COMPILE_cpp_STATIC) $(OUTPUT_OPTION_STATIC) -o$@ $<

.c{$(OUTPUT_DIR_A)}.obj:
	$(COMPILE_c_STATIC) $(OUTPUT_OPTION_STATIC) -o$@ $<

{$(SRCDIR)}.c{.\$(OUTPUT_DIR_A)}.obj:
	$(COMPILE_c_STATIC) $(OUTPUT_OPTION_STATIC) -o$@ $<

.rc{$(OUTPUT_DIR_A)}.res:
	$(COMPILE_rc_STATIC) $(RC_OUTPUT_OPTION_STATIC) -o$@ $<

{$(SRCDIR)}.rc{.\$(OUTPUT_DIR_A)}.res:
	$(COMPILE_rc_STATIC) $(RC_OUTPUT_OPTION_STATIC) -o$@ $<


# Rules for debug output:

.cpp{$(OUTPUT_DIR_DBG)}.obj:
	$(COMPILE_cpp_DBG) $(OUTPUT_OPTION_DBG) -o$@ $<

{$(SRCDIR)\cppunit;$(SRCDIR);.\$(USE_MAKE)}.cpp{.\$(OUTPUT_DIR_DBG)}.obj:
	$(COMPILE_cpp_DBG) $(OUTPUT_OPTION_DBG) -o$@ $<

.cc{$(OUTPUT_DIR_DBG)}.obj:
	$(COMPILE_cpp_DBG) $(OUTPUT_OPTION_DBG) -o$@ $<

{$(SRCDIR)}.cc{.\$(OUTPUT_DIR_DBG)}.obj:
	$(COMPILE_cpp_DBG) $(OUTPUT_OPTION_DBG) -o$@ $<

.c{$(OUTPUT_DIR_DBG)}.obj:
	$(COMPILE_c_DBG) $(OUTPUT_OPTION_DBG) -o$@ $<

{$(SRCDIR)}.c{.\$(OUTPUT_DIR_DBG)}.obj:
	$(COMPILE_c_DBG) $(OUTPUT_OPTION_DBG) -o$@ $<

.rc{$(OUTPUT_DIR_DBG)}.res:
	$(COMPILE_rc_DBG) $(RC_OUTPUT_OPTION_DBG) -o$@ $<

{$(SRCDIR)}.rc{.\$(OUTPUT_DIR_DBG)}.res:
	$(COMPILE_rc_DBG) $(RC_OUTPUT_OPTION_DBG) -o$@ $<


# Rules for debug output (static):

.cpp{$(OUTPUT_DIR_A_DBG)}.obj:
	$(COMPILE_cpp_STATIC_DBG) $(OUTPUT_OPTION_STATIC_DBG) -o$@ $<

{$(SRCDIR)\cppunit;$(SRCDIR);.\$(USE_MAKE)}.cpp{.\$(OUTPUT_DIR_A_DBG)}.obj:
	$(COMPILE_cpp_STATIC_DBG) $(OUTPUT_OPTION_STATIC_DBG) -o$@ $<

.cc{$(OUTPUT_DIR_A_DBG)}.obj:
	$(COMPILE_cpp_STATIC_DBG) $(OUTPUT_OPTION_STATIC_DBG) -o$@ $<

{$(SRCDIR)}.cc{.\$(OUTPUT_DIR_A_DBG)}.obj:
	$(COMPILE_cpp_STATIC_DBG) $(OUTPUT_OPTION_STATIC_DBG) -o$@ $<

.c{$(OUTPUT_DIR_A_DBG)}.obj:
	$(COMPILE_c_STATIC_DBG) $(OUTPUT_OPTION_STATIC_DBG) -o$@ $<

{$(SRCDIR)}.c{.\$(OUTPUT_DIR_A_DBG)}.obj:
	$(COMPILE_c_STATIC_DBG) $(OUTPUT_OPTION_STATIC_DBG) -o$@ $<

.rc{$(OUTPUT_DIR_A_DBG)}.res:
	$(COMPILE_rc_STATIC_DBG) $(RC_OUTPUT_OPTION_STATIC_DBG) -o$@ $<

{$(SRCDIR)}.rc{.\$(OUTPUT_DIR_A_DBG)}.res:
	$(COMPILE_rc_STATIC_DBG) $(RC_OUTPUT_OPTION_STATIC_DBG) -o$@ $<


# Rules for STLport debug output:

.cpp{$(OUTPUT_DIR_STLDBG)}.obj:
	$(COMPILE_cpp_STLDBG) $(OUTPUT_OPTION_STLDBG) -o$@ $<

{$(SRCDIR)\cppunit;$(SRCDIR);.\$(USE_MAKE)}.cpp{.\$(OUTPUT_DIR_STLDBG)}.obj:
	$(COMPILE_cpp_STLDBG) $(OUTPUT_OPTION_STLDBG) -o$@ $<

.cc{$(OUTPUT_DIR_STLDBG)}.obj:
	$(COMPILE_cpp_STLDBG) $(OUTPUT_OPTION_STLDBG) -o$@ $<

{$(SRCDIR)}.cc{.\$(OUTPUT_DIR_STLDBG)}.obj:
	$(COMPILE_cpp_STLDBG) $(OUTPUT_OPTION_STLDBG) -o$@ $<

.c{$(OUTPUT_DIR_STLDBG)}.obj:
	$(COMPILE_c_STLDBG) $(OUTPUT_OPTION_STLDBG) -o$@ $<

{$(SRCDIR)}.c{.\$(OUTPUT_DIR_STLDBG)}.obj:
	$(COMPILE_c_STLDBG) $(OUTPUT_OPTION_STLDBG) -o$@ $<

.rc{$(OUTPUT_DIR_STLDBG)}.res:
	$(COMPILE_rc_STLDBG) $(RC_OUTPUT_OPTION_STLDBG) -o$@ $<

{$(SRCDIR)}.rc{.\$(OUTPUT_DIR_STLDBG)}.res:
	$(COMPILE_rc_STLDBG) $(RC_OUTPUT_OPTION_STLDBG) -o$@ $<


# Rules for STLport debug output (static):

.cpp{$(OUTPUT_DIR_A_STLDBG)}.obj:
	$(COMPILE_cpp_STATIC_STLDBG) $(OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

{$(SRCDIR)\cppunit;$(SRCDIR);.\$(USE_MAKE)}.cpp{.\$(OUTPUT_DIR_A_STLDBG)}.obj:
	$(COMPILE_cpp_STATIC_STLDBG) $(OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

.cc{$(OUTPUT_DIR_A_STLDBG)}.obj:
	$(COMPILE_cpp_STATIC_STLDBG) $(OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

{$(SRCDIR)}.cc{.\$(OUTPUT_DIR_A_STLDBG)}.obj:
	$(COMPILE_cpp_STATIC_STLDBG) $(OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

.c{$(OUTPUT_DIR_A_STLDBG)}.obj:
	$(COMPILE_c_STATIC_STLDBG) $(OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

{$(SRCDIR)}.c{.\$(OUTPUT_DIR_A_STLDBG)}.obj:
	$(COMPILE_c_STATIC_STLDBG) $(OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

.rc{$(OUTPUT_DIR_A_STLDBG)}.res:
	$(COMPILE_rc_STATIC_STLDBG) $(RC_OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<

{$(SRCDIR)}.rc{.\$(OUTPUT_DIR_A_STLDBG)}.res:
	$(COMPILE_rc_STATIC_STLDBG) $(RC_OUTPUT_OPTION_STATIC_STLDBG) -o$@ $<


