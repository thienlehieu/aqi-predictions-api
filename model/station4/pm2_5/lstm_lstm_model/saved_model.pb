#
ôÈ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.9.22v2.9.1-132-g18960c44ad38ÕÎ 

Adam/time_distributed_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_38/bias/v

3Adam/time_distributed_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_38/bias/v*
_output_shapes
:*
dtype0

!Adam/time_distributed_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*2
shared_name#!Adam/time_distributed_38/kernel/v

5Adam/time_distributed_38/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_38/kernel/v*
_output_shapes

:2*
dtype0

 Adam/lstm_51/lstm_cell_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_51/lstm_cell_51/bias/v

4Adam/lstm_51/lstm_cell_51/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_51/lstm_cell_51/bias/v*
_output_shapes	
:È*
dtype0
µ
,Adam/lstm_51/lstm_cell_51/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_51/lstm_cell_51/recurrent_kernel/v
®
@Adam/lstm_51/lstm_cell_51/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_51/lstm_cell_51/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0
¡
"Adam/lstm_51/lstm_cell_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_51/lstm_cell_51/kernel/v

6Adam/lstm_51/lstm_cell_51/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_51/lstm_cell_51/kernel/v*
_output_shapes
:	dÈ*
dtype0

 Adam/lstm_50/lstm_cell_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_50/lstm_cell_50/bias/v

4Adam/lstm_50/lstm_cell_50/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_50/lstm_cell_50/bias/v*
_output_shapes	
:*
dtype0
µ
,Adam/lstm_50/lstm_cell_50/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_50/lstm_cell_50/recurrent_kernel/v
®
@Adam/lstm_50/lstm_cell_50/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_50/lstm_cell_50/recurrent_kernel/v*
_output_shapes
:	d*
dtype0
¡
"Adam/lstm_50/lstm_cell_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_50/lstm_cell_50/kernel/v

6Adam/lstm_50/lstm_cell_50/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_50/lstm_cell_50/kernel/v*
_output_shapes
:	*
dtype0

Adam/time_distributed_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_38/bias/m

3Adam/time_distributed_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_38/bias/m*
_output_shapes
:*
dtype0

!Adam/time_distributed_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*2
shared_name#!Adam/time_distributed_38/kernel/m

5Adam/time_distributed_38/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_38/kernel/m*
_output_shapes

:2*
dtype0

 Adam/lstm_51/lstm_cell_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_51/lstm_cell_51/bias/m

4Adam/lstm_51/lstm_cell_51/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_51/lstm_cell_51/bias/m*
_output_shapes	
:È*
dtype0
µ
,Adam/lstm_51/lstm_cell_51/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_51/lstm_cell_51/recurrent_kernel/m
®
@Adam/lstm_51/lstm_cell_51/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_51/lstm_cell_51/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0
¡
"Adam/lstm_51/lstm_cell_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_51/lstm_cell_51/kernel/m

6Adam/lstm_51/lstm_cell_51/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_51/lstm_cell_51/kernel/m*
_output_shapes
:	dÈ*
dtype0

 Adam/lstm_50/lstm_cell_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_50/lstm_cell_50/bias/m

4Adam/lstm_50/lstm_cell_50/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_50/lstm_cell_50/bias/m*
_output_shapes	
:*
dtype0
µ
,Adam/lstm_50/lstm_cell_50/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_50/lstm_cell_50/recurrent_kernel/m
®
@Adam/lstm_50/lstm_cell_50/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_50/lstm_cell_50/recurrent_kernel/m*
_output_shapes
:	d*
dtype0
¡
"Adam/lstm_50/lstm_cell_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_50/lstm_cell_50/kernel/m

6Adam/lstm_50/lstm_cell_50/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_50/lstm_cell_50/kernel/m*
_output_shapes
:	*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

time_distributed_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nametime_distributed_38/bias

,time_distributed_38/bias/Read/ReadVariableOpReadVariableOptime_distributed_38/bias*
_output_shapes
:*
dtype0

time_distributed_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*+
shared_nametime_distributed_38/kernel

.time_distributed_38/kernel/Read/ReadVariableOpReadVariableOptime_distributed_38/kernel*
_output_shapes

:2*
dtype0

lstm_51/lstm_cell_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_51/lstm_cell_51/bias

-lstm_51/lstm_cell_51/bias/Read/ReadVariableOpReadVariableOplstm_51/lstm_cell_51/bias*
_output_shapes	
:È*
dtype0
§
%lstm_51/lstm_cell_51/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_51/lstm_cell_51/recurrent_kernel
 
9lstm_51/lstm_cell_51/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_51/lstm_cell_51/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_51/lstm_cell_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_51/lstm_cell_51/kernel

/lstm_51/lstm_cell_51/kernel/Read/ReadVariableOpReadVariableOplstm_51/lstm_cell_51/kernel*
_output_shapes
:	dÈ*
dtype0

lstm_50/lstm_cell_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_50/lstm_cell_50/bias

-lstm_50/lstm_cell_50/bias/Read/ReadVariableOpReadVariableOplstm_50/lstm_cell_50/bias*
_output_shapes	
:*
dtype0
§
%lstm_50/lstm_cell_50/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_50/lstm_cell_50/recurrent_kernel
 
9lstm_50/lstm_cell_50/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_50/lstm_cell_50/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_50/lstm_cell_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_50/lstm_cell_50/kernel

/lstm_50/lstm_cell_50/kernel/Read/ReadVariableOpReadVariableOplstm_50/lstm_cell_50/kernel*
_output_shapes
:	*
dtype0

NoOpNoOp
óH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*®H
value¤HB¡H BH
Î
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Á
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_random_generator
$cell
%
state_spec*

&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
	,layer*
<
-0
.1
/2
03
14
25
36
47*
<
-0
.1
/2
03
14
25
36
47*
* 
°
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
:trace_0
;trace_1
<trace_2
=trace_3* 
6
>trace_0
?trace_1
@trace_2
Atrace_3* 
* 
ä
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_rate-m¨.m©/mª0m«1m¬2m­3m®4m¯-v°.v±/v²0v³1v´2vµ3v¶4v·*

Gserving_default* 

-0
.1
/2*

-0
.1
/2*
* 


Hstates
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
* 
ã
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator
]
state_size

-kernel
.recurrent_kernel
/bias*
* 
* 
* 
* 

^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

ctrace_0* 

dtrace_0* 

00
11
22*

00
11
22*
* 


estates
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
6
ktrace_0
ltrace_1
mtrace_2
ntrace_3* 
6
otrace_0
ptrace_1
qtrace_2
rtrace_3* 
* 
ã
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
y_random_generator
z
state_size

0kernel
1recurrent_kernel
2bias*
* 

30
41*

30
41*
* 

{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

3kernel
4bias*
[U
VARIABLE_VALUElstm_50/lstm_cell_50/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_50/lstm_cell_50/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_50/lstm_cell_50/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_51/lstm_cell_51/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_51/lstm_cell_51/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_51/lstm_cell_51/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEtime_distributed_38/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEtime_distributed_38/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

$0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

00
11
22*

00
11
22*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 

,0*
* 
* 
* 
* 
* 
* 
* 

30
41*

30
41*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

¢trace_0* 

£trace_0* 
<
¤	variables
¥	keras_api

¦total

§count*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

¦0
§1*

¤	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_50/lstm_cell_50/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_50/lstm_cell_50/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_50/lstm_cell_50/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_51/lstm_cell_51/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_51/lstm_cell_51/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_51/lstm_cell_51/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/time_distributed_38/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_38/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_50/lstm_cell_50/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_50/lstm_cell_50/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_50/lstm_cell_50/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_51/lstm_cell_51/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_51/lstm_cell_51/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_51/lstm_cell_51/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/time_distributed_38/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_38/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_50_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Â
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_50_inputlstm_50/lstm_cell_50/kernel%lstm_50/lstm_cell_50/recurrent_kernellstm_50/lstm_cell_50/biaslstm_51/lstm_cell_51/kernel%lstm_51/lstm_cell_51/recurrent_kernellstm_51/lstm_cell_51/biastime_distributed_38/kerneltime_distributed_38/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_12034437
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ç
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/lstm_50/lstm_cell_50/kernel/Read/ReadVariableOp9lstm_50/lstm_cell_50/recurrent_kernel/Read/ReadVariableOp-lstm_50/lstm_cell_50/bias/Read/ReadVariableOp/lstm_51/lstm_cell_51/kernel/Read/ReadVariableOp9lstm_51/lstm_cell_51/recurrent_kernel/Read/ReadVariableOp-lstm_51/lstm_cell_51/bias/Read/ReadVariableOp.time_distributed_38/kernel/Read/ReadVariableOp,time_distributed_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp6Adam/lstm_50/lstm_cell_50/kernel/m/Read/ReadVariableOp@Adam/lstm_50/lstm_cell_50/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_50/lstm_cell_50/bias/m/Read/ReadVariableOp6Adam/lstm_51/lstm_cell_51/kernel/m/Read/ReadVariableOp@Adam/lstm_51/lstm_cell_51/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_51/lstm_cell_51/bias/m/Read/ReadVariableOp5Adam/time_distributed_38/kernel/m/Read/ReadVariableOp3Adam/time_distributed_38/bias/m/Read/ReadVariableOp6Adam/lstm_50/lstm_cell_50/kernel/v/Read/ReadVariableOp@Adam/lstm_50/lstm_cell_50/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_50/lstm_cell_50/bias/v/Read/ReadVariableOp6Adam/lstm_51/lstm_cell_51/kernel/v/Read/ReadVariableOp@Adam/lstm_51/lstm_cell_51/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_51/lstm_cell_51/bias/v/Read/ReadVariableOp5Adam/time_distributed_38/kernel/v/Read/ReadVariableOp3Adam/time_distributed_38/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_12036723
Ö	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelstm_50/lstm_cell_50/kernel%lstm_50/lstm_cell_50/recurrent_kernellstm_50/lstm_cell_50/biaslstm_51/lstm_cell_51/kernel%lstm_51/lstm_cell_51/recurrent_kernellstm_51/lstm_cell_51/biastime_distributed_38/kerneltime_distributed_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount"Adam/lstm_50/lstm_cell_50/kernel/m,Adam/lstm_50/lstm_cell_50/recurrent_kernel/m Adam/lstm_50/lstm_cell_50/bias/m"Adam/lstm_51/lstm_cell_51/kernel/m,Adam/lstm_51/lstm_cell_51/recurrent_kernel/m Adam/lstm_51/lstm_cell_51/bias/m!Adam/time_distributed_38/kernel/mAdam/time_distributed_38/bias/m"Adam/lstm_50/lstm_cell_50/kernel/v,Adam/lstm_50/lstm_cell_50/recurrent_kernel/v Adam/lstm_50/lstm_cell_50/bias/v"Adam/lstm_51/lstm_cell_51/kernel/v,Adam/lstm_51/lstm_cell_51/recurrent_kernel/v Adam/lstm_51/lstm_cell_51/bias/v!Adam/time_distributed_38/kernel/vAdam/time_distributed_38/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_12036826÷ 
ï
ø
/__inference_lstm_cell_51_layer_call_fn_12036507

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033234o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
û	
Ð
0__inference_sequential_75_layer_call_fn_12033935
lstm_50_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCalllstm_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_75_layer_call_and_return_conditional_losses_12033916s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_50_input
Å

K__inference_sequential_75_layer_call_and_return_conditional_losses_12034382
lstm_50_input#
lstm_50_12034359:	#
lstm_50_12034361:	d
lstm_50_12034363:	#
lstm_51_12034367:	dÈ#
lstm_51_12034369:	2È
lstm_51_12034371:	È.
time_distributed_38_12034374:2*
time_distributed_38_12034376:
identity¢lstm_50/StatefulPartitionedCall¢lstm_51/StatefulPartitionedCall¢+time_distributed_38/StatefulPartitionedCall
lstm_50/StatefulPartitionedCallStatefulPartitionedCalllstm_50_inputlstm_50_12034359lstm_50_12034361lstm_50_12034363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12033749ð
 repeat_vector_25/PartitionedCallPartitionedCall(lstm_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12033164­
lstm_51/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_25/PartitionedCall:output:0lstm_51_12034367lstm_51_12034369lstm_51_12034371*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12033900È
+time_distributed_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_51/StatefulPartitionedCall:output:0time_distributed_38_12034374time_distributed_38_12034376*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033552r
!time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_38/ReshapeReshape(lstm_51/StatefulPartitionedCall:output:0*time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_38/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_50/StatefulPartitionedCall ^lstm_51/StatefulPartitionedCall,^time_distributed_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_50/StatefulPartitionedCalllstm_50/StatefulPartitionedCall2B
lstm_51/StatefulPartitionedCalllstm_51/StatefulPartitionedCall2Z
+time_distributed_38/StatefulPartitionedCall+time_distributed_38/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_50_input
ª9
Ò
while_body_12033664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_50_matmul_readvariableop_resource_0:	H
5while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_50_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_50_matmul_readvariableop_resource:	F
3while_lstm_cell_50_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_50_biasadd_readvariableop_resource:	¢)while/lstm_cell_50/BiasAdd/ReadVariableOp¢(while/lstm_cell_50/MatMul/ReadVariableOp¢*while/lstm_cell_50/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_50/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_50/addAddV2#while/lstm_cell_50/MatMul:product:0%while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_50/BiasAddBiasAddwhile/lstm_cell_50/add:z:01while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_50/splitSplit+while/lstm_cell_50/split/split_dim:output:0#while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_50/SigmoidSigmoid!while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_1Sigmoid!while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mulMul while/lstm_cell_50/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_50/ReluRelu!while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_1Mulwhile/lstm_cell_50/Sigmoid:y:0%while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/add_1AddV2while/lstm_cell_50/mul:z:0while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_2Sigmoid!while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_50/Relu_1Reluwhile/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_2Mul while/lstm_cell_50/Sigmoid_2:y:0'while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_50/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_50/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_50/BiasAdd/ReadVariableOp)^while/lstm_cell_50/MatMul/ReadVariableOp+^while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_50_biasadd_readvariableop_resource4while_lstm_cell_50_biasadd_readvariableop_resource_0"l
3while_lstm_cell_50_matmul_1_readvariableop_resource5while_lstm_cell_50_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_50_matmul_readvariableop_resource3while_lstm_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_50/BiasAdd/ReadVariableOp)while/lstm_cell_50/BiasAdd/ReadVariableOp2T
(while/lstm_cell_50/MatMul/ReadVariableOp(while/lstm_cell_50/MatMul/ReadVariableOp2X
*while/lstm_cell_50/MatMul_1/ReadVariableOp*while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
É
Ü
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033552

inputs$
dense_162_12033542:2 
dense_162_12033544:
identity¢!dense_162/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!dense_162/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_162_12033542dense_162_12033544*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_162_layer_call_and_return_conditional_losses_12033541\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape*dense_162/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
NoOpNoOp"^dense_162/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¿
Í
while_cond_12035182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12035182___redundant_placeholder06
2while_while_cond_12035182___redundant_placeholder16
2while_while_cond_12035182___redundant_placeholder26
2while_while_cond_12035182___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ï
ø
/__inference_lstm_cell_50_layer_call_fn_12036409

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12032865o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
É
Ü
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033591

inputs$
dense_162_12033581:2 
dense_162_12033583:
identity¢!dense_162/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!dense_162/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_162_12033581dense_162_12033583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_162_layer_call_and_return_conditional_losses_12033541\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape*dense_162/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
NoOpNoOp"^dense_162/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¯K

E__inference_lstm_50_layer_call_and_return_conditional_losses_12033749

inputs>
+lstm_cell_50_matmul_readvariableop_resource:	@
-lstm_cell_50_matmul_1_readvariableop_resource:	d;
,lstm_cell_50_biasadd_readvariableop_resource:	
identity¢#lstm_cell_50/BiasAdd/ReadVariableOp¢"lstm_cell_50/MatMul/ReadVariableOp¢$lstm_cell_50/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_50/MatMul/ReadVariableOpReadVariableOp+lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_50/MatMulMatMulstrided_slice_2:output:0*lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_50/MatMul_1MatMulzeros:output:0,lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_50/addAddV2lstm_cell_50/MatMul:product:0lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_50/BiasAddBiasAddlstm_cell_50/add:z:0+lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_50/splitSplit%lstm_cell_50/split/split_dim:output:0lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_50/SigmoidSigmoidlstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_1Sigmoidlstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_50/mulMullstm_cell_50/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_50/ReluRelulstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_1Mullstm_cell_50/Sigmoid:y:0lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_50/add_1AddV2lstm_cell_50/mul:z:0lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_2Sigmoidlstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_50/Relu_1Relulstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_2Mullstm_cell_50/Sigmoid_2:y:0!lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_50_matmul_readvariableop_resource-lstm_cell_50_matmul_1_readvariableop_resource,lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12033664*
condR
while_cond_12033663*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
NoOpNoOp$^lstm_cell_50/BiasAdd/ReadVariableOp#^lstm_cell_50/MatMul/ReadVariableOp%^lstm_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_50/BiasAdd/ReadVariableOp#lstm_cell_50/BiasAdd/ReadVariableOp2H
"lstm_cell_50/MatMul/ReadVariableOp"lstm_cell_50/MatMul/ReadVariableOp2L
$lstm_cell_50/MatMul_1/ReadVariableOp$lstm_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

í
lstm_50_while_cond_12034838,
(lstm_50_while_lstm_50_while_loop_counter2
.lstm_50_while_lstm_50_while_maximum_iterations
lstm_50_while_placeholder
lstm_50_while_placeholder_1
lstm_50_while_placeholder_2
lstm_50_while_placeholder_3.
*lstm_50_while_less_lstm_50_strided_slice_1F
Blstm_50_while_lstm_50_while_cond_12034838___redundant_placeholder0F
Blstm_50_while_lstm_50_while_cond_12034838___redundant_placeholder1F
Blstm_50_while_lstm_50_while_cond_12034838___redundant_placeholder2F
Blstm_50_while_lstm_50_while_cond_12034838___redundant_placeholder3
lstm_50_while_identity

lstm_50/while/LessLesslstm_50_while_placeholder*lstm_50_while_less_lstm_50_strided_slice_1*
T0*
_output_shapes
: [
lstm_50/while/IdentityIdentitylstm_50/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_50_while_identitylstm_50/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ºS

)sequential_75_lstm_50_while_body_12032558H
Dsequential_75_lstm_50_while_sequential_75_lstm_50_while_loop_counterN
Jsequential_75_lstm_50_while_sequential_75_lstm_50_while_maximum_iterations+
'sequential_75_lstm_50_while_placeholder-
)sequential_75_lstm_50_while_placeholder_1-
)sequential_75_lstm_50_while_placeholder_2-
)sequential_75_lstm_50_while_placeholder_3G
Csequential_75_lstm_50_while_sequential_75_lstm_50_strided_slice_1_0
sequential_75_lstm_50_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_50_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_75_lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0:	^
Ksequential_75_lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dY
Jsequential_75_lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0:	(
$sequential_75_lstm_50_while_identity*
&sequential_75_lstm_50_while_identity_1*
&sequential_75_lstm_50_while_identity_2*
&sequential_75_lstm_50_while_identity_3*
&sequential_75_lstm_50_while_identity_4*
&sequential_75_lstm_50_while_identity_5E
Asequential_75_lstm_50_while_sequential_75_lstm_50_strided_slice_1
}sequential_75_lstm_50_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_50_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_75_lstm_50_while_lstm_cell_50_matmul_readvariableop_resource:	\
Isequential_75_lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource:	dW
Hsequential_75_lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource:	¢?sequential_75/lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp¢>sequential_75/lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp¢@sequential_75/lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp
Msequential_75/lstm_50/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_75/lstm_50/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_75_lstm_50_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_50_tensorarrayunstack_tensorlistfromtensor_0'sequential_75_lstm_50_while_placeholderVsequential_75/lstm_50/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0É
>sequential_75/lstm_50/while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOpIsequential_75_lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ü
/sequential_75/lstm_50/while/lstm_cell_50/MatMulMatMulFsequential_75/lstm_50/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_75/lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
@sequential_75/lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOpKsequential_75_lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ã
1sequential_75/lstm_50/while/lstm_cell_50/MatMul_1MatMul)sequential_75_lstm_50_while_placeholder_2Hsequential_75/lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
,sequential_75/lstm_50/while/lstm_cell_50/addAddV29sequential_75/lstm_50/while/lstm_cell_50/MatMul:product:0;sequential_75/lstm_50/while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
?sequential_75/lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOpJsequential_75_lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0é
0sequential_75/lstm_50/while/lstm_cell_50/BiasAddBiasAdd0sequential_75/lstm_50/while/lstm_cell_50/add:z:0Gsequential_75/lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
8sequential_75/lstm_50/while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_75/lstm_50/while/lstm_cell_50/splitSplitAsequential_75/lstm_50/while/lstm_cell_50/split/split_dim:output:09sequential_75/lstm_50/while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¦
0sequential_75/lstm_50/while/lstm_cell_50/SigmoidSigmoid7sequential_75/lstm_50/while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
2sequential_75/lstm_50/while/lstm_cell_50/Sigmoid_1Sigmoid7sequential_75/lstm_50/while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÈ
,sequential_75/lstm_50/while/lstm_cell_50/mulMul6sequential_75/lstm_50/while/lstm_cell_50/Sigmoid_1:y:0)sequential_75_lstm_50_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
-sequential_75/lstm_50/while/lstm_cell_50/ReluRelu7sequential_75/lstm_50/while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÚ
.sequential_75/lstm_50/while/lstm_cell_50/mul_1Mul4sequential_75/lstm_50/while/lstm_cell_50/Sigmoid:y:0;sequential_75/lstm_50/while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
.sequential_75/lstm_50/while/lstm_cell_50/add_1AddV20sequential_75/lstm_50/while/lstm_cell_50/mul:z:02sequential_75/lstm_50/while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
2sequential_75/lstm_50/while/lstm_cell_50/Sigmoid_2Sigmoid7sequential_75/lstm_50/while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
/sequential_75/lstm_50/while/lstm_cell_50/Relu_1Relu2sequential_75/lstm_50/while/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÞ
.sequential_75/lstm_50/while/lstm_cell_50/mul_2Mul6sequential_75/lstm_50/while/lstm_cell_50/Sigmoid_2:y:0=sequential_75/lstm_50/while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Fsequential_75/lstm_50/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Å
@sequential_75/lstm_50/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_75_lstm_50_while_placeholder_1Osequential_75/lstm_50/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_75/lstm_50/while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_75/lstm_50/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_75/lstm_50/while/addAddV2'sequential_75_lstm_50_while_placeholder*sequential_75/lstm_50/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_75/lstm_50/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_75/lstm_50/while/add_1AddV2Dsequential_75_lstm_50_while_sequential_75_lstm_50_while_loop_counter,sequential_75/lstm_50/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_75/lstm_50/while/IdentityIdentity%sequential_75/lstm_50/while/add_1:z:0!^sequential_75/lstm_50/while/NoOp*
T0*
_output_shapes
: Â
&sequential_75/lstm_50/while/Identity_1IdentityJsequential_75_lstm_50_while_sequential_75_lstm_50_while_maximum_iterations!^sequential_75/lstm_50/while/NoOp*
T0*
_output_shapes
: 
&sequential_75/lstm_50/while/Identity_2Identity#sequential_75/lstm_50/while/add:z:0!^sequential_75/lstm_50/while/NoOp*
T0*
_output_shapes
: È
&sequential_75/lstm_50/while/Identity_3IdentityPsequential_75/lstm_50/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_75/lstm_50/while/NoOp*
T0*
_output_shapes
: »
&sequential_75/lstm_50/while/Identity_4Identity2sequential_75/lstm_50/while/lstm_cell_50/mul_2:z:0!^sequential_75/lstm_50/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
&sequential_75/lstm_50/while/Identity_5Identity2sequential_75/lstm_50/while/lstm_cell_50/add_1:z:0!^sequential_75/lstm_50/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
 sequential_75/lstm_50/while/NoOpNoOp@^sequential_75/lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp?^sequential_75/lstm_50/while/lstm_cell_50/MatMul/ReadVariableOpA^sequential_75/lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_75_lstm_50_while_identity-sequential_75/lstm_50/while/Identity:output:0"Y
&sequential_75_lstm_50_while_identity_1/sequential_75/lstm_50/while/Identity_1:output:0"Y
&sequential_75_lstm_50_while_identity_2/sequential_75/lstm_50/while/Identity_2:output:0"Y
&sequential_75_lstm_50_while_identity_3/sequential_75/lstm_50/while/Identity_3:output:0"Y
&sequential_75_lstm_50_while_identity_4/sequential_75/lstm_50/while/Identity_4:output:0"Y
&sequential_75_lstm_50_while_identity_5/sequential_75/lstm_50/while/Identity_5:output:0"
Hsequential_75_lstm_50_while_lstm_cell_50_biasadd_readvariableop_resourceJsequential_75_lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0"
Isequential_75_lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resourceKsequential_75_lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0"
Gsequential_75_lstm_50_while_lstm_cell_50_matmul_readvariableop_resourceIsequential_75_lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0"
Asequential_75_lstm_50_while_sequential_75_lstm_50_strided_slice_1Csequential_75_lstm_50_while_sequential_75_lstm_50_strided_slice_1_0"
}sequential_75_lstm_50_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_50_tensorarrayunstack_tensorlistfromtensorsequential_75_lstm_50_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_50_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
?sequential_75/lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp?sequential_75/lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp2
>sequential_75/lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp>sequential_75/lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp2
@sequential_75/lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp@sequential_75/lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_12033663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12033663___redundant_placeholder06
2while_while_cond_12033663___redundant_placeholder16
2while_while_cond_12033663___redundant_placeholder26
2while_while_cond_12033663___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
¿
Í
while_cond_12033438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12033438___redundant_placeholder06
2while_while_cond_12033438___redundant_placeholder16
2while_while_cond_12033438___redundant_placeholder26
2while_while_cond_12033438___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ÇA
Ò

