//==============================================================================
//
// Title:		platyplugin
// Purpose:		A short description of the interface.
//
// Created on:	3/20/2014 at 9:39:33 AM by daniel.
// Copyright:	. All Rights Reserved.
//
//==============================================================================

#ifndef __platyplugin_H__
#define __platyplugin_H__

/*alignment on win32*/
#if MSWin && ProcessorType != kX64
#pragma pack(push,1)
#endif

/*LabVIEW cannot interface with mangled C++ names very well, on VxWorks it is impossible*/
#ifdef __cplusplus
    extern "C" {
#endif

#ifdef _CVI_		
	#define PLEXPORT DLLEXPORT
#else
	#define PLEXPORT
#endif /*def _CVI_*/

//==============================================================================
// Include files

#ifdef _CVI_
	#include "cvidef.h"
#endif  /*def _CVI_*/
		
#include <extcode.h>
#include "lvdatainterface.h"

//==============================================================================
// Constants
		
#define userLVerrno -501000
#define cfgInvalid userLVerrno-1

//==============================================================================
// Types

typedef enum {unknown = 0, none, trivial, recoverable, critical} errorClass;

/*execution information*/
typedef struct {
	LVBoolean execInput;
	LVBoolean execProcess;
	LVBoolean execOutput;
} execSettings;

//==============================================================================
// External variables

//==============================================================================
// Global functions

int init (lvdatadictionary*, lvdatadictionary*, lvdatadictionary*,lvdatadictionary*, StringArrayHandle, execSettings*);
int input (lvdatacluster*);
int output (lvdatacluster*);
int process (lvdatacluster*, lvdatacluster*);
int classifyErrors(int32, LVBoolean, errorClass*);
int closePlugin();


#ifdef __cplusplus
    }	 /*close Extern "C"*/
#endif

/*Alignment on win32*/
#if MSWin && ProcessorType != kX64
#pragma pack(pop)
#endif

#endif  /* ndef __platyplugin_H__ */
