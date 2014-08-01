#ifndef LVDATAINT_H
#define LVDATAINT_H

/*LabVIEW data and type interface*/
#include <extcode.h>

/*Alignment on Win32*/
#if MSWin && ProcessorType != kX64
#pragma pack(push,1)	
#endif

/*LabVIEW, esp VxWorks, cannot handle C++ functions well*/
#ifdef __cplusplus
extern "C" {
#endif
	
/*errors*/

#define lvdatainterface_errno -1
#define NullDatasetPointer lvdatainterface_errno-1
#define IndexOutOfRange lvdatainterface_errno-2
#define InvalidType lvdatainterface_errno-3
#define TagEmpty lvdatainterface_errno-4
#define TagNotFound lvdatainterface_errno-5
#define TypeNotSupported lvdatainterface_errno-6

/*enums*/
	
typedef enum {Double_e=0,Single_e,I64_e,I32_e,I16_e,I8_e,U64_e,U32_e,U16_e,U8_e,Boolean_e,String_e,DoubleArray_e,SingleArray_e,I64Array_e,I32Array_e,I16Array_e,I8Array_e,U64Array_e,U32Array_e,U16Array_e,U8Array_e,BooleanArray_e,StringArray_e} lvtype_e;



/*data type definitions for data table and dictionary*/

typedef struct {
	int32 size;
	double data[1];
} DoubleArray;

typedef DoubleArray **DoubleArrayHandle;

typedef struct {
	DoubleArrayHandle ArrayHandle;
} ClusterOfDoubleArray;

typedef struct {
	int32 size;
	ClusterOfDoubleArray data[1];
} ArrayOfDoubleArray;

typedef ArrayOfDoubleArray **ArrayOfDoubleArrayHandle;

typedef struct {
	int32 size;
	float data[1];
} SingleArray;

typedef SingleArray **SingleArrayHandle;

typedef struct {
	SingleArrayHandle ArrayHandle;
} ClusterOfSingleArray;

typedef struct {
	int32 size;
	ClusterOfSingleArray data[1];
} ArrayOfSingleArray;

typedef ArrayOfSingleArray **ArrayOfSingleArrayHandle;

typedef struct {
	int32 size;
	int64 data[1];
} I64Array;

typedef I64Array **I64ArrayHandle;

typedef struct {
	I64ArrayHandle ArrayHandle;
} ClusterOfI64Array;

typedef struct {
	int32 size;
	ClusterOfI64Array data[1];
} ArrayOfI64Array;

typedef ArrayOfI64Array **ArrayOfI64ArrayHandle;

typedef struct {
	int32 size;
	int32 data[1];
} I32Array;

typedef I32Array **I32ArrayHandle;

typedef struct {
	I32ArrayHandle ArrayHandle;
} ClusterOfI32Array;

typedef struct {
	int32 size;
	ClusterOfI32Array data[1];
} ArrayOfI32Array;

typedef ArrayOfI32Array **ArrayOfI32ArrayHandle;

typedef struct {
	int32 size;
	int16 data[1];
} I16Array;

typedef I16Array **I16ArrayHandle;

typedef struct {
	I16ArrayHandle ArrayHandle;
} ClusterOfI16Array;

typedef struct {
	int32 size;
	ClusterOfI16Array data[1];
} ArrayOfI16Array;

typedef ArrayOfI16Array **ArrayOfI16ArrayHandle;

typedef struct {
	int32 size;
	int8 data[1];
} I8Array;

typedef I8Array **I8ArrayHandle;

typedef struct {
	I8ArrayHandle ArrayHandle;
} ClusterOfI8Array;

typedef struct {
	int32 size;
	ClusterOfI8Array data[1];
} ArrayOfI8Array;

typedef ArrayOfI8Array **ArrayOfI8ArrayHandle;

typedef struct {
	int32 size;
	uInt64 data[1];
} U64Array;

typedef U64Array **U64ArrayHandle;

typedef struct {
	U64ArrayHandle ArrayHandle;
} ClusterOfU64Array;

typedef struct {
	int32 size;
	ClusterOfU64Array data[1];
} ArrayOfU64Array;

typedef ArrayOfU64Array **ArrayOfU64ArrayHandle;

typedef struct {
	int32 size;
	uInt32 data[1];
} U32Array;

typedef U32Array **U32ArrayHandle;

typedef struct {
	U32ArrayHandle ArrayHandle;
} ClusterOfU32Array;

typedef struct {
	int32 size;
	ClusterOfU32Array data[1];
} ArrayOfU32Array;

typedef ArrayOfU32Array **ArrayOfU32ArrayHandle;

typedef struct {
	int32 size;
	uInt16 data[1];
} U16Array;

typedef U16Array **U16ArrayHandle;

typedef struct {
	U16ArrayHandle ArrayHandle;
} ClusterOfU16Array;

typedef struct {
	int32 size;
	ClusterOfU16Array data[1];
} ArrayOfU16Array;

typedef ArrayOfU16Array **ArrayOfU16ArrayHandle;

typedef struct {
	int32 size;
	uInt8 data[1];
} U8Array;

typedef U8Array **U8ArrayHandle;

typedef struct {
	U8ArrayHandle ArrayHandle;
} ClusterOfU8Array;

typedef struct {
	int32 size;
	ClusterOfU8Array data[1];
} ArrayOfU8Array;

typedef ArrayOfU8Array **ArrayOfU8ArrayHandle;

typedef struct {
	int32 size;
	LVBoolean data[1];
} BooleanArray;

typedef BooleanArray **BooleanArrayHandle;

typedef struct {
	BooleanArrayHandle ArrayHandle;
} ClusterOfBooleanArray;

typedef struct {
	int32 size;
	ClusterOfBooleanArray data[1];
} ArrayOfBooleanArray;

typedef ArrayOfBooleanArray **ArrayOfBooleanArrayHandle;

typedef struct {
	int32 size;
	LStrHandle data[1];
} StringArray;

typedef StringArray **StringArrayHandle;

typedef struct {
	StringArrayHandle ArrayHandle;
} ClusterOfStringArray;

typedef struct {
	int32 size;
	ClusterOfStringArray data[1];
} ArrayOfStringArray;

typedef ArrayOfStringArray **ArrayOfStringArrayHandle;




/*giant data clusters from lv*/

typedef struct {
	DoubleArrayHandle table_Double;
	SingleArrayHandle table_Single;
	I64ArrayHandle table_I64;
	I32ArrayHandle table_I32;
	I16ArrayHandle table_I16;
	I8ArrayHandle table_I8;
	U64ArrayHandle table_U64;
	U32ArrayHandle table_U32;
	U16ArrayHandle table_U16;
	U8ArrayHandle table_U8;
	BooleanArrayHandle table_Boolean;
	StringArrayHandle table_String;
	ArrayOfDoubleArrayHandle table_DoubleArray;
	ArrayOfSingleArrayHandle table_SingleArray;
	ArrayOfI64ArrayHandle table_I64Array;
	ArrayOfI32ArrayHandle table_I32Array;
	ArrayOfI16ArrayHandle table_I16Array;
	ArrayOfI8ArrayHandle table_I8Array;
	ArrayOfU64ArrayHandle table_U64Array;
	ArrayOfU32ArrayHandle table_U32Array;
	ArrayOfU16ArrayHandle table_U16Array;
	ArrayOfU8ArrayHandle table_U8Array;
	ArrayOfBooleanArrayHandle table_BooleanArray;
	ArrayOfStringArrayHandle table_StringArray;
} lvdatacluster;

typedef struct {
	StringArrayHandle dictionary_Double;
	StringArrayHandle dictionary_Single;
	StringArrayHandle dictionary_I64;
	StringArrayHandle dictionary_I32;
	StringArrayHandle dictionary_I16;
	StringArrayHandle dictionary_I8;
	StringArrayHandle dictionary_U64;
	StringArrayHandle dictionary_U32;
	StringArrayHandle dictionary_U16;
	StringArrayHandle dictionary_U8;
	StringArrayHandle dictionary_String;
	StringArrayHandle dictionary_Boolean;
	StringArrayHandle dictionary_DoubleArray;
	StringArrayHandle dictionary_SingleArray;
	StringArrayHandle dictionary_I64Array;
	StringArrayHandle dictionary_I32Array;
	StringArrayHandle dictionary_I16Array;
	StringArrayHandle dictionary_I8Array;
	StringArrayHandle dictionary_U64Array;
	StringArrayHandle dictionary_U32Array;
	StringArrayHandle dictionary_U16Array;
	StringArrayHandle dictionary_U8Array;
	StringArrayHandle dictionary_StringArray;
	StringArrayHandle dictionary_BooleanArray;
} lvdatadictionary;

/*function declarations for reading and writing data*/

int writeDoubleElement(lvdatacluster*, int32, double*);
int readDoubleElement(lvdatacluster*, int32, double*);
int writeDoubleArrayElement(lvdatacluster*, int32, DoubleArrayHandle*);
int readDoubleArrayElement(lvdatacluster*, int32, DoubleArrayHandle*);
int writeSingleElement(lvdatacluster*, int32, float*);
int readSingleElement(lvdatacluster*, int32, float*);
int writeSingleArrayElement(lvdatacluster*, int32, SingleArrayHandle*);
int readSingleArrayElement(lvdatacluster*, int32, SingleArrayHandle*);
int writeI64Element(lvdatacluster*, int32, int64*);
int readI64Element(lvdatacluster*, int32, int64*);
int writeI64ArrayElement(lvdatacluster*, int32, I64ArrayHandle*);
int readI64ArrayElement(lvdatacluster*, int32, I64ArrayHandle*);
int writeI32Element(lvdatacluster*, int32, int32*);
int readI32Element(lvdatacluster*, int32, int32*);
int writeI32ArrayElement(lvdatacluster*, int32, I32ArrayHandle*);
int readI32ArrayElement(lvdatacluster*, int32, I32ArrayHandle*);
int writeI16Element(lvdatacluster*, int32, int16*);
int readI16Element(lvdatacluster*, int32, int16*);
int writeI16ArrayElement(lvdatacluster*, int32, I16ArrayHandle*);
int readI16ArrayElement(lvdatacluster*, int32, I16ArrayHandle*);
int writeI8Element(lvdatacluster*, int32, int8*);
int readI8Element(lvdatacluster*, int32, int8*);
int writeI8ArrayElement(lvdatacluster*, int32, I8ArrayHandle*);
int readI8ArrayElement(lvdatacluster*, int32, I8ArrayHandle*);
int writeU64Element(lvdatacluster*, int32, uInt64*);
int readU64Element(lvdatacluster*, int32, uInt64*);
int writeU64ArrayElement(lvdatacluster*, int32, U64ArrayHandle*);
int readU64ArrayElement(lvdatacluster*, int32, U64ArrayHandle*);
int writeU32Element(lvdatacluster*, int32, uInt32*);
int readU32Element(lvdatacluster*, int32, uInt32*);
int writeU32ArrayElement(lvdatacluster*, int32, U32ArrayHandle*);
int readU32ArrayElement(lvdatacluster*, int32, U32ArrayHandle*);
int writeU16Element(lvdatacluster*, int32, uInt16*);
int readU16Element(lvdatacluster*, int32, uInt16*);
int writeU16ArrayElement(lvdatacluster*, int32, U16ArrayHandle*);
int readU16ArrayElement(lvdatacluster*, int32, U16ArrayHandle*);
int writeU8Element(lvdatacluster*, int32, uInt8*);
int readU8Element(lvdatacluster*, int32, uInt8*);
int writeU8ArrayElement(lvdatacluster*, int32, U8ArrayHandle*);
int readU8ArrayElement(lvdatacluster*, int32, U8ArrayHandle*);
int writeBooleanElement(lvdatacluster*, int32, LVBoolean*);
int readBooleanElement(lvdatacluster*, int32, LVBoolean*);
int writeBooleanArrayElement(lvdatacluster*, int32, BooleanArrayHandle*);
int readBooleanArrayElement(lvdatacluster*, int32, BooleanArrayHandle*);
int writeStringElement(lvdatacluster*, int32, LStrHandle*);
int readStringElement(lvdatacluster*, int32, LStrHandle*);
int writeStringArrayElement(lvdatacluster*, int32, StringArrayHandle*);
int readStringArrayElement(lvdatacluster*, int32, StringArrayHandle*);


/*dictionary lookup*/
StringArrayHandle pickDictionary(lvdatadictionary*, lvtype_e);
int lookupLVTag(lvdatadictionary*, LStrHandle, lvtype_e, int32*);
int lookupTag(lvdatadictionary*, ConstCStr, lvtype_e, int32*);

/*stupid stuff*/
#ifdef __cplusplus
}
#endif

#if MSWin && ProcessorType != kX64
#pragma pack(pop)
#endif

#endif
