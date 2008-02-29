# -*- makefile -*- Time-stamp: <03/07/15 18:23:04 ptr>
# $Id: lib.mak 3023 2007-05-16 20:01:32Z dums $

ifeq (gcc, $(COMPILER_NAME))
LIB_PREFIX := lib
endif

LIB_PREFIX ?=

ifeq (gcc, $(COMPILER_NAME))
DBG_SUFFIX := g
else
DBG_SUFFIX := d
endif

STLDBG_SUFFIX := stl${DBG_SUFFIX}

ifdef STLP_BUILD_FORCE_STATIC_RUNTIME
LIB_TYPE := _x
else
LIB_TYPE := 
endif

ifdef STLP_BUILD_LIB_MOTIF
LIB_SUFFIX := _$(STLP_BUILD_LIB_MOTIF).${MAJOR}.${MINOR}
else
LIB_SUFFIX := .${MAJOR}.${MINOR}
endif

# Shared libraries:
SO_NAME_BASE := $(LIB_PREFIX)${LIBNAME}${LIB_TYPE}${LIB_SUFFIX}
SO_NAME        := ${SO_NAME_BASE}.$(SO)
LIB_NAME        := ${SO_NAME_BASE}.$(LIB)
#EXP_NAME        := ${SO_NAME_BASE}.$(EXP)

SO_NAME_OUT    := $(OUTPUT_DIR)/${SO_NAME}
LIB_NAME_OUT    := $(OUTPUT_DIR)/${LIB_NAME}
#EXP_NAME_OUT    := $(OUTPUT_DIR)/${EXP_NAME}

SO_NAME_DBG_BASE := $(LIB_PREFIX)${LIBNAME}${DBG_SUFFIX}${LIB_TYPE}${LIB_SUFFIX}
SO_NAME_DBG    := ${SO_NAME_DBG_BASE}.$(SO)
LIB_NAME_DBG    := ${SO_NAME_DBG_BASE}.$(LIB)
#EXP_NAME_DBG    := ${SO_NAME_DBG_BASE}.$(EXP)

SO_NAME_OUT_DBG    := $(OUTPUT_DIR_DBG)/${SO_NAME_DBG}
LIB_NAME_OUT_DBG    := $(OUTPUT_DIR_DBG)/${LIB_NAME_DBG}
#EXP_NAME_OUT_DBG    := $(OUTPUT_DIR_DBG)/${EXP_NAME_DBG}

SO_NAME_STLDBG_BASE := $(LIB_PREFIX)${LIBNAME}${STLDBG_SUFFIX}${LIB_TYPE}${LIB_SUFFIX}
SO_NAME_STLDBG    := ${SO_NAME_STLDBG_BASE}.$(SO)
LIB_NAME_STLDBG    := ${SO_NAME_STLDBG_BASE}.$(LIB)
#EXP_NAME_STLDBG    := ${SO_NAME_STLDBG_BASE}.$(EXP)

SO_NAME_OUT_STLDBG    := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBG}
LIB_NAME_OUT_STLDBG    := $(OUTPUT_DIR_STLDBG)/${LIB_NAME_STLDBG}
#EXP_NAME_OUT_STLDBG    := $(OUTPUT_DIR_STLDBG)/${EXP_NAME_STLDBG}

# Static libraries:
ifeq (gcc, $(COMPILER_NAME))
A_LIB_TYPE :=
else
ifdef STLP_BUILD_FORCE_DYNAMIC_RUNTIME
A_LIB_TYPE := _statix
else
A_LIB_TYPE := _static
endif
endif

ifdef STLP_BUILD_LIB_MOTIF
LIB_A_SUFFIX := _$(STLP_BUILD_LIB_MOTIF)
else
LIB_A_SUFFIX :=
endif

A_NAME := $(LIB_PREFIX)${LIBNAME}${A_LIB_TYPE}${LIB_A_SUFFIX}.$(ARCH)
A_NAME_OUT := $(OUTPUT_DIR_A)/$(A_NAME)

A_NAME_DBG := $(LIB_PREFIX)${LIBNAME}${DBG_SUFFIX}${A_LIB_TYPE}${LIB_A_SUFFIX}.${ARCH}
A_NAME_OUT_DBG := $(OUTPUT_DIR_A_DBG)/$(A_NAME_DBG)

A_NAME_STLDBG := ${LIB_PREFIX}${LIBNAME}${STLDBG_SUFFIX}${A_LIB_TYPE}${LIB_A_SUFFIX}.${ARCH}
A_NAME_OUT_STLDBG := $(OUTPUT_DIR_A_STLDBG)/$(A_NAME_STLDBG)