lstm_51_while_body_12034983,
(lstm_51_while_lstm_51_while_loop_counter2
.lstm_51_while_lstm_51_while_maximum_iterations
lstm_51_while_placeholder
lstm_51_while_placeholder_1
lstm_51_while_placeholder_2
lstm_51_while_placeholder_3+
'lstm_51_while_lstm_51_strided_slice_1_0g
clstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈP
=lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈK
<lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
lstm_51_while_identity
lstm_51_while_identity_1
lstm_51_while_identity_2
lstm_51_while_identity_3
lstm_51_while_identity_4
lstm_51_while_identity_5)
%lstm_51_while_lstm_51_strided_slice_1e
alstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensorL
9lstm_51_while_lstm_cell_51_matmul_readvariableop_resource:	dÈN
;lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈI
:lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource:	È¢1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp¢0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp¢2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp
?lstm_51/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_51/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensor_0lstm_51_while_placeholderHlstm_51/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp;lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ò
!lstm_51/while/lstm_cell_51/MatMulMatMul8lstm_51/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ±
2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp=lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¹
#lstm_51/while/lstm_cell_51/MatMul_1MatMullstm_51_while_placeholder_2:lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¶
lstm_51/while/lstm_cell_51/addAddV2+lstm_51/while/lstm_cell_51/MatMul:product:0-lstm_51/while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ«
1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp<lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0¿
"lstm_51/while/lstm_cell_51/BiasAddBiasAdd"lstm_51/while/lstm_cell_51/add:z:09lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈl
*lstm_51/while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_51/while/lstm_cell_51/splitSplit3lstm_51/while/lstm_cell_51/split/split_dim:output:0+lstm_51/while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
"lstm_51/while/lstm_cell_51/SigmoidSigmoid)lstm_51/while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_51/while/lstm_cell_51/Sigmoid_1Sigmoid)lstm_51/while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/while/lstm_cell_51/mulMul(lstm_51/while/lstm_cell_51/Sigmoid_1:y:0lstm_51_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/while/lstm_cell_51/ReluRelu)lstm_51/while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
 lstm_51/while/lstm_cell_51/mul_1Mul&lstm_51/while/lstm_cell_51/Sigmoid:y:0-lstm_51/while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
 lstm_51/while/lstm_cell_51/add_1AddV2"lstm_51/while/lstm_cell_51/mul:z:0$lstm_51/while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_51/while/lstm_cell_51/Sigmoid_2Sigmoid)lstm_51/while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!lstm_51/while/lstm_cell_51/Relu_1Relu$lstm_51/while/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
 lstm_51/while/lstm_cell_51/mul_2Mul(lstm_51/while/lstm_cell_51/Sigmoid_2:y:0/lstm_51/while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2å
2lstm_51/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_51_while_placeholder_1lstm_51_while_placeholder$lstm_51/while/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_51/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_51/while/addAddV2lstm_51_while_placeholderlstm_51/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_51/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_51/while/add_1AddV2(lstm_51_while_lstm_51_while_loop_counterlstm_51/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_51/while/IdentityIdentitylstm_51/while/add_1:z:0^lstm_51/while/NoOp*
T0*
_output_shapes
: 
lstm_51/while/Identity_1Identity.lstm_51_while_lstm_51_while_maximum_iterations^lstm_51/while/NoOp*
T0*
_output_shapes
: q
lstm_51/while/Identity_2Identitylstm_51/while/add:z:0^lstm_51/while/NoOp*
T0*
_output_shapes
: 
lstm_51/while/Identity_3IdentityBlstm_51/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_51/while/NoOp*
T0*
_output_shapes
: 
lstm_51/while/Identity_4Identity$lstm_51/while/lstm_cell_51/mul_2:z:0^lstm_51/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/while/Identity_5Identity$lstm_51/while/lstm_cell_51/add_1:z:0^lstm_51/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ð
lstm_51/while/NoOpNoOp2^lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp1^lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp3^lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_51_while_identitylstm_51/while/Identity:output:0"=
lstm_51_while_identity_1!lstm_51/while/Identity_1:output:0"=
lstm_51_while_identity_2!lstm_51/while/Identity_2:output:0"=
lstm_51_while_identity_3!lstm_51/while/Identity_3:output:0"=
lstm_51_while_identity_4!lstm_51/while/Identity_4:output:0"=
lstm_51_while_identity_5!lstm_51/while/Identity_5:output:0"P
%lstm_51_while_lstm_51_strided_slice_1'lstm_51_while_lstm_51_strided_slice_1_0"z
:lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource<lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0"|
;lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource=lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0"x
9lstm_51_while_lstm_cell_51_matmul_readvariableop_resource;lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0"È
alstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensorclstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2f
1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp2d
0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp2h
2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
×

J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033234

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
9

E__inference_lstm_50_layer_call_and_return_conditional_losses_12032950

inputs(
lstm_cell_50_12032866:	(
lstm_cell_50_12032868:	d$
lstm_cell_50_12032870:	
identity¢$lstm_cell_50/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maský
$lstm_cell_50/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_50_12032866lstm_cell_50_12032868lstm_cell_50_12032870*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12032865n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Á
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_50_12032866lstm_cell_50_12032868lstm_cell_50_12032870*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12032880*
condR
while_cond_12032879*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
NoOpNoOp%^lstm_cell_50/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_50/StatefulPartitionedCall$lstm_cell_50/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
ø
/__inference_lstm_cell_51_layer_call_fn_12036524

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033380o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
 

í
lstm_51_while_cond_12034982,
(lstm_51_while_lstm_51_while_loop_counter2
.lstm_51_while_lstm_51_while_maximum_iterations
lstm_51_while_placeholder
lstm_51_while_placeholder_1
lstm_51_while_placeholder_2
lstm_51_while_placeholder_3.
*lstm_51_while_less_lstm_51_strided_slice_1F
Blstm_51_while_lstm_51_while_cond_12034982___redundant_placeholder0F
Blstm_51_while_lstm_51_while_cond_12034982___redundant_placeholder1F
Blstm_51_while_lstm_51_while_cond_12034982___redundant_placeholder2F
Blstm_51_while_lstm_51_while_cond_12034982___redundant_placeholder3
lstm_51_while_identity

lstm_51/while/LessLesslstm_51_while_placeholder*lstm_51_while_less_lstm_51_strided_slice_1*
T0*
_output_shapes
: [
lstm_51/while/IdentityIdentitylstm_51/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_51_while_identitylstm_51/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ñ
Ì
$__inference__traced_restore_12036826
file_prefix?
,assignvariableop_lstm_50_lstm_cell_50_kernel:	K
8assignvariableop_1_lstm_50_lstm_cell_50_recurrent_kernel:	d;
,assignvariableop_2_lstm_50_lstm_cell_50_bias:	A
.assignvariableop_3_lstm_51_lstm_cell_51_kernel:	dÈK
8assignvariableop_4_lstm_51_lstm_cell_51_recurrent_kernel:	2È;
,assignvariableop_5_lstm_51_lstm_cell_51_bias:	È?
-assignvariableop_6_time_distributed_38_kernel:29
+assignvariableop_7_time_distributed_38_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: I
6assignvariableop_15_adam_lstm_50_lstm_cell_50_kernel_m:	S
@assignvariableop_16_adam_lstm_50_lstm_cell_50_recurrent_kernel_m:	dC
4assignvariableop_17_adam_lstm_50_lstm_cell_50_bias_m:	I
6assignvariableop_18_adam_lstm_51_lstm_cell_51_kernel_m:	dÈS
@assignvariableop_19_adam_lstm_51_lstm_cell_51_recurrent_kernel_m:	2ÈC
4assignvariableop_20_adam_lstm_51_lstm_cell_51_bias_m:	ÈG
5assignvariableop_21_adam_time_distributed_38_kernel_m:2A
3assignvariableop_22_adam_time_distributed_38_bias_m:I
6assignvariableop_23_adam_lstm_50_lstm_cell_50_kernel_v:	S
@assignvariableop_24_adam_lstm_50_lstm_cell_50_recurrent_kernel_v:	dC
4assignvariableop_25_adam_lstm_50_lstm_cell_50_bias_v:	I
6assignvariableop_26_adam_lstm_51_lstm_cell_51_kernel_v:	dÈS
@assignvariableop_27_adam_lstm_51_lstm_cell_51_recurrent_kernel_v:	2ÈC
4assignvariableop_28_adam_lstm_51_lstm_cell_51_bias_v:	ÈG
5assignvariableop_29_adam_time_distributed_38_kernel_v:2A
3assignvariableop_30_adam_time_distributed_38_bias_v:
identity_32¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Þ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueúB÷ B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH°
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Á
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp,assignvariableop_lstm_50_lstm_cell_50_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_1AssignVariableOp8assignvariableop_1_lstm_50_lstm_cell_50_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_50_lstm_cell_50_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_lstm_51_lstm_cell_51_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_4AssignVariableOp8assignvariableop_4_lstm_51_lstm_cell_51_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_51_lstm_cell_51_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp-assignvariableop_6_time_distributed_38_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp+assignvariableop_7_time_distributed_38_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_15AssignVariableOp6assignvariableop_15_adam_lstm_50_lstm_cell_50_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_16AssignVariableOp@assignvariableop_16_adam_lstm_50_lstm_cell_50_recurrent_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_lstm_50_lstm_cell_50_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_51_lstm_cell_51_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_51_lstm_cell_51_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_51_lstm_cell_51_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_time_distributed_38_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_22AssignVariableOp3assignvariableop_22_adam_time_distributed_38_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_50_lstm_cell_50_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_50_lstm_cell_50_recurrent_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_50_lstm_cell_50_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_51_lstm_cell_51_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_51_lstm_cell_51_recurrent_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_51_lstm_cell_51_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_time_distributed_38_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_time_distributed_38_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ù
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: æ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¿
Í
while_cond_12036247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12036247___redundant_placeholder06
2while_while_cond_12036247___redundant_placeholder16
2while_while_cond_12036247___redundant_placeholder26
2while_while_cond_12036247___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
¨

)sequential_75_lstm_50_while_cond_12032557H
Dsequential_75_lstm_50_while_sequential_75_lstm_50_while_loop_counterN
Jsequential_75_lstm_50_while_sequential_75_lstm_50_while_maximum_iterations+
'sequential_75_lstm_50_while_placeholder-
)sequential_75_lstm_50_while_placeholder_1-
)sequential_75_lstm_50_while_placeholder_2-
)sequential_75_lstm_50_while_placeholder_3J
Fsequential_75_lstm_50_while_less_sequential_75_lstm_50_strided_slice_1b
^sequential_75_lstm_50_while_sequential_75_lstm_50_while_cond_12032557___redundant_placeholder0b
^sequential_75_lstm_50_while_sequential_75_lstm_50_while_cond_12032557___redundant_placeholder1b
^sequential_75_lstm_50_while_sequential_75_lstm_50_while_cond_12032557___redundant_placeholder2b
^sequential_75_lstm_50_while_sequential_75_lstm_50_while_cond_12032557___redundant_placeholder3(
$sequential_75_lstm_50_while_identity
º
 sequential_75/lstm_50/while/LessLess'sequential_75_lstm_50_while_placeholderFsequential_75_lstm_50_while_less_sequential_75_lstm_50_strided_slice_1*
T0*
_output_shapes
: w
$sequential_75/lstm_50/while/IdentityIdentity$sequential_75/lstm_50/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_75_lstm_50_while_identity-sequential_75/lstm_50/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
¤$
ñ
while_body_12032880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_50_12032904_0:	0
while_lstm_cell_50_12032906_0:	d,
while_lstm_cell_50_12032908_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_50_12032904:	.
while_lstm_cell_50_12032906:	d*
while_lstm_cell_50_12032908:	¢*while/lstm_cell_50/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0»
*while/lstm_cell_50/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_50_12032904_0while_lstm_cell_50_12032906_0while_lstm_cell_50_12032908_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12032865r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_50/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_50/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity3while/lstm_cell_50/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy

while/NoOpNoOp+^while/lstm_cell_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_50_12032904while_lstm_cell_50_12032904_0"<
while_lstm_cell_50_12032906while_lstm_cell_50_12032906_0"<
while_lstm_cell_50_12032908while_lstm_cell_50_12032908_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_50/StatefulPartitionedCall*while/lstm_cell_50/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
8
Ò
while_body_12035819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_51_biasadd_readvariableop_resource:	È¢)while/lstm_cell_51/BiasAdd/ReadVariableOp¢(while/lstm_cell_51/MatMul/ReadVariableOp¢*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ª9
Ò
while_body_12035183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_50_matmul_readvariableop_resource_0:	H
5while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_50_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_50_matmul_readvariableop_resource:	F
3while_lstm_cell_50_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_50_biasadd_readvariableop_resource:	¢)while/lstm_cell_50/BiasAdd/ReadVariableOp¢(while/lstm_cell_50/MatMul/ReadVariableOp¢*while/lstm_cell_50/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_50/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_50/addAddV2#while/lstm_cell_50/MatMul:product:0%while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_50/BiasAddBiasAddwhile/lstm_cell_50/add:z:01while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_50/splitSplit+while/lstm_cell_50/split/split_dim:output:0#while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_50/SigmoidSigmoid!while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_1Sigmoid!while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mulMul while/lstm_cell_50/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_50/ReluRelu!while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_1Mulwhile/lstm_cell_50/Sigmoid:y:0%while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/add_1AddV2while/lstm_cell_50/mul:z:0while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_2Sigmoid!while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_50/Relu_1Reluwhile/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_2Mul while/lstm_cell_50/Sigmoid_2:y:0'while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_50/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_50/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_50/BiasAdd/ReadVariableOp)^while/lstm_cell_50/MatMul/ReadVariableOp+^while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_50_biasadd_readvariableop_resource4while_lstm_cell_50_biasadd_readvariableop_resource_0"l
3while_lstm_cell_50_matmul_1_readvariableop_resource5while_lstm_cell_50_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_50_matmul_readvariableop_resource3while_lstm_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_50/BiasAdd/ReadVariableOp)while/lstm_cell_50/BiasAdd/ReadVariableOp2T
(while/lstm_cell_50/MatMul/ReadVariableOp(while/lstm_cell_50/MatMul/ReadVariableOp2X
*while/lstm_cell_50/MatMul_1/ReadVariableOp*while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
©J

E__inference_lstm_51_layer_call_and_return_conditional_losses_12036189

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	dÈ@
-lstm_cell_51_matmul_1_readvariableop_resource:	2È;
,lstm_cell_51_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_51/BiasAdd/ReadVariableOp¢"lstm_cell_51/MatMul/ReadVariableOp¢$lstm_cell_51/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12036105*
condR
while_cond_12036104*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ÒK

E__inference_lstm_50_layer_call_and_return_conditional_losses_12035268
inputs_0>
+lstm_cell_50_matmul_readvariableop_resource:	@
-lstm_cell_50_matmul_1_readvariableop_resource:	d;
,lstm_cell_50_biasadd_readvariableop_resource:	
identity¢#lstm_cell_50/BiasAdd/ReadVariableOp¢"lstm_cell_50/MatMul/ReadVariableOp¢$lstm_cell_50/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_50/MatMul/ReadVariableOpReadVariableOp+lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_50/MatMulMatMulstrided_slice_2:output:0*lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_50/MatMul_1MatMulzeros:output:0,lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_50/addAddV2lstm_cell_50/MatMul:product:0lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_50/BiasAddBiasAddlstm_cell_50/add:z:0+lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_50/splitSplit%lstm_cell_50/split/split_dim:output:0lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_50/SigmoidSigmoidlstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_1Sigmoidlstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_50/mulMullstm_cell_50/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_50/ReluRelulstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_1Mullstm_cell_50/Sigmoid:y:0lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_50/add_1AddV2lstm_cell_50/mul:z:0lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_2Sigmoidlstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_50/Relu_1Relulstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_2Mullstm_cell_50/Sigmoid_2:y:0!lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_50_matmul_readvariableop_resource-lstm_cell_50_matmul_1_readvariableop_resource,lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12035183*
condR
while_cond_12035182*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
NoOpNoOp$^lstm_cell_50/BiasAdd/ReadVariableOp#^lstm_cell_50/MatMul/ReadVariableOp%^lstm_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_50/BiasAdd/ReadVariableOp#lstm_cell_50/BiasAdd/ReadVariableOp2H
"lstm_cell_50/MatMul/ReadVariableOp"lstm_cell_50/MatMul/ReadVariableOp2L
$lstm_cell_50/MatMul_1/ReadVariableOp$lstm_cell_50/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
û	
Ð
0__inference_sequential_75_layer_call_fn_12034356
lstm_50_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCalllstm_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034316s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_50_input
ª9
Ò
while_body_12035618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_50_matmul_readvariableop_resource_0:	H
5while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_50_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_50_matmul_readvariableop_resource:	F
3while_lstm_cell_50_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_50_biasadd_readvariableop_resource:	¢)while/lstm_cell_50/BiasAdd/ReadVariableOp¢(while/lstm_cell_50/MatMul/ReadVariableOp¢*while/lstm_cell_50/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_50/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_50/addAddV2#while/lstm_cell_50/MatMul:product:0%while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_50/BiasAddBiasAddwhile/lstm_cell_50/add:z:01while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_50/splitSplit+while/lstm_cell_50/split/split_dim:output:0#while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_50/SigmoidSigmoid!while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_1Sigmoid!while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mulMul while/lstm_cell_50/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_50/ReluRelu!while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_1Mulwhile/lstm_cell_50/Sigmoid:y:0%while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/add_1AddV2while/lstm_cell_50/mul:z:0while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_2Sigmoid!while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_50/Relu_1Reluwhile/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_2Mul while/lstm_cell_50/Sigmoid_2:y:0'while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_50/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_50/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_50/BiasAdd/ReadVariableOp)^while/lstm_cell_50/MatMul/ReadVariableOp+^while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_50_biasadd_readvariableop_resource4while_lstm_cell_50_biasadd_readvariableop_resource_0"l
3while_lstm_cell_50_matmul_1_readvariableop_resource5while_lstm_cell_50_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_50_matmul_readvariableop_resource3while_lstm_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_50/BiasAdd/ReadVariableOp)while/lstm_cell_50/BiasAdd/ReadVariableOp2T
(while/lstm_cell_50/MatMul/ReadVariableOp(while/lstm_cell_50/MatMul/ReadVariableOp2X
*while/lstm_cell_50/MatMul_1/ReadVariableOp*while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¾
j
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12035716

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :x

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
stackConst*
_output_shapes
:*
dtype0*!
valueB"         p
TileTileExpandDims:output:0stack:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
IdentityIdentityTile:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

£
6__inference_time_distributed_38_layer_call_fn_12036341

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033552|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ª9
Ò
while_body_12035328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_50_matmul_readvariableop_resource_0:	H
5while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_50_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_50_matmul_readvariableop_resource:	F
3while_lstm_cell_50_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_50_biasadd_readvariableop_resource:	¢)while/lstm_cell_50/BiasAdd/ReadVariableOp¢(while/lstm_cell_50/MatMul/ReadVariableOp¢*while/lstm_cell_50/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_50/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_50/addAddV2#while/lstm_cell_50/MatMul:product:0%while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_50/BiasAddBiasAddwhile/lstm_cell_50/add:z:01while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_50/splitSplit+while/lstm_cell_50/split/split_dim:output:0#while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_50/SigmoidSigmoid!while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_1Sigmoid!while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mulMul while/lstm_cell_50/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_50/ReluRelu!while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_1Mulwhile/lstm_cell_50/Sigmoid:y:0%while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/add_1AddV2while/lstm_cell_50/mul:z:0while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_2Sigmoid!while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_50/Relu_1Reluwhile/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_2Mul while/lstm_cell_50/Sigmoid_2:y:0'while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_50/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_50/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_50/BiasAdd/ReadVariableOp)^while/lstm_cell_50/MatMul/ReadVariableOp+^while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_50_biasadd_readvariableop_resource4while_lstm_cell_50_biasadd_readvariableop_resource_0"l
3while_lstm_cell_50_matmul_1_readvariableop_resource5while_lstm_cell_50_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_50_matmul_readvariableop_resource3while_lstm_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_50/BiasAdd/ReadVariableOp)while/lstm_cell_50/BiasAdd/ReadVariableOp2T
(while/lstm_cell_50/MatMul/ReadVariableOp(while/lstm_cell_50/MatMul/ReadVariableOp2X
*while/lstm_cell_50/MatMul_1/ReadVariableOp*while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
ß

J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036556

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
ß

J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036490

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
9

E__inference_lstm_50_layer_call_and_return_conditional_losses_12033143

inputs(
lstm_cell_50_12033059:	(
lstm_cell_50_12033061:	d$
lstm_cell_50_12033063:	
identity¢$lstm_cell_50/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maský
$lstm_cell_50/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_50_12033059lstm_cell_50_12033061lstm_cell_50_12033063*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12033013n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Á
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_50_12033059lstm_cell_50_12033061lstm_cell_50_12033063*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12033073*
condR
while_cond_12033072*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
NoOpNoOp%^lstm_cell_50/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_50/StatefulPartitionedCall$lstm_cell_50/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
Í
while_cond_12034006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12034006___redundant_placeholder06
2while_while_cond_12034006___redundant_placeholder16
2while_while_cond_12034006___redundant_placeholder26
2while_while_cond_12034006___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ëB
Ò

lstm_50_while_body_12034539,
(lstm_50_while_lstm_50_while_loop_counter2
.lstm_50_while_lstm_50_while_maximum_iterations
lstm_50_while_placeholder
lstm_50_while_placeholder_1
lstm_50_while_placeholder_2
lstm_50_while_placeholder_3+
'lstm_50_while_lstm_50_strided_slice_1_0g
clstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0:	P
=lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dK
<lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0:	
lstm_50_while_identity
lstm_50_while_identity_1
lstm_50_while_identity_2
lstm_50_while_identity_3
lstm_50_while_identity_4
lstm_50_while_identity_5)
%lstm_50_while_lstm_50_strided_slice_1e
alstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensorL
9lstm_50_while_lstm_cell_50_matmul_readvariableop_resource:	N
;lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource:	dI
:lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource:	¢1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp¢0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp¢2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp
?lstm_50/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_50/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensor_0lstm_50_while_placeholderHlstm_50/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp;lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ò
!lstm_50/while/lstm_cell_50/MatMulMatMul8lstm_50/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp=lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¹
#lstm_50/while/lstm_cell_50/MatMul_1MatMullstm_50_while_placeholder_2:lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_50/while/lstm_cell_50/addAddV2+lstm_50/while/lstm_cell_50/MatMul:product:0-lstm_50/while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp<lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_50/while/lstm_cell_50/BiasAddBiasAdd"lstm_50/while/lstm_cell_50/add:z:09lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_50/while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_50/while/lstm_cell_50/splitSplit3lstm_50/while/lstm_cell_50/split/split_dim:output:0+lstm_50/while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
"lstm_50/while/lstm_cell_50/SigmoidSigmoid)lstm_50/while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_50/while/lstm_cell_50/Sigmoid_1Sigmoid)lstm_50/while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/while/lstm_cell_50/mulMul(lstm_50/while/lstm_cell_50/Sigmoid_1:y:0lstm_50_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/while/lstm_cell_50/ReluRelu)lstm_50/while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd°
 lstm_50/while/lstm_cell_50/mul_1Mul&lstm_50/while/lstm_cell_50/Sigmoid:y:0-lstm_50/while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
 lstm_50/while/lstm_cell_50/add_1AddV2"lstm_50/while/lstm_cell_50/mul:z:0$lstm_50/while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_50/while/lstm_cell_50/Sigmoid_2Sigmoid)lstm_50/while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!lstm_50/while/lstm_cell_50/Relu_1Relu$lstm_50/while/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
 lstm_50/while/lstm_cell_50/mul_2Mul(lstm_50/while/lstm_cell_50/Sigmoid_2:y:0/lstm_50/while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
8lstm_50/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_50/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_50_while_placeholder_1Alstm_50/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_50/while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_50/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_50/while/addAddV2lstm_50_while_placeholderlstm_50/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_50/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_50/while/add_1AddV2(lstm_50_while_lstm_50_while_loop_counterlstm_50/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_50/while/IdentityIdentitylstm_50/while/add_1:z:0^lstm_50/while/NoOp*
T0*
_output_shapes
: 
lstm_50/while/Identity_1Identity.lstm_50_while_lstm_50_while_maximum_iterations^lstm_50/while/NoOp*
T0*
_output_shapes
: q
lstm_50/while/Identity_2Identitylstm_50/while/add:z:0^lstm_50/while/NoOp*
T0*
_output_shapes
: 
lstm_50/while/Identity_3IdentityBlstm_50/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_50/while/NoOp*
T0*
_output_shapes
: 
lstm_50/while/Identity_4Identity$lstm_50/while/lstm_cell_50/mul_2:z:0^lstm_50/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/while/Identity_5Identity$lstm_50/while/lstm_cell_50/add_1:z:0^lstm_50/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
lstm_50/while/NoOpNoOp2^lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp1^lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp3^lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_50_while_identitylstm_50/while/Identity:output:0"=
lstm_50_while_identity_1!lstm_50/while/Identity_1:output:0"=
lstm_50_while_identity_2!lstm_50/while/Identity_2:output:0"=
lstm_50_while_identity_3!lstm_50/while/Identity_3:output:0"=
lstm_50_while_identity_4!lstm_50/while/Identity_4:output:0"=
lstm_50_while_identity_5!lstm_50/while/Identity_5:output:0"P
%lstm_50_while_lstm_50_strided_slice_1'lstm_50_while_lstm_50_strided_slice_1_0"z
:lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource<lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0"|
;lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource=lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0"x
9lstm_50_while_lstm_cell_50_matmul_readvariableop_resource;lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0"È
alstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensorclstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2f
1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp2d
0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp2h
2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
×

J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12032865

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
çJ

E__inference_lstm_51_layer_call_and_return_conditional_losses_12035903
inputs_0>
+lstm_cell_51_matmul_readvariableop_resource:	dÈ@
-lstm_cell_51_matmul_1_readvariableop_resource:	2È;
,lstm_cell_51_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_51/BiasAdd/ReadVariableOp¢"lstm_cell_51/MatMul/ReadVariableOp¢$lstm_cell_51/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12035819*
condR
while_cond_12035818*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
È

,__inference_dense_162_layer_call_fn_12036597

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_162_layer_call_and_return_conditional_losses_12033541o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Å

K__inference_sequential_75_layer_call_and_return_conditional_losses_12034408
lstm_50_input#
lstm_50_12034385:	#
lstm_50_12034387:	d
lstm_50_12034389:	#
lstm_51_12034393:	dÈ#
lstm_51_12034395:	2È
lstm_51_12034397:	È.
time_distributed_38_12034400:2*
time_distributed_38_12034402:
identity¢lstm_50/StatefulPartitionedCall¢lstm_51/StatefulPartitionedCall¢+time_distributed_38/StatefulPartitionedCall
lstm_50/StatefulPartitionedCallStatefulPartitionedCalllstm_50_inputlstm_50_12034385lstm_50_12034387lstm_50_12034389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12034258ð
 repeat_vector_25/PartitionedCallPartitionedCall(lstm_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12033164­
lstm_51/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_25/PartitionedCall:output:0lstm_51_12034393lstm_51_12034395lstm_51_12034397*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12034091È
+time_distributed_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_51/StatefulPartitionedCall:output:0time_distributed_38_12034400time_distributed_38_12034402*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033591r
!time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_38/ReshapeReshape(lstm_51/StatefulPartitionedCall:output:0*time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_38/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_50/StatefulPartitionedCall ^lstm_51/StatefulPartitionedCall,^time_distributed_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_50/StatefulPartitionedCalllstm_50/StatefulPartitionedCall2B
lstm_51/StatefulPartitionedCalllstm_51/StatefulPartitionedCall2Z
+time_distributed_38/StatefulPartitionedCall+time_distributed_38/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_50_input
çJ

E__inference_lstm_51_layer_call_and_return_conditional_losses_12036046
inputs_0>
+lstm_cell_51_matmul_readvariableop_resource:	dÈ@
-lstm_cell_51_matmul_1_readvariableop_resource:	2È;
,lstm_cell_51_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_51/BiasAdd/ReadVariableOp¢"lstm_cell_51/MatMul/ReadVariableOp¢$lstm_cell_51/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12035962*
condR
while_cond_12035961*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ß

J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036458

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1
¿
Í
while_cond_12033072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12033072___redundant_placeholder06
2while_while_cond_12033072___redundant_placeholder16
2while_while_cond_12033072___redundant_placeholder26
2while_while_cond_12033072___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
©J

E__inference_lstm_51_layer_call_and_return_conditional_losses_12033900

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	dÈ@
-lstm_cell_51_matmul_1_readvariableop_resource:	2È;
,lstm_cell_51_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_51/BiasAdd/ReadVariableOp¢"lstm_cell_51/MatMul/ReadVariableOp¢$lstm_cell_51/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12033816*
condR
while_cond_12033815*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¯K

E__inference_lstm_50_layer_call_and_return_conditional_losses_12035558

inputs>
+lstm_cell_50_matmul_readvariableop_resource:	@
-lstm_cell_50_matmul_1_readvariableop_resource:	d;
,lstm_cell_50_biasadd_readvariableop_resource:	
identity¢#lstm_cell_50/BiasAdd/ReadVariableOp¢"lstm_cell_50/MatMul/ReadVariableOp¢$lstm_cell_50/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_50/MatMul/ReadVariableOpReadVariableOp+lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_50/MatMulMatMulstrided_slice_2:output:0*lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_50/MatMul_1MatMulzeros:output:0,lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_50/addAddV2lstm_cell_50/MatMul:product:0lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_50/BiasAddBiasAddlstm_cell_50/add:z:0+lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_50/splitSplit%lstm_cell_50/split/split_dim:output:0lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_50/SigmoidSigmoidlstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_1Sigmoidlstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_50/mulMullstm_cell_50/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_50/ReluRelulstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_1Mullstm_cell_50/Sigmoid:y:0lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_50/add_1AddV2lstm_cell_50/mul:z:0lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_2Sigmoidlstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_50/Relu_1Relulstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_2Mullstm_cell_50/Sigmoid_2:y:0!lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_50_matmul_readvariableop_resource-lstm_cell_50_matmul_1_readvariableop_resource,lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12035473*
condR
while_cond_12035472*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
NoOpNoOp$^lstm_cell_50/BiasAdd/ReadVariableOp#^lstm_cell_50/MatMul/ReadVariableOp%^lstm_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_50/BiasAdd/ReadVariableOp#lstm_cell_50/BiasAdd/ReadVariableOp2H
"lstm_cell_50/MatMul/ReadVariableOp"lstm_cell_50/MatMul/ReadVariableOp2L
$lstm_cell_50/MatMul_1/ReadVariableOp$lstm_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯K

E__inference_lstm_50_layer_call_and_return_conditional_losses_12035703

inputs>
+lstm_cell_50_matmul_readvariableop_resource:	@
-lstm_cell_50_matmul_1_readvariableop_resource:	d;
,lstm_cell_50_biasadd_readvariableop_resource:	
identity¢#lstm_cell_50/BiasAdd/ReadVariableOp¢"lstm_cell_50/MatMul/ReadVariableOp¢$lstm_cell_50/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_50/MatMul/ReadVariableOpReadVariableOp+lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_50/MatMulMatMulstrided_slice_2:output:0*lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_50/MatMul_1MatMulzeros:output:0,lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_50/addAddV2lstm_cell_50/MatMul:product:0lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_50/BiasAddBiasAddlstm_cell_50/add:z:0+lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_50/splitSplit%lstm_cell_50/split/split_dim:output:0lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_50/SigmoidSigmoidlstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_1Sigmoidlstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_50/mulMullstm_cell_50/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_50/ReluRelulstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_1Mullstm_cell_50/Sigmoid:y:0lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_50/add_1AddV2lstm_cell_50/mul:z:0lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_2Sigmoidlstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_50/Relu_1Relulstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_2Mullstm_cell_50/Sigmoid_2:y:0!lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_50_matmul_readvariableop_resource-lstm_cell_50_matmul_1_readvariableop_resource,lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12035618*
condR
while_cond_12035617*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
NoOpNoOp$^lstm_cell_50/BiasAdd/ReadVariableOp#^lstm_cell_50/MatMul/ReadVariableOp%^lstm_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_50/BiasAdd/ReadVariableOp#lstm_cell_50/BiasAdd/ReadVariableOp2H
"lstm_cell_50/MatMul/ReadVariableOp"lstm_cell_50/MatMul/ReadVariableOp2L
$lstm_cell_50/MatMul_1/ReadVariableOp$lstm_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ò
while_body_12036105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_51_biasadd_readvariableop_resource:	È¢)while/lstm_cell_51/BiasAdd/ReadVariableOp¢(while/lstm_cell_51/MatMul/ReadVariableOp¢*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
©J

E__inference_lstm_51_layer_call_and_return_conditional_losses_12034091

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	dÈ@
-lstm_cell_51_matmul_1_readvariableop_resource:	2È;
,lstm_cell_51_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_51/BiasAdd/ReadVariableOp¢"lstm_cell_51/MatMul/ReadVariableOp¢$lstm_cell_51/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12034007*
condR
while_cond_12034006*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¤$
ñ
while_body_12033073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_50_12033097_0:	0
while_lstm_cell_50_12033099_0:	d,
while_lstm_cell_50_12033101_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_50_12033097:	.
while_lstm_cell_50_12033099:	d*
while_lstm_cell_50_12033101:	¢*while/lstm_cell_50/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0»
*while/lstm_cell_50/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_50_12033097_0while_lstm_cell_50_12033099_0while_lstm_cell_50_12033101_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12033013r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_50/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_50/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity3while/lstm_cell_50/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy

while/NoOpNoOp+^while/lstm_cell_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_50_12033097while_lstm_cell_50_12033097_0"<
while_lstm_cell_50_12033099while_lstm_cell_50_12033099_0"<
while_lstm_cell_50_12033101while_lstm_cell_50_12033101_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_50/StatefulPartitionedCall*while/lstm_cell_50/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¾
j
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12033164

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :x

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿZ
stackConst*
_output_shapes
:*
dtype0*!
valueB"         p
TileTileExpandDims:output:0stack:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
IdentityIdentityTile:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12033013

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
¬8

E__inference_lstm_51_layer_call_and_return_conditional_losses_12033317

inputs(
lstm_cell_51_12033235:	dÈ(
lstm_cell_51_12033237:	2È$
lstm_cell_51_12033239:	È
identity¢$lstm_cell_51/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maský
$lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_51_12033235lstm_cell_51_12033237lstm_cell_51_12033239*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033234n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Á
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_51_12033235lstm_cell_51_12033237lstm_cell_51_12033239*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12033248*
condR
while_cond_12033247*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2u
NoOpNoOp%^lstm_cell_51/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_51/StatefulPartitionedCall$lstm_cell_51/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¿
Í
while_cond_12035327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12035327___redundant_placeholder06
2while_while_cond_12035327___redundant_placeholder16
2while_while_cond_12035327___redundant_placeholder26
2while_while_cond_12035327___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
É	
Æ
&__inference_signature_wrapper_12034437
lstm_50_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_50_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_12032798s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_50_input

·
*__inference_lstm_51_layer_call_fn_12035760

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12034091s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

ª
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036371

inputs:
(dense_162_matmul_readvariableop_resource:27
)dense_162_biasadd_readvariableop_resource:
identity¢ dense_162/BiasAdd/ReadVariableOp¢dense_162/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_162/MatMulMatMulReshape:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense_162/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
8
Ò
while_body_12034007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_51_biasadd_readvariableop_resource:	È¢)while/lstm_cell_51/BiasAdd/ReadVariableOp¢(while/lstm_cell_51/MatMul/ReadVariableOp¢*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_12034172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12034172___redundant_placeholder06
2while_while_cond_12034172___redundant_placeholder16
2while_while_cond_12034172___redundant_placeholder26
2while_while_cond_12034172___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
Ê	
ø
G__inference_dense_162_layer_call_and_return_conditional_losses_12033541

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÇA
Ò

lstm_51_while_body_12034683,
(lstm_51_while_lstm_51_while_loop_counter2
.lstm_51_while_lstm_51_while_maximum_iterations
lstm_51_while_placeholder
lstm_51_while_placeholder_1
lstm_51_while_placeholder_2
lstm_51_while_placeholder_3+
'lstm_51_while_lstm_51_strided_slice_1_0g
clstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈP
=lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈK
<lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
lstm_51_while_identity
lstm_51_while_identity_1
lstm_51_while_identity_2
lstm_51_while_identity_3
lstm_51_while_identity_4
lstm_51_while_identity_5)
%lstm_51_while_lstm_51_strided_slice_1e
alstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensorL
9lstm_51_while_lstm_cell_51_matmul_readvariableop_resource:	dÈN
;lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈI
:lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource:	È¢1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp¢0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp¢2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp
?lstm_51/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_51/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensor_0lstm_51_while_placeholderHlstm_51/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp;lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ò
!lstm_51/while/lstm_cell_51/MatMulMatMul8lstm_51/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ±
2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp=lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¹
#lstm_51/while/lstm_cell_51/MatMul_1MatMullstm_51_while_placeholder_2:lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¶
lstm_51/while/lstm_cell_51/addAddV2+lstm_51/while/lstm_cell_51/MatMul:product:0-lstm_51/while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ«
1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp<lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0¿
"lstm_51/while/lstm_cell_51/BiasAddBiasAdd"lstm_51/while/lstm_cell_51/add:z:09lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈl
*lstm_51/while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_51/while/lstm_cell_51/splitSplit3lstm_51/while/lstm_cell_51/split/split_dim:output:0+lstm_51/while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
"lstm_51/while/lstm_cell_51/SigmoidSigmoid)lstm_51/while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_51/while/lstm_cell_51/Sigmoid_1Sigmoid)lstm_51/while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/while/lstm_cell_51/mulMul(lstm_51/while/lstm_cell_51/Sigmoid_1:y:0lstm_51_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/while/lstm_cell_51/ReluRelu)lstm_51/while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
 lstm_51/while/lstm_cell_51/mul_1Mul&lstm_51/while/lstm_cell_51/Sigmoid:y:0-lstm_51/while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
 lstm_51/while/lstm_cell_51/add_1AddV2"lstm_51/while/lstm_cell_51/mul:z:0$lstm_51/while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_51/while/lstm_cell_51/Sigmoid_2Sigmoid)lstm_51/while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!lstm_51/while/lstm_cell_51/Relu_1Relu$lstm_51/while/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
 lstm_51/while/lstm_cell_51/mul_2Mul(lstm_51/while/lstm_cell_51/Sigmoid_2:y:0/lstm_51/while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2å
2lstm_51/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_51_while_placeholder_1lstm_51_while_placeholder$lstm_51/while/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_51/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_51/while/addAddV2lstm_51_while_placeholderlstm_51/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_51/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_51/while/add_1AddV2(lstm_51_while_lstm_51_while_loop_counterlstm_51/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_51/while/IdentityIdentitylstm_51/while/add_1:z:0^lstm_51/while/NoOp*
T0*
_output_shapes
: 
lstm_51/while/Identity_1Identity.lstm_51_while_lstm_51_while_maximum_iterations^lstm_51/while/NoOp*
T0*
_output_shapes
: q
lstm_51/while/Identity_2Identitylstm_51/while/add:z:0^lstm_51/while/NoOp*
T0*
_output_shapes
: 
lstm_51/while/Identity_3IdentityBlstm_51/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_51/while/NoOp*
T0*
_output_shapes
: 
lstm_51/while/Identity_4Identity$lstm_51/while/lstm_cell_51/mul_2:z:0^lstm_51/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/while/Identity_5Identity$lstm_51/while/lstm_cell_51/add_1:z:0^lstm_51/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ð
lstm_51/while/NoOpNoOp2^lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp1^lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp3^lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_51_while_identitylstm_51/while/Identity:output:0"=
lstm_51_while_identity_1!lstm_51/while/Identity_1:output:0"=
lstm_51_while_identity_2!lstm_51/while/Identity_2:output:0"=
lstm_51_while_identity_3!lstm_51/while/Identity_3:output:0"=
lstm_51_while_identity_4!lstm_51/while/Identity_4:output:0"=
lstm_51_while_identity_5!lstm_51/while/Identity_5:output:0"P
%lstm_51_while_lstm_51_strided_slice_1'lstm_51_while_lstm_51_strided_slice_1_0"z
:lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource<lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0"|
;lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource=lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0"x
9lstm_51_while_lstm_cell_51_matmul_readvariableop_resource;lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0"È
alstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensorclstm_51_while_tensorarrayv2read_tensorlistgetitem_lstm_51_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2f
1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp1lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp2d
0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp0lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp2h
2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp2lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ß»
Ö
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034779

inputsF
3lstm_50_lstm_cell_50_matmul_readvariableop_resource:	H
5lstm_50_lstm_cell_50_matmul_1_readvariableop_resource:	dC
4lstm_50_lstm_cell_50_biasadd_readvariableop_resource:	F
3lstm_51_lstm_cell_51_matmul_readvariableop_resource:	dÈH
5lstm_51_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈC
4lstm_51_lstm_cell_51_biasadd_readvariableop_resource:	ÈN
<time_distributed_38_dense_162_matmul_readvariableop_resource:2K
=time_distributed_38_dense_162_biasadd_readvariableop_resource:
identity¢+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp¢*lstm_50/lstm_cell_50/MatMul/ReadVariableOp¢,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp¢lstm_50/while¢+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp¢*lstm_51/lstm_cell_51/MatMul/ReadVariableOp¢,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp¢lstm_51/while¢4time_distributed_38/dense_162/BiasAdd/ReadVariableOp¢3time_distributed_38/dense_162/MatMul/ReadVariableOpC
lstm_50/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_50/strided_sliceStridedSlicelstm_50/Shape:output:0$lstm_50/strided_slice/stack:output:0&lstm_50/strided_slice/stack_1:output:0&lstm_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_50/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_50/zeros/packedPacklstm_50/strided_slice:output:0lstm_50/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_50/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_50/zerosFilllstm_50/zeros/packed:output:0lstm_50/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_50/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_50/zeros_1/packedPacklstm_50/strided_slice:output:0!lstm_50/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_50/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_50/zeros_1Filllstm_50/zeros_1/packed:output:0lstm_50/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_50/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_50/transpose	Transposeinputslstm_50/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_50/Shape_1Shapelstm_50/transpose:y:0*
T0*
_output_shapes
:g
lstm_50/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_50/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_50/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_50/strided_slice_1StridedSlicelstm_50/Shape_1:output:0&lstm_50/strided_slice_1/stack:output:0(lstm_50/strided_slice_1/stack_1:output:0(lstm_50/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_50/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_50/TensorArrayV2TensorListReserve,lstm_50/TensorArrayV2/element_shape:output:0 lstm_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_50/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_50/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_50/transpose:y:0Flstm_50/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_50/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_50/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_50/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_50/strided_slice_2StridedSlicelstm_50/transpose:y:0&lstm_50/strided_slice_2/stack:output:0(lstm_50/strided_slice_2/stack_1:output:0(lstm_50/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_50/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3lstm_50_lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0®
lstm_50/lstm_cell_50/MatMulMatMul lstm_50/strided_slice_2:output:02lstm_50/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5lstm_50_lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0¨
lstm_50/lstm_cell_50/MatMul_1MatMullstm_50/zeros:output:04lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_50/lstm_cell_50/addAddV2%lstm_50/lstm_cell_50/MatMul:product:0'lstm_50/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4lstm_50_lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_50/lstm_cell_50/BiasAddBiasAddlstm_50/lstm_cell_50/add:z:03lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_50/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_50/lstm_cell_50/splitSplit-lstm_50/lstm_cell_50/split/split_dim:output:0%lstm_50/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split~
lstm_50/lstm_cell_50/SigmoidSigmoid#lstm_50/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/Sigmoid_1Sigmoid#lstm_50/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/mulMul"lstm_50/lstm_cell_50/Sigmoid_1:y:0lstm_50/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
lstm_50/lstm_cell_50/ReluRelu#lstm_50/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/mul_1Mul lstm_50/lstm_cell_50/Sigmoid:y:0'lstm_50/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/add_1AddV2lstm_50/lstm_cell_50/mul:z:0lstm_50/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/Sigmoid_2Sigmoid#lstm_50/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
lstm_50/lstm_cell_50/Relu_1Relulstm_50/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
lstm_50/lstm_cell_50/mul_2Mul"lstm_50/lstm_cell_50/Sigmoid_2:y:0)lstm_50/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_50/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   f
$lstm_50/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_50/TensorArrayV2_1TensorListReserve.lstm_50/TensorArrayV2_1/element_shape:output:0-lstm_50/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_50/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_50/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_50/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
lstm_50/whileWhile#lstm_50/while/loop_counter:output:0)lstm_50/while/maximum_iterations:output:0lstm_50/time:output:0 lstm_50/TensorArrayV2_1:handle:0lstm_50/zeros:output:0lstm_50/zeros_1:output:0 lstm_50/strided_slice_1:output:0?lstm_50/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_50_lstm_cell_50_matmul_readvariableop_resource5lstm_50_lstm_cell_50_matmul_1_readvariableop_resource4lstm_50_lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_50_while_body_12034539*'
condR
lstm_50_while_cond_12034538*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_50/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   î
*lstm_50/TensorArrayV2Stack/TensorListStackTensorListStacklstm_50/while:output:3Alstm_50/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsp
lstm_50/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_50/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_50/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_50/strided_slice_3StridedSlice3lstm_50/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_50/strided_slice_3/stack:output:0(lstm_50/strided_slice_3/stack_1:output:0(lstm_50/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_50/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_50/transpose_1	Transpose3lstm_50/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_50/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_50/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    a
repeat_vector_25/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :«
repeat_vector_25/ExpandDims
ExpandDims lstm_50/strided_slice_3:output:0(repeat_vector_25/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
repeat_vector_25/stackConst*
_output_shapes
:*
dtype0*!
valueB"         
repeat_vector_25/TileTile$repeat_vector_25/ExpandDims:output:0repeat_vector_25/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_51/ShapeShaperepeat_vector_25/Tile:output:0*
T0*
_output_shapes
:e
lstm_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_51/strided_sliceStridedSlicelstm_51/Shape:output:0$lstm_51/strided_slice/stack:output:0&lstm_51/strided_slice/stack_1:output:0&lstm_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_51/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_51/zeros/packedPacklstm_51/strided_slice:output:0lstm_51/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_51/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_51/zerosFilllstm_51/zeros/packed:output:0lstm_51/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_51/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_51/zeros_1/packedPacklstm_51/strided_slice:output:0!lstm_51/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_51/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_51/zeros_1Filllstm_51/zeros_1/packed:output:0lstm_51/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_51/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_51/transpose	Transposerepeat_vector_25/Tile:output:0lstm_51/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_51/Shape_1Shapelstm_51/transpose:y:0*
T0*
_output_shapes
:g
lstm_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_51/strided_slice_1StridedSlicelstm_51/Shape_1:output:0&lstm_51/strided_slice_1/stack:output:0(lstm_51/strided_slice_1/stack_1:output:0(lstm_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_51/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_51/TensorArrayV2TensorListReserve,lstm_51/TensorArrayV2/element_shape:output:0 lstm_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_51/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_51/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_51/transpose:y:0Flstm_51/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_51/strided_slice_2StridedSlicelstm_51/transpose:y:0&lstm_51/strided_slice_2/stack:output:0(lstm_51/strided_slice_2/stack_1:output:0(lstm_51/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
*lstm_51/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3lstm_51_lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0®
lstm_51/lstm_cell_51/MatMulMatMul lstm_51/strided_slice_2:output:02lstm_51/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5lstm_51_lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0¨
lstm_51/lstm_cell_51/MatMul_1MatMullstm_51/zeros:output:04lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¤
lstm_51/lstm_cell_51/addAddV2%lstm_51/lstm_cell_51/MatMul:product:0'lstm_51/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4lstm_51_lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0­
lstm_51/lstm_cell_51/BiasAddBiasAddlstm_51/lstm_cell_51/add:z:03lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈf
$lstm_51/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_51/lstm_cell_51/splitSplit-lstm_51/lstm_cell_51/split/split_dim:output:0%lstm_51/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split~
lstm_51/lstm_cell_51/SigmoidSigmoid#lstm_51/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/Sigmoid_1Sigmoid#lstm_51/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/mulMul"lstm_51/lstm_cell_51/Sigmoid_1:y:0lstm_51/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
lstm_51/lstm_cell_51/ReluRelu#lstm_51/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/mul_1Mul lstm_51/lstm_cell_51/Sigmoid:y:0'lstm_51/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/add_1AddV2lstm_51/lstm_cell_51/mul:z:0lstm_51/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/Sigmoid_2Sigmoid#lstm_51/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2u
lstm_51/lstm_cell_51/Relu_1Relulstm_51/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
lstm_51/lstm_cell_51/mul_2Mul"lstm_51/lstm_cell_51/Sigmoid_2:y:0)lstm_51/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_51/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_51/TensorArrayV2_1TensorListReserve.lstm_51/TensorArrayV2_1/element_shape:output:0 lstm_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_51/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_51/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_51/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
lstm_51/whileWhile#lstm_51/while/loop_counter:output:0)lstm_51/while/maximum_iterations:output:0lstm_51/time:output:0 lstm_51/TensorArrayV2_1:handle:0lstm_51/zeros:output:0lstm_51/zeros_1:output:0 lstm_51/strided_slice_1:output:0?lstm_51/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_51_lstm_cell_51_matmul_readvariableop_resource5lstm_51_lstm_cell_51_matmul_1_readvariableop_resource4lstm_51_lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_51_while_body_12034683*'
condR
lstm_51_while_cond_12034682*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_51/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_51/TensorArrayV2Stack/TensorListStackTensorListStacklstm_51/while:output:3Alstm_51/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_51/strided_slice_3StridedSlice3lstm_51/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_51/strided_slice_3/stack:output:0(lstm_51/strided_slice_3/stack_1:output:0(lstm_51/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_51/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_51/transpose_1	Transpose3lstm_51/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_51/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_51/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
!time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
time_distributed_38/ReshapeReshapelstm_51/transpose_1:y:0*time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
3time_distributed_38/dense_162/MatMul/ReadVariableOpReadVariableOp<time_distributed_38_dense_162_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ã
$time_distributed_38/dense_162/MatMulMatMul$time_distributed_38/Reshape:output:0;time_distributed_38/dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4time_distributed_38/dense_162/BiasAdd/ReadVariableOpReadVariableOp=time_distributed_38_dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ð
%time_distributed_38/dense_162/BiasAddBiasAdd.time_distributed_38/dense_162/MatMul:product:0<time_distributed_38/dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#time_distributed_38/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      ¼
time_distributed_38/Reshape_1Reshape.time_distributed_38/dense_162/BiasAdd:output:0,time_distributed_38/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#time_distributed_38/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¡
time_distributed_38/Reshape_2Reshapelstm_51/transpose_1:y:0,time_distributed_38/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
IdentityIdentity&time_distributed_38/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp,^lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp+^lstm_50/lstm_cell_50/MatMul/ReadVariableOp-^lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp^lstm_50/while,^lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp+^lstm_51/lstm_cell_51/MatMul/ReadVariableOp-^lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp^lstm_51/while5^time_distributed_38/dense_162/BiasAdd/ReadVariableOp4^time_distributed_38/dense_162/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp2X
*lstm_50/lstm_cell_50/MatMul/ReadVariableOp*lstm_50/lstm_cell_50/MatMul/ReadVariableOp2\
,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp2
lstm_50/whilelstm_50/while2Z
+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp2X
*lstm_51/lstm_cell_51/MatMul/ReadVariableOp*lstm_51/lstm_cell_51/MatMul/ReadVariableOp2\
,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp2
lstm_51/whilelstm_51/while2l
4time_distributed_38/dense_162/BiasAdd/ReadVariableOp4time_distributed_38/dense_162/BiasAdd/ReadVariableOp2j
3time_distributed_38/dense_162/MatMul/ReadVariableOp3time_distributed_38/dense_162/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
Í
while_cond_12036104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12036104___redundant_placeholder06
2while_while_cond_12036104___redundant_placeholder16
2while_while_cond_12036104___redundant_placeholder26
2while_while_cond_12036104___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
û
·
*__inference_lstm_50_layer_call_fn_12035123

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12034258o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¹
*__inference_lstm_50_layer_call_fn_12035101
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12033143o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
×

J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033380

inputs

states
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
¾â
±

#__inference__wrapped_model_12032798
lstm_50_inputT
Asequential_75_lstm_50_lstm_cell_50_matmul_readvariableop_resource:	V
Csequential_75_lstm_50_lstm_cell_50_matmul_1_readvariableop_resource:	dQ
Bsequential_75_lstm_50_lstm_cell_50_biasadd_readvariableop_resource:	T
Asequential_75_lstm_51_lstm_cell_51_matmul_readvariableop_resource:	dÈV
Csequential_75_lstm_51_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈQ
Bsequential_75_lstm_51_lstm_cell_51_biasadd_readvariableop_resource:	È\
Jsequential_75_time_distributed_38_dense_162_matmul_readvariableop_resource:2Y
Ksequential_75_time_distributed_38_dense_162_biasadd_readvariableop_resource:
identity¢9sequential_75/lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp¢8sequential_75/lstm_50/lstm_cell_50/MatMul/ReadVariableOp¢:sequential_75/lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp¢sequential_75/lstm_50/while¢9sequential_75/lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp¢8sequential_75/lstm_51/lstm_cell_51/MatMul/ReadVariableOp¢:sequential_75/lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp¢sequential_75/lstm_51/while¢Bsequential_75/time_distributed_38/dense_162/BiasAdd/ReadVariableOp¢Asequential_75/time_distributed_38/dense_162/MatMul/ReadVariableOpX
sequential_75/lstm_50/ShapeShapelstm_50_input*
T0*
_output_shapes
:s
)sequential_75/lstm_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_75/lstm_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_75/lstm_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_75/lstm_50/strided_sliceStridedSlice$sequential_75/lstm_50/Shape:output:02sequential_75/lstm_50/strided_slice/stack:output:04sequential_75/lstm_50/strided_slice/stack_1:output:04sequential_75/lstm_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_75/lstm_50/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_75/lstm_50/zeros/packedPack,sequential_75/lstm_50/strided_slice:output:0-sequential_75/lstm_50/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_75/lstm_50/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_75/lstm_50/zerosFill+sequential_75/lstm_50/zeros/packed:output:0*sequential_75/lstm_50/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_75/lstm_50/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_75/lstm_50/zeros_1/packedPack,sequential_75/lstm_50/strided_slice:output:0/sequential_75/lstm_50/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_75/lstm_50/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_75/lstm_50/zeros_1Fill-sequential_75/lstm_50/zeros_1/packed:output:0,sequential_75/lstm_50/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_75/lstm_50/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_75/lstm_50/transpose	Transposelstm_50_input-sequential_75/lstm_50/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_75/lstm_50/Shape_1Shape#sequential_75/lstm_50/transpose:y:0*
T0*
_output_shapes
:u
+sequential_75/lstm_50/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_75/lstm_50/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_75/lstm_50/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_75/lstm_50/strided_slice_1StridedSlice&sequential_75/lstm_50/Shape_1:output:04sequential_75/lstm_50/strided_slice_1/stack:output:06sequential_75/lstm_50/strided_slice_1/stack_1:output:06sequential_75/lstm_50/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_75/lstm_50/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_75/lstm_50/TensorArrayV2TensorListReserve:sequential_75/lstm_50/TensorArrayV2/element_shape:output:0.sequential_75/lstm_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_75/lstm_50/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_75/lstm_50/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_75/lstm_50/transpose:y:0Tsequential_75/lstm_50/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_75/lstm_50/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_75/lstm_50/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_75/lstm_50/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_75/lstm_50/strided_slice_2StridedSlice#sequential_75/lstm_50/transpose:y:04sequential_75/lstm_50/strided_slice_2/stack:output:06sequential_75/lstm_50/strided_slice_2/stack_1:output:06sequential_75/lstm_50/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask»
8sequential_75/lstm_50/lstm_cell_50/MatMul/ReadVariableOpReadVariableOpAsequential_75_lstm_50_lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
)sequential_75/lstm_50/lstm_cell_50/MatMulMatMul.sequential_75/lstm_50/strided_slice_2:output:0@sequential_75/lstm_50/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
:sequential_75/lstm_50/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOpCsequential_75_lstm_50_lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ò
+sequential_75/lstm_50/lstm_cell_50/MatMul_1MatMul$sequential_75/lstm_50/zeros:output:0Bsequential_75/lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
&sequential_75/lstm_50/lstm_cell_50/addAddV23sequential_75/lstm_50/lstm_cell_50/MatMul:product:05sequential_75/lstm_50/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9sequential_75/lstm_50/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOpBsequential_75_lstm_50_lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0×
*sequential_75/lstm_50/lstm_cell_50/BiasAddBiasAdd*sequential_75/lstm_50/lstm_cell_50/add:z:0Asequential_75/lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
2sequential_75/lstm_50/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_75/lstm_50/lstm_cell_50/splitSplit;sequential_75/lstm_50/lstm_cell_50/split/split_dim:output:03sequential_75/lstm_50/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
*sequential_75/lstm_50/lstm_cell_50/SigmoidSigmoid1sequential_75/lstm_50/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_75/lstm_50/lstm_cell_50/Sigmoid_1Sigmoid1sequential_75/lstm_50/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¹
&sequential_75/lstm_50/lstm_cell_50/mulMul0sequential_75/lstm_50/lstm_cell_50/Sigmoid_1:y:0&sequential_75/lstm_50/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'sequential_75/lstm_50/lstm_cell_50/ReluRelu1sequential_75/lstm_50/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÈ
(sequential_75/lstm_50/lstm_cell_50/mul_1Mul.sequential_75/lstm_50/lstm_cell_50/Sigmoid:y:05sequential_75/lstm_50/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd½
(sequential_75/lstm_50/lstm_cell_50/add_1AddV2*sequential_75/lstm_50/lstm_cell_50/mul:z:0,sequential_75/lstm_50/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_75/lstm_50/lstm_cell_50/Sigmoid_2Sigmoid1sequential_75/lstm_50/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
)sequential_75/lstm_50/lstm_cell_50/Relu_1Relu,sequential_75/lstm_50/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÌ
(sequential_75/lstm_50/lstm_cell_50/mul_2Mul0sequential_75/lstm_50/lstm_cell_50/Sigmoid_2:y:07sequential_75/lstm_50/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_75/lstm_50/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   t
2sequential_75/lstm_50/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_75/lstm_50/TensorArrayV2_1TensorListReserve<sequential_75/lstm_50/TensorArrayV2_1/element_shape:output:0;sequential_75/lstm_50/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_75/lstm_50/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_75/lstm_50/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_75/lstm_50/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : º
sequential_75/lstm_50/whileWhile1sequential_75/lstm_50/while/loop_counter:output:07sequential_75/lstm_50/while/maximum_iterations:output:0#sequential_75/lstm_50/time:output:0.sequential_75/lstm_50/TensorArrayV2_1:handle:0$sequential_75/lstm_50/zeros:output:0&sequential_75/lstm_50/zeros_1:output:0.sequential_75/lstm_50/strided_slice_1:output:0Msequential_75/lstm_50/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_75_lstm_50_lstm_cell_50_matmul_readvariableop_resourceCsequential_75_lstm_50_lstm_cell_50_matmul_1_readvariableop_resourceBsequential_75_lstm_50_lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_75_lstm_50_while_body_12032558*5
cond-R+
)sequential_75_lstm_50_while_cond_12032557*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_75/lstm_50/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_75/lstm_50/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_75/lstm_50/while:output:3Osequential_75/lstm_50/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elements~
+sequential_75/lstm_50/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_75/lstm_50/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_75/lstm_50/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_75/lstm_50/strided_slice_3StridedSliceAsequential_75/lstm_50/TensorArrayV2Stack/TensorListStack:tensor:04sequential_75/lstm_50/strided_slice_3/stack:output:06sequential_75/lstm_50/strided_slice_3/stack_1:output:06sequential_75/lstm_50/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_75/lstm_50/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_75/lstm_50/transpose_1	TransposeAsequential_75/lstm_50/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_75/lstm_50/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_75/lstm_50/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
-sequential_75/repeat_vector_25/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Õ
)sequential_75/repeat_vector_25/ExpandDims
ExpandDims.sequential_75/lstm_50/strided_slice_3:output:06sequential_75/repeat_vector_25/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_75/repeat_vector_25/stackConst*
_output_shapes
:*
dtype0*!
valueB"         Ä
#sequential_75/repeat_vector_25/TileTile2sequential_75/repeat_vector_25/ExpandDims:output:0-sequential_75/repeat_vector_25/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
sequential_75/lstm_51/ShapeShape,sequential_75/repeat_vector_25/Tile:output:0*
T0*
_output_shapes
:s
)sequential_75/lstm_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_75/lstm_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_75/lstm_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_75/lstm_51/strided_sliceStridedSlice$sequential_75/lstm_51/Shape:output:02sequential_75/lstm_51/strided_slice/stack:output:04sequential_75/lstm_51/strided_slice/stack_1:output:04sequential_75/lstm_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_75/lstm_51/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_75/lstm_51/zeros/packedPack,sequential_75/lstm_51/strided_slice:output:0-sequential_75/lstm_51/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_75/lstm_51/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_75/lstm_51/zerosFill+sequential_75/lstm_51/zeros/packed:output:0*sequential_75/lstm_51/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_75/lstm_51/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_75/lstm_51/zeros_1/packedPack,sequential_75/lstm_51/strided_slice:output:0/sequential_75/lstm_51/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_75/lstm_51/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_75/lstm_51/zeros_1Fill-sequential_75/lstm_51/zeros_1/packed:output:0,sequential_75/lstm_51/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_75/lstm_51/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¿
sequential_75/lstm_51/transpose	Transpose,sequential_75/repeat_vector_25/Tile:output:0-sequential_75/lstm_51/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_75/lstm_51/Shape_1Shape#sequential_75/lstm_51/transpose:y:0*
T0*
_output_shapes
:u
+sequential_75/lstm_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_75/lstm_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_75/lstm_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_75/lstm_51/strided_slice_1StridedSlice&sequential_75/lstm_51/Shape_1:output:04sequential_75/lstm_51/strided_slice_1/stack:output:06sequential_75/lstm_51/strided_slice_1/stack_1:output:06sequential_75/lstm_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_75/lstm_51/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_75/lstm_51/TensorArrayV2TensorListReserve:sequential_75/lstm_51/TensorArrayV2/element_shape:output:0.sequential_75/lstm_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_75/lstm_51/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_75/lstm_51/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_75/lstm_51/transpose:y:0Tsequential_75/lstm_51/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_75/lstm_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_75/lstm_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_75/lstm_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_75/lstm_51/strided_slice_2StridedSlice#sequential_75/lstm_51/transpose:y:04sequential_75/lstm_51/strided_slice_2/stack:output:06sequential_75/lstm_51/strided_slice_2/stack_1:output:06sequential_75/lstm_51/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask»
8sequential_75/lstm_51/lstm_cell_51/MatMul/ReadVariableOpReadVariableOpAsequential_75_lstm_51_lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ø
)sequential_75/lstm_51/lstm_cell_51/MatMulMatMul.sequential_75/lstm_51/strided_slice_2:output:0@sequential_75/lstm_51/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¿
:sequential_75/lstm_51/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOpCsequential_75_lstm_51_lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ò
+sequential_75/lstm_51/lstm_cell_51/MatMul_1MatMul$sequential_75/lstm_51/zeros:output:0Bsequential_75/lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÎ
&sequential_75/lstm_51/lstm_cell_51/addAddV23sequential_75/lstm_51/lstm_cell_51/MatMul:product:05sequential_75/lstm_51/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
9sequential_75/lstm_51/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOpBsequential_75_lstm_51_lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0×
*sequential_75/lstm_51/lstm_cell_51/BiasAddBiasAdd*sequential_75/lstm_51/lstm_cell_51/add:z:0Asequential_75/lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈt
2sequential_75/lstm_51/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_75/lstm_51/lstm_cell_51/splitSplit;sequential_75/lstm_51/lstm_cell_51/split/split_dim:output:03sequential_75/lstm_51/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
*sequential_75/lstm_51/lstm_cell_51/SigmoidSigmoid1sequential_75/lstm_51/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_75/lstm_51/lstm_cell_51/Sigmoid_1Sigmoid1sequential_75/lstm_51/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
&sequential_75/lstm_51/lstm_cell_51/mulMul0sequential_75/lstm_51/lstm_cell_51/Sigmoid_1:y:0&sequential_75/lstm_51/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'sequential_75/lstm_51/lstm_cell_51/ReluRelu1sequential_75/lstm_51/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2È
(sequential_75/lstm_51/lstm_cell_51/mul_1Mul.sequential_75/lstm_51/lstm_cell_51/Sigmoid:y:05sequential_75/lstm_51/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2½
(sequential_75/lstm_51/lstm_cell_51/add_1AddV2*sequential_75/lstm_51/lstm_cell_51/mul:z:0,sequential_75/lstm_51/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_75/lstm_51/lstm_cell_51/Sigmoid_2Sigmoid1sequential_75/lstm_51/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
)sequential_75/lstm_51/lstm_cell_51/Relu_1Relu,sequential_75/lstm_51/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ì
(sequential_75/lstm_51/lstm_cell_51/mul_2Mul0sequential_75/lstm_51/lstm_cell_51/Sigmoid_2:y:07sequential_75/lstm_51/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_75/lstm_51/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_75/lstm_51/TensorArrayV2_1TensorListReserve<sequential_75/lstm_51/TensorArrayV2_1/element_shape:output:0.sequential_75/lstm_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_75/lstm_51/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_75/lstm_51/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_75/lstm_51/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : º
sequential_75/lstm_51/whileWhile1sequential_75/lstm_51/while/loop_counter:output:07sequential_75/lstm_51/while/maximum_iterations:output:0#sequential_75/lstm_51/time:output:0.sequential_75/lstm_51/TensorArrayV2_1:handle:0$sequential_75/lstm_51/zeros:output:0&sequential_75/lstm_51/zeros_1:output:0.sequential_75/lstm_51/strided_slice_1:output:0Msequential_75/lstm_51/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_75_lstm_51_lstm_cell_51_matmul_readvariableop_resourceCsequential_75_lstm_51_lstm_cell_51_matmul_1_readvariableop_resourceBsequential_75_lstm_51_lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_75_lstm_51_while_body_12032702*5
cond-R+
)sequential_75_lstm_51_while_cond_12032701*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_75/lstm_51/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_75/lstm_51/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_75/lstm_51/while:output:3Osequential_75/lstm_51/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_75/lstm_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_75/lstm_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_75/lstm_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_75/lstm_51/strided_slice_3StridedSliceAsequential_75/lstm_51/TensorArrayV2Stack/TensorListStack:tensor:04sequential_75/lstm_51/strided_slice_3/stack:output:06sequential_75/lstm_51/strided_slice_3/stack_1:output:06sequential_75/lstm_51/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_75/lstm_51/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_75/lstm_51/transpose_1	TransposeAsequential_75/lstm_51/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_75/lstm_51/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_75/lstm_51/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
/sequential_75/time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ç
)sequential_75/time_distributed_38/ReshapeReshape%sequential_75/lstm_51/transpose_1:y:08sequential_75/time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ì
Asequential_75/time_distributed_38/dense_162/MatMul/ReadVariableOpReadVariableOpJsequential_75_time_distributed_38_dense_162_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0í
2sequential_75/time_distributed_38/dense_162/MatMulMatMul2sequential_75/time_distributed_38/Reshape:output:0Isequential_75/time_distributed_38/dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
Bsequential_75/time_distributed_38/dense_162/BiasAdd/ReadVariableOpReadVariableOpKsequential_75_time_distributed_38_dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ú
3sequential_75/time_distributed_38/dense_162/BiasAddBiasAdd<sequential_75/time_distributed_38/dense_162/MatMul:product:0Jsequential_75/time_distributed_38/dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_75/time_distributed_38/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      æ
+sequential_75/time_distributed_38/Reshape_1Reshape<sequential_75/time_distributed_38/dense_162/BiasAdd:output:0:sequential_75/time_distributed_38/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_75/time_distributed_38/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
+sequential_75/time_distributed_38/Reshape_2Reshape%sequential_75/lstm_51/transpose_1:y:0:sequential_75/time_distributed_38/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4sequential_75/time_distributed_38/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp:^sequential_75/lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp9^sequential_75/lstm_50/lstm_cell_50/MatMul/ReadVariableOp;^sequential_75/lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp^sequential_75/lstm_50/while:^sequential_75/lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp9^sequential_75/lstm_51/lstm_cell_51/MatMul/ReadVariableOp;^sequential_75/lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp^sequential_75/lstm_51/whileC^sequential_75/time_distributed_38/dense_162/BiasAdd/ReadVariableOpB^sequential_75/time_distributed_38/dense_162/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2v
9sequential_75/lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp9sequential_75/lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp2t
8sequential_75/lstm_50/lstm_cell_50/MatMul/ReadVariableOp8sequential_75/lstm_50/lstm_cell_50/MatMul/ReadVariableOp2x
:sequential_75/lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp:sequential_75/lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp2:
sequential_75/lstm_50/whilesequential_75/lstm_50/while2v
9sequential_75/lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp9sequential_75/lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp2t
8sequential_75/lstm_51/lstm_cell_51/MatMul/ReadVariableOp8sequential_75/lstm_51/lstm_cell_51/MatMul/ReadVariableOp2x
:sequential_75/lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp:sequential_75/lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp2:
sequential_75/lstm_51/whilesequential_75/lstm_51/while2
Bsequential_75/time_distributed_38/dense_162/BiasAdd/ReadVariableOpBsequential_75/time_distributed_38/dense_162/BiasAdd/ReadVariableOp2
Asequential_75/time_distributed_38/dense_162/MatMul/ReadVariableOpAsequential_75/time_distributed_38/dense_162/MatMul/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_50_input
¿
Í
while_cond_12033815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12033815___redundant_placeholder06
2while_while_cond_12033815___redundant_placeholder16
2while_while_cond_12033815___redundant_placeholder26
2while_while_cond_12033815___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
¿
Í
while_cond_12033247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12033247___redundant_placeholder06
2while_while_cond_12033247___redundant_placeholder16
2while_while_cond_12033247___redundant_placeholder26
2while_while_cond_12033247___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
8
Ò
while_body_12035962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_51_biasadd_readvariableop_resource:	È¢)while/lstm_cell_51/BiasAdd/ReadVariableOp¢(while/lstm_cell_51/MatMul/ReadVariableOp¢*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
ª9
Ò
while_body_12035473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_50_matmul_readvariableop_resource_0:	H
5while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_50_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_50_matmul_readvariableop_resource:	F
3while_lstm_cell_50_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_50_biasadd_readvariableop_resource:	¢)while/lstm_cell_50/BiasAdd/ReadVariableOp¢(while/lstm_cell_50/MatMul/ReadVariableOp¢*while/lstm_cell_50/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_50/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_50/addAddV2#while/lstm_cell_50/MatMul:product:0%while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_50/BiasAddBiasAddwhile/lstm_cell_50/add:z:01while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_50/splitSplit+while/lstm_cell_50/split/split_dim:output:0#while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_50/SigmoidSigmoid!while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_1Sigmoid!while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mulMul while/lstm_cell_50/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_50/ReluRelu!while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_1Mulwhile/lstm_cell_50/Sigmoid:y:0%while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/add_1AddV2while/lstm_cell_50/mul:z:0while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_2Sigmoid!while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_50/Relu_1Reluwhile/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_2Mul while/lstm_cell_50/Sigmoid_2:y:0'while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_50/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_50/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_50/BiasAdd/ReadVariableOp)^while/lstm_cell_50/MatMul/ReadVariableOp+^while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_50_biasadd_readvariableop_resource4while_lstm_cell_50_biasadd_readvariableop_resource_0"l
3while_lstm_cell_50_matmul_1_readvariableop_resource5while_lstm_cell_50_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_50_matmul_readvariableop_resource3while_lstm_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_50/BiasAdd/ReadVariableOp)while/lstm_cell_50/BiasAdd/ReadVariableOp2T
(while/lstm_cell_50/MatMul/ReadVariableOp(while/lstm_cell_50/MatMul/ReadVariableOp2X
*while/lstm_cell_50/MatMul_1/ReadVariableOp*while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¨

)sequential_75_lstm_51_while_cond_12032701H
Dsequential_75_lstm_51_while_sequential_75_lstm_51_while_loop_counterN
Jsequential_75_lstm_51_while_sequential_75_lstm_51_while_maximum_iterations+
'sequential_75_lstm_51_while_placeholder-
)sequential_75_lstm_51_while_placeholder_1-
)sequential_75_lstm_51_while_placeholder_2-
)sequential_75_lstm_51_while_placeholder_3J
Fsequential_75_lstm_51_while_less_sequential_75_lstm_51_strided_slice_1b
^sequential_75_lstm_51_while_sequential_75_lstm_51_while_cond_12032701___redundant_placeholder0b
^sequential_75_lstm_51_while_sequential_75_lstm_51_while_cond_12032701___redundant_placeholder1b
^sequential_75_lstm_51_while_sequential_75_lstm_51_while_cond_12032701___redundant_placeholder2b
^sequential_75_lstm_51_while_sequential_75_lstm_51_while_cond_12032701___redundant_placeholder3(
$sequential_75_lstm_51_while_identity
º
 sequential_75/lstm_51/while/LessLess'sequential_75_lstm_51_while_placeholderFsequential_75_lstm_51_while_less_sequential_75_lstm_51_strided_slice_1*
T0*
_output_shapes
: w
$sequential_75/lstm_51/while/IdentityIdentity$sequential_75/lstm_51/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_75_lstm_51_while_identity-sequential_75/lstm_51/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
¿
Í
while_cond_12035617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12035617___redundant_placeholder06
2while_while_cond_12035617___redundant_placeholder16
2while_while_cond_12035617___redundant_placeholder26
2while_while_cond_12035617___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ëB
Ò

lstm_50_while_body_12034839,
(lstm_50_while_lstm_50_while_loop_counter2
.lstm_50_while_lstm_50_while_maximum_iterations
lstm_50_while_placeholder
lstm_50_while_placeholder_1
lstm_50_while_placeholder_2
lstm_50_while_placeholder_3+
'lstm_50_while_lstm_50_strided_slice_1_0g
clstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0:	P
=lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dK
<lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0:	
lstm_50_while_identity
lstm_50_while_identity_1
lstm_50_while_identity_2
lstm_50_while_identity_3
lstm_50_while_identity_4
lstm_50_while_identity_5)
%lstm_50_while_lstm_50_strided_slice_1e
alstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensorL
9lstm_50_while_lstm_cell_50_matmul_readvariableop_resource:	N
;lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource:	dI
:lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource:	¢1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp¢0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp¢2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp
?lstm_50/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_50/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensor_0lstm_50_while_placeholderHlstm_50/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp;lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ò
!lstm_50/while/lstm_cell_50/MatMulMatMul8lstm_50/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp=lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¹
#lstm_50/while/lstm_cell_50/MatMul_1MatMullstm_50_while_placeholder_2:lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_50/while/lstm_cell_50/addAddV2+lstm_50/while/lstm_cell_50/MatMul:product:0-lstm_50/while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp<lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_50/while/lstm_cell_50/BiasAddBiasAdd"lstm_50/while/lstm_cell_50/add:z:09lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_50/while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_50/while/lstm_cell_50/splitSplit3lstm_50/while/lstm_cell_50/split/split_dim:output:0+lstm_50/while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
"lstm_50/while/lstm_cell_50/SigmoidSigmoid)lstm_50/while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_50/while/lstm_cell_50/Sigmoid_1Sigmoid)lstm_50/while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/while/lstm_cell_50/mulMul(lstm_50/while/lstm_cell_50/Sigmoid_1:y:0lstm_50_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/while/lstm_cell_50/ReluRelu)lstm_50/while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd°
 lstm_50/while/lstm_cell_50/mul_1Mul&lstm_50/while/lstm_cell_50/Sigmoid:y:0-lstm_50/while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
 lstm_50/while/lstm_cell_50/add_1AddV2"lstm_50/while/lstm_cell_50/mul:z:0$lstm_50/while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_50/while/lstm_cell_50/Sigmoid_2Sigmoid)lstm_50/while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!lstm_50/while/lstm_cell_50/Relu_1Relu$lstm_50/while/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
 lstm_50/while/lstm_cell_50/mul_2Mul(lstm_50/while/lstm_cell_50/Sigmoid_2:y:0/lstm_50/while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
8lstm_50/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_50/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_50_while_placeholder_1Alstm_50/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_50/while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_50/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_50/while/addAddV2lstm_50_while_placeholderlstm_50/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_50/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_50/while/add_1AddV2(lstm_50_while_lstm_50_while_loop_counterlstm_50/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_50/while/IdentityIdentitylstm_50/while/add_1:z:0^lstm_50/while/NoOp*
T0*
_output_shapes
: 
lstm_50/while/Identity_1Identity.lstm_50_while_lstm_50_while_maximum_iterations^lstm_50/while/NoOp*
T0*
_output_shapes
: q
lstm_50/while/Identity_2Identitylstm_50/while/add:z:0^lstm_50/while/NoOp*
T0*
_output_shapes
: 
lstm_50/while/Identity_3IdentityBlstm_50/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_50/while/NoOp*
T0*
_output_shapes
: 
lstm_50/while/Identity_4Identity$lstm_50/while/lstm_cell_50/mul_2:z:0^lstm_50/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/while/Identity_5Identity$lstm_50/while/lstm_cell_50/add_1:z:0^lstm_50/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
lstm_50/while/NoOpNoOp2^lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp1^lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp3^lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_50_while_identitylstm_50/while/Identity:output:0"=
lstm_50_while_identity_1!lstm_50/while/Identity_1:output:0"=
lstm_50_while_identity_2!lstm_50/while/Identity_2:output:0"=
lstm_50_while_identity_3!lstm_50/while/Identity_3:output:0"=
lstm_50_while_identity_4!lstm_50/while/Identity_4:output:0"=
lstm_50_while_identity_5!lstm_50/while/Identity_5:output:0"P
%lstm_50_while_lstm_50_strided_slice_1'lstm_50_while_lstm_50_strided_slice_1_0"z
:lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource<lstm_50_while_lstm_cell_50_biasadd_readvariableop_resource_0"|
;lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource=lstm_50_while_lstm_cell_50_matmul_1_readvariableop_resource_0"x
9lstm_50_while_lstm_cell_50_matmul_readvariableop_resource;lstm_50_while_lstm_cell_50_matmul_readvariableop_resource_0"È
alstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensorclstm_50_while_tensorarrayv2read_tensorlistgetitem_lstm_50_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2f
1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp1lstm_50/while/lstm_cell_50/BiasAdd/ReadVariableOp2d
0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp0lstm_50/while/lstm_cell_50/MatMul/ReadVariableOp2h
2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp2lstm_50/while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_12035961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12035961___redundant_placeholder06
2while_while_cond_12035961___redundant_placeholder16
2while_while_cond_12035961___redundant_placeholder26
2while_while_cond_12035961___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
¬8

E__inference_lstm_51_layer_call_and_return_conditional_losses_12033508

inputs(
lstm_cell_51_12033426:	dÈ(
lstm_cell_51_12033428:	2È$
lstm_cell_51_12033430:	È
identity¢$lstm_cell_51/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maský
$lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_51_12033426lstm_cell_51_12033428lstm_cell_51_12033430*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033380n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Á
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_51_12033426lstm_cell_51_12033428lstm_cell_51_12033430*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12033439*
condR
while_cond_12033438*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2u
NoOpNoOp%^lstm_cell_51/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_51/StatefulPartitionedCall$lstm_cell_51/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ÒK

E__inference_lstm_50_layer_call_and_return_conditional_losses_12035413
inputs_0>
+lstm_cell_50_matmul_readvariableop_resource:	@
-lstm_cell_50_matmul_1_readvariableop_resource:	d;
,lstm_cell_50_biasadd_readvariableop_resource:	
identity¢#lstm_cell_50/BiasAdd/ReadVariableOp¢"lstm_cell_50/MatMul/ReadVariableOp¢$lstm_cell_50/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_50/MatMul/ReadVariableOpReadVariableOp+lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_50/MatMulMatMulstrided_slice_2:output:0*lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_50/MatMul_1MatMulzeros:output:0,lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_50/addAddV2lstm_cell_50/MatMul:product:0lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_50/BiasAddBiasAddlstm_cell_50/add:z:0+lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_50/splitSplit%lstm_cell_50/split/split_dim:output:0lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_50/SigmoidSigmoidlstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_1Sigmoidlstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_50/mulMullstm_cell_50/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_50/ReluRelulstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_1Mullstm_cell_50/Sigmoid:y:0lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_50/add_1AddV2lstm_cell_50/mul:z:0lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_2Sigmoidlstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_50/Relu_1Relulstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_2Mullstm_cell_50/Sigmoid_2:y:0!lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_50_matmul_readvariableop_resource-lstm_cell_50_matmul_1_readvariableop_resource,lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12035328*
condR
while_cond_12035327*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
NoOpNoOp$^lstm_cell_50/BiasAdd/ReadVariableOp#^lstm_cell_50/MatMul/ReadVariableOp%^lstm_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_50/BiasAdd/ReadVariableOp#lstm_cell_50/BiasAdd/ReadVariableOp2H
"lstm_cell_50/MatMul/ReadVariableOp"lstm_cell_50/MatMul/ReadVariableOp2L
$lstm_cell_50/MatMul_1/ReadVariableOp$lstm_cell_50/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
æ	
É
0__inference_sequential_75_layer_call_fn_12034458

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_75_layer_call_and_return_conditional_losses_12033916s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
#
ñ
while_body_12033439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_51_12033463_0:	dÈ0
while_lstm_cell_51_12033465_0:	2È,
while_lstm_cell_51_12033467_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_51_12033463:	dÈ.
while_lstm_cell_51_12033465:	2È*
while_lstm_cell_51_12033467:	È¢*while/lstm_cell_51/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0»
*while/lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_51_12033463_0while_lstm_cell_51_12033465_0while_lstm_cell_51_12033467_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033380Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_51/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_51/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity3while/lstm_cell_51/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y

while/NoOpNoOp+^while/lstm_cell_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_51_12033463while_lstm_cell_51_12033463_0"<
while_lstm_cell_51_12033465while_lstm_cell_51_12033465_0"<
while_lstm_cell_51_12033467while_lstm_cell_51_12033467_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_51/StatefulPartitionedCall*while/lstm_cell_51/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
­
¹
*__inference_lstm_51_layer_call_fn_12035727
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12033317|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ÆF
Î
!__inference__traced_save_12036723
file_prefix:
6savev2_lstm_50_lstm_cell_50_kernel_read_readvariableopD
@savev2_lstm_50_lstm_cell_50_recurrent_kernel_read_readvariableop8
4savev2_lstm_50_lstm_cell_50_bias_read_readvariableop:
6savev2_lstm_51_lstm_cell_51_kernel_read_readvariableopD
@savev2_lstm_51_lstm_cell_51_recurrent_kernel_read_readvariableop8
4savev2_lstm_51_lstm_cell_51_bias_read_readvariableop9
5savev2_time_distributed_38_kernel_read_readvariableop7
3savev2_time_distributed_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopA
=savev2_adam_lstm_50_lstm_cell_50_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_50_lstm_cell_50_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_50_lstm_cell_50_bias_m_read_readvariableopA
=savev2_adam_lstm_51_lstm_cell_51_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_51_lstm_cell_51_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_51_lstm_cell_51_bias_m_read_readvariableop@
<savev2_adam_time_distributed_38_kernel_m_read_readvariableop>
:savev2_adam_time_distributed_38_bias_m_read_readvariableopA
=savev2_adam_lstm_50_lstm_cell_50_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_50_lstm_cell_50_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_50_lstm_cell_50_bias_v_read_readvariableopA
=savev2_adam_lstm_51_lstm_cell_51_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_51_lstm_cell_51_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_51_lstm_cell_51_bias_v_read_readvariableop@
<savev2_adam_time_distributed_38_kernel_v_read_readvariableop>
:savev2_adam_time_distributed_38_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Û
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueúB÷ B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH­
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ³
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_lstm_50_lstm_cell_50_kernel_read_readvariableop@savev2_lstm_50_lstm_cell_50_recurrent_kernel_read_readvariableop4savev2_lstm_50_lstm_cell_50_bias_read_readvariableop6savev2_lstm_51_lstm_cell_51_kernel_read_readvariableop@savev2_lstm_51_lstm_cell_51_recurrent_kernel_read_readvariableop4savev2_lstm_51_lstm_cell_51_bias_read_readvariableop5savev2_time_distributed_38_kernel_read_readvariableop3savev2_time_distributed_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop=savev2_adam_lstm_50_lstm_cell_50_kernel_m_read_readvariableopGsavev2_adam_lstm_50_lstm_cell_50_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_50_lstm_cell_50_bias_m_read_readvariableop=savev2_adam_lstm_51_lstm_cell_51_kernel_m_read_readvariableopGsavev2_adam_lstm_51_lstm_cell_51_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_51_lstm_cell_51_bias_m_read_readvariableop<savev2_adam_time_distributed_38_kernel_m_read_readvariableop:savev2_adam_time_distributed_38_bias_m_read_readvariableop=savev2_adam_lstm_50_lstm_cell_50_kernel_v_read_readvariableopGsavev2_adam_lstm_50_lstm_cell_50_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_50_lstm_cell_50_bias_v_read_readvariableop=savev2_adam_lstm_51_lstm_cell_51_kernel_v_read_readvariableopGsavev2_adam_lstm_51_lstm_cell_51_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_51_lstm_cell_51_bias_v_read_readvariableop<savev2_adam_time_distributed_38_kernel_v_read_readvariableop:savev2_adam_time_distributed_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesó
ð: :	:	d::	dÈ:	2È:È:2:: : : : : : : :	:	d::	dÈ:	2È:È:2::	:	d::	dÈ:	2È:È:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

_output_shapes

:2: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dÈ:%!

_output_shapes
:	2È:!

_output_shapes	
:È:$ 

_output_shapes

:2: 

_output_shapes
:: 

_output_shapes
: 
8
Ò
while_body_12036248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_51_biasadd_readvariableop_resource:	È¢)while/lstm_cell_51/BiasAdd/ReadVariableOp¢(while/lstm_cell_51/MatMul/ReadVariableOp¢*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
°

K__inference_sequential_75_layer_call_and_return_conditional_losses_12034316

inputs#
lstm_50_12034293:	#
lstm_50_12034295:	d
lstm_50_12034297:	#
lstm_51_12034301:	dÈ#
lstm_51_12034303:	2È
lstm_51_12034305:	È.
time_distributed_38_12034308:2*
time_distributed_38_12034310:
identity¢lstm_50/StatefulPartitionedCall¢lstm_51/StatefulPartitionedCall¢+time_distributed_38/StatefulPartitionedCall
lstm_50/StatefulPartitionedCallStatefulPartitionedCallinputslstm_50_12034293lstm_50_12034295lstm_50_12034297*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12034258ð
 repeat_vector_25/PartitionedCallPartitionedCall(lstm_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12033164­
lstm_51/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_25/PartitionedCall:output:0lstm_51_12034301lstm_51_12034303lstm_51_12034305*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12034091È
+time_distributed_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_51/StatefulPartitionedCall:output:0time_distributed_38_12034308time_distributed_38_12034310*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033591r
!time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_38/ReshapeReshape(lstm_51/StatefulPartitionedCall:output:0*time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_38/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_50/StatefulPartitionedCall ^lstm_51/StatefulPartitionedCall,^time_distributed_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_50/StatefulPartitionedCalllstm_50/StatefulPartitionedCall2B
lstm_51/StatefulPartitionedCalllstm_51/StatefulPartitionedCall2Z
+time_distributed_38/StatefulPartitionedCall+time_distributed_38/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¹
*__inference_lstm_50_layer_call_fn_12035090
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12032950o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
#
ñ
while_body_12033248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_51_12033272_0:	dÈ0
while_lstm_cell_51_12033274_0:	2È,
while_lstm_cell_51_12033276_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_51_12033272:	dÈ.
while_lstm_cell_51_12033274:	2È*
while_lstm_cell_51_12033276:	È¢*while/lstm_cell_51/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0»
*while/lstm_cell_51/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_51_12033272_0while_lstm_cell_51_12033274_0while_lstm_cell_51_12033276_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12033234Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_51/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_51/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity3while/lstm_cell_51/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y

while/NoOpNoOp+^while/lstm_cell_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_51_12033272while_lstm_cell_51_12033272_0"<
while_lstm_cell_51_12033274while_lstm_cell_51_12033274_0"<
while_lstm_cell_51_12033276while_lstm_cell_51_12033276_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_51/StatefulPartitionedCall*while/lstm_cell_51/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
R

)sequential_75_lstm_51_while_body_12032702H
Dsequential_75_lstm_51_while_sequential_75_lstm_51_while_loop_counterN
Jsequential_75_lstm_51_while_sequential_75_lstm_51_while_maximum_iterations+
'sequential_75_lstm_51_while_placeholder-
)sequential_75_lstm_51_while_placeholder_1-
)sequential_75_lstm_51_while_placeholder_2-
)sequential_75_lstm_51_while_placeholder_3G
Csequential_75_lstm_51_while_sequential_75_lstm_51_strided_slice_1_0
sequential_75_lstm_51_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_51_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_75_lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈ^
Ksequential_75_lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈY
Jsequential_75_lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0:	È(
$sequential_75_lstm_51_while_identity*
&sequential_75_lstm_51_while_identity_1*
&sequential_75_lstm_51_while_identity_2*
&sequential_75_lstm_51_while_identity_3*
&sequential_75_lstm_51_while_identity_4*
&sequential_75_lstm_51_while_identity_5E
Asequential_75_lstm_51_while_sequential_75_lstm_51_strided_slice_1
}sequential_75_lstm_51_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_51_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_75_lstm_51_while_lstm_cell_51_matmul_readvariableop_resource:	dÈ\
Isequential_75_lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈW
Hsequential_75_lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource:	È¢?sequential_75/lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp¢>sequential_75/lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp¢@sequential_75/lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp
Msequential_75/lstm_51/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_75/lstm_51/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_75_lstm_51_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_51_tensorarrayunstack_tensorlistfromtensor_0'sequential_75_lstm_51_while_placeholderVsequential_75/lstm_51/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0É
>sequential_75/lstm_51/while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOpIsequential_75_lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ü
/sequential_75/lstm_51/while/lstm_cell_51/MatMulMatMulFsequential_75/lstm_51/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_75/lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÍ
@sequential_75/lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOpKsequential_75_lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ã
1sequential_75/lstm_51/while/lstm_cell_51/MatMul_1MatMul)sequential_75_lstm_51_while_placeholder_2Hsequential_75/lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈà
,sequential_75/lstm_51/while/lstm_cell_51/addAddV29sequential_75/lstm_51/while/lstm_cell_51/MatMul:product:0;sequential_75/lstm_51/while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÇ
?sequential_75/lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOpJsequential_75_lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0é
0sequential_75/lstm_51/while/lstm_cell_51/BiasAddBiasAdd0sequential_75/lstm_51/while/lstm_cell_51/add:z:0Gsequential_75/lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈz
8sequential_75/lstm_51/while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_75/lstm_51/while/lstm_cell_51/splitSplitAsequential_75/lstm_51/while/lstm_cell_51/split/split_dim:output:09sequential_75/lstm_51/while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¦
0sequential_75/lstm_51/while/lstm_cell_51/SigmoidSigmoid7sequential_75/lstm_51/while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
2sequential_75/lstm_51/while/lstm_cell_51/Sigmoid_1Sigmoid7sequential_75/lstm_51/while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2È
,sequential_75/lstm_51/while/lstm_cell_51/mulMul6sequential_75/lstm_51/while/lstm_cell_51/Sigmoid_1:y:0)sequential_75_lstm_51_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
-sequential_75/lstm_51/while/lstm_cell_51/ReluRelu7sequential_75/lstm_51/while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ú
.sequential_75/lstm_51/while/lstm_cell_51/mul_1Mul4sequential_75/lstm_51/while/lstm_cell_51/Sigmoid:y:0;sequential_75/lstm_51/while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
.sequential_75/lstm_51/while/lstm_cell_51/add_1AddV20sequential_75/lstm_51/while/lstm_cell_51/mul:z:02sequential_75/lstm_51/while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
2sequential_75/lstm_51/while/lstm_cell_51/Sigmoid_2Sigmoid7sequential_75/lstm_51/while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
/sequential_75/lstm_51/while/lstm_cell_51/Relu_1Relu2sequential_75/lstm_51/while/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Þ
.sequential_75/lstm_51/while/lstm_cell_51/mul_2Mul6sequential_75/lstm_51/while/lstm_cell_51/Sigmoid_2:y:0=sequential_75/lstm_51/while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_75/lstm_51/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_75_lstm_51_while_placeholder_1'sequential_75_lstm_51_while_placeholder2sequential_75/lstm_51/while/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_75/lstm_51/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_75/lstm_51/while/addAddV2'sequential_75_lstm_51_while_placeholder*sequential_75/lstm_51/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_75/lstm_51/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_75/lstm_51/while/add_1AddV2Dsequential_75_lstm_51_while_sequential_75_lstm_51_while_loop_counter,sequential_75/lstm_51/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_75/lstm_51/while/IdentityIdentity%sequential_75/lstm_51/while/add_1:z:0!^sequential_75/lstm_51/while/NoOp*
T0*
_output_shapes
: Â
&sequential_75/lstm_51/while/Identity_1IdentityJsequential_75_lstm_51_while_sequential_75_lstm_51_while_maximum_iterations!^sequential_75/lstm_51/while/NoOp*
T0*
_output_shapes
: 
&sequential_75/lstm_51/while/Identity_2Identity#sequential_75/lstm_51/while/add:z:0!^sequential_75/lstm_51/while/NoOp*
T0*
_output_shapes
: È
&sequential_75/lstm_51/while/Identity_3IdentityPsequential_75/lstm_51/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_75/lstm_51/while/NoOp*
T0*
_output_shapes
: »
&sequential_75/lstm_51/while/Identity_4Identity2sequential_75/lstm_51/while/lstm_cell_51/mul_2:z:0!^sequential_75/lstm_51/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
&sequential_75/lstm_51/while/Identity_5Identity2sequential_75/lstm_51/while/lstm_cell_51/add_1:z:0!^sequential_75/lstm_51/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
 sequential_75/lstm_51/while/NoOpNoOp@^sequential_75/lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp?^sequential_75/lstm_51/while/lstm_cell_51/MatMul/ReadVariableOpA^sequential_75/lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_75_lstm_51_while_identity-sequential_75/lstm_51/while/Identity:output:0"Y
&sequential_75_lstm_51_while_identity_1/sequential_75/lstm_51/while/Identity_1:output:0"Y
&sequential_75_lstm_51_while_identity_2/sequential_75/lstm_51/while/Identity_2:output:0"Y
&sequential_75_lstm_51_while_identity_3/sequential_75/lstm_51/while/Identity_3:output:0"Y
&sequential_75_lstm_51_while_identity_4/sequential_75/lstm_51/while/Identity_4:output:0"Y
&sequential_75_lstm_51_while_identity_5/sequential_75/lstm_51/while/Identity_5:output:0"
Hsequential_75_lstm_51_while_lstm_cell_51_biasadd_readvariableop_resourceJsequential_75_lstm_51_while_lstm_cell_51_biasadd_readvariableop_resource_0"
Isequential_75_lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resourceKsequential_75_lstm_51_while_lstm_cell_51_matmul_1_readvariableop_resource_0"
Gsequential_75_lstm_51_while_lstm_cell_51_matmul_readvariableop_resourceIsequential_75_lstm_51_while_lstm_cell_51_matmul_readvariableop_resource_0"
Asequential_75_lstm_51_while_sequential_75_lstm_51_strided_slice_1Csequential_75_lstm_51_while_sequential_75_lstm_51_strided_slice_1_0"
}sequential_75_lstm_51_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_51_tensorarrayunstack_tensorlistfromtensorsequential_75_lstm_51_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_51_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
?sequential_75/lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp?sequential_75/lstm_51/while/lstm_cell_51/BiasAdd/ReadVariableOp2
>sequential_75/lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp>sequential_75/lstm_51/while/lstm_cell_51/MatMul/ReadVariableOp2
@sequential_75/lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp@sequential_75/lstm_51/while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
û
·
*__inference_lstm_50_layer_call_fn_12035112

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12033749o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß»
Ö
K__inference_sequential_75_layer_call_and_return_conditional_losses_12035079

inputsF
3lstm_50_lstm_cell_50_matmul_readvariableop_resource:	H
5lstm_50_lstm_cell_50_matmul_1_readvariableop_resource:	dC
4lstm_50_lstm_cell_50_biasadd_readvariableop_resource:	F
3lstm_51_lstm_cell_51_matmul_readvariableop_resource:	dÈH
5lstm_51_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈC
4lstm_51_lstm_cell_51_biasadd_readvariableop_resource:	ÈN
<time_distributed_38_dense_162_matmul_readvariableop_resource:2K
=time_distributed_38_dense_162_biasadd_readvariableop_resource:
identity¢+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp¢*lstm_50/lstm_cell_50/MatMul/ReadVariableOp¢,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp¢lstm_50/while¢+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp¢*lstm_51/lstm_cell_51/MatMul/ReadVariableOp¢,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp¢lstm_51/while¢4time_distributed_38/dense_162/BiasAdd/ReadVariableOp¢3time_distributed_38/dense_162/MatMul/ReadVariableOpC
lstm_50/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_50/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_50/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_50/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_50/strided_sliceStridedSlicelstm_50/Shape:output:0$lstm_50/strided_slice/stack:output:0&lstm_50/strided_slice/stack_1:output:0&lstm_50/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_50/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_50/zeros/packedPacklstm_50/strided_slice:output:0lstm_50/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_50/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_50/zerosFilllstm_50/zeros/packed:output:0lstm_50/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_50/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_50/zeros_1/packedPacklstm_50/strided_slice:output:0!lstm_50/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_50/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_50/zeros_1Filllstm_50/zeros_1/packed:output:0lstm_50/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_50/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_50/transpose	Transposeinputslstm_50/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_50/Shape_1Shapelstm_50/transpose:y:0*
T0*
_output_shapes
:g
lstm_50/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_50/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_50/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_50/strided_slice_1StridedSlicelstm_50/Shape_1:output:0&lstm_50/strided_slice_1/stack:output:0(lstm_50/strided_slice_1/stack_1:output:0(lstm_50/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_50/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_50/TensorArrayV2TensorListReserve,lstm_50/TensorArrayV2/element_shape:output:0 lstm_50/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_50/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_50/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_50/transpose:y:0Flstm_50/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_50/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_50/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_50/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_50/strided_slice_2StridedSlicelstm_50/transpose:y:0&lstm_50/strided_slice_2/stack:output:0(lstm_50/strided_slice_2/stack_1:output:0(lstm_50/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_50/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3lstm_50_lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0®
lstm_50/lstm_cell_50/MatMulMatMul lstm_50/strided_slice_2:output:02lstm_50/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5lstm_50_lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0¨
lstm_50/lstm_cell_50/MatMul_1MatMullstm_50/zeros:output:04lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_50/lstm_cell_50/addAddV2%lstm_50/lstm_cell_50/MatMul:product:0'lstm_50/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4lstm_50_lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_50/lstm_cell_50/BiasAddBiasAddlstm_50/lstm_cell_50/add:z:03lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_50/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_50/lstm_cell_50/splitSplit-lstm_50/lstm_cell_50/split/split_dim:output:0%lstm_50/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split~
lstm_50/lstm_cell_50/SigmoidSigmoid#lstm_50/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/Sigmoid_1Sigmoid#lstm_50/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/mulMul"lstm_50/lstm_cell_50/Sigmoid_1:y:0lstm_50/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
lstm_50/lstm_cell_50/ReluRelu#lstm_50/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/mul_1Mul lstm_50/lstm_cell_50/Sigmoid:y:0'lstm_50/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/add_1AddV2lstm_50/lstm_cell_50/mul:z:0lstm_50/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_50/lstm_cell_50/Sigmoid_2Sigmoid#lstm_50/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
lstm_50/lstm_cell_50/Relu_1Relulstm_50/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
lstm_50/lstm_cell_50/mul_2Mul"lstm_50/lstm_cell_50/Sigmoid_2:y:0)lstm_50/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_50/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   f
$lstm_50/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_50/TensorArrayV2_1TensorListReserve.lstm_50/TensorArrayV2_1/element_shape:output:0-lstm_50/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_50/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_50/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_50/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
lstm_50/whileWhile#lstm_50/while/loop_counter:output:0)lstm_50/while/maximum_iterations:output:0lstm_50/time:output:0 lstm_50/TensorArrayV2_1:handle:0lstm_50/zeros:output:0lstm_50/zeros_1:output:0 lstm_50/strided_slice_1:output:0?lstm_50/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_50_lstm_cell_50_matmul_readvariableop_resource5lstm_50_lstm_cell_50_matmul_1_readvariableop_resource4lstm_50_lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_50_while_body_12034839*'
condR
lstm_50_while_cond_12034838*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_50/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   î
*lstm_50/TensorArrayV2Stack/TensorListStackTensorListStacklstm_50/while:output:3Alstm_50/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsp
lstm_50/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_50/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_50/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_50/strided_slice_3StridedSlice3lstm_50/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_50/strided_slice_3/stack:output:0(lstm_50/strided_slice_3/stack_1:output:0(lstm_50/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_50/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_50/transpose_1	Transpose3lstm_50/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_50/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_50/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    a
repeat_vector_25/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :«
repeat_vector_25/ExpandDims
ExpandDims lstm_50/strided_slice_3:output:0(repeat_vector_25/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
repeat_vector_25/stackConst*
_output_shapes
:*
dtype0*!
valueB"         
repeat_vector_25/TileTile$repeat_vector_25/ExpandDims:output:0repeat_vector_25/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_51/ShapeShaperepeat_vector_25/Tile:output:0*
T0*
_output_shapes
:e
lstm_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_51/strided_sliceStridedSlicelstm_51/Shape:output:0$lstm_51/strided_slice/stack:output:0&lstm_51/strided_slice/stack_1:output:0&lstm_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_51/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_51/zeros/packedPacklstm_51/strided_slice:output:0lstm_51/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_51/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_51/zerosFilllstm_51/zeros/packed:output:0lstm_51/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_51/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_51/zeros_1/packedPacklstm_51/strided_slice:output:0!lstm_51/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_51/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_51/zeros_1Filllstm_51/zeros_1/packed:output:0lstm_51/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_51/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_51/transpose	Transposerepeat_vector_25/Tile:output:0lstm_51/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_51/Shape_1Shapelstm_51/transpose:y:0*
T0*
_output_shapes
:g
lstm_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_51/strided_slice_1StridedSlicelstm_51/Shape_1:output:0&lstm_51/strided_slice_1/stack:output:0(lstm_51/strided_slice_1/stack_1:output:0(lstm_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_51/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_51/TensorArrayV2TensorListReserve,lstm_51/TensorArrayV2/element_shape:output:0 lstm_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_51/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_51/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_51/transpose:y:0Flstm_51/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_51/strided_slice_2StridedSlicelstm_51/transpose:y:0&lstm_51/strided_slice_2/stack:output:0(lstm_51/strided_slice_2/stack_1:output:0(lstm_51/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
*lstm_51/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3lstm_51_lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0®
lstm_51/lstm_cell_51/MatMulMatMul lstm_51/strided_slice_2:output:02lstm_51/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5lstm_51_lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0¨
lstm_51/lstm_cell_51/MatMul_1MatMullstm_51/zeros:output:04lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¤
lstm_51/lstm_cell_51/addAddV2%lstm_51/lstm_cell_51/MatMul:product:0'lstm_51/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4lstm_51_lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0­
lstm_51/lstm_cell_51/BiasAddBiasAddlstm_51/lstm_cell_51/add:z:03lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈf
$lstm_51/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_51/lstm_cell_51/splitSplit-lstm_51/lstm_cell_51/split/split_dim:output:0%lstm_51/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split~
lstm_51/lstm_cell_51/SigmoidSigmoid#lstm_51/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/Sigmoid_1Sigmoid#lstm_51/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/mulMul"lstm_51/lstm_cell_51/Sigmoid_1:y:0lstm_51/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
lstm_51/lstm_cell_51/ReluRelu#lstm_51/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/mul_1Mul lstm_51/lstm_cell_51/Sigmoid:y:0'lstm_51/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/add_1AddV2lstm_51/lstm_cell_51/mul:z:0lstm_51/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_51/lstm_cell_51/Sigmoid_2Sigmoid#lstm_51/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2u
lstm_51/lstm_cell_51/Relu_1Relulstm_51/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
lstm_51/lstm_cell_51/mul_2Mul"lstm_51/lstm_cell_51/Sigmoid_2:y:0)lstm_51/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_51/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_51/TensorArrayV2_1TensorListReserve.lstm_51/TensorArrayV2_1/element_shape:output:0 lstm_51/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_51/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_51/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_51/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
lstm_51/whileWhile#lstm_51/while/loop_counter:output:0)lstm_51/while/maximum_iterations:output:0lstm_51/time:output:0 lstm_51/TensorArrayV2_1:handle:0lstm_51/zeros:output:0lstm_51/zeros_1:output:0 lstm_51/strided_slice_1:output:0?lstm_51/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_51_lstm_cell_51_matmul_readvariableop_resource5lstm_51_lstm_cell_51_matmul_1_readvariableop_resource4lstm_51_lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_51_while_body_12034983*'
condR
lstm_51_while_cond_12034982*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_51/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_51/TensorArrayV2Stack/TensorListStackTensorListStacklstm_51/while:output:3Alstm_51/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_51/strided_slice_3StridedSlice3lstm_51/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_51/strided_slice_3/stack:output:0(lstm_51/strided_slice_3/stack_1:output:0(lstm_51/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_51/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_51/transpose_1	Transpose3lstm_51/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_51/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_51/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
!time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
time_distributed_38/ReshapeReshapelstm_51/transpose_1:y:0*time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
3time_distributed_38/dense_162/MatMul/ReadVariableOpReadVariableOp<time_distributed_38_dense_162_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ã
$time_distributed_38/dense_162/MatMulMatMul$time_distributed_38/Reshape:output:0;time_distributed_38/dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4time_distributed_38/dense_162/BiasAdd/ReadVariableOpReadVariableOp=time_distributed_38_dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ð
%time_distributed_38/dense_162/BiasAddBiasAdd.time_distributed_38/dense_162/MatMul:product:0<time_distributed_38/dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#time_distributed_38/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      ¼
time_distributed_38/Reshape_1Reshape.time_distributed_38/dense_162/BiasAdd:output:0,time_distributed_38/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#time_distributed_38/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¡
time_distributed_38/Reshape_2Reshapelstm_51/transpose_1:y:0,time_distributed_38/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
IdentityIdentity&time_distributed_38/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp,^lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp+^lstm_50/lstm_cell_50/MatMul/ReadVariableOp-^lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp^lstm_50/while,^lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp+^lstm_51/lstm_cell_51/MatMul/ReadVariableOp-^lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp^lstm_51/while5^time_distributed_38/dense_162/BiasAdd/ReadVariableOp4^time_distributed_38/dense_162/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp+lstm_50/lstm_cell_50/BiasAdd/ReadVariableOp2X
*lstm_50/lstm_cell_50/MatMul/ReadVariableOp*lstm_50/lstm_cell_50/MatMul/ReadVariableOp2\
,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp,lstm_50/lstm_cell_50/MatMul_1/ReadVariableOp2
lstm_50/whilelstm_50/while2Z
+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp+lstm_51/lstm_cell_51/BiasAdd/ReadVariableOp2X
*lstm_51/lstm_cell_51/MatMul/ReadVariableOp*lstm_51/lstm_cell_51/MatMul/ReadVariableOp2\
,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp,lstm_51/lstm_cell_51/MatMul_1/ReadVariableOp2
lstm_51/whilelstm_51/while2l
4time_distributed_38/dense_162/BiasAdd/ReadVariableOp4time_distributed_38/dense_162/BiasAdd/ReadVariableOp2j
3time_distributed_38/dense_162/MatMul/ReadVariableOp3time_distributed_38/dense_162/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª9
Ò
while_body_12034173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_50_matmul_readvariableop_resource_0:	H
5while_lstm_cell_50_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_50_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_50_matmul_readvariableop_resource:	F
3while_lstm_cell_50_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_50_biasadd_readvariableop_resource:	¢)while/lstm_cell_50/BiasAdd/ReadVariableOp¢(while/lstm_cell_50/MatMul/ReadVariableOp¢*while/lstm_cell_50/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_50/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_50_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_50/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_50_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_50/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_50/addAddV2#while/lstm_cell_50/MatMul:product:0%while/lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_50_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_50/BiasAddBiasAddwhile/lstm_cell_50/add:z:01while/lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_50/splitSplit+while/lstm_cell_50/split/split_dim:output:0#while/lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_50/SigmoidSigmoid!while/lstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_1Sigmoid!while/lstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mulMul while/lstm_cell_50/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_50/ReluRelu!while/lstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_1Mulwhile/lstm_cell_50/Sigmoid:y:0%while/lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/add_1AddV2while/lstm_cell_50/mul:z:0while/lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_50/Sigmoid_2Sigmoid!while/lstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_50/Relu_1Reluwhile/lstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_50/mul_2Mul while/lstm_cell_50/Sigmoid_2:y:0'while/lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_50/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_50/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_50/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_50/BiasAdd/ReadVariableOp)^while/lstm_cell_50/MatMul/ReadVariableOp+^while/lstm_cell_50/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_50_biasadd_readvariableop_resource4while_lstm_cell_50_biasadd_readvariableop_resource_0"l
3while_lstm_cell_50_matmul_1_readvariableop_resource5while_lstm_cell_50_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_50_matmul_readvariableop_resource3while_lstm_cell_50_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_50/BiasAdd/ReadVariableOp)while/lstm_cell_50/BiasAdd/ReadVariableOp2T
(while/lstm_cell_50/MatMul/ReadVariableOp(while/lstm_cell_50/MatMul/ReadVariableOp2X
*while/lstm_cell_50/MatMul_1/ReadVariableOp*while/lstm_cell_50/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
: 
°

K__inference_sequential_75_layer_call_and_return_conditional_losses_12033916

inputs#
lstm_50_12033750:	#
lstm_50_12033752:	d
lstm_50_12033754:	#
lstm_51_12033901:	dÈ#
lstm_51_12033903:	2È
lstm_51_12033905:	È.
time_distributed_38_12033908:2*
time_distributed_38_12033910:
identity¢lstm_50/StatefulPartitionedCall¢lstm_51/StatefulPartitionedCall¢+time_distributed_38/StatefulPartitionedCall
lstm_50/StatefulPartitionedCallStatefulPartitionedCallinputslstm_50_12033750lstm_50_12033752lstm_50_12033754*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_50_layer_call_and_return_conditional_losses_12033749ð
 repeat_vector_25/PartitionedCallPartitionedCall(lstm_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12033164­
lstm_51/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_25/PartitionedCall:output:0lstm_51_12033901lstm_51_12033903lstm_51_12033905*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12033900È
+time_distributed_38/StatefulPartitionedCallStatefulPartitionedCall(lstm_51/StatefulPartitionedCall:output:0time_distributed_38_12033908time_distributed_38_12033910*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033552r
!time_distributed_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_38/ReshapeReshape(lstm_51/StatefulPartitionedCall:output:0*time_distributed_38/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_38/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_50/StatefulPartitionedCall ^lstm_51/StatefulPartitionedCall,^time_distributed_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_50/StatefulPartitionedCalllstm_50/StatefulPartitionedCall2B
lstm_51/StatefulPartitionedCalllstm_51/StatefulPartitionedCall2Z
+time_distributed_38/StatefulPartitionedCall+time_distributed_38/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ò
while_body_12033816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_51_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_51_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_51_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_51_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_51_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_51_biasadd_readvariableop_resource:	È¢)while/lstm_cell_51/BiasAdd/ReadVariableOp¢(while/lstm_cell_51/MatMul/ReadVariableOp¢*while/lstm_cell_51/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_51/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_51_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_51/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_51_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_51/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_51/addAddV2#while/lstm_cell_51/MatMul:product:0%while/lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_51_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_51/BiasAddBiasAddwhile/lstm_cell_51/add:z:01while/lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_51/splitSplit+while/lstm_cell_51/split/split_dim:output:0#while/lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_51/SigmoidSigmoid!while/lstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_1Sigmoid!while/lstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mulMul while/lstm_cell_51/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_51/ReluRelu!while/lstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_1Mulwhile/lstm_cell_51/Sigmoid:y:0%while/lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/add_1AddV2while/lstm_cell_51/mul:z:0while/lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_51/Sigmoid_2Sigmoid!while/lstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_51/Relu_1Reluwhile/lstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_51/mul_2Mul while/lstm_cell_51/Sigmoid_2:y:0'while/lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_51/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_51/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_51/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_51/BiasAdd/ReadVariableOp)^while/lstm_cell_51/MatMul/ReadVariableOp+^while/lstm_cell_51/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_51_biasadd_readvariableop_resource4while_lstm_cell_51_biasadd_readvariableop_resource_0"l
3while_lstm_cell_51_matmul_1_readvariableop_resource5while_lstm_cell_51_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_51_matmul_readvariableop_resource3while_lstm_cell_51_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_51/BiasAdd/ReadVariableOp)while/lstm_cell_51/BiasAdd/ReadVariableOp2T
(while/lstm_cell_51/MatMul/ReadVariableOp(while/lstm_cell_51/MatMul/ReadVariableOp2X
*while/lstm_cell_51/MatMul_1/ReadVariableOp*while/lstm_cell_51/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
¯K

E__inference_lstm_50_layer_call_and_return_conditional_losses_12034258

inputs>
+lstm_cell_50_matmul_readvariableop_resource:	@
-lstm_cell_50_matmul_1_readvariableop_resource:	d;
,lstm_cell_50_biasadd_readvariableop_resource:	
identity¢#lstm_cell_50/BiasAdd/ReadVariableOp¢"lstm_cell_50/MatMul/ReadVariableOp¢$lstm_cell_50/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_50/MatMul/ReadVariableOpReadVariableOp+lstm_cell_50_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_50/MatMulMatMulstrided_slice_2:output:0*lstm_cell_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_50/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_50_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_50/MatMul_1MatMulzeros:output:0,lstm_cell_50/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_50/addAddV2lstm_cell_50/MatMul:product:0lstm_cell_50/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_50/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_50_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_50/BiasAddBiasAddlstm_cell_50/add:z:0+lstm_cell_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_50/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_50/splitSplit%lstm_cell_50/split/split_dim:output:0lstm_cell_50/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_50/SigmoidSigmoidlstm_cell_50/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_1Sigmoidlstm_cell_50/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_50/mulMullstm_cell_50/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_50/ReluRelulstm_cell_50/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_1Mullstm_cell_50/Sigmoid:y:0lstm_cell_50/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_50/add_1AddV2lstm_cell_50/mul:z:0lstm_cell_50/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_50/Sigmoid_2Sigmoidlstm_cell_50/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_50/Relu_1Relulstm_cell_50/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_50/mul_2Mullstm_cell_50/Sigmoid_2:y:0!lstm_cell_50/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_50_matmul_readvariableop_resource-lstm_cell_50_matmul_1_readvariableop_resource,lstm_cell_50_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12034173*
condR
while_cond_12034172*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÀ
NoOpNoOp$^lstm_cell_50/BiasAdd/ReadVariableOp#^lstm_cell_50/MatMul/ReadVariableOp%^lstm_cell_50/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_50/BiasAdd/ReadVariableOp#lstm_cell_50/BiasAdd/ReadVariableOp2H
"lstm_cell_50/MatMul/ReadVariableOp"lstm_cell_50/MatMul/ReadVariableOp2L
$lstm_cell_50/MatMul_1/ReadVariableOp$lstm_cell_50/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036588

inputs
states_0
states_11
matmul_readvariableop_resource:	dÈ3
 matmul_1_readvariableop_resource:	2È.
biasadd_readvariableop_resource:	È
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
©J

E__inference_lstm_51_layer_call_and_return_conditional_losses_12036332

inputs>
+lstm_cell_51_matmul_readvariableop_resource:	dÈ@
-lstm_cell_51_matmul_1_readvariableop_resource:	2È;
,lstm_cell_51_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_51/BiasAdd/ReadVariableOp¢"lstm_cell_51/MatMul/ReadVariableOp¢$lstm_cell_51/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
"lstm_cell_51/MatMul/ReadVariableOpReadVariableOp+lstm_cell_51_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_51/MatMulMatMulstrided_slice_2:output:0*lstm_cell_51/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_51/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_51_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_51/MatMul_1MatMulzeros:output:0,lstm_cell_51/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_51/addAddV2lstm_cell_51/MatMul:product:0lstm_cell_51/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_51/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_51_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_51/BiasAddBiasAddlstm_cell_51/add:z:0+lstm_cell_51/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_51/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_51/splitSplit%lstm_cell_51/split/split_dim:output:0lstm_cell_51/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_51/SigmoidSigmoidlstm_cell_51/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_1Sigmoidlstm_cell_51/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_51/mulMullstm_cell_51/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_51/ReluRelulstm_cell_51/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_1Mullstm_cell_51/Sigmoid:y:0lstm_cell_51/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_51/add_1AddV2lstm_cell_51/mul:z:0lstm_cell_51/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_51/Sigmoid_2Sigmoidlstm_cell_51/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_51/Relu_1Relulstm_cell_51/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_51/mul_2Mullstm_cell_51/Sigmoid_2:y:0!lstm_cell_51/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_51_matmul_readvariableop_resource-lstm_cell_51_matmul_1_readvariableop_resource,lstm_cell_51_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12036248*
condR
while_cond_12036247*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_51/BiasAdd/ReadVariableOp#^lstm_cell_51/MatMul/ReadVariableOp%^lstm_cell_51/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_51/BiasAdd/ReadVariableOp#lstm_cell_51/BiasAdd/ReadVariableOp2H
"lstm_cell_51/MatMul/ReadVariableOp"lstm_cell_51/MatMul/ReadVariableOp2L
$lstm_cell_51/MatMul_1/ReadVariableOp$lstm_cell_51/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¿
Í
while_cond_12035472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12035472___redundant_placeholder06
2while_while_cond_12035472___redundant_placeholder16
2while_while_cond_12035472___redundant_placeholder26
2while_while_cond_12035472___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
ï
ø
/__inference_lstm_cell_50_layer_call_fn_12036426

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12033013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
states/1

£
6__inference_time_distributed_38_layer_call_fn_12036350

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12033591|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
­
¹
*__inference_lstm_51_layer_call_fn_12035738
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12033508|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
 

í
lstm_50_while_cond_12034538,
(lstm_50_while_lstm_50_while_loop_counter2
.lstm_50_while_lstm_50_while_maximum_iterations
lstm_50_while_placeholder
lstm_50_while_placeholder_1
lstm_50_while_placeholder_2
lstm_50_while_placeholder_3.
*lstm_50_while_less_lstm_50_strided_slice_1F
Blstm_50_while_lstm_50_while_cond_12034538___redundant_placeholder0F
Blstm_50_while_lstm_50_while_cond_12034538___redundant_placeholder1F
Blstm_50_while_lstm_50_while_cond_12034538___redundant_placeholder2F
Blstm_50_while_lstm_50_while_cond_12034538___redundant_placeholder3
lstm_50_while_identity

lstm_50/while/LessLesslstm_50_while_placeholder*lstm_50_while_less_lstm_50_strided_slice_1*
T0*
_output_shapes
: [
lstm_50/while/IdentityIdentitylstm_50/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_50_while_identitylstm_50/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:

·
*__inference_lstm_51_layer_call_fn_12035749

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_51_layer_call_and_return_conditional_losses_12033900s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ý
O
3__inference_repeat_vector_25_layer_call_fn_12035708

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12033164m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ª
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036392

inputs:
(dense_162_matmul_readvariableop_resource:27
)dense_162_biasadd_readvariableop_resource:
identity¢ dense_162/BiasAdd/ReadVariableOp¢dense_162/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_162/MatMulMatMulReshape:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense_162/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¿
Í
while_cond_12032879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12032879___redundant_placeholder06
2while_while_cond_12032879___redundant_placeholder16
2while_while_cond_12032879___redundant_placeholder26
2while_while_cond_12032879___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd:

_output_shapes
: :

_output_shapes
:
æ	
É
0__inference_sequential_75_layer_call_fn_12034479

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034316s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
ø
G__inference_dense_162_layer_call_and_return_conditional_losses_12036607

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¿
Í
while_cond_12035818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_12035818___redundant_placeholder06
2while_while_cond_12035818___redundant_placeholder16
2while_while_cond_12035818___redundant_placeholder26
2while_while_cond_12035818___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
 

í
lstm_51_while_cond_12034682,
(lstm_51_while_lstm_51_while_loop_counter2
.lstm_51_while_lstm_51_while_maximum_iterations
lstm_51_while_placeholder
lstm_51_while_placeholder_1
lstm_51_while_placeholder_2
lstm_51_while_placeholder_3.
*lstm_51_while_less_lstm_51_strided_slice_1F
Blstm_51_while_lstm_51_while_cond_12034682___redundant_placeholder0F
Blstm_51_while_lstm_51_while_cond_12034682___redundant_placeholder1F
Blstm_51_while_lstm_51_while_cond_12034682___redundant_placeholder2F
Blstm_51_while_lstm_51_while_cond_12034682___redundant_placeholder3
lstm_51_while_identity

lstm_51/while/LessLesslstm_51_while_placeholder*lstm_51_while_less_lstm_51_strided_slice_1*
T0*
_output_shapes
: [
lstm_51/while/IdentityIdentitylstm_51/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_51_while_identitylstm_51/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ê
serving_default¶
K
lstm_50_input:
serving_default_lstm_50_input:0ÿÿÿÿÿÿÿÿÿK
time_distributed_384
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:º
è
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_random_generator
$cell
%
state_spec"
_tf_keras_rnn_layer
°
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
	,layer"
_tf_keras_layer
X
-0
.1
/2
03
14
25
36
47"
trackable_list_wrapper
X
-0
.1
/2
03
14
25
36
47"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
ö
:trace_0
;trace_1
<trace_2
=trace_32
0__inference_sequential_75_layer_call_fn_12033935
0__inference_sequential_75_layer_call_fn_12034458
0__inference_sequential_75_layer_call_fn_12034479
0__inference_sequential_75_layer_call_fn_12034356À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z:trace_0z;trace_1z<trace_2z=trace_3
â
>trace_0
?trace_1
@trace_2
Atrace_32÷
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034779
K__inference_sequential_75_layer_call_and_return_conditional_losses_12035079
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034382
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034408À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z>trace_0z?trace_1z@trace_2zAtrace_3
ÔBÑ
#__inference__wrapped_model_12032798lstm_50_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_rate-m¨.m©/mª0m«1m¬2m­3m®4m¯-v°.v±/v²0v³1v´2vµ3v¶4v·"
	optimizer
,
Gserving_default"
signature_map
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Hstates
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ó
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32
*__inference_lstm_50_layer_call_fn_12035090
*__inference_lstm_50_layer_call_fn_12035101
*__inference_lstm_50_layer_call_fn_12035112
*__inference_lstm_50_layer_call_fn_12035123Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
ß
Rtrace_0
Strace_1
Ttrace_2
Utrace_32ô
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035268
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035413
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035558
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035703Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
"
_generic_user_object
ø
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator
]
state_size

-kernel
.recurrent_kernel
/bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
÷
ctrace_02Ú
3__inference_repeat_vector_25_layer_call_fn_12035708¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zctrace_0

dtrace_02õ
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12035716¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zdtrace_0
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

estates
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ó
ktrace_0
ltrace_1
mtrace_2
ntrace_32
*__inference_lstm_51_layer_call_fn_12035727
*__inference_lstm_51_layer_call_fn_12035738
*__inference_lstm_51_layer_call_fn_12035749
*__inference_lstm_51_layer_call_fn_12035760Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zktrace_0zltrace_1zmtrace_2zntrace_3
ß
otrace_0
ptrace_1
qtrace_2
rtrace_32ô
E__inference_lstm_51_layer_call_and_return_conditional_losses_12035903
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036046
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036189
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036332Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zotrace_0zptrace_1zqtrace_2zrtrace_3
"
_generic_user_object
ø
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
y_random_generator
z
state_size

0kernel
1recurrent_kernel
2bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
­
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
î
trace_0
trace_12³
6__inference_time_distributed_38_layer_call_fn_12036341
6__inference_time_distributed_38_layer_call_fn_12036350À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
¤
trace_0
trace_12é
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036371
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036392À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
.:,	2lstm_50/lstm_cell_50/kernel
8:6	d2%lstm_50/lstm_cell_50/recurrent_kernel
(:&2lstm_50/lstm_cell_50/bias
.:,	dÈ2lstm_51/lstm_cell_51/kernel
8:6	2È2%lstm_51/lstm_cell_51/recurrent_kernel
(:&È2lstm_51/lstm_cell_51/bias
,:*22time_distributed_38/kernel
&:$2time_distributed_38/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_75_layer_call_fn_12033935lstm_50_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bÿ
0__inference_sequential_75_layer_call_fn_12034458inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bÿ
0__inference_sequential_75_layer_call_fn_12034479inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
0__inference_sequential_75_layer_call_fn_12034356lstm_50_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034779inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
K__inference_sequential_75_layer_call_and_return_conditional_losses_12035079inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤B¡
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034382lstm_50_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤B¡
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034408lstm_50_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÓBÐ
&__inference_signature_wrapper_12034437lstm_50_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
*__inference_lstm_50_layer_call_fn_12035090inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_lstm_50_layer_call_fn_12035101inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_lstm_50_layer_call_fn_12035112inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_lstm_50_layer_call_fn_12035123inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035268inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035413inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬B©
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035558inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬B©
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035703inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
Þ
trace_0
trace_12£
/__inference_lstm_cell_50_layer_call_fn_12036409
/__inference_lstm_cell_50_layer_call_fn_12036426¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12Ù
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036458
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036490¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
çBä
3__inference_repeat_vector_25_layer_call_fn_12035708inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12035716inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
*__inference_lstm_51_layer_call_fn_12035727inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_lstm_51_layer_call_fn_12035738inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_lstm_51_layer_call_fn_12035749inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_lstm_51_layer_call_fn_12035760inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
E__inference_lstm_51_layer_call_and_return_conditional_losses_12035903inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036046inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬B©
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036189inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬B©
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036332inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
Þ
trace_0
trace_12£
/__inference_lstm_cell_51_layer_call_fn_12036507
/__inference_lstm_cell_51_layer_call_fn_12036524¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12Ù
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036556
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036588¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
6__inference_time_distributed_38_layer_call_fn_12036341inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
6__inference_time_distributed_38_layer_call_fn_12036350inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036371inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036392inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
¢trace_02Ó
,__inference_dense_162_layer_call_fn_12036597¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¢trace_0

£trace_02î
G__inference_dense_162_layer_call_and_return_conditional_losses_12036607¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z£trace_0
R
¤	variables
¥	keras_api

¦total

§count"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_lstm_cell_50_layer_call_fn_12036409inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
/__inference_lstm_cell_50_layer_call_fn_12036426inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036458inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036490inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_lstm_cell_51_layer_call_fn_12036507inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
/__inference_lstm_cell_51_layer_call_fn_12036524inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036556inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
®B«
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036588inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_dense_162_layer_call_fn_12036597inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_162_layer_call_and_return_conditional_losses_12036607inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
¦0
§1"
trackable_list_wrapper
.
¤	variables"
_generic_user_object
:  (2total
:  (2count
3:1	2"Adam/lstm_50/lstm_cell_50/kernel/m
=:;	d2,Adam/lstm_50/lstm_cell_50/recurrent_kernel/m
-:+2 Adam/lstm_50/lstm_cell_50/bias/m
3:1	dÈ2"Adam/lstm_51/lstm_cell_51/kernel/m
=:;	2È2,Adam/lstm_51/lstm_cell_51/recurrent_kernel/m
-:+È2 Adam/lstm_51/lstm_cell_51/bias/m
1:/22!Adam/time_distributed_38/kernel/m
+:)2Adam/time_distributed_38/bias/m
3:1	2"Adam/lstm_50/lstm_cell_50/kernel/v
=:;	d2,Adam/lstm_50/lstm_cell_50/recurrent_kernel/v
-:+2 Adam/lstm_50/lstm_cell_50/bias/v
3:1	dÈ2"Adam/lstm_51/lstm_cell_51/kernel/v
=:;	2È2,Adam/lstm_51/lstm_cell_51/recurrent_kernel/v
-:+È2 Adam/lstm_51/lstm_cell_51/bias/v
1:/22!Adam/time_distributed_38/kernel/v
+:)2Adam/time_distributed_38/bias/v½
#__inference__wrapped_model_12032798-./01234:¢7
0¢-
+(
lstm_50_inputÿÿÿÿÿÿÿÿÿ
ª "MªJ
H
time_distributed_381.
time_distributed_38ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_162_layer_call_and_return_conditional_losses_12036607\34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_162_layer_call_fn_12036597O34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿÆ
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035268}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 Æ
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035413}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ¶
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035558m-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ¶
E__inference_lstm_50_layer_call_and_return_conditional_losses_12035703m-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
*__inference_lstm_50_layer_call_fn_12035090p-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
*__inference_lstm_50_layer_call_fn_12035101p-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿd
*__inference_lstm_50_layer_call_fn_12035112`-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
*__inference_lstm_50_layer_call_fn_12035123`-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÔ
E__inference_lstm_51_layer_call_and_return_conditional_losses_12035903012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 Ô
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036046012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 º
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036189q012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 º
E__inference_lstm_51_layer_call_and_return_conditional_losses_12036332q012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 «
*__inference_lstm_51_layer_call_fn_12035727}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2«
*__inference_lstm_51_layer_call_fn_12035738}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
*__inference_lstm_51_layer_call_fn_12035749d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
*__inference_lstm_51_layer_call_fn_12035760d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Ì
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036458ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 Ì
J__inference_lstm_cell_50_layer_call_and_return_conditional_losses_12036490ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿd
EB

0/1/0ÿÿÿÿÿÿÿÿÿd

0/1/1ÿÿÿÿÿÿÿÿÿd
 ¡
/__inference_lstm_cell_50_layer_call_fn_12036409í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿd¡
/__inference_lstm_cell_50_layer_call_fn_12036426í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿd
"
states/1ÿÿÿÿÿÿÿÿÿd
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿd
A>

1/0ÿÿÿÿÿÿÿÿÿd

1/1ÿÿÿÿÿÿÿÿÿdÌ
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036556ý012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 Ì
J__inference_lstm_cell_51_layer_call_and_return_conditional_losses_12036588ý012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 ¡
/__inference_lstm_cell_51_layer_call_fn_12036507í012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2¡
/__inference_lstm_cell_51_layer_call_fn_12036524í012¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿd
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2À
N__inference_repeat_vector_25_layer_call_and_return_conditional_losses_12035716n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
3__inference_repeat_vector_25_layer_call_fn_12035708a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034382y-./01234B¢?
8¢5
+(
lstm_50_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 È
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034408y-./01234B¢?
8¢5
+(
lstm_50_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
K__inference_sequential_75_layer_call_and_return_conditional_losses_12034779r-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
K__inference_sequential_75_layer_call_and_return_conditional_losses_12035079r-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
  
0__inference_sequential_75_layer_call_fn_12033935l-./01234B¢?
8¢5
+(
lstm_50_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
0__inference_sequential_75_layer_call_fn_12034356l-./01234B¢?
8¢5
+(
lstm_50_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_75_layer_call_fn_12034458e-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_75_layer_call_fn_12034479e-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÑ
&__inference_signature_wrapper_12034437¦-./01234K¢H
¢ 
Aª>
<
lstm_50_input+(
lstm_50_inputÿÿÿÿÿÿÿÿÿ"MªJ
H
time_distributed_381.
time_distributed_38ÿÿÿÿÿÿÿÿÿÓ
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036371~34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ó
Q__inference_time_distributed_38_layer_call_and_return_conditional_losses_12036392~34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 «
6__inference_time_distributed_38_layer_call_fn_12036341q34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ«
6__inference_time_distributed_38_layer_call_fn_12036350q34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