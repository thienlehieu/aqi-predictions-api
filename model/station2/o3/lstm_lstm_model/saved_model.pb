#
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
"serve*2.9.22v2.9.1-132-g18960c44ad38äÉ 

Adam/time_distributed_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_14/bias/v

3Adam/time_distributed_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_14/bias/v*
_output_shapes
:*
dtype0

!Adam/time_distributed_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*2
shared_name#!Adam/time_distributed_14/kernel/v

5Adam/time_distributed_14/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_14/kernel/v*
_output_shapes

:2*
dtype0

 Adam/lstm_19/lstm_cell_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_19/lstm_cell_19/bias/v

4Adam/lstm_19/lstm_cell_19/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_19/bias/v*
_output_shapes	
:È*
dtype0
µ
,Adam/lstm_19/lstm_cell_19/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v
®
@Adam/lstm_19/lstm_cell_19/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0
¡
"Adam/lstm_19/lstm_cell_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_19/lstm_cell_19/kernel/v

6Adam/lstm_19/lstm_cell_19/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_19/kernel/v*
_output_shapes
:	dÈ*
dtype0

 Adam/lstm_18/lstm_cell_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_18/lstm_cell_18/bias/v

4Adam/lstm_18/lstm_cell_18/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_18/lstm_cell_18/bias/v*
_output_shapes	
:*
dtype0
µ
,Adam/lstm_18/lstm_cell_18/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v
®
@Adam/lstm_18/lstm_cell_18/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v*
_output_shapes
:	d*
dtype0
¡
"Adam/lstm_18/lstm_cell_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_18/lstm_cell_18/kernel/v

6Adam/lstm_18/lstm_cell_18/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_18/lstm_cell_18/kernel/v*
_output_shapes
:	*
dtype0

Adam/time_distributed_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_14/bias/m

3Adam/time_distributed_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_14/bias/m*
_output_shapes
:*
dtype0

!Adam/time_distributed_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*2
shared_name#!Adam/time_distributed_14/kernel/m

5Adam/time_distributed_14/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_14/kernel/m*
_output_shapes

:2*
dtype0

 Adam/lstm_19/lstm_cell_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_19/lstm_cell_19/bias/m

4Adam/lstm_19/lstm_cell_19/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_19/bias/m*
_output_shapes	
:È*
dtype0
µ
,Adam/lstm_19/lstm_cell_19/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m
®
@Adam/lstm_19/lstm_cell_19/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0
¡
"Adam/lstm_19/lstm_cell_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_19/lstm_cell_19/kernel/m

6Adam/lstm_19/lstm_cell_19/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_19/kernel/m*
_output_shapes
:	dÈ*
dtype0

 Adam/lstm_18/lstm_cell_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_18/lstm_cell_18/bias/m

4Adam/lstm_18/lstm_cell_18/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_18/lstm_cell_18/bias/m*
_output_shapes	
:*
dtype0
µ
,Adam/lstm_18/lstm_cell_18/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m
®
@Adam/lstm_18/lstm_cell_18/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m*
_output_shapes
:	d*
dtype0
¡
"Adam/lstm_18/lstm_cell_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_18/lstm_cell_18/kernel/m

6Adam/lstm_18/lstm_cell_18/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_18/lstm_cell_18/kernel/m*
_output_shapes
:	*
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
time_distributed_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nametime_distributed_14/bias

,time_distributed_14/bias/Read/ReadVariableOpReadVariableOptime_distributed_14/bias*
_output_shapes
:*
dtype0

time_distributed_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*+
shared_nametime_distributed_14/kernel

.time_distributed_14/kernel/Read/ReadVariableOpReadVariableOptime_distributed_14/kernel*
_output_shapes

:2*
dtype0

lstm_19/lstm_cell_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_19/lstm_cell_19/bias

-lstm_19/lstm_cell_19/bias/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_19/bias*
_output_shapes	
:È*
dtype0
§
%lstm_19/lstm_cell_19/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_19/lstm_cell_19/recurrent_kernel
 
9lstm_19/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_19/lstm_cell_19/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_19/lstm_cell_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_19/lstm_cell_19/kernel

/lstm_19/lstm_cell_19/kernel/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_19/kernel*
_output_shapes
:	dÈ*
dtype0

lstm_18/lstm_cell_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_18/lstm_cell_18/bias

-lstm_18/lstm_cell_18/bias/Read/ReadVariableOpReadVariableOplstm_18/lstm_cell_18/bias*
_output_shapes	
:*
dtype0
§
%lstm_18/lstm_cell_18/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_18/lstm_cell_18/recurrent_kernel
 
9lstm_18/lstm_cell_18/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_18/lstm_cell_18/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_18/lstm_cell_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_18/lstm_cell_18/kernel

/lstm_18/lstm_cell_18/kernel/Read/ReadVariableOpReadVariableOplstm_18/lstm_cell_18/kernel*
_output_shapes
:	*
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
VARIABLE_VALUElstm_18/lstm_cell_18/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_18/lstm_cell_18/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_18/lstm_cell_18/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_19/lstm_cell_19/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_19/lstm_cell_19/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_19/lstm_cell_19/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEtime_distributed_14/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEtime_distributed_14/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE"Adam/lstm_18/lstm_cell_18/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_18/lstm_cell_18/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_18/lstm_cell_18/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_19/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_19/lstm_cell_19/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_19/lstm_cell_19/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/time_distributed_14/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_14/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_18/lstm_cell_18/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_18/lstm_cell_18/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_18/lstm_cell_18/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_19/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_19/lstm_cell_19/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_19/lstm_cell_19/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/time_distributed_14/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_14/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_18_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Á
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_18_inputlstm_18/lstm_cell_18/kernel%lstm_18/lstm_cell_18/recurrent_kernellstm_18/lstm_cell_18/biaslstm_19/lstm_cell_19/kernel%lstm_19/lstm_cell_19/recurrent_kernellstm_19/lstm_cell_19/biastime_distributed_14/kerneltime_distributed_14/bias*
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
GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_4138193
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Æ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/lstm_18/lstm_cell_18/kernel/Read/ReadVariableOp9lstm_18/lstm_cell_18/recurrent_kernel/Read/ReadVariableOp-lstm_18/lstm_cell_18/bias/Read/ReadVariableOp/lstm_19/lstm_cell_19/kernel/Read/ReadVariableOp9lstm_19/lstm_cell_19/recurrent_kernel/Read/ReadVariableOp-lstm_19/lstm_cell_19/bias/Read/ReadVariableOp.time_distributed_14/kernel/Read/ReadVariableOp,time_distributed_14/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp6Adam/lstm_18/lstm_cell_18/kernel/m/Read/ReadVariableOp@Adam/lstm_18/lstm_cell_18/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_18/lstm_cell_18/bias/m/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_19/kernel/m/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_19/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_19/bias/m/Read/ReadVariableOp5Adam/time_distributed_14/kernel/m/Read/ReadVariableOp3Adam/time_distributed_14/bias/m/Read/ReadVariableOp6Adam/lstm_18/lstm_cell_18/kernel/v/Read/ReadVariableOp@Adam/lstm_18/lstm_cell_18/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_18/lstm_cell_18/bias/v/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_19/kernel/v/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_19/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_19/bias/v/Read/ReadVariableOp5Adam/time_distributed_14/kernel/v/Read/ReadVariableOp3Adam/time_distributed_14/bias/v/Read/ReadVariableOpConst*,
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_4140479
Õ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelstm_18/lstm_cell_18/kernel%lstm_18/lstm_cell_18/recurrent_kernellstm_18/lstm_cell_18/biaslstm_19/lstm_cell_19/kernel%lstm_19/lstm_cell_19/recurrent_kernellstm_19/lstm_cell_19/biastime_distributed_14/kerneltime_distributed_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount"Adam/lstm_18/lstm_cell_18/kernel/m,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m Adam/lstm_18/lstm_cell_18/bias/m"Adam/lstm_19/lstm_cell_19/kernel/m,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m Adam/lstm_19/lstm_cell_19/bias/m!Adam/time_distributed_14/kernel/mAdam/time_distributed_14/bias/m"Adam/lstm_18/lstm_cell_18/kernel/v,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v Adam/lstm_18/lstm_cell_18/bias/v"Adam/lstm_19/lstm_cell_19/kernel/v,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v Adam/lstm_19/lstm_cell_19/bias/v!Adam/time_distributed_14/kernel/vAdam/time_distributed_14/bias/v*+
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_4140582
ù
¶
)__inference_lstm_18_layer_call_fn_4138879

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallæ
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4138014o
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬K

D__inference_lstm_18_layer_call_and_return_conditional_losses_4137505

inputs>
+lstm_cell_18_matmul_readvariableop_resource:	@
-lstm_cell_18_matmul_1_readvariableop_resource:	d;
,lstm_cell_18_biasadd_readvariableop_resource:	
identity¢#lstm_cell_18/BiasAdd/ReadVariableOp¢"lstm_cell_18/MatMul/ReadVariableOp¢$lstm_cell_18/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
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
bodyR
while_body_4137420*
condR
while_cond_4137419*K
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
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¥
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140148

inputs9
'dense_58_matmul_readvariableop_resource:26
(dense_58_biasadd_readvariableop_resource:
identity¢dense_58/BiasAdd/ReadVariableOp¢dense_58/MatMul/ReadVariableOp;
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
:ÿÿÿÿÿÿÿÿÿ2
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_58/MatMulMatMulReshape:output:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
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
:
	Reshape_1Reshapedense_58/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Þ

I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140312

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

¸
)__inference_lstm_18_layer_call_fn_4138857
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallè
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4136899o
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ù
M
1__inference_repeat_vector_9_layer_call_fn_4139464

inputs
identityÄ
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
GPU 2J 8 *U
fPRN
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4136920m
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
ÏK

D__inference_lstm_18_layer_call_and_return_conditional_losses_4139169
inputs_0>
+lstm_cell_18_matmul_readvariableop_resource:	@
-lstm_cell_18_matmul_1_readvariableop_resource:	d;
,lstm_cell_18_biasadd_readvariableop_resource:	
identity¢#lstm_cell_18/BiasAdd/ReadVariableOp¢"lstm_cell_18/MatMul/ReadVariableOp¢$lstm_cell_18/MatMul_1/ReadVariableOp¢while=
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
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
bodyR
while_body_4139084*
condR
while_cond_4139083*K
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
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ö

I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4136990

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
½»
Ñ
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138535

