/*rename user_taglist_h to something more appropriate*/
#ifndef USER_TAGLIST_H
#define USER_TAGLIST_H

#include <extcode.h>
#include "lvdatainterface.h"

typedef struct {
	ConstCStr tagName;
	lvtype_e tagType;
	int32 tagIndex;
} dataTag;

/*change indices to -1*/

/*classification: input data*/
/*no inputs
dataTag input_dbl_1 = {"input_dbl_1", Double_e, -1};
dataTag input_sgl_1 = {"input_sgl_1", Single_e, -1};
*/

/*classification: output data*/
/*no outputs
dataTag output_dbl_1 = {"output_dbl_1", Double_e, -1};
dataTag output_sgl_1 = {"output_sgl_1", Single_e, -1};
*/

/*classification: processing parameter*/
dataTag param_dbl_1 = {(ConstCStr) "param_dbl_1", Double_e, -1};
dataTag param_sgl_1 = {(ConstCStr) "param_sgl_1", Single_e, -1};

/*classification: processing result*/
dataTag result_dbl_1 = {(ConstCStr) "result_dbl_1", Double_e, -1};
dataTag result_sgl_1 = {(ConstCStr) "result_sgl_1", Single_e, -1};

#endif  /*ndef USER_TAGLIST_H*/
