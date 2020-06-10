#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=principal.asm ADDWFC_Example.asm ADDWF_ADDLW_ADDWFC_Example.asm Mnemonico_ANDWF.asm Mnemonico_ANDLW.asm ADDWF_ADDWFC_ANDWF_ejemplo.asm Mnemonico_CLRF.asm Mnemonico_COMF.asm ADDFW_COMF_Example.asm CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.asm IGUALDAD_PUERTOS_MOVF_PIC18.asm Mnemonico_CPFSGT.asm Mnemonico_CPFSLT.asm Mnemonico_ADDWFC.asm Mnemonico_DECF.asm Mnemonico_INCF.asm INCF_DECF_ADDWF_CPFSEQ_Example.asm Mnemonico_DECFSZ.asm DECFSZ_INCF_ADDWF_Example.asm Mnemonico_DCFSNZ.asm Mnemonico_INCFSZ.asm Mnemonico_INFSNZ.asm Mnemonico_IORWF.asm Mnemonico_IORLW.asm Mnemonico_MOVFF.asm Mnemonico_CPFSEQ.asm IGUALDAD_PUERTOS_MOVFF_PIC18F.asm Mnemonico_MULWF.asm Mnemonico_MULLW.asm AA_PLANTILLA_CODE.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/principal.o ${OBJECTDIR}/ADDWFC_Example.o ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o ${OBJECTDIR}/Mnemonico_ANDWF.o ${OBJECTDIR}/Mnemonico_ANDLW.o ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o ${OBJECTDIR}/Mnemonico_CLRF.o ${OBJECTDIR}/Mnemonico_COMF.o ${OBJECTDIR}/ADDFW_COMF_Example.o ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o ${OBJECTDIR}/Mnemonico_CPFSGT.o ${OBJECTDIR}/Mnemonico_CPFSLT.o ${OBJECTDIR}/Mnemonico_ADDWFC.o ${OBJECTDIR}/Mnemonico_DECF.o ${OBJECTDIR}/Mnemonico_INCF.o ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o ${OBJECTDIR}/Mnemonico_DECFSZ.o ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o ${OBJECTDIR}/Mnemonico_DCFSNZ.o ${OBJECTDIR}/Mnemonico_INCFSZ.o ${OBJECTDIR}/Mnemonico_INFSNZ.o ${OBJECTDIR}/Mnemonico_IORWF.o ${OBJECTDIR}/Mnemonico_IORLW.o ${OBJECTDIR}/Mnemonico_MOVFF.o ${OBJECTDIR}/Mnemonico_CPFSEQ.o ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o ${OBJECTDIR}/Mnemonico_MULWF.o ${OBJECTDIR}/Mnemonico_MULLW.o ${OBJECTDIR}/AA_PLANTILLA_CODE.o
POSSIBLE_DEPFILES=${OBJECTDIR}/principal.o.d ${OBJECTDIR}/ADDWFC_Example.o.d ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o.d ${OBJECTDIR}/Mnemonico_ANDWF.o.d ${OBJECTDIR}/Mnemonico_ANDLW.o.d ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o.d ${OBJECTDIR}/Mnemonico_CLRF.o.d ${OBJECTDIR}/Mnemonico_COMF.o.d ${OBJECTDIR}/ADDFW_COMF_Example.o.d ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o.d ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o.d ${OBJECTDIR}/Mnemonico_CPFSGT.o.d ${OBJECTDIR}/Mnemonico_CPFSLT.o.d ${OBJECTDIR}/Mnemonico_ADDWFC.o.d ${OBJECTDIR}/Mnemonico_DECF.o.d ${OBJECTDIR}/Mnemonico_INCF.o.d ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o.d ${OBJECTDIR}/Mnemonico_DECFSZ.o.d ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o.d ${OBJECTDIR}/Mnemonico_DCFSNZ.o.d ${OBJECTDIR}/Mnemonico_INCFSZ.o.d ${OBJECTDIR}/Mnemonico_INFSNZ.o.d ${OBJECTDIR}/Mnemonico_IORWF.o.d ${OBJECTDIR}/Mnemonico_IORLW.o.d ${OBJECTDIR}/Mnemonico_MOVFF.o.d ${OBJECTDIR}/Mnemonico_CPFSEQ.o.d ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o.d ${OBJECTDIR}/Mnemonico_MULWF.o.d ${OBJECTDIR}/Mnemonico_MULLW.o.d ${OBJECTDIR}/AA_PLANTILLA_CODE.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/principal.o ${OBJECTDIR}/ADDWFC_Example.o ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o ${OBJECTDIR}/Mnemonico_ANDWF.o ${OBJECTDIR}/Mnemonico_ANDLW.o ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o ${OBJECTDIR}/Mnemonico_CLRF.o ${OBJECTDIR}/Mnemonico_COMF.o ${OBJECTDIR}/ADDFW_COMF_Example.o ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o ${OBJECTDIR}/Mnemonico_CPFSGT.o ${OBJECTDIR}/Mnemonico_CPFSLT.o ${OBJECTDIR}/Mnemonico_ADDWFC.o ${OBJECTDIR}/Mnemonico_DECF.o ${OBJECTDIR}/Mnemonico_INCF.o ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o ${OBJECTDIR}/Mnemonico_DECFSZ.o ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o ${OBJECTDIR}/Mnemonico_DCFSNZ.o ${OBJECTDIR}/Mnemonico_INCFSZ.o ${OBJECTDIR}/Mnemonico_INFSNZ.o ${OBJECTDIR}/Mnemonico_IORWF.o ${OBJECTDIR}/Mnemonico_IORLW.o ${OBJECTDIR}/Mnemonico_MOVFF.o ${OBJECTDIR}/Mnemonico_CPFSEQ.o ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o ${OBJECTDIR}/Mnemonico_MULWF.o ${OBJECTDIR}/Mnemonico_MULLW.o ${OBJECTDIR}/AA_PLANTILLA_CODE.o

# Source Files
SOURCEFILES=principal.asm ADDWFC_Example.asm ADDWF_ADDLW_ADDWFC_Example.asm Mnemonico_ANDWF.asm Mnemonico_ANDLW.asm ADDWF_ADDWFC_ANDWF_ejemplo.asm Mnemonico_CLRF.asm Mnemonico_COMF.asm ADDFW_COMF_Example.asm CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.asm IGUALDAD_PUERTOS_MOVF_PIC18.asm Mnemonico_CPFSGT.asm Mnemonico_CPFSLT.asm Mnemonico_ADDWFC.asm Mnemonico_DECF.asm Mnemonico_INCF.asm INCF_DECF_ADDWF_CPFSEQ_Example.asm Mnemonico_DECFSZ.asm DECFSZ_INCF_ADDWF_Example.asm Mnemonico_DCFSNZ.asm Mnemonico_INCFSZ.asm Mnemonico_INFSNZ.asm Mnemonico_IORWF.asm Mnemonico_IORLW.asm Mnemonico_MOVFF.asm Mnemonico_CPFSEQ.asm IGUALDAD_PUERTOS_MOVFF_PIC18F.asm Mnemonico_MULWF.asm Mnemonico_MULLW.asm AA_PLANTILLA_CODE.asm



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18f4550
MP_LINKER_DEBUG_OPTION= 
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/principal.o: principal.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/principal.o.d 
	@${RM} ${OBJECTDIR}/principal.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/principal.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/principal.lst\" -e\"${OBJECTDIR}/principal.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/principal.o\" \"principal.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/principal.o"
	@${FIXDEPS} "${OBJECTDIR}/principal.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDWFC_Example.o: ADDWFC_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDWFC_Example.o.d 
	@${RM} ${OBJECTDIR}/ADDWFC_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDWFC_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDWFC_Example.lst\" -e\"${OBJECTDIR}/ADDWFC_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDWFC_Example.o\" \"ADDWFC_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDWFC_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDWFC_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o: ADDWF_ADDLW_ADDWFC_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o.d 
	@${RM} ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.lst\" -e\"${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o\" \"ADDWF_ADDLW_ADDWFC_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_ANDWF.o: Mnemonico_ANDWF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDWF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDWF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_ANDWF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_ANDWF.lst\" -e\"${OBJECTDIR}/Mnemonico_ANDWF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_ANDWF.o\" \"Mnemonico_ANDWF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_ANDWF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_ANDWF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_ANDLW.o: Mnemonico_ANDLW.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDLW.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDLW.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_ANDLW.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_ANDLW.lst\" -e\"${OBJECTDIR}/Mnemonico_ANDLW.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_ANDLW.o\" \"Mnemonico_ANDLW.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_ANDLW.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_ANDLW.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o: ADDWF_ADDWFC_ANDWF_ejemplo.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o.d 
	@${RM} ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.lst\" -e\"${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o\" \"ADDWF_ADDWFC_ANDWF_ejemplo.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CLRF.o: Mnemonico_CLRF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CLRF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CLRF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CLRF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CLRF.lst\" -e\"${OBJECTDIR}/Mnemonico_CLRF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CLRF.o\" \"Mnemonico_CLRF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CLRF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CLRF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_COMF.o: Mnemonico_COMF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_COMF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_COMF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_COMF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_COMF.lst\" -e\"${OBJECTDIR}/Mnemonico_COMF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_COMF.o\" \"Mnemonico_COMF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_COMF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_COMF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDFW_COMF_Example.o: ADDFW_COMF_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDFW_COMF_Example.o.d 
	@${RM} ${OBJECTDIR}/ADDFW_COMF_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDFW_COMF_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDFW_COMF_Example.lst\" -e\"${OBJECTDIR}/ADDFW_COMF_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDFW_COMF_Example.o\" \"ADDFW_COMF_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDFW_COMF_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDFW_COMF_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o: CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o.d 
	@${RM} ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.lst\" -e\"${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o\" \"CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o: IGUALDAD_PUERTOS_MOVF_PIC18.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o.d 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.lst\" -e\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o\" \"IGUALDAD_PUERTOS_MOVF_PIC18.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o"
	@${FIXDEPS} "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CPFSGT.o: Mnemonico_CPFSGT.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSGT.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSGT.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CPFSGT.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CPFSGT.lst\" -e\"${OBJECTDIR}/Mnemonico_CPFSGT.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CPFSGT.o\" \"Mnemonico_CPFSGT.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CPFSGT.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CPFSGT.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CPFSLT.o: Mnemonico_CPFSLT.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSLT.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSLT.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CPFSLT.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CPFSLT.lst\" -e\"${OBJECTDIR}/Mnemonico_CPFSLT.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CPFSLT.o\" \"Mnemonico_CPFSLT.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CPFSLT.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CPFSLT.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_ADDWFC.o: Mnemonico_ADDWFC.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_ADDWFC.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_ADDWFC.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_ADDWFC.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_ADDWFC.lst\" -e\"${OBJECTDIR}/Mnemonico_ADDWFC.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_ADDWFC.o\" \"Mnemonico_ADDWFC.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_ADDWFC.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_ADDWFC.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_DECF.o: Mnemonico_DECF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_DECF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_DECF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_DECF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_DECF.lst\" -e\"${OBJECTDIR}/Mnemonico_DECF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_DECF.o\" \"Mnemonico_DECF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_DECF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_DECF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_INCF.o: Mnemonico_INCF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_INCF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_INCF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_INCF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_INCF.lst\" -e\"${OBJECTDIR}/Mnemonico_INCF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_INCF.o\" \"Mnemonico_INCF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_INCF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_INCF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o: INCF_DECF_ADDWF_CPFSEQ_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o.d 
	@${RM} ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.lst\" -e\"${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o\" \"INCF_DECF_ADDWF_CPFSEQ_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_DECFSZ.o: Mnemonico_DECFSZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_DECFSZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_DECFSZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_DECFSZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_DECFSZ.lst\" -e\"${OBJECTDIR}/Mnemonico_DECFSZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_DECFSZ.o\" \"Mnemonico_DECFSZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_DECFSZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_DECFSZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o: DECFSZ_INCF_ADDWF_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o.d 
	@${RM} ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.lst\" -e\"${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o\" \"DECFSZ_INCF_ADDWF_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_DCFSNZ.o: Mnemonico_DCFSNZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_DCFSNZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_DCFSNZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_DCFSNZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_DCFSNZ.lst\" -e\"${OBJECTDIR}/Mnemonico_DCFSNZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_DCFSNZ.o\" \"Mnemonico_DCFSNZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_DCFSNZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_DCFSNZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_INCFSZ.o: Mnemonico_INCFSZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_INCFSZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_INCFSZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_INCFSZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_INCFSZ.lst\" -e\"${OBJECTDIR}/Mnemonico_INCFSZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_INCFSZ.o\" \"Mnemonico_INCFSZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_INCFSZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_INCFSZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_INFSNZ.o: Mnemonico_INFSNZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_INFSNZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_INFSNZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_INFSNZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_INFSNZ.lst\" -e\"${OBJECTDIR}/Mnemonico_INFSNZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_INFSNZ.o\" \"Mnemonico_INFSNZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_INFSNZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_INFSNZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_IORWF.o: Mnemonico_IORWF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_IORWF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_IORWF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_IORWF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_IORWF.lst\" -e\"${OBJECTDIR}/Mnemonico_IORWF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_IORWF.o\" \"Mnemonico_IORWF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_IORWF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_IORWF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_IORLW.o: Mnemonico_IORLW.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_IORLW.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_IORLW.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_IORLW.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_IORLW.lst\" -e\"${OBJECTDIR}/Mnemonico_IORLW.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_IORLW.o\" \"Mnemonico_IORLW.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_IORLW.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_IORLW.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_MOVFF.o: Mnemonico_MOVFF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_MOVFF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_MOVFF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_MOVFF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_MOVFF.lst\" -e\"${OBJECTDIR}/Mnemonico_MOVFF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_MOVFF.o\" \"Mnemonico_MOVFF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_MOVFF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_MOVFF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CPFSEQ.o: Mnemonico_CPFSEQ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSEQ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSEQ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CPFSEQ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CPFSEQ.lst\" -e\"${OBJECTDIR}/Mnemonico_CPFSEQ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CPFSEQ.o\" \"Mnemonico_CPFSEQ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CPFSEQ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CPFSEQ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o: IGUALDAD_PUERTOS_MOVFF_PIC18F.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o.d 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.lst\" -e\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o\" \"IGUALDAD_PUERTOS_MOVFF_PIC18F.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o"
	@${FIXDEPS} "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_MULWF.o: Mnemonico_MULWF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_MULWF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_MULWF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_MULWF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_MULWF.lst\" -e\"${OBJECTDIR}/Mnemonico_MULWF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_MULWF.o\" \"Mnemonico_MULWF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_MULWF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_MULWF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_MULLW.o: Mnemonico_MULLW.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_MULLW.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_MULLW.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_MULLW.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_MULLW.lst\" -e\"${OBJECTDIR}/Mnemonico_MULLW.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_MULLW.o\" \"Mnemonico_MULLW.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_MULLW.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_MULLW.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/AA_PLANTILLA_CODE.o: AA_PLANTILLA_CODE.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AA_PLANTILLA_CODE.o.d 
	@${RM} ${OBJECTDIR}/AA_PLANTILLA_CODE.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/AA_PLANTILLA_CODE.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/AA_PLANTILLA_CODE.lst\" -e\"${OBJECTDIR}/AA_PLANTILLA_CODE.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/AA_PLANTILLA_CODE.o\" \"AA_PLANTILLA_CODE.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/AA_PLANTILLA_CODE.o"
	@${FIXDEPS} "${OBJECTDIR}/AA_PLANTILLA_CODE.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