inputsF
3lstm_18_lstm_cell_18_matmul_readvariableop_resource:	H
5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource:	dC
4lstm_18_lstm_cell_18_biasadd_readvariableop_resource:	F
3lstm_19_lstm_cell_19_matmul_readvariableop_resource:	dÈH
5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈC
4lstm_19_lstm_cell_19_biasadd_readvariableop_resource:	ÈM
;time_distributed_14_dense_58_matmul_readvariableop_resource:2J
<time_distributed_14_dense_58_biasadd_readvariableop_resource:
identity¢+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp¢*lstm_18/lstm_cell_18/MatMul/ReadVariableOp¢,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp¢lstm_18/while¢+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp¢*lstm_19/lstm_cell_19/MatMul/ReadVariableOp¢,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp¢lstm_19/while¢3time_distributed_14/dense_58/BiasAdd/ReadVariableOp¢2time_distributed_14/dense_58/MatMul/ReadVariableOpC
lstm_18/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_18/strided_sliceStridedSlicelstm_18/Shape:output:0$lstm_18/strided_slice/stack:output:0&lstm_18/strided_slice/stack_1:output:0&lstm_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_18/zeros/packedPacklstm_18/strided_slice:output:0lstm_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_18/zerosFilllstm_18/zeros/packed:output:0lstm_18/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_18/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_18/zeros_1/packedPacklstm_18/strided_slice:output:0!lstm_18/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_18/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_18/zeros_1Filllstm_18/zeros_1/packed:output:0lstm_18/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_18/transpose	Transposeinputslstm_18/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_18/Shape_1Shapelstm_18/transpose:y:0*
T0*
_output_shapes
:g
lstm_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_18/strided_slice_1StridedSlicelstm_18/Shape_1:output:0&lstm_18/strided_slice_1/stack:output:0(lstm_18/strided_slice_1/stack_1:output:0(lstm_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_18/TensorArrayV2TensorListReserve,lstm_18/TensorArrayV2/element_shape:output:0 lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_18/transpose:y:0Flstm_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_18/strided_slice_2StridedSlicelstm_18/transpose:y:0&lstm_18/strided_slice_2/stack:output:0(lstm_18/strided_slice_2/stack_1:output:0(lstm_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_18/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3lstm_18_lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0®
lstm_18/lstm_cell_18/MatMulMatMul lstm_18/strided_slice_2:output:02lstm_18/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0¨
lstm_18/lstm_cell_18/MatMul_1MatMullstm_18/zeros:output:04lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_18/lstm_cell_18/addAddV2%lstm_18/lstm_cell_18/MatMul:product:0'lstm_18/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_18/lstm_cell_18/BiasAddBiasAddlstm_18/lstm_cell_18/add:z:03lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_18/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_18/lstm_cell_18/splitSplit-lstm_18/lstm_cell_18/split/split_dim:output:0%lstm_18/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split~
lstm_18/lstm_cell_18/SigmoidSigmoid#lstm_18/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/Sigmoid_1Sigmoid#lstm_18/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/mulMul"lstm_18/lstm_cell_18/Sigmoid_1:y:0lstm_18/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
lstm_18/lstm_cell_18/ReluRelu#lstm_18/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/mul_1Mul lstm_18/lstm_cell_18/Sigmoid:y:0'lstm_18/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/add_1AddV2lstm_18/lstm_cell_18/mul:z:0lstm_18/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/Sigmoid_2Sigmoid#lstm_18/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
lstm_18/lstm_cell_18/Relu_1Relulstm_18/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
lstm_18/lstm_cell_18/mul_2Mul"lstm_18/lstm_cell_18/Sigmoid_2:y:0)lstm_18/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   f
$lstm_18/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_18/TensorArrayV2_1TensorListReserve.lstm_18/TensorArrayV2_1/element_shape:output:0-lstm_18/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_18/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_18/whileWhile#lstm_18/while/loop_counter:output:0)lstm_18/while/maximum_iterations:output:0lstm_18/time:output:0 lstm_18/TensorArrayV2_1:handle:0lstm_18/zeros:output:0lstm_18/zeros_1:output:0 lstm_18/strided_slice_1:output:0?lstm_18/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_18_lstm_cell_18_matmul_readvariableop_resource5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_18_while_body_4138295*&
condR
lstm_18_while_cond_4138294*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   î
*lstm_18/TensorArrayV2Stack/TensorListStackTensorListStacklstm_18/while:output:3Alstm_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsp
lstm_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_18/strided_slice_3StridedSlice3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_18/strided_slice_3/stack:output:0(lstm_18/strided_slice_3/stack_1:output:0(lstm_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_18/transpose_1	Transpose3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_18/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    `
repeat_vector_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :©
repeat_vector_9/ExpandDims
ExpandDims lstm_18/strided_slice_3:output:0'repeat_vector_9/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
repeat_vector_9/stackConst*
_output_shapes
:*
dtype0*!
valueB"         
repeat_vector_9/TileTile#repeat_vector_9/ExpandDims:output:0repeat_vector_9/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_19/ShapeShaperepeat_vector_9/Tile:output:0*
T0*
_output_shapes
:e
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_19/transpose	Transposerepeat_vector_9/Tile:output:0lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:g
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
*lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0®
lstm_19/lstm_cell_19/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0¨
lstm_19/lstm_cell_19/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¤
lstm_19/lstm_cell_19/addAddV2%lstm_19/lstm_cell_19/MatMul:product:0'lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0­
lstm_19/lstm_cell_19/BiasAddBiasAddlstm_19/lstm_cell_19/add:z:03lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈf
$lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_19/lstm_cell_19/splitSplit-lstm_19/lstm_cell_19/split/split_dim:output:0%lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split~
lstm_19/lstm_cell_19/SigmoidSigmoid#lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/Sigmoid_1Sigmoid#lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/mulMul"lstm_19/lstm_cell_19/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
lstm_19/lstm_cell_19/ReluRelu#lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/mul_1Mul lstm_19/lstm_cell_19/Sigmoid:y:0'lstm_19/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/add_1AddV2lstm_19/lstm_cell_19/mul:z:0lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/Sigmoid_2Sigmoid#lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2u
lstm_19/lstm_cell_19/Relu_1Relulstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
lstm_19/lstm_cell_19/mul_2Mul"lstm_19/lstm_cell_19/Sigmoid_2:y:0)lstm_19/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_19_matmul_readvariableop_resource5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_19_while_body_4138439*&
condR
lstm_19_while_cond_4138438*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
!time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
time_distributed_14/ReshapeReshapelstm_19/transpose_1:y:0*time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2®
2time_distributed_14/dense_58/MatMul/ReadVariableOpReadVariableOp;time_distributed_14_dense_58_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Á
#time_distributed_14/dense_58/MatMulMatMul$time_distributed_14/Reshape:output:0:time_distributed_14/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
3time_distributed_14/dense_58/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_14_dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Í
$time_distributed_14/dense_58/BiasAddBiasAdd-time_distributed_14/dense_58/MatMul:product:0;time_distributed_14/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#time_distributed_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      »
time_distributed_14/Reshape_1Reshape-time_distributed_14/dense_58/BiasAdd:output:0,time_distributed_14/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#time_distributed_14/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¡
time_distributed_14/Reshape_2Reshapelstm_19/transpose_1:y:0,time_distributed_14/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
IdentityIdentity&time_distributed_14/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
NoOpNoOp,^lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+^lstm_18/lstm_cell_18/MatMul/ReadVariableOp-^lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp^lstm_18/while,^lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_19/MatMul/ReadVariableOp-^lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^lstm_19/while4^time_distributed_14/dense_58/BiasAdd/ReadVariableOp3^time_distributed_14/dense_58/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp2X
*lstm_18/lstm_cell_18/MatMul/ReadVariableOp*lstm_18/lstm_cell_18/MatMul/ReadVariableOp2\
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp2
lstm_18/whilelstm_18/while2Z
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp*lstm_19/lstm_cell_19/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while2j
3time_distributed_14/dense_58/BiasAdd/ReadVariableOp3time_distributed_14/dense_58/BiasAdd/ReadVariableOp2h
2time_distributed_14/dense_58/MatMul/ReadVariableOp2time_distributed_14/dense_58/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_4136635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136635___redundant_placeholder05
1while_while_cond_4136635___redundant_placeholder15
1while_while_cond_4136635___redundant_placeholder25
1while_while_cond_4136635___redundant_placeholder3
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
Þ

I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140344

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
º
È
while_cond_4137419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137419___redundant_placeholder05
1while_while_cond_4137419___redundant_placeholder15
1while_while_cond_4137419___redundant_placeholder25
1while_while_cond_4137419___redundant_placeholder3
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
£

(sequential_27_lstm_19_while_cond_4136457H
Dsequential_27_lstm_19_while_sequential_27_lstm_19_while_loop_counterN
Jsequential_27_lstm_19_while_sequential_27_lstm_19_while_maximum_iterations+
'sequential_27_lstm_19_while_placeholder-
)sequential_27_lstm_19_while_placeholder_1-
)sequential_27_lstm_19_while_placeholder_2-
)sequential_27_lstm_19_while_placeholder_3J
Fsequential_27_lstm_19_while_less_sequential_27_lstm_19_strided_slice_1a
]sequential_27_lstm_19_while_sequential_27_lstm_19_while_cond_4136457___redundant_placeholder0a
]sequential_27_lstm_19_while_sequential_27_lstm_19_while_cond_4136457___redundant_placeholder1a
]sequential_27_lstm_19_while_sequential_27_lstm_19_while_cond_4136457___redundant_placeholder2a
]sequential_27_lstm_19_while_sequential_27_lstm_19_while_cond_4136457___redundant_placeholder3(
$sequential_27_lstm_19_while_identity
º
 sequential_27/lstm_19/while/LessLess'sequential_27_lstm_19_while_placeholderFsequential_27_lstm_19_while_less_sequential_27_lstm_19_strided_slice_1*
T0*
_output_shapes
: w
$sequential_27/lstm_19/while/IdentityIdentity$sequential_27/lstm_19/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_27_lstm_19_while_identity-sequential_27/lstm_19/while/Identity:output:0*(
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

¸
)__inference_lstm_18_layer_call_fn_4138846
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallè
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4136706o
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
8
Ñ
while_body_4137572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_19_biasadd_readvariableop_resource:	È¢)while/lstm_cell_19/BiasAdd/ReadVariableOp¢(while/lstm_cell_19/MatMul/ReadVariableOp¢*while/lstm_cell_19/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_4137003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137003___redundant_placeholder05
1while_while_cond_4137003___redundant_placeholder15
1while_while_cond_4137003___redundant_placeholder25
1while_while_cond_4137003___redundant_placeholder3
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
Ä

*__inference_dense_58_layer_call_fn_4140353

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_4137297o
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
êB
Ñ

lstm_18_while_body_4138295,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3+
'lstm_18_while_lstm_18_strided_slice_1_0g
clstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0:	P
=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dK
<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0:	
lstm_18_while_identity
lstm_18_while_identity_1
lstm_18_while_identity_2
lstm_18_while_identity_3
lstm_18_while_identity_4
lstm_18_while_identity_5)
%lstm_18_while_lstm_18_strided_slice_1e
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorL
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource:	N
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource:	dI
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource:	¢1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp¢0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp¢2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp
?lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0lstm_18_while_placeholderHlstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ò
!lstm_18/while/lstm_cell_18/MatMulMatMul8lstm_18/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¹
#lstm_18/while/lstm_cell_18/MatMul_1MatMullstm_18_while_placeholder_2:lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_18/while/lstm_cell_18/addAddV2+lstm_18/while/lstm_cell_18/MatMul:product:0-lstm_18/while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_18/while/lstm_cell_18/BiasAddBiasAdd"lstm_18/while/lstm_cell_18/add:z:09lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_18/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_18/while/lstm_cell_18/splitSplit3lstm_18/while/lstm_cell_18/split/split_dim:output:0+lstm_18/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
"lstm_18/while/lstm_cell_18/SigmoidSigmoid)lstm_18/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_18/while/lstm_cell_18/Sigmoid_1Sigmoid)lstm_18/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/while/lstm_cell_18/mulMul(lstm_18/while/lstm_cell_18/Sigmoid_1:y:0lstm_18_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/while/lstm_cell_18/ReluRelu)lstm_18/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd°
 lstm_18/while/lstm_cell_18/mul_1Mul&lstm_18/while/lstm_cell_18/Sigmoid:y:0-lstm_18/while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
 lstm_18/while/lstm_cell_18/add_1AddV2"lstm_18/while/lstm_cell_18/mul:z:0$lstm_18/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_18/while/lstm_cell_18/Sigmoid_2Sigmoid)lstm_18/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!lstm_18/while/lstm_cell_18/Relu_1Relu$lstm_18/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
 lstm_18/while/lstm_cell_18/mul_2Mul(lstm_18/while/lstm_cell_18/Sigmoid_2:y:0/lstm_18/while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
8lstm_18/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_18_while_placeholder_1Alstm_18/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_18/while/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_18/while/addAddV2lstm_18_while_placeholderlstm_18/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_18/while/add_1AddV2(lstm_18_while_lstm_18_while_loop_counterlstm_18/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_18/while/IdentityIdentitylstm_18/while/add_1:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: 
lstm_18/while/Identity_1Identity.lstm_18_while_lstm_18_while_maximum_iterations^lstm_18/while/NoOp*
T0*
_output_shapes
: q
lstm_18/while/Identity_2Identitylstm_18/while/add:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: 
lstm_18/while/Identity_3IdentityBlstm_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_18/while/NoOp*
T0*
_output_shapes
: 
lstm_18/while/Identity_4Identity$lstm_18/while/lstm_cell_18/mul_2:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/while/Identity_5Identity$lstm_18/while/lstm_cell_18/add_1:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
lstm_18/while/NoOpNoOp2^lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1^lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp3^lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_18_while_identitylstm_18/while/Identity:output:0"=
lstm_18_while_identity_1!lstm_18/while/Identity_1:output:0"=
lstm_18_while_identity_2!lstm_18/while/Identity_2:output:0"=
lstm_18_while_identity_3!lstm_18/while/Identity_3:output:0"=
lstm_18_while_identity_4!lstm_18/while/Identity_4:output:0"=
lstm_18_while_identity_5!lstm_18/while/Identity_5:output:0"P
%lstm_18_while_lstm_18_strided_slice_1'lstm_18_while_lstm_18_strided_slice_1_0"z
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0"|
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0"x
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0"È
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2f
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp2d
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp2h
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
©9
Ñ
while_body_4139374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_18_matmul_readvariableop_resource_0:	H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_18_matmul_readvariableop_resource:	F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_18_biasadd_readvariableop_resource:	¢)while/lstm_cell_18/BiasAdd/ReadVariableOp¢(while/lstm_cell_18/MatMul/ReadVariableOp¢*while/lstm_cell_18/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_18/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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


è
lstm_18_while_cond_4138294,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3.
*lstm_18_while_less_lstm_18_strided_slice_1E
Alstm_18_while_lstm_18_while_cond_4138294___redundant_placeholder0E
Alstm_18_while_lstm_18_while_cond_4138294___redundant_placeholder1E
Alstm_18_while_lstm_18_while_cond_4138294___redundant_placeholder2E
Alstm_18_while_lstm_18_while_cond_4138294___redundant_placeholder3
lstm_18_while_identity

lstm_18/while/LessLesslstm_18_while_placeholder*lstm_18_while_less_lstm_18_strided_slice_1*
T0*
_output_shapes
: [
lstm_18/while/IdentityIdentitylstm_18/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_18_while_identitylstm_18/while/Identity:output:0*(
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
º
È
while_cond_4139083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4139083___redundant_placeholder05
1while_while_cond_4139083___redundant_placeholder15
1while_while_cond_4139083___redundant_placeholder25
1while_while_cond_4139083___redundant_placeholder3
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
¦J

D__inference_lstm_19_layer_call_and_return_conditional_losses_4137847

inputs>
+lstm_cell_19_matmul_readvariableop_resource:	dÈ@
-lstm_cell_19_matmul_1_readvariableop_resource:	2È;
,lstm_cell_19_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_19/BiasAdd/ReadVariableOp¢"lstm_cell_19/MatMul/ReadVariableOp¢$lstm_cell_19/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
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
bodyR
while_body_4137763*
condR
while_cond_4137762*K
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
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
8

D__inference_lstm_19_layer_call_and_return_conditional_losses_4137264

inputs'
lstm_cell_19_4137182:	dÈ'
lstm_cell_19_4137184:	2È#
lstm_cell_19_4137186:	È
identity¢$lstm_cell_19/StatefulPartitionedCall¢while;
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
shrink_axis_maskù
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_4137182lstm_cell_19_4137184lstm_cell_19_4137186*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4137136n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_4137182lstm_cell_19_4137184lstm_cell_19_4137186*
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
bodyR
while_body_4137195*
condR
while_cond_4137194*K
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
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
â
¬

"__inference__wrapped_model_4136554
lstm_18_inputT
Asequential_27_lstm_18_lstm_cell_18_matmul_readvariableop_resource:	V
Csequential_27_lstm_18_lstm_cell_18_matmul_1_readvariableop_resource:	dQ
Bsequential_27_lstm_18_lstm_cell_18_biasadd_readvariableop_resource:	T
Asequential_27_lstm_19_lstm_cell_19_matmul_readvariableop_resource:	dÈV
Csequential_27_lstm_19_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈQ
Bsequential_27_lstm_19_lstm_cell_19_biasadd_readvariableop_resource:	È[
Isequential_27_time_distributed_14_dense_58_matmul_readvariableop_resource:2X
Jsequential_27_time_distributed_14_dense_58_biasadd_readvariableop_resource:
identity¢9sequential_27/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp¢8sequential_27/lstm_18/lstm_cell_18/MatMul/ReadVariableOp¢:sequential_27/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp¢sequential_27/lstm_18/while¢9sequential_27/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp¢8sequential_27/lstm_19/lstm_cell_19/MatMul/ReadVariableOp¢:sequential_27/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp¢sequential_27/lstm_19/while¢Asequential_27/time_distributed_14/dense_58/BiasAdd/ReadVariableOp¢@sequential_27/time_distributed_14/dense_58/MatMul/ReadVariableOpX
sequential_27/lstm_18/ShapeShapelstm_18_input*
T0*
_output_shapes
:s
)sequential_27/lstm_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_27/lstm_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_27/lstm_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_27/lstm_18/strided_sliceStridedSlice$sequential_27/lstm_18/Shape:output:02sequential_27/lstm_18/strided_slice/stack:output:04sequential_27/lstm_18/strided_slice/stack_1:output:04sequential_27/lstm_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_27/lstm_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_27/lstm_18/zeros/packedPack,sequential_27/lstm_18/strided_slice:output:0-sequential_27/lstm_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_27/lstm_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_27/lstm_18/zerosFill+sequential_27/lstm_18/zeros/packed:output:0*sequential_27/lstm_18/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_27/lstm_18/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_27/lstm_18/zeros_1/packedPack,sequential_27/lstm_18/strided_slice:output:0/sequential_27/lstm_18/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_27/lstm_18/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_27/lstm_18/zeros_1Fill-sequential_27/lstm_18/zeros_1/packed:output:0,sequential_27/lstm_18/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_27/lstm_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_27/lstm_18/transpose	Transposelstm_18_input-sequential_27/lstm_18/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_27/lstm_18/Shape_1Shape#sequential_27/lstm_18/transpose:y:0*
T0*
_output_shapes
:u
+sequential_27/lstm_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_27/lstm_18/strided_slice_1StridedSlice&sequential_27/lstm_18/Shape_1:output:04sequential_27/lstm_18/strided_slice_1/stack:output:06sequential_27/lstm_18/strided_slice_1/stack_1:output:06sequential_27/lstm_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_27/lstm_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_27/lstm_18/TensorArrayV2TensorListReserve:sequential_27/lstm_18/TensorArrayV2/element_shape:output:0.sequential_27/lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_27/lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_27/lstm_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_27/lstm_18/transpose:y:0Tsequential_27/lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_27/lstm_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_27/lstm_18/strided_slice_2StridedSlice#sequential_27/lstm_18/transpose:y:04sequential_27/lstm_18/strided_slice_2/stack:output:06sequential_27/lstm_18/strided_slice_2/stack_1:output:06sequential_27/lstm_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask»
8sequential_27/lstm_18/lstm_cell_18/MatMul/ReadVariableOpReadVariableOpAsequential_27_lstm_18_lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
)sequential_27/lstm_18/lstm_cell_18/MatMulMatMul.sequential_27/lstm_18/strided_slice_2:output:0@sequential_27/lstm_18/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
:sequential_27/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOpCsequential_27_lstm_18_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ò
+sequential_27/lstm_18/lstm_cell_18/MatMul_1MatMul$sequential_27/lstm_18/zeros:output:0Bsequential_27/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
&sequential_27/lstm_18/lstm_cell_18/addAddV23sequential_27/lstm_18/lstm_cell_18/MatMul:product:05sequential_27/lstm_18/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9sequential_27/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOpBsequential_27_lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0×
*sequential_27/lstm_18/lstm_cell_18/BiasAddBiasAdd*sequential_27/lstm_18/lstm_cell_18/add:z:0Asequential_27/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
2sequential_27/lstm_18/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_27/lstm_18/lstm_cell_18/splitSplit;sequential_27/lstm_18/lstm_cell_18/split/split_dim:output:03sequential_27/lstm_18/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
*sequential_27/lstm_18/lstm_cell_18/SigmoidSigmoid1sequential_27/lstm_18/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_27/lstm_18/lstm_cell_18/Sigmoid_1Sigmoid1sequential_27/lstm_18/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¹
&sequential_27/lstm_18/lstm_cell_18/mulMul0sequential_27/lstm_18/lstm_cell_18/Sigmoid_1:y:0&sequential_27/lstm_18/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'sequential_27/lstm_18/lstm_cell_18/ReluRelu1sequential_27/lstm_18/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÈ
(sequential_27/lstm_18/lstm_cell_18/mul_1Mul.sequential_27/lstm_18/lstm_cell_18/Sigmoid:y:05sequential_27/lstm_18/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd½
(sequential_27/lstm_18/lstm_cell_18/add_1AddV2*sequential_27/lstm_18/lstm_cell_18/mul:z:0,sequential_27/lstm_18/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_27/lstm_18/lstm_cell_18/Sigmoid_2Sigmoid1sequential_27/lstm_18/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
)sequential_27/lstm_18/lstm_cell_18/Relu_1Relu,sequential_27/lstm_18/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÌ
(sequential_27/lstm_18/lstm_cell_18/mul_2Mul0sequential_27/lstm_18/lstm_cell_18/Sigmoid_2:y:07sequential_27/lstm_18/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_27/lstm_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   t
2sequential_27/lstm_18/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_27/lstm_18/TensorArrayV2_1TensorListReserve<sequential_27/lstm_18/TensorArrayV2_1/element_shape:output:0;sequential_27/lstm_18/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_27/lstm_18/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_27/lstm_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_27/lstm_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
sequential_27/lstm_18/whileWhile1sequential_27/lstm_18/while/loop_counter:output:07sequential_27/lstm_18/while/maximum_iterations:output:0#sequential_27/lstm_18/time:output:0.sequential_27/lstm_18/TensorArrayV2_1:handle:0$sequential_27/lstm_18/zeros:output:0&sequential_27/lstm_18/zeros_1:output:0.sequential_27/lstm_18/strided_slice_1:output:0Msequential_27/lstm_18/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_27_lstm_18_lstm_cell_18_matmul_readvariableop_resourceCsequential_27_lstm_18_lstm_cell_18_matmul_1_readvariableop_resourceBsequential_27_lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_27_lstm_18_while_body_4136314*4
cond,R*
(sequential_27_lstm_18_while_cond_4136313*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_27/lstm_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_27/lstm_18/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_27/lstm_18/while:output:3Osequential_27/lstm_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elements~
+sequential_27/lstm_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_27/lstm_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_27/lstm_18/strided_slice_3StridedSliceAsequential_27/lstm_18/TensorArrayV2Stack/TensorListStack:tensor:04sequential_27/lstm_18/strided_slice_3/stack:output:06sequential_27/lstm_18/strided_slice_3/stack_1:output:06sequential_27/lstm_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_27/lstm_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_27/lstm_18/transpose_1	TransposeAsequential_27/lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_27/lstm_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_27/lstm_18/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
,sequential_27/repeat_vector_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ó
(sequential_27/repeat_vector_9/ExpandDims
ExpandDims.sequential_27/lstm_18/strided_slice_3:output:05sequential_27/repeat_vector_9/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
#sequential_27/repeat_vector_9/stackConst*
_output_shapes
:*
dtype0*!
valueB"         Á
"sequential_27/repeat_vector_9/TileTile1sequential_27/repeat_vector_9/ExpandDims:output:0,sequential_27/repeat_vector_9/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
sequential_27/lstm_19/ShapeShape+sequential_27/repeat_vector_9/Tile:output:0*
T0*
_output_shapes
:s
)sequential_27/lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_27/lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_27/lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_27/lstm_19/strided_sliceStridedSlice$sequential_27/lstm_19/Shape:output:02sequential_27/lstm_19/strided_slice/stack:output:04sequential_27/lstm_19/strided_slice/stack_1:output:04sequential_27/lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_27/lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_27/lstm_19/zeros/packedPack,sequential_27/lstm_19/strided_slice:output:0-sequential_27/lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_27/lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_27/lstm_19/zerosFill+sequential_27/lstm_19/zeros/packed:output:0*sequential_27/lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_27/lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_27/lstm_19/zeros_1/packedPack,sequential_27/lstm_19/strided_slice:output:0/sequential_27/lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_27/lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_27/lstm_19/zeros_1Fill-sequential_27/lstm_19/zeros_1/packed:output:0,sequential_27/lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_27/lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¾
sequential_27/lstm_19/transpose	Transpose+sequential_27/repeat_vector_9/Tile:output:0-sequential_27/lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_27/lstm_19/Shape_1Shape#sequential_27/lstm_19/transpose:y:0*
T0*
_output_shapes
:u
+sequential_27/lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_27/lstm_19/strided_slice_1StridedSlice&sequential_27/lstm_19/Shape_1:output:04sequential_27/lstm_19/strided_slice_1/stack:output:06sequential_27/lstm_19/strided_slice_1/stack_1:output:06sequential_27/lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_27/lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_27/lstm_19/TensorArrayV2TensorListReserve:sequential_27/lstm_19/TensorArrayV2/element_shape:output:0.sequential_27/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_27/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_27/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_27/lstm_19/transpose:y:0Tsequential_27/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_27/lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_27/lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_27/lstm_19/strided_slice_2StridedSlice#sequential_27/lstm_19/transpose:y:04sequential_27/lstm_19/strided_slice_2/stack:output:06sequential_27/lstm_19/strided_slice_2/stack_1:output:06sequential_27/lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask»
8sequential_27/lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpAsequential_27_lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ø
)sequential_27/lstm_19/lstm_cell_19/MatMulMatMul.sequential_27/lstm_19/strided_slice_2:output:0@sequential_27/lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¿
:sequential_27/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpCsequential_27_lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ò
+sequential_27/lstm_19/lstm_cell_19/MatMul_1MatMul$sequential_27/lstm_19/zeros:output:0Bsequential_27/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÎ
&sequential_27/lstm_19/lstm_cell_19/addAddV23sequential_27/lstm_19/lstm_cell_19/MatMul:product:05sequential_27/lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
9sequential_27/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpBsequential_27_lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0×
*sequential_27/lstm_19/lstm_cell_19/BiasAddBiasAdd*sequential_27/lstm_19/lstm_cell_19/add:z:0Asequential_27/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈt
2sequential_27/lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_27/lstm_19/lstm_cell_19/splitSplit;sequential_27/lstm_19/lstm_cell_19/split/split_dim:output:03sequential_27/lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
*sequential_27/lstm_19/lstm_cell_19/SigmoidSigmoid1sequential_27/lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_27/lstm_19/lstm_cell_19/Sigmoid_1Sigmoid1sequential_27/lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
&sequential_27/lstm_19/lstm_cell_19/mulMul0sequential_27/lstm_19/lstm_cell_19/Sigmoid_1:y:0&sequential_27/lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'sequential_27/lstm_19/lstm_cell_19/ReluRelu1sequential_27/lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2È
(sequential_27/lstm_19/lstm_cell_19/mul_1Mul.sequential_27/lstm_19/lstm_cell_19/Sigmoid:y:05sequential_27/lstm_19/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2½
(sequential_27/lstm_19/lstm_cell_19/add_1AddV2*sequential_27/lstm_19/lstm_cell_19/mul:z:0,sequential_27/lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_27/lstm_19/lstm_cell_19/Sigmoid_2Sigmoid1sequential_27/lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
)sequential_27/lstm_19/lstm_cell_19/Relu_1Relu,sequential_27/lstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ì
(sequential_27/lstm_19/lstm_cell_19/mul_2Mul0sequential_27/lstm_19/lstm_cell_19/Sigmoid_2:y:07sequential_27/lstm_19/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_27/lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_27/lstm_19/TensorArrayV2_1TensorListReserve<sequential_27/lstm_19/TensorArrayV2_1/element_shape:output:0.sequential_27/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_27/lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_27/lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_27/lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
sequential_27/lstm_19/whileWhile1sequential_27/lstm_19/while/loop_counter:output:07sequential_27/lstm_19/while/maximum_iterations:output:0#sequential_27/lstm_19/time:output:0.sequential_27/lstm_19/TensorArrayV2_1:handle:0$sequential_27/lstm_19/zeros:output:0&sequential_27/lstm_19/zeros_1:output:0.sequential_27/lstm_19/strided_slice_1:output:0Msequential_27/lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_27_lstm_19_lstm_cell_19_matmul_readvariableop_resourceCsequential_27_lstm_19_lstm_cell_19_matmul_1_readvariableop_resourceBsequential_27_lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_27_lstm_19_while_body_4136458*4
cond,R*
(sequential_27_lstm_19_while_cond_4136457*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_27/lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_27/lstm_19/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_27/lstm_19/while:output:3Osequential_27/lstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_27/lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_27/lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_27/lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_27/lstm_19/strided_slice_3StridedSliceAsequential_27/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:04sequential_27/lstm_19/strided_slice_3/stack:output:06sequential_27/lstm_19/strided_slice_3/stack_1:output:06sequential_27/lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_27/lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_27/lstm_19/transpose_1	TransposeAsequential_27/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_27/lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_27/lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
/sequential_27/time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ç
)sequential_27/time_distributed_14/ReshapeReshape%sequential_27/lstm_19/transpose_1:y:08sequential_27/time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ê
@sequential_27/time_distributed_14/dense_58/MatMul/ReadVariableOpReadVariableOpIsequential_27_time_distributed_14_dense_58_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ë
1sequential_27/time_distributed_14/dense_58/MatMulMatMul2sequential_27/time_distributed_14/Reshape:output:0Hsequential_27/time_distributed_14/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
Asequential_27/time_distributed_14/dense_58/BiasAdd/ReadVariableOpReadVariableOpJsequential_27_time_distributed_14_dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0÷
2sequential_27/time_distributed_14/dense_58/BiasAddBiasAdd;sequential_27/time_distributed_14/dense_58/MatMul:product:0Isequential_27/time_distributed_14/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/time_distributed_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      å
+sequential_27/time_distributed_14/Reshape_1Reshape;sequential_27/time_distributed_14/dense_58/BiasAdd:output:0:sequential_27/time_distributed_14/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_27/time_distributed_14/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
+sequential_27/time_distributed_14/Reshape_2Reshape%sequential_27/lstm_19/transpose_1:y:0:sequential_27/time_distributed_14/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4sequential_27/time_distributed_14/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
NoOpNoOp:^sequential_27/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp9^sequential_27/lstm_18/lstm_cell_18/MatMul/ReadVariableOp;^sequential_27/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp^sequential_27/lstm_18/while:^sequential_27/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp9^sequential_27/lstm_19/lstm_cell_19/MatMul/ReadVariableOp;^sequential_27/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^sequential_27/lstm_19/whileB^sequential_27/time_distributed_14/dense_58/BiasAdd/ReadVariableOpA^sequential_27/time_distributed_14/dense_58/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2v
9sequential_27/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp9sequential_27/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp2t
8sequential_27/lstm_18/lstm_cell_18/MatMul/ReadVariableOp8sequential_27/lstm_18/lstm_cell_18/MatMul/ReadVariableOp2x
:sequential_27/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:sequential_27/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp2:
sequential_27/lstm_18/whilesequential_27/lstm_18/while2v
9sequential_27/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp9sequential_27/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2t
8sequential_27/lstm_19/lstm_cell_19/MatMul/ReadVariableOp8sequential_27/lstm_19/lstm_cell_19/MatMul/ReadVariableOp2x
:sequential_27/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:sequential_27/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2:
sequential_27/lstm_19/whilesequential_27/lstm_19/while2
Asequential_27/time_distributed_14/dense_58/BiasAdd/ReadVariableOpAsequential_27/time_distributed_14/dense_58/BiasAdd/ReadVariableOp2
@sequential_27/time_distributed_14/dense_58/MatMul/ReadVariableOp@sequential_27/time_distributed_14/dense_58/MatMul/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_18_input
¦J

D__inference_lstm_19_layer_call_and_return_conditional_losses_4140088

inputs>
+lstm_cell_19_matmul_readvariableop_resource:	dÈ@
-lstm_cell_19_matmul_1_readvariableop_resource:	2È;
,lstm_cell_19_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_19/BiasAdd/ReadVariableOp¢"lstm_cell_19/MatMul/ReadVariableOp¢$lstm_cell_19/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
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
bodyR
while_body_4140004*
condR
while_cond_4140003*K
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
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
8
Ñ
while_body_4140004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_19_biasadd_readvariableop_resource:	È¢)while/lstm_cell_19/BiasAdd/ReadVariableOp¢(while/lstm_cell_19/MatMul/ReadVariableOp¢*while/lstm_cell_19/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
÷"
ê
while_body_4137195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_19_4137219_0:	dÈ/
while_lstm_cell_19_4137221_0:	2È+
while_lstm_cell_19_4137223_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_19_4137219:	dÈ-
while_lstm_cell_19_4137221:	2È)
while_lstm_cell_19_4137223:	È¢*while/lstm_cell_19/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0·
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_4137219_0while_lstm_cell_19_4137221_0while_lstm_cell_19_4137223_0*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4137136Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_19_4137219while_lstm_cell_19_4137219_0":
while_lstm_cell_19_4137221while_lstm_cell_19_4137221_0":
while_lstm_cell_19_4137223while_lstm_cell_19_4137223_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 
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
8
Ñ
while_body_4139575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_19_biasadd_readvariableop_resource:	È¢)while/lstm_cell_19/BiasAdd/ReadVariableOp¢(while/lstm_cell_19/MatMul/ReadVariableOp¢*while/lstm_cell_19/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
«
¸
)__inference_lstm_19_layer_call_fn_4139483
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallõ
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137073|
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
í
÷
.__inference_lstm_cell_18_layer_call_fn_4140182

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall©
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136769o
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
©9
Ñ
while_body_4137420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_18_matmul_readvariableop_resource_0:	H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_18_matmul_readvariableop_resource:	F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_18_biasadd_readvariableop_resource:	¢)while/lstm_cell_18/BiasAdd/ReadVariableOp¢(while/lstm_cell_18/MatMul/ReadVariableOp¢*while/lstm_cell_18/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_18/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
«
¸
)__inference_lstm_19_layer_call_fn_4139494
inputs_0
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallõ
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137264|
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
Þ

I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140246

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Þ

I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140214

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
º
È
while_cond_4137928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137928___redundant_placeholder05
1while_while_cond_4137928___redundant_placeholder15
1while_while_cond_4137928___redundant_placeholder25
1while_while_cond_4137928___redundant_placeholder3
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
8
Ñ
while_body_4137763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_19_biasadd_readvariableop_resource:	È¢)while/lstm_cell_19/BiasAdd/ReadVariableOp¢(while/lstm_cell_19/MatMul/ReadVariableOp¢*while/lstm_cell_19/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
í
÷
.__inference_lstm_cell_18_layer_call_fn_4140165

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall©
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136621o
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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


è
lstm_18_while_cond_4138594,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3.
*lstm_18_while_less_lstm_18_strided_slice_1E
Alstm_18_while_lstm_18_while_cond_4138594___redundant_placeholder0E
Alstm_18_while_lstm_18_while_cond_4138594___redundant_placeholder1E
Alstm_18_while_lstm_18_while_cond_4138594___redundant_placeholder2E
Alstm_18_while_lstm_18_while_cond_4138594___redundant_placeholder3
lstm_18_while_identity

lstm_18/while/LessLesslstm_18_while_placeholder*lstm_18_while_less_lstm_18_strided_slice_1*
T0*
_output_shapes
: [
lstm_18/while/IdentityIdentitylstm_18/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_18_while_identitylstm_18/while/Identity:output:0*(
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

¶
)__inference_lstm_19_layer_call_fn_4139505

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallê
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137656s
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
8
Ñ
while_body_4139861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_19_biasadd_readvariableop_resource:	È¢)while/lstm_cell_19/BiasAdd/ReadVariableOp¢(while/lstm_cell_19/MatMul/ReadVariableOp¢*while/lstm_cell_19/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
¦J

D__inference_lstm_19_layer_call_and_return_conditional_losses_4139945

inputs>
+lstm_cell_19_matmul_readvariableop_resource:	dÈ@
-lstm_cell_19_matmul_1_readvariableop_resource:	2È;
,lstm_cell_19_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_19/BiasAdd/ReadVariableOp¢"lstm_cell_19/MatMul/ReadVariableOp¢$lstm_cell_19/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
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
bodyR
while_body_4139861*
condR
while_cond_4139860*K
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
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ç	
Å
%__inference_signature_wrapper_4138193
lstm_18_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8 *+
f&R$
"__inference__wrapped_model_4136554s
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
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_18_input
¹S

(sequential_27_lstm_18_while_body_4136314H
Dsequential_27_lstm_18_while_sequential_27_lstm_18_while_loop_counterN
Jsequential_27_lstm_18_while_sequential_27_lstm_18_while_maximum_iterations+
'sequential_27_lstm_18_while_placeholder-
)sequential_27_lstm_18_while_placeholder_1-
)sequential_27_lstm_18_while_placeholder_2-
)sequential_27_lstm_18_while_placeholder_3G
Csequential_27_lstm_18_while_sequential_27_lstm_18_strided_slice_1_0
sequential_27_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_18_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_27_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0:	^
Ksequential_27_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dY
Jsequential_27_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0:	(
$sequential_27_lstm_18_while_identity*
&sequential_27_lstm_18_while_identity_1*
&sequential_27_lstm_18_while_identity_2*
&sequential_27_lstm_18_while_identity_3*
&sequential_27_lstm_18_while_identity_4*
&sequential_27_lstm_18_while_identity_5E
Asequential_27_lstm_18_while_sequential_27_lstm_18_strided_slice_1
}sequential_27_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_18_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_27_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource:	\
Isequential_27_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource:	dW
Hsequential_27_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource:	¢?sequential_27/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp¢>sequential_27/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp¢@sequential_27/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp
Msequential_27/lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_27/lstm_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_27_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_18_tensorarrayunstack_tensorlistfromtensor_0'sequential_27_lstm_18_while_placeholderVsequential_27/lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0É
>sequential_27/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOpIsequential_27_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ü
/sequential_27/lstm_18/while/lstm_cell_18/MatMulMatMulFsequential_27/lstm_18/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_27/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
@sequential_27/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOpKsequential_27_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ã
1sequential_27/lstm_18/while/lstm_cell_18/MatMul_1MatMul)sequential_27_lstm_18_while_placeholder_2Hsequential_27/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
,sequential_27/lstm_18/while/lstm_cell_18/addAddV29sequential_27/lstm_18/while/lstm_cell_18/MatMul:product:0;sequential_27/lstm_18/while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
?sequential_27/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOpJsequential_27_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0é
0sequential_27/lstm_18/while/lstm_cell_18/BiasAddBiasAdd0sequential_27/lstm_18/while/lstm_cell_18/add:z:0Gsequential_27/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
8sequential_27/lstm_18/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_27/lstm_18/while/lstm_cell_18/splitSplitAsequential_27/lstm_18/while/lstm_cell_18/split/split_dim:output:09sequential_27/lstm_18/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¦
0sequential_27/lstm_18/while/lstm_cell_18/SigmoidSigmoid7sequential_27/lstm_18/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
2sequential_27/lstm_18/while/lstm_cell_18/Sigmoid_1Sigmoid7sequential_27/lstm_18/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÈ
,sequential_27/lstm_18/while/lstm_cell_18/mulMul6sequential_27/lstm_18/while/lstm_cell_18/Sigmoid_1:y:0)sequential_27_lstm_18_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
-sequential_27/lstm_18/while/lstm_cell_18/ReluRelu7sequential_27/lstm_18/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÚ
.sequential_27/lstm_18/while/lstm_cell_18/mul_1Mul4sequential_27/lstm_18/while/lstm_cell_18/Sigmoid:y:0;sequential_27/lstm_18/while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
.sequential_27/lstm_18/while/lstm_cell_18/add_1AddV20sequential_27/lstm_18/while/lstm_cell_18/mul:z:02sequential_27/lstm_18/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
2sequential_27/lstm_18/while/lstm_cell_18/Sigmoid_2Sigmoid7sequential_27/lstm_18/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
/sequential_27/lstm_18/while/lstm_cell_18/Relu_1Relu2sequential_27/lstm_18/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÞ
.sequential_27/lstm_18/while/lstm_cell_18/mul_2Mul6sequential_27/lstm_18/while/lstm_cell_18/Sigmoid_2:y:0=sequential_27/lstm_18/while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Fsequential_27/lstm_18/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Å
@sequential_27/lstm_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_27_lstm_18_while_placeholder_1Osequential_27/lstm_18/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_27/lstm_18/while/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_27/lstm_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_27/lstm_18/while/addAddV2'sequential_27_lstm_18_while_placeholder*sequential_27/lstm_18/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_27/lstm_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_27/lstm_18/while/add_1AddV2Dsequential_27_lstm_18_while_sequential_27_lstm_18_while_loop_counter,sequential_27/lstm_18/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_27/lstm_18/while/IdentityIdentity%sequential_27/lstm_18/while/add_1:z:0!^sequential_27/lstm_18/while/NoOp*
T0*
_output_shapes
: Â
&sequential_27/lstm_18/while/Identity_1IdentityJsequential_27_lstm_18_while_sequential_27_lstm_18_while_maximum_iterations!^sequential_27/lstm_18/while/NoOp*
T0*
_output_shapes
: 
&sequential_27/lstm_18/while/Identity_2Identity#sequential_27/lstm_18/while/add:z:0!^sequential_27/lstm_18/while/NoOp*
T0*
_output_shapes
: È
&sequential_27/lstm_18/while/Identity_3IdentityPsequential_27/lstm_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_27/lstm_18/while/NoOp*
T0*
_output_shapes
: »
&sequential_27/lstm_18/while/Identity_4Identity2sequential_27/lstm_18/while/lstm_cell_18/mul_2:z:0!^sequential_27/lstm_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
&sequential_27/lstm_18/while/Identity_5Identity2sequential_27/lstm_18/while/lstm_cell_18/add_1:z:0!^sequential_27/lstm_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
 sequential_27/lstm_18/while/NoOpNoOp@^sequential_27/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp?^sequential_27/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpA^sequential_27/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_27_lstm_18_while_identity-sequential_27/lstm_18/while/Identity:output:0"Y
&sequential_27_lstm_18_while_identity_1/sequential_27/lstm_18/while/Identity_1:output:0"Y
&sequential_27_lstm_18_while_identity_2/sequential_27/lstm_18/while/Identity_2:output:0"Y
&sequential_27_lstm_18_while_identity_3/sequential_27/lstm_18/while/Identity_3:output:0"Y
&sequential_27_lstm_18_while_identity_4/sequential_27/lstm_18/while/Identity_4:output:0"Y
&sequential_27_lstm_18_while_identity_5/sequential_27/lstm_18/while/Identity_5:output:0"
Hsequential_27_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resourceJsequential_27_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0"
Isequential_27_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resourceKsequential_27_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0"
Gsequential_27_lstm_18_while_lstm_cell_18_matmul_readvariableop_resourceIsequential_27_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0"
Asequential_27_lstm_18_while_sequential_27_lstm_18_strided_slice_1Csequential_27_lstm_18_while_sequential_27_lstm_18_strided_slice_1_0"
}sequential_27_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_18_tensorarrayunstack_tensorlistfromtensorsequential_27_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
?sequential_27/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp?sequential_27/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp2
>sequential_27/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp>sequential_27/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp2
@sequential_27/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp@sequential_27/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
Ö

I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4137136

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
$
ê
while_body_4136636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_18_4136660_0:	/
while_lstm_cell_18_4136662_0:	d+
while_lstm_cell_18_4136664_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_18_4136660:	-
while_lstm_cell_18_4136662:	d)
while_lstm_cell_18_4136664:	¢*while/lstm_cell_18/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_18_4136660_0while_lstm_cell_18_4136662_0while_lstm_cell_18_4136664_0*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136621r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_18/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_18/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity3while/lstm_cell_18/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy

while/NoOpNoOp+^while/lstm_cell_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_18_4136660while_lstm_cell_18_4136660_0":
while_lstm_cell_18_4136662while_lstm_cell_18_4136662_0":
while_lstm_cell_18_4136664while_lstm_cell_18_4136664_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_18/StatefulPartitionedCall*while/lstm_cell_18/StatefulPartitionedCall: 
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
º
È
while_cond_4137762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137762___redundant_placeholder05
1while_while_cond_4137762___redundant_placeholder15
1while_while_cond_4137762___redundant_placeholder25
1while_while_cond_4137762___redundant_placeholder3
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
$
ê
while_body_4136829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_18_4136853_0:	/
while_lstm_cell_18_4136855_0:	d+
while_lstm_cell_18_4136857_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_18_4136853:	-
while_lstm_cell_18_4136855:	d)
while_lstm_cell_18_4136857:	¢*while/lstm_cell_18/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_18_4136853_0while_lstm_cell_18_4136855_0while_lstm_cell_18_4136857_0*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136769r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_18/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_18/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity3while/lstm_cell_18/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy

while/NoOpNoOp+^while/lstm_cell_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_18_4136853while_lstm_cell_18_4136853_0":
while_lstm_cell_18_4136855while_lstm_cell_18_4136855_0":
while_lstm_cell_18_4136857while_lstm_cell_18_4136857_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_18/StatefulPartitionedCall*while/lstm_cell_18/StatefulPartitionedCall: 
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
êB
Ñ

lstm_18_while_body_4138595,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3+
'lstm_18_while_lstm_18_strided_slice_1_0g
clstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0:	P
=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dK
<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0:	
lstm_18_while_identity
lstm_18_while_identity_1
lstm_18_while_identity_2
lstm_18_while_identity_3
lstm_18_while_identity_4
lstm_18_while_identity_5)
%lstm_18_while_lstm_18_strided_slice_1e
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorL
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource:	N
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource:	dI
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource:	¢1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp¢0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp¢2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp
?lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0lstm_18_while_placeholderHlstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ò
!lstm_18/while/lstm_cell_18/MatMulMatMul8lstm_18/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¹
#lstm_18/while/lstm_cell_18/MatMul_1MatMullstm_18_while_placeholder_2:lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_18/while/lstm_cell_18/addAddV2+lstm_18/while/lstm_cell_18/MatMul:product:0-lstm_18/while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_18/while/lstm_cell_18/BiasAddBiasAdd"lstm_18/while/lstm_cell_18/add:z:09lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_18/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_18/while/lstm_cell_18/splitSplit3lstm_18/while/lstm_cell_18/split/split_dim:output:0+lstm_18/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
"lstm_18/while/lstm_cell_18/SigmoidSigmoid)lstm_18/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_18/while/lstm_cell_18/Sigmoid_1Sigmoid)lstm_18/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/while/lstm_cell_18/mulMul(lstm_18/while/lstm_cell_18/Sigmoid_1:y:0lstm_18_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/while/lstm_cell_18/ReluRelu)lstm_18/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd°
 lstm_18/while/lstm_cell_18/mul_1Mul&lstm_18/while/lstm_cell_18/Sigmoid:y:0-lstm_18/while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
 lstm_18/while/lstm_cell_18/add_1AddV2"lstm_18/while/lstm_cell_18/mul:z:0$lstm_18/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_18/while/lstm_cell_18/Sigmoid_2Sigmoid)lstm_18/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!lstm_18/while/lstm_cell_18/Relu_1Relu$lstm_18/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
 lstm_18/while/lstm_cell_18/mul_2Mul(lstm_18/while/lstm_cell_18/Sigmoid_2:y:0/lstm_18/while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
8lstm_18/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_18_while_placeholder_1Alstm_18/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_18/while/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_18/while/addAddV2lstm_18_while_placeholderlstm_18/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_18/while/add_1AddV2(lstm_18_while_lstm_18_while_loop_counterlstm_18/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_18/while/IdentityIdentitylstm_18/while/add_1:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: 
lstm_18/while/Identity_1Identity.lstm_18_while_lstm_18_while_maximum_iterations^lstm_18/while/NoOp*
T0*
_output_shapes
: q
lstm_18/while/Identity_2Identitylstm_18/while/add:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: 
lstm_18/while/Identity_3IdentityBlstm_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_18/while/NoOp*
T0*
_output_shapes
: 
lstm_18/while/Identity_4Identity$lstm_18/while/lstm_cell_18/mul_2:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/while/Identity_5Identity$lstm_18/while/lstm_cell_18/add_1:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
lstm_18/while/NoOpNoOp2^lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1^lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp3^lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_18_while_identitylstm_18/while/Identity:output:0"=
lstm_18_while_identity_1!lstm_18/while/Identity_1:output:0"=
lstm_18_while_identity_2!lstm_18/while/Identity_2:output:0"=
lstm_18_while_identity_3!lstm_18/while/Identity_3:output:0"=
lstm_18_while_identity_4!lstm_18/while/Identity_4:output:0"=
lstm_18_while_identity_5!lstm_18/while/Identity_5:output:0"P
%lstm_18_while_lstm_18_strided_slice_1'lstm_18_while_lstm_18_strided_slice_1_0"z
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0"|
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0"x
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0"È
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2f
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp2d
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp2h
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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


è
lstm_19_while_cond_4138738,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1E
Alstm_19_while_lstm_19_while_cond_4138738___redundant_placeholder0E
Alstm_19_while_lstm_19_while_cond_4138738___redundant_placeholder1E
Alstm_19_while_lstm_19_while_cond_4138738___redundant_placeholder2E
Alstm_19_while_lstm_19_while_cond_4138738___redundant_placeholder3
lstm_19_while_identity

lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: [
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
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
¸
Ö
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137308

inputs"
dense_58_4137298:2
dense_58_4137300:
identity¢ dense_58/StatefulPartitionedCall;
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
:ÿÿÿÿÿÿÿÿÿ2ý
 dense_58/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_58_4137298dense_58_4137300*
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
GPU 2J 8 *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_4137297\
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
:
	Reshape_1Reshape)dense_58/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
NoOpNoOp!^dense_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
äJ

D__inference_lstm_19_layer_call_and_return_conditional_losses_4139802
inputs_0>
+lstm_cell_19_matmul_readvariableop_resource:	dÈ@
-lstm_cell_19_matmul_1_readvariableop_resource:	2È;
,lstm_cell_19_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_19/BiasAdd/ReadVariableOp¢"lstm_cell_19/MatMul/ReadVariableOp¢$lstm_cell_19/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
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
bodyR
while_body_4139718*
condR
while_cond_4139717*K
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
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
÷"
ê
while_body_4137004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_19_4137028_0:	dÈ/
while_lstm_cell_19_4137030_0:	2È+
while_lstm_cell_19_4137032_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_19_4137028:	dÈ-
while_lstm_cell_19_4137030:	2È)
while_lstm_cell_19_4137032:	È¢*while/lstm_cell_19/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0·
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_4137028_0while_lstm_cell_19_4137030_0while_lstm_cell_19_4137032_0*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4136990Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_19_4137028while_lstm_cell_19_4137028_0":
while_lstm_cell_19_4137030while_lstm_cell_19_4137030_0":
while_lstm_cell_19_4137032while_lstm_cell_19_4137032_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 
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
£

(sequential_27_lstm_18_while_cond_4136313H
Dsequential_27_lstm_18_while_sequential_27_lstm_18_while_loop_counterN
Jsequential_27_lstm_18_while_sequential_27_lstm_18_while_maximum_iterations+
'sequential_27_lstm_18_while_placeholder-
)sequential_27_lstm_18_while_placeholder_1-
)sequential_27_lstm_18_while_placeholder_2-
)sequential_27_lstm_18_while_placeholder_3J
Fsequential_27_lstm_18_while_less_sequential_27_lstm_18_strided_slice_1a
]sequential_27_lstm_18_while_sequential_27_lstm_18_while_cond_4136313___redundant_placeholder0a
]sequential_27_lstm_18_while_sequential_27_lstm_18_while_cond_4136313___redundant_placeholder1a
]sequential_27_lstm_18_while_sequential_27_lstm_18_while_cond_4136313___redundant_placeholder2a
]sequential_27_lstm_18_while_sequential_27_lstm_18_while_cond_4136313___redundant_placeholder3(
$sequential_27_lstm_18_while_identity
º
 sequential_27/lstm_18/while/LessLess'sequential_27_lstm_18_while_placeholderFsequential_27_lstm_18_while_less_sequential_27_lstm_18_strided_slice_1*
T0*
_output_shapes
: w
$sequential_27/lstm_18/while/IdentityIdentity$sequential_27/lstm_18/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_27_lstm_18_while_identity-sequential_27/lstm_18/while/Identity:output:0*(
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
­

J__inference_sequential_27_layer_call_and_return_conditional_losses_4138138
lstm_18_input"
lstm_18_4138115:	"
lstm_18_4138117:	d
lstm_18_4138119:	"
lstm_19_4138123:	dÈ"
lstm_19_4138125:	2È
lstm_19_4138127:	È-
time_distributed_14_4138130:2)
time_distributed_14_4138132:
identity¢lstm_18/StatefulPartitionedCall¢lstm_19/StatefulPartitionedCall¢+time_distributed_14/StatefulPartitionedCall
lstm_18/StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputlstm_18_4138115lstm_18_4138117lstm_18_4138119*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4137505í
repeat_vector_9/PartitionedCallPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *U
fPRN
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4136920¨
lstm_19/StatefulPartitionedCallStatefulPartitionedCall(repeat_vector_9/PartitionedCall:output:0lstm_19_4138123lstm_19_4138125lstm_19_4138127*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137656Å
+time_distributed_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0time_distributed_14_4138130time_distributed_14_4138132*
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
GPU 2J 8 *Y
fTRR
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137308r
!time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_14/ReshapeReshape(lstm_19/StatefulPartitionedCall:output:0*time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_14/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall,^time_distributed_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2Z
+time_distributed_14/StatefulPartitionedCall+time_distributed_14/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_18_input
º
È
while_cond_4136828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4136828___redundant_placeholder05
1while_while_cond_4136828___redundant_placeholder15
1while_while_cond_4136828___redundant_placeholder25
1while_while_cond_4136828___redundant_placeholder3
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
R

(sequential_27_lstm_19_while_body_4136458H
Dsequential_27_lstm_19_while_sequential_27_lstm_19_while_loop_counterN
Jsequential_27_lstm_19_while_sequential_27_lstm_19_while_maximum_iterations+
'sequential_27_lstm_19_while_placeholder-
)sequential_27_lstm_19_while_placeholder_1-
)sequential_27_lstm_19_while_placeholder_2-
)sequential_27_lstm_19_while_placeholder_3G
Csequential_27_lstm_19_while_sequential_27_lstm_19_strided_slice_1_0
sequential_27_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_19_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_27_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈ^
Ksequential_27_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈY
Jsequential_27_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0:	È(
$sequential_27_lstm_19_while_identity*
&sequential_27_lstm_19_while_identity_1*
&sequential_27_lstm_19_while_identity_2*
&sequential_27_lstm_19_while_identity_3*
&sequential_27_lstm_19_while_identity_4*
&sequential_27_lstm_19_while_identity_5E
Asequential_27_lstm_19_while_sequential_27_lstm_19_strided_slice_1
}sequential_27_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_19_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_27_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource:	dÈ\
Isequential_27_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈW
Hsequential_27_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource:	È¢?sequential_27/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp¢>sequential_27/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp¢@sequential_27/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp
Msequential_27/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_27/lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_27_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_19_tensorarrayunstack_tensorlistfromtensor_0'sequential_27_lstm_19_while_placeholderVsequential_27/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0É
>sequential_27/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpIsequential_27_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ü
/sequential_27/lstm_19/while/lstm_cell_19/MatMulMatMulFsequential_27/lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_27/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÍ
@sequential_27/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpKsequential_27_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ã
1sequential_27/lstm_19/while/lstm_cell_19/MatMul_1MatMul)sequential_27_lstm_19_while_placeholder_2Hsequential_27/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈà
,sequential_27/lstm_19/while/lstm_cell_19/addAddV29sequential_27/lstm_19/while/lstm_cell_19/MatMul:product:0;sequential_27/lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÇ
?sequential_27/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpJsequential_27_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0é
0sequential_27/lstm_19/while/lstm_cell_19/BiasAddBiasAdd0sequential_27/lstm_19/while/lstm_cell_19/add:z:0Gsequential_27/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈz
8sequential_27/lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_27/lstm_19/while/lstm_cell_19/splitSplitAsequential_27/lstm_19/while/lstm_cell_19/split/split_dim:output:09sequential_27/lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¦
0sequential_27/lstm_19/while/lstm_cell_19/SigmoidSigmoid7sequential_27/lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
2sequential_27/lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid7sequential_27/lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2È
,sequential_27/lstm_19/while/lstm_cell_19/mulMul6sequential_27/lstm_19/while/lstm_cell_19/Sigmoid_1:y:0)sequential_27_lstm_19_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
-sequential_27/lstm_19/while/lstm_cell_19/ReluRelu7sequential_27/lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ú
.sequential_27/lstm_19/while/lstm_cell_19/mul_1Mul4sequential_27/lstm_19/while/lstm_cell_19/Sigmoid:y:0;sequential_27/lstm_19/while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
.sequential_27/lstm_19/while/lstm_cell_19/add_1AddV20sequential_27/lstm_19/while/lstm_cell_19/mul:z:02sequential_27/lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
2sequential_27/lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid7sequential_27/lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
/sequential_27/lstm_19/while/lstm_cell_19/Relu_1Relu2sequential_27/lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Þ
.sequential_27/lstm_19/while/lstm_cell_19/mul_2Mul6sequential_27/lstm_19/while/lstm_cell_19/Sigmoid_2:y:0=sequential_27/lstm_19/while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_27/lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_27_lstm_19_while_placeholder_1'sequential_27_lstm_19_while_placeholder2sequential_27/lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_27/lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_27/lstm_19/while/addAddV2'sequential_27_lstm_19_while_placeholder*sequential_27/lstm_19/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_27/lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_27/lstm_19/while/add_1AddV2Dsequential_27_lstm_19_while_sequential_27_lstm_19_while_loop_counter,sequential_27/lstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_27/lstm_19/while/IdentityIdentity%sequential_27/lstm_19/while/add_1:z:0!^sequential_27/lstm_19/while/NoOp*
T0*
_output_shapes
: Â
&sequential_27/lstm_19/while/Identity_1IdentityJsequential_27_lstm_19_while_sequential_27_lstm_19_while_maximum_iterations!^sequential_27/lstm_19/while/NoOp*
T0*
_output_shapes
: 
&sequential_27/lstm_19/while/Identity_2Identity#sequential_27/lstm_19/while/add:z:0!^sequential_27/lstm_19/while/NoOp*
T0*
_output_shapes
: È
&sequential_27/lstm_19/while/Identity_3IdentityPsequential_27/lstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_27/lstm_19/while/NoOp*
T0*
_output_shapes
: »
&sequential_27/lstm_19/while/Identity_4Identity2sequential_27/lstm_19/while/lstm_cell_19/mul_2:z:0!^sequential_27/lstm_19/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
&sequential_27/lstm_19/while/Identity_5Identity2sequential_27/lstm_19/while/lstm_cell_19/add_1:z:0!^sequential_27/lstm_19/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
 sequential_27/lstm_19/while/NoOpNoOp@^sequential_27/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?^sequential_27/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpA^sequential_27/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_27_lstm_19_while_identity-sequential_27/lstm_19/while/Identity:output:0"Y
&sequential_27_lstm_19_while_identity_1/sequential_27/lstm_19/while/Identity_1:output:0"Y
&sequential_27_lstm_19_while_identity_2/sequential_27/lstm_19/while/Identity_2:output:0"Y
&sequential_27_lstm_19_while_identity_3/sequential_27/lstm_19/while/Identity_3:output:0"Y
&sequential_27_lstm_19_while_identity_4/sequential_27/lstm_19/while/Identity_4:output:0"Y
&sequential_27_lstm_19_while_identity_5/sequential_27/lstm_19/while/Identity_5:output:0"
Hsequential_27_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resourceJsequential_27_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"
Isequential_27_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resourceKsequential_27_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"
Gsequential_27_lstm_19_while_lstm_cell_19_matmul_readvariableop_resourceIsequential_27_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"
Asequential_27_lstm_19_while_sequential_27_lstm_19_strided_slice_1Csequential_27_lstm_19_while_sequential_27_lstm_19_strided_slice_1_0"
}sequential_27_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_19_tensorarrayunstack_tensorlistfromtensorsequential_27_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
?sequential_27/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?sequential_27/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2
>sequential_27/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp>sequential_27/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2
@sequential_27/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp@sequential_27/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
ä	
È
/__inference_sequential_27_layer_call_fn_4138235

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall±
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
GPU 2J 8 *S
fNRL
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138072s
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
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


J__inference_sequential_27_layer_call_and_return_conditional_losses_4137672

inputs"
lstm_18_4137506:	"
lstm_18_4137508:	d
lstm_18_4137510:	"
lstm_19_4137657:	dÈ"
lstm_19_4137659:	2È
lstm_19_4137661:	È-
time_distributed_14_4137664:2)
time_distributed_14_4137666:
identity¢lstm_18/StatefulPartitionedCall¢lstm_19/StatefulPartitionedCall¢+time_distributed_14/StatefulPartitionedCall
lstm_18/StatefulPartitionedCallStatefulPartitionedCallinputslstm_18_4137506lstm_18_4137508lstm_18_4137510*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4137505í
repeat_vector_9/PartitionedCallPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *U
fPRN
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4136920¨
lstm_19/StatefulPartitionedCallStatefulPartitionedCall(repeat_vector_9/PartitionedCall:output:0lstm_19_4137657lstm_19_4137659lstm_19_4137661*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137656Å
+time_distributed_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0time_distributed_14_4137664time_distributed_14_4137666*
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
GPU 2J 8 *Y
fTRR
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137308r
!time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_14/ReshapeReshape(lstm_19/StatefulPartitionedCall:output:0*time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_14/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall,^time_distributed_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2Z
+time_distributed_14/StatefulPartitionedCall+time_distributed_14/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù	
Ï
/__inference_sequential_27_layer_call_fn_4137691
lstm_18_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_27_layer_call_and_return_conditional_losses_4137672s
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
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_18_input
©9
Ñ
while_body_4138939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_18_matmul_readvariableop_resource_0:	H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_18_matmul_readvariableop_resource:	F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_18_biasadd_readvariableop_resource:	¢)while/lstm_cell_18/BiasAdd/ReadVariableOp¢(while/lstm_cell_18/MatMul/ReadVariableOp¢*while/lstm_cell_18/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_18/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
¼
h
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4139472

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
ù
¶
)__inference_lstm_18_layer_call_fn_4138868

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identity¢StatefulPartitionedCallæ
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4137505o
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö

I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136769

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
È	
ö
E__inference_dense_58_layer_call_and_return_conditional_losses_4137297

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
Ö

I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136621

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_namestates
©9
Ñ
while_body_4139229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_18_matmul_readvariableop_resource_0:	H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_18_matmul_readvariableop_resource:	F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_18_biasadd_readvariableop_resource:	¢)while/lstm_cell_18/BiasAdd/ReadVariableOp¢(while/lstm_cell_18/MatMul/ReadVariableOp¢*while/lstm_cell_18/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_18/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_4139574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4139574___redundant_placeholder05
1while_while_cond_4139574___redundant_placeholder15
1while_while_cond_4139574___redundant_placeholder25
1while_while_cond_4139574___redundant_placeholder3
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
9

D__inference_lstm_18_layer_call_and_return_conditional_losses_4136706

inputs'
lstm_cell_18_4136622:	'
lstm_cell_18_4136624:	d#
lstm_cell_18_4136626:	
identity¢$lstm_cell_18/StatefulPartitionedCall¢while;
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_18_4136622lstm_cell_18_4136624lstm_cell_18_4136626*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136621n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_18_4136622lstm_cell_18_4136624lstm_cell_18_4136626*
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
bodyR
while_body_4136636*
condR
while_cond_4136635*K
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
NoOpNoOp%^lstm_cell_18/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_18/StatefulPartitionedCall$lstm_cell_18/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬K

D__inference_lstm_18_layer_call_and_return_conditional_losses_4139459

inputs>
+lstm_cell_18_matmul_readvariableop_resource:	@
-lstm_cell_18_matmul_1_readvariableop_resource:	d;
,lstm_cell_18_biasadd_readvariableop_resource:	
identity¢#lstm_cell_18/BiasAdd/ReadVariableOp¢"lstm_cell_18/MatMul/ReadVariableOp¢$lstm_cell_18/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
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
bodyR
while_body_4139374*
condR
while_cond_4139373*K
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
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


J__inference_sequential_27_layer_call_and_return_conditional_losses_4138072

inputs"
lstm_18_4138049:	"
lstm_18_4138051:	d
lstm_18_4138053:	"
lstm_19_4138057:	dÈ"
lstm_19_4138059:	2È
lstm_19_4138061:	È-
time_distributed_14_4138064:2)
time_distributed_14_4138066:
identity¢lstm_18/StatefulPartitionedCall¢lstm_19/StatefulPartitionedCall¢+time_distributed_14/StatefulPartitionedCall
lstm_18/StatefulPartitionedCallStatefulPartitionedCallinputslstm_18_4138049lstm_18_4138051lstm_18_4138053*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4138014í
repeat_vector_9/PartitionedCallPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *U
fPRN
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4136920¨
lstm_19/StatefulPartitionedCallStatefulPartitionedCall(repeat_vector_9/PartitionedCall:output:0lstm_19_4138057lstm_19_4138059lstm_19_4138061*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137847Å
+time_distributed_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0time_distributed_14_4138064time_distributed_14_4138066*
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
GPU 2J 8 *Y
fTRR
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137347r
!time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_14/ReshapeReshape(lstm_19/StatefulPartitionedCall:output:0*time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_14/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall,^time_distributed_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2Z
+time_distributed_14/StatefulPartitionedCall+time_distributed_14/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä	
È
/__inference_sequential_27_layer_call_fn_4138214

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall±
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
GPU 2J 8 *S
fNRL
J__inference_sequential_27_layer_call_and_return_conditional_losses_4137672s
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
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_4137194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137194___redundant_placeholder05
1while_while_cond_4137194___redundant_placeholder15
1while_while_cond_4137194___redundant_placeholder25
1while_while_cond_4137194___redundant_placeholder3
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
º
È
while_cond_4139373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4139373___redundant_placeholder05
1while_while_cond_4139373___redundant_placeholder15
1while_while_cond_4139373___redundant_placeholder25
1while_while_cond_4139373___redundant_placeholder3
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
ÅF
Í
 __inference__traced_save_4140479
file_prefix:
6savev2_lstm_18_lstm_cell_18_kernel_read_readvariableopD
@savev2_lstm_18_lstm_cell_18_recurrent_kernel_read_readvariableop8
4savev2_lstm_18_lstm_cell_18_bias_read_readvariableop:
6savev2_lstm_19_lstm_cell_19_kernel_read_readvariableopD
@savev2_lstm_19_lstm_cell_19_recurrent_kernel_read_readvariableop8
4savev2_lstm_19_lstm_cell_19_bias_read_readvariableop9
5savev2_time_distributed_14_kernel_read_readvariableop7
3savev2_time_distributed_14_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopA
=savev2_adam_lstm_18_lstm_cell_18_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_18_lstm_cell_18_bias_m_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_19_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_19_bias_m_read_readvariableop@
<savev2_adam_time_distributed_14_kernel_m_read_readvariableop>
:savev2_adam_time_distributed_14_bias_m_read_readvariableopA
=savev2_adam_lstm_18_lstm_cell_18_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_18_lstm_cell_18_bias_v_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_19_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_19_bias_v_read_readvariableop@
<savev2_adam_time_distributed_14_kernel_v_read_readvariableop>
:savev2_adam_time_distributed_14_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_lstm_18_lstm_cell_18_kernel_read_readvariableop@savev2_lstm_18_lstm_cell_18_recurrent_kernel_read_readvariableop4savev2_lstm_18_lstm_cell_18_bias_read_readvariableop6savev2_lstm_19_lstm_cell_19_kernel_read_readvariableop@savev2_lstm_19_lstm_cell_19_recurrent_kernel_read_readvariableop4savev2_lstm_19_lstm_cell_19_bias_read_readvariableop5savev2_time_distributed_14_kernel_read_readvariableop3savev2_time_distributed_14_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop=savev2_adam_lstm_18_lstm_cell_18_kernel_m_read_readvariableopGsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_18_lstm_cell_18_bias_m_read_readvariableop=savev2_adam_lstm_19_lstm_cell_19_kernel_m_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_19_lstm_cell_19_bias_m_read_readvariableop<savev2_adam_time_distributed_14_kernel_m_read_readvariableop:savev2_adam_time_distributed_14_bias_m_read_readvariableop=savev2_adam_lstm_18_lstm_cell_18_kernel_v_read_readvariableopGsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_18_lstm_cell_18_bias_v_read_readvariableop=savev2_adam_lstm_19_lstm_cell_19_kernel_v_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_19_lstm_cell_19_bias_v_read_readvariableop<savev2_adam_time_distributed_14_kernel_v_read_readvariableop:savev2_adam_time_distributed_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ð: :	:	d::	dÈ:	2È:È:2:: : : : : : : :	:	d::	dÈ:	2È:È:2::	:	d::	dÈ:	2È:È:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:%!

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
:	:%!

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
:	:%!

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
8
Ñ
while_body_4139718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_19_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_19_biasadd_readvariableop_resource:	È¢)while/lstm_cell_19/BiasAdd/ReadVariableOp¢(while/lstm_cell_19/MatMul/ReadVariableOp¢*while/lstm_cell_19/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
¼
h
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4136920

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
ÆA
Ñ

lstm_19_while_body_4138739,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈP
=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈK
<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorL
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource:	dÈN
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈI
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource:	È¢1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp¢0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp¢2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ò
!lstm_19/while/lstm_cell_19/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ±
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¹
#lstm_19/while/lstm_cell_19/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¶
lstm_19/while/lstm_cell_19/addAddV2+lstm_19/while/lstm_cell_19/MatMul:product:0-lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ«
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0¿
"lstm_19/while/lstm_cell_19/BiasAddBiasAdd"lstm_19/while/lstm_cell_19/add:z:09lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈl
*lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_19/while/lstm_cell_19/splitSplit3lstm_19/while/lstm_cell_19/split/split_dim:output:0+lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
"lstm_19/while/lstm_cell_19/SigmoidSigmoid)lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/while/lstm_cell_19/mulMul(lstm_19/while/lstm_cell_19/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/while/lstm_cell_19/ReluRelu)lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
 lstm_19/while/lstm_cell_19/mul_1Mul&lstm_19/while/lstm_cell_19/Sigmoid:y:0-lstm_19/while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
 lstm_19/while/lstm_cell_19/add_1AddV2"lstm_19/while/lstm_cell_19/mul:z:0$lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!lstm_19/while/lstm_cell_19/Relu_1Relu$lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
 lstm_19/while/lstm_cell_19/mul_2Mul(lstm_19/while/lstm_cell_19/Sigmoid_2:y:0/lstm_19/while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2å
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: q
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_19/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_19/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ð
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"È
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2f
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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

¢
5__inference_time_distributed_14_layer_call_fn_4140097

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallò
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
GPU 2J 8 *Y
fTRR
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137308|
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
¦J

D__inference_lstm_19_layer_call_and_return_conditional_losses_4137656

inputs>
+lstm_cell_19_matmul_readvariableop_resource:	dÈ@
-lstm_cell_19_matmul_1_readvariableop_resource:	2È;
,lstm_cell_19_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_19/BiasAdd/ReadVariableOp¢"lstm_cell_19/MatMul/ReadVariableOp¢$lstm_cell_19/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
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
bodyR
while_body_4137572*
condR
while_cond_4137571*K
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
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
È	
ö
E__inference_dense_58_layer_call_and_return_conditional_losses_4140363

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
º
È
while_cond_4139717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4139717___redundant_placeholder05
1while_while_cond_4139717___redundant_placeholder15
1while_while_cond_4139717___redundant_placeholder25
1while_while_cond_4139717___redundant_placeholder3
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
­

J__inference_sequential_27_layer_call_and_return_conditional_losses_4138164
lstm_18_input"
lstm_18_4138141:	"
lstm_18_4138143:	d
lstm_18_4138145:	"
lstm_19_4138149:	dÈ"
lstm_19_4138151:	2È
lstm_19_4138153:	È-
time_distributed_14_4138156:2)
time_distributed_14_4138158:
identity¢lstm_18/StatefulPartitionedCall¢lstm_19/StatefulPartitionedCall¢+time_distributed_14/StatefulPartitionedCall
lstm_18/StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputlstm_18_4138141lstm_18_4138143lstm_18_4138145*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_18_layer_call_and_return_conditional_losses_4138014í
repeat_vector_9/PartitionedCallPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *U
fPRN
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4136920¨
lstm_19/StatefulPartitionedCallStatefulPartitionedCall(repeat_vector_9/PartitionedCall:output:0lstm_19_4138149lstm_19_4138151lstm_19_4138153*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137847Å
+time_distributed_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0time_distributed_14_4138156time_distributed_14_4138158*
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
GPU 2J 8 *Y
fTRR
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137347r
!time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_14/ReshapeReshape(lstm_19/StatefulPartitionedCall:output:0*time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_14/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall,^time_distributed_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2Z
+time_distributed_14/StatefulPartitionedCall+time_distributed_14/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_18_input
½»
Ñ
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138835

inputsF
3lstm_18_lstm_cell_18_matmul_readvariableop_resource:	H
5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource:	dC
4lstm_18_lstm_cell_18_biasadd_readvariableop_resource:	F
3lstm_19_lstm_cell_19_matmul_readvariableop_resource:	dÈH
5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈC
4lstm_19_lstm_cell_19_biasadd_readvariableop_resource:	ÈM
;time_distributed_14_dense_58_matmul_readvariableop_resource:2J
<time_distributed_14_dense_58_biasadd_readvariableop_resource:
identity¢+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp¢*lstm_18/lstm_cell_18/MatMul/ReadVariableOp¢,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp¢lstm_18/while¢+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp¢*lstm_19/lstm_cell_19/MatMul/ReadVariableOp¢,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp¢lstm_19/while¢3time_distributed_14/dense_58/BiasAdd/ReadVariableOp¢2time_distributed_14/dense_58/MatMul/ReadVariableOpC
lstm_18/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_18/strided_sliceStridedSlicelstm_18/Shape:output:0$lstm_18/strided_slice/stack:output:0&lstm_18/strided_slice/stack_1:output:0&lstm_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_18/zeros/packedPacklstm_18/strided_slice:output:0lstm_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_18/zerosFilllstm_18/zeros/packed:output:0lstm_18/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_18/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_18/zeros_1/packedPacklstm_18/strided_slice:output:0!lstm_18/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_18/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_18/zeros_1Filllstm_18/zeros_1/packed:output:0lstm_18/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_18/transpose	Transposeinputslstm_18/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_18/Shape_1Shapelstm_18/transpose:y:0*
T0*
_output_shapes
:g
lstm_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_18/strided_slice_1StridedSlicelstm_18/Shape_1:output:0&lstm_18/strided_slice_1/stack:output:0(lstm_18/strided_slice_1/stack_1:output:0(lstm_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_18/TensorArrayV2TensorListReserve,lstm_18/TensorArrayV2/element_shape:output:0 lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_18/transpose:y:0Flstm_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_18/strided_slice_2StridedSlicelstm_18/transpose:y:0&lstm_18/strided_slice_2/stack:output:0(lstm_18/strided_slice_2/stack_1:output:0(lstm_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_18/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3lstm_18_lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0®
lstm_18/lstm_cell_18/MatMulMatMul lstm_18/strided_slice_2:output:02lstm_18/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0¨
lstm_18/lstm_cell_18/MatMul_1MatMullstm_18/zeros:output:04lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_18/lstm_cell_18/addAddV2%lstm_18/lstm_cell_18/MatMul:product:0'lstm_18/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_18/lstm_cell_18/BiasAddBiasAddlstm_18/lstm_cell_18/add:z:03lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_18/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_18/lstm_cell_18/splitSplit-lstm_18/lstm_cell_18/split/split_dim:output:0%lstm_18/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split~
lstm_18/lstm_cell_18/SigmoidSigmoid#lstm_18/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/Sigmoid_1Sigmoid#lstm_18/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/mulMul"lstm_18/lstm_cell_18/Sigmoid_1:y:0lstm_18/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
lstm_18/lstm_cell_18/ReluRelu#lstm_18/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/mul_1Mul lstm_18/lstm_cell_18/Sigmoid:y:0'lstm_18/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/add_1AddV2lstm_18/lstm_cell_18/mul:z:0lstm_18/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_18/lstm_cell_18/Sigmoid_2Sigmoid#lstm_18/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
lstm_18/lstm_cell_18/Relu_1Relulstm_18/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
lstm_18/lstm_cell_18/mul_2Mul"lstm_18/lstm_cell_18/Sigmoid_2:y:0)lstm_18/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   f
$lstm_18/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_18/TensorArrayV2_1TensorListReserve.lstm_18/TensorArrayV2_1/element_shape:output:0-lstm_18/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_18/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_18/whileWhile#lstm_18/while/loop_counter:output:0)lstm_18/while/maximum_iterations:output:0lstm_18/time:output:0 lstm_18/TensorArrayV2_1:handle:0lstm_18/zeros:output:0lstm_18/zeros_1:output:0 lstm_18/strided_slice_1:output:0?lstm_18/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_18_lstm_cell_18_matmul_readvariableop_resource5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_18_while_body_4138595*&
condR
lstm_18_while_cond_4138594*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   î
*lstm_18/TensorArrayV2Stack/TensorListStackTensorListStacklstm_18/while:output:3Alstm_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsp
lstm_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_18/strided_slice_3StridedSlice3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_18/strided_slice_3/stack:output:0(lstm_18/strided_slice_3/stack_1:output:0(lstm_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_18/transpose_1	Transpose3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_18/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    `
repeat_vector_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :©
repeat_vector_9/ExpandDims
ExpandDims lstm_18/strided_slice_3:output:0'repeat_vector_9/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
repeat_vector_9/stackConst*
_output_shapes
:*
dtype0*!
valueB"         
repeat_vector_9/TileTile#repeat_vector_9/ExpandDims:output:0repeat_vector_9/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_19/ShapeShaperepeat_vector_9/Tile:output:0*
T0*
_output_shapes
:e
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_19/transpose	Transposerepeat_vector_9/Tile:output:0lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:g
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
*lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0®
lstm_19/lstm_cell_19/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0¨
lstm_19/lstm_cell_19/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¤
lstm_19/lstm_cell_19/addAddV2%lstm_19/lstm_cell_19/MatMul:product:0'lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0­
lstm_19/lstm_cell_19/BiasAddBiasAddlstm_19/lstm_cell_19/add:z:03lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈf
$lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_19/lstm_cell_19/splitSplit-lstm_19/lstm_cell_19/split/split_dim:output:0%lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split~
lstm_19/lstm_cell_19/SigmoidSigmoid#lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/Sigmoid_1Sigmoid#lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/mulMul"lstm_19/lstm_cell_19/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
lstm_19/lstm_cell_19/ReluRelu#lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/mul_1Mul lstm_19/lstm_cell_19/Sigmoid:y:0'lstm_19/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/add_1AddV2lstm_19/lstm_cell_19/mul:z:0lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/lstm_cell_19/Sigmoid_2Sigmoid#lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2u
lstm_19/lstm_cell_19/Relu_1Relulstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
lstm_19/lstm_cell_19/mul_2Mul"lstm_19/lstm_cell_19/Sigmoid_2:y:0)lstm_19/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_19_matmul_readvariableop_resource5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_19_while_body_4138739*&
condR
lstm_19_while_cond_4138738*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
!time_distributed_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
time_distributed_14/ReshapeReshapelstm_19/transpose_1:y:0*time_distributed_14/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2®
2time_distributed_14/dense_58/MatMul/ReadVariableOpReadVariableOp;time_distributed_14_dense_58_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Á
#time_distributed_14/dense_58/MatMulMatMul$time_distributed_14/Reshape:output:0:time_distributed_14/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
3time_distributed_14/dense_58/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_14_dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Í
$time_distributed_14/dense_58/BiasAddBiasAdd-time_distributed_14/dense_58/MatMul:product:0;time_distributed_14/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#time_distributed_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      »
time_distributed_14/Reshape_1Reshape-time_distributed_14/dense_58/BiasAdd:output:0,time_distributed_14/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#time_distributed_14/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¡
time_distributed_14/Reshape_2Reshapelstm_19/transpose_1:y:0,time_distributed_14/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
IdentityIdentity&time_distributed_14/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
NoOpNoOp,^lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+^lstm_18/lstm_cell_18/MatMul/ReadVariableOp-^lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp^lstm_18/while,^lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_19/MatMul/ReadVariableOp-^lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^lstm_19/while4^time_distributed_14/dense_58/BiasAdd/ReadVariableOp3^time_distributed_14/dense_58/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp2X
*lstm_18/lstm_cell_18/MatMul/ReadVariableOp*lstm_18/lstm_cell_18/MatMul/ReadVariableOp2\
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp2
lstm_18/whilelstm_18/while2Z
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp*lstm_19/lstm_cell_19/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while2j
3time_distributed_14/dense_58/BiasAdd/ReadVariableOp3time_distributed_14/dense_58/BiasAdd/ReadVariableOp2h
2time_distributed_14/dense_58/MatMul/ReadVariableOp2time_distributed_14/dense_58/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©9
Ñ
while_body_4139084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_18_matmul_readvariableop_resource_0:	H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_18_matmul_readvariableop_resource:	F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_18_biasadd_readvariableop_resource:	¢)while/lstm_cell_18/BiasAdd/ReadVariableOp¢(while/lstm_cell_18/MatMul/ReadVariableOp¢*while/lstm_cell_18/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_18/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_4137571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4137571___redundant_placeholder05
1while_while_cond_4137571___redundant_placeholder15
1while_while_cond_4137571___redundant_placeholder25
1while_while_cond_4137571___redundant_placeholder3
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
º
È
while_cond_4138938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4138938___redundant_placeholder05
1while_while_cond_4138938___redundant_placeholder15
1while_while_cond_4138938___redundant_placeholder25
1while_while_cond_4138938___redundant_placeholder3
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
ð
Ë
#__inference__traced_restore_4140582
file_prefix?
,assignvariableop_lstm_18_lstm_cell_18_kernel:	K
8assignvariableop_1_lstm_18_lstm_cell_18_recurrent_kernel:	d;
,assignvariableop_2_lstm_18_lstm_cell_18_bias:	A
.assignvariableop_3_lstm_19_lstm_cell_19_kernel:	dÈK
8assignvariableop_4_lstm_19_lstm_cell_19_recurrent_kernel:	2È;
,assignvariableop_5_lstm_19_lstm_cell_19_bias:	È?
-assignvariableop_6_time_distributed_14_kernel:29
+assignvariableop_7_time_distributed_14_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: I
6assignvariableop_15_adam_lstm_18_lstm_cell_18_kernel_m:	S
@assignvariableop_16_adam_lstm_18_lstm_cell_18_recurrent_kernel_m:	dC
4assignvariableop_17_adam_lstm_18_lstm_cell_18_bias_m:	I
6assignvariableop_18_adam_lstm_19_lstm_cell_19_kernel_m:	dÈS
@assignvariableop_19_adam_lstm_19_lstm_cell_19_recurrent_kernel_m:	2ÈC
4assignvariableop_20_adam_lstm_19_lstm_cell_19_bias_m:	ÈG
5assignvariableop_21_adam_time_distributed_14_kernel_m:2A
3assignvariableop_22_adam_time_distributed_14_bias_m:I
6assignvariableop_23_adam_lstm_18_lstm_cell_18_kernel_v:	S
@assignvariableop_24_adam_lstm_18_lstm_cell_18_recurrent_kernel_v:	dC
4assignvariableop_25_adam_lstm_18_lstm_cell_18_bias_v:	I
6assignvariableop_26_adam_lstm_19_lstm_cell_19_kernel_v:	dÈS
@assignvariableop_27_adam_lstm_19_lstm_cell_19_recurrent_kernel_v:	2ÈC
4assignvariableop_28_adam_lstm_19_lstm_cell_19_bias_v:	ÈG
5assignvariableop_29_adam_time_distributed_14_kernel_v:2A
3assignvariableop_30_adam_time_distributed_14_bias_v:
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
AssignVariableOpAssignVariableOp,assignvariableop_lstm_18_lstm_cell_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_1AssignVariableOp8assignvariableop_1_lstm_18_lstm_cell_18_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_18_lstm_cell_18_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_lstm_19_lstm_cell_19_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_4AssignVariableOp8assignvariableop_4_lstm_19_lstm_cell_19_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_19_lstm_cell_19_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp-assignvariableop_6_time_distributed_14_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp+assignvariableop_7_time_distributed_14_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp6assignvariableop_15_adam_lstm_18_lstm_cell_18_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_16AssignVariableOp@assignvariableop_16_adam_lstm_18_lstm_cell_18_recurrent_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_lstm_18_lstm_cell_18_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_19_lstm_cell_19_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_19_lstm_cell_19_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_19_lstm_cell_19_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_time_distributed_14_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_22AssignVariableOp3assignvariableop_22_adam_time_distributed_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_18_lstm_cell_18_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_18_lstm_cell_18_recurrent_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_18_lstm_cell_18_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_19_lstm_cell_19_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_19_lstm_cell_19_recurrent_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_19_lstm_cell_19_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_time_distributed_14_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_time_distributed_14_bias_vIdentity_30:output:0"/device:CPU:0*
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
9

D__inference_lstm_18_layer_call_and_return_conditional_losses_4136899

inputs'
lstm_cell_18_4136815:	'
lstm_cell_18_4136817:	d#
lstm_cell_18_4136819:	
identity¢$lstm_cell_18/StatefulPartitionedCall¢while;
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_18_4136815lstm_cell_18_4136817lstm_cell_18_4136819*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4136769n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_18_4136815lstm_cell_18_4136817lstm_cell_18_4136819*
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
bodyR
while_body_4136829*
condR
while_cond_4136828*K
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
NoOpNoOp%^lstm_cell_18/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_18/StatefulPartitionedCall$lstm_cell_18/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬K

D__inference_lstm_18_layer_call_and_return_conditional_losses_4139314

inputs>
+lstm_cell_18_matmul_readvariableop_resource:	@
-lstm_cell_18_matmul_1_readvariableop_resource:	d;
,lstm_cell_18_biasadd_readvariableop_resource:	
identity¢#lstm_cell_18/BiasAdd/ReadVariableOp¢"lstm_cell_18/MatMul/ReadVariableOp¢$lstm_cell_18/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
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
bodyR
while_body_4139229*
condR
while_cond_4139228*K
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
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
Ö
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137347

inputs"
dense_58_4137337:2
dense_58_4137339:
identity¢ dense_58/StatefulPartitionedCall;
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
:ÿÿÿÿÿÿÿÿÿ2ý
 dense_58/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_58_4137337dense_58_4137339*
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
GPU 2J 8 *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_4137297\
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
:
	Reshape_1Reshape)dense_58/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
NoOpNoOp!^dense_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

¥
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140127

inputs9
'dense_58_matmul_readvariableop_resource:26
(dense_58_biasadd_readvariableop_resource:
identity¢dense_58/BiasAdd/ReadVariableOp¢dense_58/MatMul/ReadVariableOp;
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
:ÿÿÿÿÿÿÿÿÿ2
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_58/MatMulMatMulReshape:output:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
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
:
	Reshape_1Reshapedense_58/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
©9
Ñ
while_body_4137929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_18_matmul_readvariableop_resource_0:	H
5while_lstm_cell_18_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_18_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_18_matmul_readvariableop_resource:	F
3while_lstm_cell_18_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_18_biasadd_readvariableop_resource:	¢)while/lstm_cell_18/BiasAdd/ReadVariableOp¢(while/lstm_cell_18/MatMul/ReadVariableOp¢*while/lstm_cell_18/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_18/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 
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
äJ

D__inference_lstm_19_layer_call_and_return_conditional_losses_4139659
inputs_0>
+lstm_cell_19_matmul_readvariableop_resource:	dÈ@
-lstm_cell_19_matmul_1_readvariableop_resource:	2È;
,lstm_cell_19_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_19/BiasAdd/ReadVariableOp¢"lstm_cell_19/MatMul/ReadVariableOp¢$lstm_cell_19/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
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
bodyR
while_body_4139575*
condR
while_cond_4139574*K
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
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
º
È
while_cond_4139228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4139228___redundant_placeholder05
1while_while_cond_4139228___redundant_placeholder15
1while_while_cond_4139228___redundant_placeholder25
1while_while_cond_4139228___redundant_placeholder3
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
¬K

D__inference_lstm_18_layer_call_and_return_conditional_losses_4138014

inputs>
+lstm_cell_18_matmul_readvariableop_resource:	@
-lstm_cell_18_matmul_1_readvariableop_resource:	d;
,lstm_cell_18_biasadd_readvariableop_resource:	
identity¢#lstm_cell_18/BiasAdd/ReadVariableOp¢"lstm_cell_18/MatMul/ReadVariableOp¢$lstm_cell_18/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
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
bodyR
while_body_4137929*
condR
while_cond_4137928*K
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
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÏK

D__inference_lstm_18_layer_call_and_return_conditional_losses_4139024
inputs_0>
+lstm_cell_18_matmul_readvariableop_resource:	@
-lstm_cell_18_matmul_1_readvariableop_resource:	d;
,lstm_cell_18_biasadd_readvariableop_resource:	
identity¢#lstm_cell_18/BiasAdd/ReadVariableOp¢"lstm_cell_18/MatMul/ReadVariableOp¢$lstm_cell_18/MatMul_1/ReadVariableOp¢while=
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
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
bodyR
while_body_4138939*
condR
while_cond_4138938*K
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
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
í
÷
.__inference_lstm_cell_19_layer_call_fn_4140263

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCall©
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4136990o
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
í
÷
.__inference_lstm_cell_19_layer_call_fn_4140280

inputs
states_0
states_1
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity

identity_1

identity_2¢StatefulPartitionedCall©
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4137136o
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
º
È
while_cond_4139860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4139860___redundant_placeholder05
1while_while_cond_4139860___redundant_placeholder15
1while_while_cond_4139860___redundant_placeholder25
1while_while_cond_4139860___redundant_placeholder3
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

¢
5__inference_time_distributed_14_layer_call_fn_4140106

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallò
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
GPU 2J 8 *Y
fTRR
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4137347|
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

¶
)__inference_lstm_19_layer_call_fn_4139516

inputs
unknown:	dÈ
	unknown_0:	2È
	unknown_1:	È
identity¢StatefulPartitionedCallê
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
GPU 2J 8 *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_4137847s
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
º
È
while_cond_4140003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4140003___redundant_placeholder05
1while_while_cond_4140003___redundant_placeholder15
1while_while_cond_4140003___redundant_placeholder25
1while_while_cond_4140003___redundant_placeholder3
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
ÆA
Ñ

lstm_19_while_body_4138439,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0:	dÈP
=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0:	2ÈK
<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0:	È
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorL
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource:	dÈN
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource:	2ÈI
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource:	È¢1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp¢0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp¢2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ò
!lstm_19/while/lstm_cell_19/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ±
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¹
#lstm_19/while/lstm_cell_19/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¶
lstm_19/while/lstm_cell_19/addAddV2+lstm_19/while/lstm_cell_19/MatMul:product:0-lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ«
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0¿
"lstm_19/while/lstm_cell_19/BiasAddBiasAdd"lstm_19/while/lstm_cell_19/add:z:09lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈl
*lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_19/while/lstm_cell_19/splitSplit3lstm_19/while/lstm_cell_19/split/split_dim:output:0+lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
"lstm_19/while/lstm_cell_19/SigmoidSigmoid)lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/while/lstm_cell_19/mulMul(lstm_19/while/lstm_cell_19/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/while/lstm_cell_19/ReluRelu)lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
 lstm_19/while/lstm_cell_19/mul_1Mul&lstm_19/while/lstm_cell_19/Sigmoid:y:0-lstm_19/while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
 lstm_19/while/lstm_cell_19/add_1AddV2"lstm_19/while/lstm_cell_19/mul:z:0$lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!lstm_19/while/lstm_cell_19/Relu_1Relu$lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
 lstm_19/while/lstm_cell_19/mul_2Mul(lstm_19/while/lstm_cell_19/Sigmoid_2:y:0/lstm_19/while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2å
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: q
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_19/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_19/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ð
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"È
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2f
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 
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
ù	
Ï
/__inference_sequential_27_layer_call_fn_4138112
lstm_18_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138072s
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
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_18_input
8

D__inference_lstm_19_layer_call_and_return_conditional_losses_4137073

inputs'
lstm_cell_19_4136991:	dÈ'
lstm_cell_19_4136993:	2È#
lstm_cell_19_4136995:	È
identity¢$lstm_cell_19/StatefulPartitionedCall¢while;
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
shrink_axis_maskù
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_4136991lstm_cell_19_4136993lstm_cell_19_4136995*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4136990n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_4136991lstm_cell_19_4136993lstm_cell_19_4136995*
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
bodyR
while_body_4137004*
condR
while_cond_4137003*K
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
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


è
lstm_19_while_cond_4138438,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1E
Alstm_19_while_lstm_19_while_cond_4138438___redundant_placeholder0E
Alstm_19_while_lstm_19_while_cond_4138438___redundant_placeholder1E
Alstm_19_while_lstm_19_while_cond_4138438___redundant_placeholder2E
Alstm_19_while_lstm_19_while_cond_4138438___redundant_placeholder3
lstm_19_while_identity

lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: [
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
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
lstm_18_input:
serving_default_lstm_18_input:0ÿÿÿÿÿÿÿÿÿK
time_distributed_144
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:²
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
ò
:trace_0
;trace_1
<trace_2
=trace_32
/__inference_sequential_27_layer_call_fn_4137691
/__inference_sequential_27_layer_call_fn_4138214
/__inference_sequential_27_layer_call_fn_4138235
/__inference_sequential_27_layer_call_fn_4138112À
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
Þ
>trace_0
?trace_1
@trace_2
Atrace_32ó
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138535
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138835
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138138
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138164À
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
ÓBÐ
"__inference__wrapped_model_4136554lstm_18_input"
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
ï
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32
)__inference_lstm_18_layer_call_fn_4138846
)__inference_lstm_18_layer_call_fn_4138857
)__inference_lstm_18_layer_call_fn_4138868
)__inference_lstm_18_layer_call_fn_4138879Õ
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
Û
Rtrace_0
Strace_1
Ttrace_2
Utrace_32ð
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139024
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139169
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139314
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139459Õ
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
õ
ctrace_02Ø
1__inference_repeat_vector_9_layer_call_fn_4139464¢
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

dtrace_02ó
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4139472¢
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
ï
ktrace_0
ltrace_1
mtrace_2
ntrace_32
)__inference_lstm_19_layer_call_fn_4139483
)__inference_lstm_19_layer_call_fn_4139494
)__inference_lstm_19_layer_call_fn_4139505
)__inference_lstm_19_layer_call_fn_4139516Õ
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
Û
otrace_0
ptrace_1
qtrace_2
rtrace_32ð
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139659
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139802
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139945
D__inference_lstm_19_layer_call_and_return_conditional_losses_4140088Õ
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
ì
trace_0
trace_12±
5__inference_time_distributed_14_layer_call_fn_4140097
5__inference_time_distributed_14_layer_call_fn_4140106À
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
¢
trace_0
trace_12ç
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140127
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140148À
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
.:,	2lstm_18/lstm_cell_18/kernel
8:6	d2%lstm_18/lstm_cell_18/recurrent_kernel
(:&2lstm_18/lstm_cell_18/bias
.:,	dÈ2lstm_19/lstm_cell_19/kernel
8:6	2È2%lstm_19/lstm_cell_19/recurrent_kernel
(:&È2lstm_19/lstm_cell_19/bias
,:*22time_distributed_14/kernel
&:$2time_distributed_14/bias
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
B
/__inference_sequential_27_layer_call_fn_4137691lstm_18_input"À
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
Bþ
/__inference_sequential_27_layer_call_fn_4138214inputs"À
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
Bþ
/__inference_sequential_27_layer_call_fn_4138235inputs"À
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
/__inference_sequential_27_layer_call_fn_4138112lstm_18_input"À
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
B
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138535inputs"À
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
B
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138835inputs"À
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138138lstm_18_input"À
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138164lstm_18_input"À
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
ÒBÏ
%__inference_signature_wrapper_4138193lstm_18_input"
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
B
)__inference_lstm_18_layer_call_fn_4138846inputs/0"Õ
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
B
)__inference_lstm_18_layer_call_fn_4138857inputs/0"Õ
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
B
)__inference_lstm_18_layer_call_fn_4138868inputs"Õ
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
B
)__inference_lstm_18_layer_call_fn_4138879inputs"Õ
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
­Bª
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139024inputs/0"Õ
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
­Bª
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139169inputs/0"Õ
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
«B¨
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139314inputs"Õ
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
«B¨
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139459inputs"Õ
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
Ü
trace_0
trace_12¡
.__inference_lstm_cell_18_layer_call_fn_4140165
.__inference_lstm_cell_18_layer_call_fn_4140182¾
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

