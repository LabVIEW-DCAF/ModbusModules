//==============================================================================
//
// Title:		platyplugin
// Purpose:		A short description of the library.
//
// Created on:	3/20/2014 at 9:39:33 AM by daniel.
// Copyright:	. All Rights Reserved.
//
//==============================================================================

//==============================================================================
// Include files

#ifdef _CVI_
#include <utility.h>
#endif /*_CVI*/

/*LabVIEW memory and type interfaces*/
#include <extcode.h> 

/*Alignment fix on win32*/
#if MSWin && ProcessorType != kX64
#pragma pack(push,1)
#endif   /*mswin*/

#include "platyplugin.h"
#include "User Algorithms.h"




//==============================================================================
// Constants
#define OK 0  

//==============================================================================
// Types

//==============================================================================
// Static global variables
#include "plugin taglist.h"

//==============================================================================
// Static functions

//==============================================================================
// Global variables

//==============================================================================
// Global functions

/// HIFN  What does your function do?
/// HIPAR x/What inputs does your function expect?
/// HIRET What does your function return?

int PLEXPORT init (lvdatadictionary* inputDictionary, lvdatadictionary* parameterDictionary, lvdatadictionary* resultDictionary, lvdatadictionary* outputDictionary, StringArrayHandle args, execSettings* execS) {
	int err;
	
	/*set execution settings--this tells calling code which functions to call*/
	execS->execProcess=TRUE;
	
	/*Process additional Args*/
	
	/*NOTE:
	*labview has some strange behavior with nulls--
	*anything thats a lvhandle may be a null, and 
	*that basically means size 0. In this case, it 
	*looks as though labview will pass the handle as
	*an actual pointer, but it points to a null. As
	*such, trying to immediately dive down to the 
	*size variable is an access violation*/
	if (args) {
		if (*args) {
			int argslen = ((args)?((*(args))->size):0);
			if (argslen != 0) {
				int i;
				LStrHandle* currArg = &((*args)->data[0]);  
				for (i=0; i<argslen; i++) {
					switch (i) {
					case 0:
						/*do something with data*/
						/* LHStrBuf(*currArg)*/
						break;
					default:
						/*may wish to warn caller that we were passed too many args*/
						break;
					}
					currArg++;
				}
			}
		/*may wish to fail if no args passed*/
		}
	}

	

	/*look up inputs by name*/
	/* we are not using inputs
	err = lookupTag(inputDictionary, input_dbl_1.tagName,input_dbl_1.tagType, &(input_dbl_1.tagIndex));
	if (err != OK) {
		return err;
	}

	err = lookupTag(inputDictionary, input_sgl_1.tagName,input_sgl_1.tagType, &(input_sgl_1.tagIndex));
	if (err != OK) {
		return err;
	}
	*/

	/*look up outputs*/
	/*we are not using outputs
	err = lookupTag(outputDictionary, output_dbl_1.tagName,output_dbl_1.tagType, &(output_dbl_1.tagIndex));
	if (err != OK) {
		return err;
	}
	
	err = lookupTag(outputDictionary, output_sgl_1.tagName,output_sgl_1.tagType, &(output_sgl_1.tagIndex));
	if (err != OK) {
		return err;
	}
	*/

	/*look up parameters*/
	err = lookupTag(parameterDictionary, param_dbl_1.tagName,param_dbl_1.tagType, &(param_dbl_1.tagIndex));
	if (err != OK) {
		return err;
	}
	
	err = lookupTag(parameterDictionary, param_sgl_1.tagName,param_sgl_1.tagType, &(param_sgl_1.tagIndex));
	if (err != OK) {
		return err;
	}

	/*look up results*/
	err = lookupTag(resultDictionary, result_dbl_1.tagName,result_dbl_1.tagType, &(result_dbl_1.tagIndex));
	if (err != OK) {
		return err;
	}

	err = lookupTag(resultDictionary, result_sgl_1.tagName,result_sgl_1.tagType, &(result_sgl_1.tagIndex));
	if (err != OK) {
		return err;
	}

	
	return 0;
}


