/*
 * lvdatainterface.c
 *
 * Defines basic accessor functions for reading and writing to the data arrays. These functions may be modified by the user.
 *
 *  Created on: Mar 18, 2014
 *      Author: Daniel
 */


/*alignment on Wind32*/
#if MSWin && ProcessorType != kX64
#pragma pack(push,1)  
#endif

/*LabVIEW data and type interface*/
#include <extcode.h>

#include "lvdatainterface.h"


/*scalar Double read write*/

int writeDoubleElement(lvdatacluster * dataset, int32 index, double* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_Double))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_Double))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readDoubleElement(lvdatacluster * dataset, int32 index, double* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_Double))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_Double))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array Double read write*/

int writeDoubleArrayElement(lvdatacluster * dataset, int32 index, DoubleArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_DoubleArray))->size;
		if (index < lim && index >= 0) {
			DoubleArrayHandle currentData = (*(dataset->table_DoubleArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readDoubleArrayElement(lvdatacluster * dataset, int32 index, DoubleArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_DoubleArray))->size;
		if (index < lim && index >= 0) {
			DoubleArrayHandle currentData= (*(dataset->table_DoubleArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				DoubleArrayHandle t = (DoubleArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar Single read write*/

int writeSingleElement(lvdatacluster * dataset, int32 index, float* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_Single))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_Single))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readSingleElement(lvdatacluster * dataset, int32 index, float* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_Single))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_Single))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array Single read write*/

int writeSingleArrayElement(lvdatacluster * dataset, int32 index, SingleArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_SingleArray))->size;
		if (index < lim && index >= 0) {
			SingleArrayHandle currentData = (*(dataset->table_SingleArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readSingleArrayElement(lvdatacluster * dataset, int32 index, SingleArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_SingleArray))->size;
		if (index < lim && index >= 0) {
			SingleArrayHandle currentData= (*(dataset->table_SingleArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				SingleArrayHandle t = (SingleArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar I64 read write*/

int writeI64Element(lvdatacluster * dataset, int32 index, int64* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I64))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_I64))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI64Element(lvdatacluster * dataset, int32 index, int64* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I64))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_I64))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array I64 read write*/

int writeI64ArrayElement(lvdatacluster * dataset, int32 index, I64ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I64Array))->size;
		if (index < lim && index >= 0) {
			I64ArrayHandle currentData = (*(dataset->table_I64Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI64ArrayElement(lvdatacluster * dataset, int32 index, I64ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I64Array))->size;
		if (index < lim && index >= 0) {
			I64ArrayHandle currentData= (*(dataset->table_I64Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				I64ArrayHandle t = (I64ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar I32 read write*/

int writeI32Element(lvdatacluster * dataset, int32 index, int32* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I32))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_I32))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI32Element(lvdatacluster * dataset, int32 index, int32* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I32))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_I32))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array I32 read write*/

int writeI32ArrayElement(lvdatacluster * dataset, int32 index, I32ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I32Array))->size;
		if (index < lim && index >= 0) {
			I32ArrayHandle currentData = (*(dataset->table_I32Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI32ArrayElement(lvdatacluster * dataset, int32 index, I32ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I32Array))->size;
		if (index < lim && index >= 0) {
			I32ArrayHandle currentData= (*(dataset->table_I32Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				I32ArrayHandle t = (I32ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar I16 read write*/

int writeI16Element(lvdatacluster * dataset, int32 index, int16* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I16))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_I16))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI16Element(lvdatacluster * dataset, int32 index, int16* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I16))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_I16))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array I16 read write*/

int writeI16ArrayElement(lvdatacluster * dataset, int32 index, I16ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I16Array))->size;
		if (index < lim && index >= 0) {
			I16ArrayHandle currentData = (*(dataset->table_I16Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI16ArrayElement(lvdatacluster * dataset, int32 index, I16ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I16Array))->size;
		if (index < lim && index >= 0) {
			I16ArrayHandle currentData= (*(dataset->table_I16Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				I16ArrayHandle t = (I16ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar I8 read write*/

int writeI8Element(lvdatacluster * dataset, int32 index, int8* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I8))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_I8))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI8Element(lvdatacluster * dataset, int32 index, int8* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I8))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_I8))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array I8 read write*/

int writeI8ArrayElement(lvdatacluster * dataset, int32 index, I8ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I8Array))->size;
		if (index < lim && index >= 0) {
			I8ArrayHandle currentData = (*(dataset->table_I8Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readI8ArrayElement(lvdatacluster * dataset, int32 index, I8ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_I8Array))->size;
		if (index < lim && index >= 0) {
			I8ArrayHandle currentData= (*(dataset->table_I8Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				I8ArrayHandle t = (I8ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar U64 read write*/

int writeU64Element(lvdatacluster * dataset, int32 index, uInt64* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U64))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_U64))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU64Element(lvdatacluster * dataset, int32 index, uInt64* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U64))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_U64))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array U64 read write*/

int writeU64ArrayElement(lvdatacluster * dataset, int32 index, U64ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U64Array))->size;
		if (index < lim && index >= 0) {
			U64ArrayHandle currentData = (*(dataset->table_U64Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU64ArrayElement(lvdatacluster * dataset, int32 index, U64ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U64Array))->size;
		if (index < lim && index >= 0) {
			U64ArrayHandle currentData= (*(dataset->table_U64Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				U64ArrayHandle t = (U64ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar U32 read write*/

int writeU32Element(lvdatacluster * dataset, int32 index, uInt32* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U32))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_U32))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU32Element(lvdatacluster * dataset, int32 index, uInt32* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U32))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_U32))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array U32 read write*/

int writeU32ArrayElement(lvdatacluster * dataset, int32 index, U32ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U32Array))->size;
		if (index < lim && index >= 0) {
			U32ArrayHandle currentData = (*(dataset->table_U32Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU32ArrayElement(lvdatacluster * dataset, int32 index, U32ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U32Array))->size;
		if (index < lim && index >= 0) {
			U32ArrayHandle currentData= (*(dataset->table_U32Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				U32ArrayHandle t = (U32ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar U16 read write*/

int writeU16Element(lvdatacluster * dataset, int32 index, uInt16* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U16))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_U16))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU16Element(lvdatacluster * dataset, int32 index, uInt16* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U16))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_U16))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array U16 read write*/

int writeU16ArrayElement(lvdatacluster * dataset, int32 index, U16ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U16Array))->size;
		if (index < lim && index >= 0) {
			U16ArrayHandle currentData = (*(dataset->table_U16Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU16ArrayElement(lvdatacluster * dataset, int32 index, U16ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U16Array))->size;
		if (index < lim && index >= 0) {
			U16ArrayHandle currentData= (*(dataset->table_U16Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				U16ArrayHandle t = (U16ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar U8 read write*/

int writeU8Element(lvdatacluster * dataset, int32 index, uInt8* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U8))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_U8))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU8Element(lvdatacluster * dataset, int32 index, uInt8* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U8))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_U8))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array U8 read write*/

int writeU8ArrayElement(lvdatacluster * dataset, int32 index, U8ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U8Array))->size;
		if (index < lim && index >= 0) {
			U8ArrayHandle currentData = (*(dataset->table_U8Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readU8ArrayElement(lvdatacluster * dataset, int32 index, U8ArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_U8Array))->size;
		if (index < lim && index >= 0) {
			U8ArrayHandle currentData= (*(dataset->table_U8Array))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				U8ArrayHandle t = (U8ArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar Boolean read write*/

int writeBooleanElement(lvdatacluster * dataset, int32 index, LVBoolean* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_Boolean))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_Boolean))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readBooleanElement(lvdatacluster * dataset, int32 index, LVBoolean* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_Boolean))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_Boolean))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array Boolean read write*/