trace_0
trace_12×
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140214
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140246¾
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
åBâ
1__inference_repeat_vector_9_layer_call_fn_4139464inputs"¢
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
Bý
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4139472inputs"¢
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
B
)__inference_lstm_19_layer_call_fn_4139483inputs/0"Õ
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
B
)__inference_lstm_19_layer_call_fn_4139494inputs/0"Õ
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
B
)__inference_lstm_19_layer_call_fn_4139505inputs"Õ
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
B
)__inference_lstm_19_layer_call_fn_4139516inputs"Õ
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
­Bª
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139659inputs/0"Õ
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
­Bª
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139802inputs/0"Õ
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
«B¨
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139945inputs"Õ
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
«B¨
D__inference_lstm_19_layer_call_and_return_conditional_losses_4140088inputs"Õ
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
Ü
trace_0
trace_12¡
.__inference_lstm_cell_19_layer_call_fn_4140263
.__inference_lstm_cell_19_layer_call_fn_4140280¾
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

trace_0
trace_12×
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140312
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140344¾
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
B
5__inference_time_distributed_14_layer_call_fn_4140097inputs"À
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
B
5__inference_time_distributed_14_layer_call_fn_4140106inputs"À
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
¢B
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140127inputs"À
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
¢B
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140148inputs"À
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
ð
¢trace_02Ñ
*__inference_dense_58_layer_call_fn_4140353¢
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

£trace_02ì
E__inference_dense_58_layer_call_and_return_conditional_losses_4140363¢
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
B
.__inference_lstm_cell_18_layer_call_fn_4140165inputsstates/0states/1"¾
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
B
.__inference_lstm_cell_18_layer_call_fn_4140182inputsstates/0states/1"¾
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
­Bª
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140214inputsstates/0states/1"¾
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
­Bª
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140246inputsstates/0states/1"¾
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
B
.__inference_lstm_cell_19_layer_call_fn_4140263inputsstates/0states/1"¾
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
B
.__inference_lstm_cell_19_layer_call_fn_4140280inputsstates/0states/1"¾
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
­Bª
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140312inputsstates/0states/1"¾
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
­Bª
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140344inputsstates/0states/1"¾
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
ÞBÛ
*__inference_dense_58_layer_call_fn_4140353inputs"¢
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
ùBö
E__inference_dense_58_layer_call_and_return_conditional_losses_4140363inputs"¢
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
3:1	2"Adam/lstm_18/lstm_cell_18/kernel/m
=:;	d2,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m
-:+2 Adam/lstm_18/lstm_cell_18/bias/m
3:1	dÈ2"Adam/lstm_19/lstm_cell_19/kernel/m
=:;	2È2,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m
-:+È2 Adam/lstm_19/lstm_cell_19/bias/m
1:/22!Adam/time_distributed_14/kernel/m
+:)2Adam/time_distributed_14/bias/m
3:1	2"Adam/lstm_18/lstm_cell_18/kernel/v
=:;	d2,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v
-:+2 Adam/lstm_18/lstm_cell_18/bias/v
3:1	dÈ2"Adam/lstm_19/lstm_cell_19/kernel/v
=:;	2È2,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v
-:+È2 Adam/lstm_19/lstm_cell_19/bias/v
1:/22!Adam/time_distributed_14/kernel/v
+:)2Adam/time_distributed_14/bias/v¼
"__inference__wrapped_model_4136554-./01234:¢7
0¢-
+(
lstm_18_inputÿÿÿÿÿÿÿÿÿ
ª "MªJ
H
time_distributed_141.
time_distributed_14ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_58_layer_call_and_return_conditional_losses_4140363\34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_58_layer_call_fn_4140353O34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿÅ
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139024}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 Å
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139169}-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 µ
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139314m-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 µ
D__inference_lstm_18_layer_call_and_return_conditional_losses_4139459m-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
)__inference_lstm_18_layer_call_fn_4138846p-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_18_layer_call_fn_4138857p-./O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_18_layer_call_fn_4138868`-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_18_layer_call_fn_4138879`-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139659012O¢L
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
 Ó
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139802012O¢L
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
 ¹