int PLEXPORT input (lvdatacluster* inputs) {
	/* "read" inputs */
	/*double input_d_1 = 1.2;
	float input_s_1 = 1.1;
	int err;*/
	/*write inputs to tag table*/
	/*
	err = writeDoubleElement(inputs, input_dbl_1.tagIndex, &input_d_1);
	if (err != OK) {
		return err;
	}
	err = writeSingleElement(inputs, input_sgl_1.tagIndex, &input_s_1);
	if (err != OK) {
		return err;
	}
	*/
	return 0;
}

int PLEXPORT output (lvdatacluster* outputs) {
	/*double output_d_1;
	float output_s_1;
	int err;
	*/
	/*read data to write from tag table*/
	/*err = readDoubleElement(outputs, output_dbl_1.tagIndex, &output_d_1);
	if (err != OK) {
		return err;
	}
	err = readSingleElement(outputs, output_sgl_1.tagIndex, &output_s_1);
	if (err != OK) {
		return err;
	}
	*/
	/*"write" data to outputs*/
	return 0;
}

int PLEXPORT process (lvdatacluster* parameters, lvdatacluster* results) {
	/*define process vars*/
	double parameter1;
	float parameter2;
	double result1;
	float result2;
	int err;
	
	/*execution follows this pattern
	*it can be simplified by potentially
	*removing some checks or changing the
	*read/write functions. However, this
	*should be fast enough for right now
	*and it makes the process very clear
	*and explicit*/

	/*read data to write from tag table*/
	err = readDoubleElement(parameters, param_dbl_1.tagIndex, &parameter1);
	if (err != OK) {
		return err;
	}
	err = readSingleElement(parameters, param_sgl_1.tagIndex, &parameter2);
	if (err != OK) {
		return err;
	}

	/*do processing*/
	result1 = procMult(parameter1, parameter2);
	result2 = procAdd(parameter1, parameter2);

	/*write results to tag table*/
	err = writeDoubleElement(results, result_dbl_1.tagIndex, &result1);
	if (err != OK) {
		return err;
	}
	err = writeSingleElement(results, result_sgl_1.tagIndex, &result2);
	if (err != OK) {
		return err;
	}

	return 0;

}

int PLEXPORT classifyErrors(int32 errToClassify, LVBoolean attemptRecovery, errorClass* errType) {
	switch (errToClassify) {
	case 0:
		/*defined as no error for lv*/
		break;
	case NullDatasetPointer:
		*errType = critical;
		break;
	case IndexOutOfRange:
		/*apparently C-lang quirk*/ ;
		LVBoolean recoverySuccess = FALSE;
		if (attemptRecovery) {
			/*attempt magic here*/
			recoverySuccess = TRUE;
		}
		if (recoverySuccess) {
			*errType = trivial; /*still set as trivial in case this has meaning--for example, if debugging any error may be of note*/
		}
		else {
			*errType = recoverable;
		}
		break;
	default:
		break;
	}
	return 0;
}


int closePlugin() {
	/*deallocate any data here*/
	return 0;
}

//==============================================================================
// DLL main entry-point functions

#ifdef _CVI_

int __stdcall DllMain (HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
	switch (fdwReason) {
		case DLL_PROCESS_ATTACH:
			if (InitCVIRTE (hinstDLL, 0, 0) == 0)
				return 0;	  /* out of memory */
			break;
		case DLL_PROCESS_DETACH:
			CloseCVIRTE ();
			break;
	}
	
	return 1;
}

int __stdcall DllEntryPoint (HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
	/* Included for compatibility with Borland */

	return DllMain (hinstDLL, fdwReason, lpvReserved);
}
#endif /*_CVI_*/

#if MSWin && ProcessorType != kX64
#pragma pack(pop)
#endif /*MSWin*/
