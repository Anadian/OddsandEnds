%g/.*\/\/p$/de
"javascript function macro (<FunctionName>,<Arguments>)
%s/jsfunctionmacro(\([^,]*\),\([^)]*\))/function \1(\2){\r\tconsole.log("%s: ", arguments.callee.name, \2);\r\tvar _return = [0,null];\r\t\r\tconsole.log("%s returned: ", arguments.callee.name, _return);\r\treturn _return;\r}/ge
"javascript log debug macro (<ModuleName>,<FunctionName>,<Message>)
%s/jsdebugtm(\([^,]*\),\([^,]*\),\(.*\));/Log.log(process.argv0,\1,Path.basename(__filename),\2,'debug',\3);/ge
"file comment macro (<Filename>,<Description>)
%s/filecommenttm(\([^,]*\),\([^)]*\))/\/**\r*\t@file \1\r*\t@brief \2\r*\t@author Anadian\r*\t@license MIT License:\rMITlicensetm(2017,Canosw)\r*\//ge
"MIT license macro (<Year>,<Organization>)
%s/MITlicensetm(\([^,]*\),\([^)]*\))/\tCopyright \1 \2\r\tPermission is hereby granted, free of charge, to any person obtaining a copy of this \rsoftware and associated documentation files (the "Software"), to deal in the Software \rwithout restriction, including without limitation the rights to use, copy, modify, \rmerge, publish, distribute, sublicense, and\/or sell copies of the Software, and to \rpermit persons to whom the Software is furnished to do so, subject to the following \rconditions:\r\tThe above copyright notice and this permission notice shall be included in all copies \ror substantial portions of the Software.\r\tTHE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, \rINCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A \rPARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT \rHOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF \rCONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE \rOR THE USE OR OTHER DEALINGS IN THE SOFTWARE./ge
"gnu_make variable initialise and print (<VariableName>,<Value>)
%s/mkvar(\([^,]*\),\(.*\))$/ifeq ($(origin \1),undefined)\r\1=\2\rendif #($(origin \1),undefined)\rifeq ($(VERBOSE),1)\r$(info \1:$(\1))\rendif #($(VERBOSE),1)\r/ge
%s/DPAMC(\([^,]*\),\([^)]*\))/C\\strcpy(DP\\ActionPads[actionpad].actioncodes[DreamPuff_Action_\1].\2code, ""); DP\\ActionPads[actionpad].actioncodes[DreamPuff_Action_\1].\2enabled = 1;/ge
%s/DPAM(\([^)]*\)/DPAMC(\1,primary)\rDPAMC(\1,secondary)\rDPAMC(\1,tertiary/ge
"C Safe Include(<Expression>,<IncludeStatement>)
%s/^CSI(\([^,]*\),\([^)]*\))/\/* \0 *\/\r#if \1\r#include <\2>\r#endif \/* \1 *\/\r/ge
"PredefinedMacroTemplate
%s/^PMT_\([^(]*\)(\([^,]*\),\([^,]*\),\([^,]*\),\([^)]*\))/\/\/\0\r#if \5\r#define CNO_\1_\2 \3\r#define CNO_\1_NAME \4\r#define CNO_\1 CNO_\1_\2\r#endif \/\/\5/ge
"ConditionallyDefinedMacro
%s/^\/\/CDM(\([^,]*\),\([^)]*\))/\0\r#if !defined(\1) \/\/p\r#define \1 \2 \/\/p\r#endif \/\/!defined(\1) \/\/p/ge
%s/LLC\\/LowLevelConfig/ge
%s/DP\\/DreamPuff_/ge
%s/llcvm(\([^)]*\))/C\\sprintf(buffer, "\1=%d\\n", C\\LowLevelConfig.SECTION.\1);\r\t\tC\\fputs(buffer, configfile);/ge
%s/llcnm(\([^,]*\),\([^)]*\))/if(C\\strcmp(name,"\2") == 0) pconfig->\1.\2 = C\\atoi(value);/ge
%s/fwm(\([^)]*\))/#ifndef CNO_\1\r#if C\\H\\PREREQ\r#define CNO_\1(\.\.\.) \1(__VA_ARGS__)\r#else\r#define C\\\1(\.\.\.) C\\noop\r#endif \/\/C\\H\\PREREQ\r#endif \/\/CNO_\1/ge
%s/App\\/Application/ge
%s/C\\/CNO_/ge
%s/H\\/HAVE_/ge
%s/A\\/ALLOW_/ge
%s/c\\/cno_/ge
%s/\\s/_struct/ge
%s/\\f/_func/ge
%s/\\e/_enum/ge
%s/\\ty/_type/ge
%s/ON\\/Option_Name_/ge
%s/headertm(\([^)]*\))/#ifndef \1\r#define \1\r\r#ifdef __cplusplus\rextern "C"{\r#endif \/\/__cplusplus\r\r\r\r#ifdef __cplusplus\r}\r#endif \/\/__cplusplus\r\r#endif \/\/\1/ge
write!