D__inference_lstm_19_layer_call_and_return_conditional_losses_4139945q012?¢<
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
 ¹
D__inference_lstm_19_layer_call_and_return_conditional_losses_4140088q012?¢<
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
 ª
)__inference_lstm_19_layer_call_fn_4139483}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2ª
)__inference_lstm_19_layer_call_fn_4139494}012O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_19_layer_call_fn_4139505d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_19_layer_call_fn_4139516d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Ë
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140214ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
 Ë
I__inference_lstm_cell_18_layer_call_and_return_conditional_losses_4140246ý-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
  
.__inference_lstm_cell_18_layer_call_fn_4140165í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
1/1ÿÿÿÿÿÿÿÿÿd 
.__inference_lstm_cell_18_layer_call_fn_4140182í-./¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
1/1ÿÿÿÿÿÿÿÿÿdË
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140312ý012¢}
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
 Ë
I__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4140344ý012¢}
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
  
.__inference_lstm_cell_19_layer_call_fn_4140263í012¢}
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
1/1ÿÿÿÿÿÿÿÿÿ2 
.__inference_lstm_cell_19_layer_call_fn_4140280í012¢}
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
1/1ÿÿÿÿÿÿÿÿÿ2¾
L__inference_repeat_vector_9_layer_call_and_return_conditional_losses_4139472n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
1__inference_repeat_vector_9_layer_call_fn_4139464a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÇ
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138138y-./01234B¢?
8¢5
+(
lstm_18_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ç
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138164y-./01234B¢?
8¢5
+(
lstm_18_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 À
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138535r-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 À
J__inference_sequential_27_layer_call_and_return_conditional_losses_4138835r-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_27_layer_call_fn_4137691l-./01234B¢?
8¢5
+(
lstm_18_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_27_layer_call_fn_4138112l-./01234B¢?
8¢5
+(
lstm_18_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_27_layer_call_fn_4138214e-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_27_layer_call_fn_4138235e-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÐ
%__inference_signature_wrapper_4138193¦-./01234K¢H
¢ 
Aª>
<
lstm_18_input+(
lstm_18_inputÿÿÿÿÿÿÿÿÿ"MªJ
H
time_distributed_141.
time_distributed_14ÿÿÿÿÿÿÿÿÿÒ
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140127~34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
P__inference_time_distributed_14_layer_call_and_return_conditional_losses_4140148~34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
5__inference_time_distributed_14_layer_call_fn_4140097q34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
5__inference_time_distributed_14_layer_call_fn_4140106q34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