else
${OBJECTDIR}/principal.o: principal.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/principal.o.d 
	@${RM} ${OBJECTDIR}/principal.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/principal.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/principal.lst\" -e\"${OBJECTDIR}/principal.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/principal.o\" \"principal.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/principal.o"
	@${FIXDEPS} "${OBJECTDIR}/principal.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDWFC_Example.o: ADDWFC_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDWFC_Example.o.d 
	@${RM} ${OBJECTDIR}/ADDWFC_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDWFC_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDWFC_Example.lst\" -e\"${OBJECTDIR}/ADDWFC_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDWFC_Example.o\" \"ADDWFC_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDWFC_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDWFC_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o: ADDWF_ADDLW_ADDWFC_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o.d 
	@${RM} ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.lst\" -e\"${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o\" \"ADDWF_ADDLW_ADDWFC_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_ANDWF.o: Mnemonico_ANDWF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDWF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDWF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_ANDWF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_ANDWF.lst\" -e\"${OBJECTDIR}/Mnemonico_ANDWF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_ANDWF.o\" \"Mnemonico_ANDWF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_ANDWF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_ANDWF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_ANDLW.o: Mnemonico_ANDLW.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDLW.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_ANDLW.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_ANDLW.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_ANDLW.lst\" -e\"${OBJECTDIR}/Mnemonico_ANDLW.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_ANDLW.o\" \"Mnemonico_ANDLW.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_ANDLW.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_ANDLW.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o: ADDWF_ADDWFC_ANDWF_ejemplo.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o.d 
	@${RM} ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.lst\" -e\"${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o\" \"ADDWF_ADDWFC_ANDWF_ejemplo.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CLRF.o: Mnemonico_CLRF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CLRF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CLRF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CLRF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CLRF.lst\" -e\"${OBJECTDIR}/Mnemonico_CLRF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CLRF.o\" \"Mnemonico_CLRF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CLRF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CLRF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_COMF.o: Mnemonico_COMF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_COMF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_COMF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_COMF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_COMF.lst\" -e\"${OBJECTDIR}/Mnemonico_COMF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_COMF.o\" \"Mnemonico_COMF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_COMF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_COMF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/ADDFW_COMF_Example.o: ADDFW_COMF_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADDFW_COMF_Example.o.d 
	@${RM} ${OBJECTDIR}/ADDFW_COMF_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/ADDFW_COMF_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/ADDFW_COMF_Example.lst\" -e\"${OBJECTDIR}/ADDFW_COMF_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/ADDFW_COMF_Example.o\" \"ADDFW_COMF_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/ADDFW_COMF_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/ADDFW_COMF_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o: CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o.d 
	@${RM} ${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.lst\" -e\"${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o\" \"CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/CPFSEQ_BSF_BCF_MOVF_SETF_PIC18_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o: IGUALDAD_PUERTOS_MOVF_PIC18.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o.d 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.lst\" -e\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o\" \"IGUALDAD_PUERTOS_MOVF_PIC18.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o"
	@${FIXDEPS} "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVF_PIC18.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CPFSGT.o: Mnemonico_CPFSGT.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSGT.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSGT.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CPFSGT.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CPFSGT.lst\" -e\"${OBJECTDIR}/Mnemonico_CPFSGT.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CPFSGT.o\" \"Mnemonico_CPFSGT.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CPFSGT.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CPFSGT.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CPFSLT.o: Mnemonico_CPFSLT.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSLT.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSLT.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CPFSLT.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CPFSLT.lst\" -e\"${OBJECTDIR}/Mnemonico_CPFSLT.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CPFSLT.o\" \"Mnemonico_CPFSLT.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CPFSLT.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CPFSLT.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_ADDWFC.o: Mnemonico_ADDWFC.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_ADDWFC.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_ADDWFC.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_ADDWFC.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_ADDWFC.lst\" -e\"${OBJECTDIR}/Mnemonico_ADDWFC.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_ADDWFC.o\" \"Mnemonico_ADDWFC.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_ADDWFC.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_ADDWFC.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_DECF.o: Mnemonico_DECF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_DECF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_DECF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_DECF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_DECF.lst\" -e\"${OBJECTDIR}/Mnemonico_DECF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_DECF.o\" \"Mnemonico_DECF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_DECF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_DECF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_INCF.o: Mnemonico_INCF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_INCF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_INCF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_INCF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_INCF.lst\" -e\"${OBJECTDIR}/Mnemonico_INCF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_INCF.o\" \"Mnemonico_INCF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_INCF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_INCF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o: INCF_DECF_ADDWF_CPFSEQ_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o.d 
	@${RM} ${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.lst\" -e\"${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o\" \"INCF_DECF_ADDWF_CPFSEQ_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/INCF_DECF_ADDWF_CPFSEQ_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_DECFSZ.o: Mnemonico_DECFSZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_DECFSZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_DECFSZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_DECFSZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_DECFSZ.lst\" -e\"${OBJECTDIR}/Mnemonico_DECFSZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_DECFSZ.o\" \"Mnemonico_DECFSZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_DECFSZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_DECFSZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o: DECFSZ_INCF_ADDWF_Example.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o.d 
	@${RM} ${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.lst\" -e\"${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o\" \"DECFSZ_INCF_ADDWF_Example.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o"
	@${FIXDEPS} "${OBJECTDIR}/DECFSZ_INCF_ADDWF_Example.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_DCFSNZ.o: Mnemonico_DCFSNZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_DCFSNZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_DCFSNZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_DCFSNZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_DCFSNZ.lst\" -e\"${OBJECTDIR}/Mnemonico_DCFSNZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_DCFSNZ.o\" \"Mnemonico_DCFSNZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_DCFSNZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_DCFSNZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_INCFSZ.o: Mnemonico_INCFSZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_INCFSZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_INCFSZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_INCFSZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_INCFSZ.lst\" -e\"${OBJECTDIR}/Mnemonico_INCFSZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_INCFSZ.o\" \"Mnemonico_INCFSZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_INCFSZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_INCFSZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_INFSNZ.o: Mnemonico_INFSNZ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_INFSNZ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_INFSNZ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_INFSNZ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_INFSNZ.lst\" -e\"${OBJECTDIR}/Mnemonico_INFSNZ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_INFSNZ.o\" \"Mnemonico_INFSNZ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_INFSNZ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_INFSNZ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_IORWF.o: Mnemonico_IORWF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_IORWF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_IORWF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_IORWF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_IORWF.lst\" -e\"${OBJECTDIR}/Mnemonico_IORWF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_IORWF.o\" \"Mnemonico_IORWF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_IORWF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_IORWF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_IORLW.o: Mnemonico_IORLW.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_IORLW.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_IORLW.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_IORLW.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_IORLW.lst\" -e\"${OBJECTDIR}/Mnemonico_IORLW.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_IORLW.o\" \"Mnemonico_IORLW.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_IORLW.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_IORLW.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_MOVFF.o: Mnemonico_MOVFF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_MOVFF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_MOVFF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_MOVFF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_MOVFF.lst\" -e\"${OBJECTDIR}/Mnemonico_MOVFF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_MOVFF.o\" \"Mnemonico_MOVFF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_MOVFF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_MOVFF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_CPFSEQ.o: Mnemonico_CPFSEQ.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSEQ.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_CPFSEQ.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_CPFSEQ.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_CPFSEQ.lst\" -e\"${OBJECTDIR}/Mnemonico_CPFSEQ.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_CPFSEQ.o\" \"Mnemonico_CPFSEQ.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_CPFSEQ.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_CPFSEQ.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o: IGUALDAD_PUERTOS_MOVFF_PIC18F.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o.d 
	@${RM} ${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.lst\" -e\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o\" \"IGUALDAD_PUERTOS_MOVFF_PIC18F.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o"
	@${FIXDEPS} "${OBJECTDIR}/IGUALDAD_PUERTOS_MOVFF_PIC18F.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_MULWF.o: Mnemonico_MULWF.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_MULWF.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_MULWF.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_MULWF.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_MULWF.lst\" -e\"${OBJECTDIR}/Mnemonico_MULWF.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_MULWF.o\" \"Mnemonico_MULWF.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_MULWF.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_MULWF.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Mnemonico_MULLW.o: Mnemonico_MULLW.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Mnemonico_MULLW.o.d 
	@${RM} ${OBJECTDIR}/Mnemonico_MULLW.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Mnemonico_MULLW.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/Mnemonico_MULLW.lst\" -e\"${OBJECTDIR}/Mnemonico_MULLW.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/Mnemonico_MULLW.o\" \"Mnemonico_MULLW.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Mnemonico_MULLW.o"
	@${FIXDEPS} "${OBJECTDIR}/Mnemonico_MULLW.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/AA_PLANTILLA_CODE.o: AA_PLANTILLA_CODE.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AA_PLANTILLA_CODE.o.d 
	@${RM} ${OBJECTDIR}/AA_PLANTILLA_CODE.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/AA_PLANTILLA_CODE.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/AA_PLANTILLA_CODE.lst\" -e\"${OBJECTDIR}/AA_PLANTILLA_CODE.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/AA_PLANTILLA_CODE.o\" \"AA_PLANTILLA_CODE.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/AA_PLANTILLA_CODE.o"
	@${FIXDEPS} "${OBJECTDIR}/AA_PLANTILLA_CODE.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w -x -u_DEBUG -z__ICD2RAM=1 -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -odist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
else
dist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -odist/${CND_CONF}/${IMAGE_TYPE}/primerCodeAsm.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
