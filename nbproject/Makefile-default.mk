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
SOURCEFILES_QUOTED_IF_SPACED=principal.asm mnemonico_ADDWFC.asm ADDWFC_Example.asm ADDWF_ADDLW_ADDWFC_Example.asm Mnemonico_ANDWF.asm Mnemonico_ANDLW.asm ADDWF_ADDWFC_ANDWF_ejemplo.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/principal.o ${OBJECTDIR}/mnemonico_ADDWFC.o ${OBJECTDIR}/ADDWFC_Example.o ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o ${OBJECTDIR}/Mnemonico_ANDWF.o ${OBJECTDIR}/Mnemonico_ANDLW.o ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/principal.o.d ${OBJECTDIR}/mnemonico_ADDWFC.o.d ${OBJECTDIR}/ADDWFC_Example.o.d ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o.d ${OBJECTDIR}/Mnemonico_ANDWF.o.d ${OBJECTDIR}/Mnemonico_ANDLW.o.d ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/principal.o ${OBJECTDIR}/mnemonico_ADDWFC.o ${OBJECTDIR}/ADDWFC_Example.o ${OBJECTDIR}/ADDWF_ADDLW_ADDWFC_Example.o ${OBJECTDIR}/Mnemonico_ANDWF.o ${OBJECTDIR}/Mnemonico_ANDLW.o ${OBJECTDIR}/ADDWF_ADDWFC_ANDWF_ejemplo.o

# Source Files
SOURCEFILES=principal.asm mnemonico_ADDWFC.asm ADDWFC_Example.asm ADDWF_ADDLW_ADDWFC_Example.asm Mnemonico_ANDWF.asm Mnemonico_ANDLW.asm ADDWF_ADDWFC_ANDWF_ejemplo.asm



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
	
${OBJECTDIR}/mnemonico_ADDWFC.o: mnemonico_ADDWFC.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mnemonico_ADDWFC.o.d 
	@${RM} ${OBJECTDIR}/mnemonico_ADDWFC.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/mnemonico_ADDWFC.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/mnemonico_ADDWFC.lst\" -e\"${OBJECTDIR}/mnemonico_ADDWFC.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/mnemonico_ADDWFC.o\" \"mnemonico_ADDWFC.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/mnemonico_ADDWFC.o"
	@${FIXDEPS} "${OBJECTDIR}/mnemonico_ADDWFC.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
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
	
else
${OBJECTDIR}/principal.o: principal.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/principal.o.d 
	@${RM} ${OBJECTDIR}/principal.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/principal.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/principal.lst\" -e\"${OBJECTDIR}/principal.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/principal.o\" \"principal.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/principal.o"
	@${FIXDEPS} "${OBJECTDIR}/principal.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/mnemonico_ADDWFC.o: mnemonico_ADDWFC.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mnemonico_ADDWFC.o.d 
	@${RM} ${OBJECTDIR}/mnemonico_ADDWFC.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/mnemonico_ADDWFC.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/mnemonico_ADDWFC.lst\" -e\"${OBJECTDIR}/mnemonico_ADDWFC.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/mnemonico_ADDWFC.o\" \"mnemonico_ADDWFC.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/mnemonico_ADDWFC.o"
	@${FIXDEPS} "${OBJECTDIR}/mnemonico_ADDWFC.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
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