int writeBooleanArrayElement(lvdatacluster * dataset, int32 index, BooleanArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_BooleanArray))->size;
		if (index < lim && index >= 0) {
			BooleanArrayHandle currentData = (*(dataset->table_BooleanArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readBooleanArrayElement(lvdatacluster * dataset, int32 index, BooleanArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_BooleanArray))->size;
		if (index < lim && index >= 0) {
			BooleanArrayHandle currentData= (*(dataset->table_BooleanArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				BooleanArrayHandle t = (BooleanArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*scalar String read write*/

int writeStringElement(lvdatacluster * dataset, int32 index, LStrHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_String))->size;
		if (index < lim && index >= 0) {
			(*(dataset->table_String))->data[index] = *element;
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readStringElement(lvdatacluster * dataset, int32 index, LStrHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_String))->size;
		if (index < lim && index >= 0) {
			*element = (*(dataset->table_String))->data[index];
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}

/*array String read write*/

int writeStringArrayElement(lvdatacluster * dataset, int32 index, StringArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_StringArray))->size;
		if (index < lim && index >= 0) {
			StringArrayHandle currentData = (*(dataset->table_StringArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(*element);
			if (DSGetHandleSize(currentData) != finalSize) {
				DSSetHandleSize(currentData, finalSize);
			}
			DSCopyHandle(&currentData, element);
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


int readStringArrayElement(lvdatacluster * dataset, int32 index, StringArrayHandle* element)
{
	if (dataset) {
		int32 lim = (*(dataset->table_StringArray))->size;
		if (index < lim && index >= 0) {
			StringArrayHandle currentData= (*(dataset->table_StringArray))->data[index].ArrayHandle;
			size_t finalSize = DSGetHandleSize(currentData);
			if (!element) {
				StringArrayHandle t = (StringArrayHandle) DSNewHandle(finalSize);
				element = &t;
			}
			else if (DSGetHandleSize(element) != finalSize) {
				DSSetHandleSize(*element, finalSize);
			}
			else {
			}
			DSCopyHandle(element, &currentData);			
			return 0;
		}
		else {
			return IndexOutOfRange;
		}
	}
	else {
		return NullDatasetPointer;
	}
}


StringArrayHandle pickDictionary(lvdatadictionary* dictionary, lvtype_e dtype) {
	StringArrayHandle dtable = NULL;
	/*pick correct dictionary for type, just a switch statement on type*/
	switch(dtype) {
	case Double_e:
		dtable = dictionary->dictionary_Double;
		break;
	case Single_e:
		dtable = dictionary->dictionary_Single;
		break;
	case I64_e:
		dtable = dictionary->dictionary_I64;
		break;
	case I32_e:
		dtable = dictionary->dictionary_I32;
		break;
	case I16_e:
		dtable = dictionary->dictionary_I16;
		break;
	case I8_e:
		dtable = dictionary->dictionary_I8;
		break;
	case U64_e:
		dtable = dictionary->dictionary_U64;
		break;
	case U32_e:
		dtable = dictionary->dictionary_U32;
		break;
	case U16_e:
		dtable = dictionary->dictionary_U16;
		break;
	case U8_e:
		dtable = dictionary->dictionary_U8;
		break;
	case Boolean_e:
		dtable = dictionary->dictionary_Boolean;
		break;
	case String_e:
		dtable = dictionary->dictionary_String;
		break;
	case DoubleArray_e:
		dtable = dictionary->dictionary_DoubleArray;
		break;
	case SingleArray_e:
		dtable = dictionary->dictionary_SingleArray;
		break;
	case I64Array_e:
		dtable = dictionary->dictionary_I64Array;
		break;
	case I32Array_e:
		dtable = dictionary->dictionary_I32Array;
		break;
	case I16Array_e:
		dtable = dictionary->dictionary_I16Array;
		break;
	case I8Array_e:
		dtable = dictionary->dictionary_I8Array;
		break;
	case U64Array_e:
		dtable = dictionary->dictionary_U64Array;
		break;
	case U32Array_e:
		dtable = dictionary->dictionary_U32Array;
		break;
	case U16Array_e:
		dtable = dictionary->dictionary_U16Array;
		break;
	case U8Array_e:
		dtable = dictionary->dictionary_U8Array;
		break;
	case BooleanArray_e:
		dtable = dictionary->dictionary_BooleanArray;
		break;
	case StringArray_e:
		dtable = dictionary->dictionary_StringArray;
		break;
	default:
		break;
	}	
	return dtable;
}

/*Look through a given data dictionary for the index of the specified tag and type*/
int lookupLVTag(lvdatadictionary* dictionary, LStrHandle tagName, lvtype_e dtype, int32* tagIndex) {
	*tagIndex = -1; /*index is traditionally set to -1 in LV if an element is not found*/
	int32 tagLen = LHStrLen(tagName);
	if (tagLen==0) {
		return TagEmpty;
		/*labview can use null string handles as empty strings, check that here*/
	}
	
	/*pick correct dictionary for our data type*/
	StringArrayHandle dtable = pickDictionary(dictionary, dtype);
	if (!dtable) {
		/*a null dtable means we broke through in the default case, which indicates bad type support*/
		return TypeNotSupported;
	}


	LStrHandle* currStr = &((*dtable)->data[0]);
	/*for all strings do a stringcompare*/
	int32 i;
	for (i = 0; i < (*dtable)->size; i++) {
			if (LHStrCmp((ConstLStrH) *currStr, (ConstLStrH) tagName)==0) {
				*tagIndex = i;
				return 0;
			}
		currStr++;
	}
	return TagNotFound;
}


int lookupTag(lvdatadictionary* dictionary, ConstCStr tagName, lvtype_e dtype, int32* tagIndex) {
	*tagIndex = -1; /*index is traditionally set to -1 in LV if an element is not found*/
	
	/*get length of name*/
	int32 tagLen = StrLen(tagName);
	
	if (tagLen==0) {
		return TagEmpty;
		/*labview can use null string handles as empty strings, check that here*/
	}
	
	/*pick correct dictionary for our data type*/
	StringArrayHandle dtable = pickDictionary(dictionary, dtype);
	if (!dtable) {
		/*a null dtable means we broke through in the default case, which indicates bad type support*/
		return TypeNotSupported;
	}


	LStrHandle* currStr = &((*dtable)->data[0]);
	/*for all strings do a string compare*/
	int32 i;
	for (i = 0; i < (*dtable)->size; i++) {
		if ((StrNCmp(tagName, LHStrBuf(*currStr), LHStrLen(*currStr))==0) && (LHStrLen(*currStr) != 0)) {
				*tagIndex = i;
				return 0;
		}
		currStr++;
	}
	return TagNotFound;	
}


#if MSWin && ProcessorType != kX64
#pragma pack(pop)
#endif
