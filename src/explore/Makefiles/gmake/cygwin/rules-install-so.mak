# -*- makefile -*- Time-stamp: <03/07/15 18:26:22 ptr>
# $Id$

INSTALL_TAGS ?= install-release-shared install-dbg-shared install-stldbg-shared

PHONY += install $(INSTALL_TAGS)

install:	$(INSTALL_TAGS)

install-static: all-static install-release-static install-dbg-static install-stldbg-static
install-shared: all-shared install-release-shared install-dbg-shared install-stldbg-shared

install-release-shared:	release-shared
	$(INSTALL_SO) ${SO_NAME_OUT} $(INSTALL_LIB_DIR)
	$(INSTALL_SO) ${LIB_NAME_OUT} $(INSTALL_LIB_DIR)
ifeq ($(COMPILER_NAME),vc6)
	$(INSTALL_SO) ${EXP_NAME_OUT} $(INSTALL_LIB_DIR)
endif

install-dbg-shared:	dbg-shared
	$(INSTALL_SO) ${SO_NAME_OUT_DBG} $(INSTALL_LIB_DIR_DBG)
	$(INSTALL_SO) ${LIB_NAME_OUT_DBG} $(INSTALL_LIB_DIR_DBG)
ifeq ($(COMPILER_NAME),vc6)
	$(INSTALL_SO) ${EXP_NAME_OUT_DBG} $(INSTALL_LIB_DIR_DBG)
endif

install-stldbg-shared:	stldbg-shared
	$(INSTALL_SO) ${SO_NAME_OUT_STLDBG} $(INSTALL_LIB_DIR_STLDBG)
	$(INSTALL_SO) ${LIB_NAME_OUT_STLDBG} $(INSTALL_LIB_DIR_STLDBG)
ifeq ($(COMPILER_NAME),vc6)
	$(INSTALL_SO) ${EXP_NAME_OUT_STLDBG} $(INSTALL_LIB_DIR_STLDBG)
endif
