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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../Source/croutine.c ../../../Source/portable/MemMang/heap_1.c ../../../Source/list.c ../../../Source/portable/MPLAB/PIC24_dsPIC/port.c ../../../Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../../../Source/queue.c ../../../Source/tasks.c ../main.c ../common/initBoard.c ../vTaskBlink1.c ../vTaskBlink2.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/449926602/croutine.o ${OBJECTDIR}/_ext/1884096877/heap_1.o ${OBJECTDIR}/_ext/449926602/list.o ${OBJECTDIR}/_ext/1343266892/port.o ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o ${OBJECTDIR}/_ext/449926602/queue.o ${OBJECTDIR}/_ext/449926602/tasks.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1270477542/initBoard.o ${OBJECTDIR}/_ext/1472/vTaskBlink1.o ${OBJECTDIR}/_ext/1472/vTaskBlink2.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/449926602/croutine.o.d ${OBJECTDIR}/_ext/1884096877/heap_1.o.d ${OBJECTDIR}/_ext/449926602/list.o.d ${OBJECTDIR}/_ext/1343266892/port.o.d ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d ${OBJECTDIR}/_ext/449926602/queue.o.d ${OBJECTDIR}/_ext/449926602/tasks.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1270477542/initBoard.o.d ${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d ${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/449926602/croutine.o ${OBJECTDIR}/_ext/1884096877/heap_1.o ${OBJECTDIR}/_ext/449926602/list.o ${OBJECTDIR}/_ext/1343266892/port.o ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o ${OBJECTDIR}/_ext/449926602/queue.o ${OBJECTDIR}/_ext/449926602/tasks.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1270477542/initBoard.o ${OBJECTDIR}/_ext/1472/vTaskBlink1.o ${OBJECTDIR}/_ext/1472/vTaskBlink2.o

# Source Files
SOURCEFILES=../../../Source/croutine.c ../../../Source/portable/MemMang/heap_1.c ../../../Source/list.c ../../../Source/portable/MPLAB/PIC24_dsPIC/port.c ../../../Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../../../Source/queue.c ../../../Source/tasks.c ../main.c ../common/initBoard.c ../vTaskBlink1.c ../vTaskBlink2.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256GP710A
MP_LINKER_FILE_OPTION=,--script=../p33FJ256GP710.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/449926602/croutine.o: ../../../Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/croutine.c  -o ${OBJECTDIR}/_ext/449926602/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1884096877/heap_1.o: ../../../Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884096877" 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1884096877/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1884096877/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884096877/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/449926602/list.o: ../../../Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/list.c  -o ${OBJECTDIR}/_ext/449926602/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1343266892/port.o: ../../../Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1343266892" 
	@${RM} ${OBJECTDIR}/_ext/1343266892/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1343266892/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1343266892/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1343266892/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1343266892/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/449926602/queue.o: ../../../Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/queue.c  -o ${OBJECTDIR}/_ext/449926602/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/449926602/tasks.o: ../../../Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/tasks.c  -o ${OBJECTDIR}/_ext/449926602/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1270477542/initBoard.o: ../common/initBoard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1270477542" 
	@${RM} ${OBJECTDIR}/_ext/1270477542/initBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/initBoard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../common/initBoard.c  -o ${OBJECTDIR}/_ext/1270477542/initBoard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1270477542/initBoard.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/initBoard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/vTaskBlink1.o: ../vTaskBlink1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../vTaskBlink1.c  -o ${OBJECTDIR}/_ext/1472/vTaskBlink1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/vTaskBlink2.o: ../vTaskBlink2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../vTaskBlink2.c  -o ${OBJECTDIR}/_ext/1472/vTaskBlink2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/449926602/croutine.o: ../../../Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/croutine.c  -o ${OBJECTDIR}/_ext/449926602/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/croutine.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1884096877/heap_1.o: ../../../Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1884096877" 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884096877/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1884096877/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1884096877/heap_1.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1884096877/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/449926602/list.o: ../../../Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/list.c  -o ${OBJECTDIR}/_ext/449926602/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/list.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1343266892/port.o: ../../../Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1343266892" 
	@${RM} ${OBJECTDIR}/_ext/1343266892/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1343266892/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1343266892/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1343266892/port.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1343266892/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/449926602/queue.o: ../../../Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/queue.c  -o ${OBJECTDIR}/_ext/449926602/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/queue.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/449926602/tasks.o: ../../../Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/449926602" 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/449926602/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Source/tasks.c  -o ${OBJECTDIR}/_ext/449926602/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/449926602/tasks.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/449926602/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1270477542/initBoard.o: ../common/initBoard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1270477542" 
	@${RM} ${OBJECTDIR}/_ext/1270477542/initBoard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/initBoard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../common/initBoard.c  -o ${OBJECTDIR}/_ext/1270477542/initBoard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1270477542/initBoard.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/initBoard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/vTaskBlink1.o: ../vTaskBlink1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../vTaskBlink1.c  -o ${OBJECTDIR}/_ext/1472/vTaskBlink1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/vTaskBlink1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/vTaskBlink2.o: ../vTaskBlink2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/vTaskBlink2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../vTaskBlink2.c  -o ${OBJECTDIR}/_ext/1472/vTaskBlink2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d"        -g -omf=elf   $(COMPARISON_BUILD)  -O0 -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off   -fno-schedule-insns -fno-schedule-insns2
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/vTaskBlink2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o: ../../../Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1343266892" 
	@${RM} ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../../Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf   -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d" "${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o: ../../../Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1343266892" 
	@${RM} ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../../Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d"  -omf=elf   -I".." -I"../include" -I"../../include" -I"../../../include" -I"../../../../include" -I"../../../Source/include" -I"../../../../Source/include" -I"../../Demo/dsPIC_MPLAB" -I"../../../../Demo/dsPIC_MPLAB" -I"../../../../../Demo/dsPIC_MPLAB" -I"../FileSystem" -I"../../Common/include" -I"../../../Common/include" -I"." -I".." -I"." -Wa,-MD,"${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.d" "${OBJECTDIR}/_ext/1343266892/portasm_dsPIC.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../p33FJ256GP710.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf   $(COMPARISON_BUILD)  -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=0,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--defsym,__ICD2RAM=1,--library-path="..",--library-path=".",--no-force-link,--smart-io$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../p33FJ256GP710.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf   $(COMPARISON_BUILD)  -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=0,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--defsym,__ICD2RAM=1,--library-path="..",--library-path=".",--no-force-link,--smart-io$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/RTOSDemo_dsPIC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
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
