Æ#
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
"serve*2.9.22v2.9.1-132-g18960c44ad38Ë 

Adam/time_distributed_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_23/bias/v

3Adam/time_distributed_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed_23/bias/v*
_output_shapes
:*
dtype0

!Adam/time_distributed_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*2
shared_name#!Adam/time_distributed_23/kernel/v

5Adam/time_distributed_23/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_23/kernel/v*
_output_shapes

:2*
dtype0

 Adam/lstm_31/lstm_cell_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_31/lstm_cell_31/bias/v

4Adam/lstm_31/lstm_cell_31/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_31/lstm_cell_31/bias/v*
_output_shapes	
:È*
dtype0
µ
,Adam/lstm_31/lstm_cell_31/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v
®
@Adam/lstm_31/lstm_cell_31/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0
¡
"Adam/lstm_31/lstm_cell_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_31/lstm_cell_31/kernel/v

6Adam/lstm_31/lstm_cell_31/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_31/lstm_cell_31/kernel/v*
_output_shapes
:	dÈ*
dtype0

 Adam/lstm_30/lstm_cell_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_30/lstm_cell_30/bias/v

4Adam/lstm_30/lstm_cell_30/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_30/lstm_cell_30/bias/v*
_output_shapes	
:*
dtype0
µ
,Adam/lstm_30/lstm_cell_30/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v
®
@Adam/lstm_30/lstm_cell_30/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v*
_output_shapes
:	d*
dtype0
¡
"Adam/lstm_30/lstm_cell_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_30/lstm_cell_30/kernel/v

6Adam/lstm_30/lstm_cell_30/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_30/lstm_cell_30/kernel/v*
_output_shapes
:	*
dtype0

Adam/time_distributed_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/time_distributed_23/bias/m

3Adam/time_distributed_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed_23/bias/m*
_output_shapes
:*
dtype0

!Adam/time_distributed_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*2
shared_name#!Adam/time_distributed_23/kernel/m

5Adam/time_distributed_23/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/time_distributed_23/kernel/m*
_output_shapes

:2*
dtype0

 Adam/lstm_31/lstm_cell_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*1
shared_name" Adam/lstm_31/lstm_cell_31/bias/m

4Adam/lstm_31/lstm_cell_31/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_31/lstm_cell_31/bias/m*
_output_shapes	
:È*
dtype0
µ
,Adam/lstm_31/lstm_cell_31/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*=
shared_name.,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m
®
@Adam/lstm_31/lstm_cell_31/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0
¡
"Adam/lstm_31/lstm_cell_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*3
shared_name$"Adam/lstm_31/lstm_cell_31/kernel/m

6Adam/lstm_31/lstm_cell_31/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_31/lstm_cell_31/kernel/m*
_output_shapes
:	dÈ*
dtype0

 Adam/lstm_30/lstm_cell_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_30/lstm_cell_30/bias/m

4Adam/lstm_30/lstm_cell_30/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_30/lstm_cell_30/bias/m*
_output_shapes	
:*
dtype0
µ
,Adam/lstm_30/lstm_cell_30/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m
®
@Adam/lstm_30/lstm_cell_30/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m*
_output_shapes
:	d*
dtype0
¡
"Adam/lstm_30/lstm_cell_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_30/lstm_cell_30/kernel/m

6Adam/lstm_30/lstm_cell_30/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_30/lstm_cell_30/kernel/m*
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
time_distributed_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nametime_distributed_23/bias

,time_distributed_23/bias/Read/ReadVariableOpReadVariableOptime_distributed_23/bias*
_output_shapes
:*
dtype0

time_distributed_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*+
shared_nametime_distributed_23/kernel

.time_distributed_23/kernel/Read/ReadVariableOpReadVariableOptime_distributed_23/kernel*
_output_shapes

:2*
dtype0

lstm_31/lstm_cell_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È**
shared_namelstm_31/lstm_cell_31/bias

-lstm_31/lstm_cell_31/bias/Read/ReadVariableOpReadVariableOplstm_31/lstm_cell_31/bias*
_output_shapes	
:È*
dtype0
§
%lstm_31/lstm_cell_31/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*6
shared_name'%lstm_31/lstm_cell_31/recurrent_kernel
 
9lstm_31/lstm_cell_31/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_31/lstm_cell_31/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_31/lstm_cell_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dÈ*,
shared_namelstm_31/lstm_cell_31/kernel

/lstm_31/lstm_cell_31/kernel/Read/ReadVariableOpReadVariableOplstm_31/lstm_cell_31/kernel*
_output_shapes
:	dÈ*
dtype0

lstm_30/lstm_cell_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_30/lstm_cell_30/bias

-lstm_30/lstm_cell_30/bias/Read/ReadVariableOpReadVariableOplstm_30/lstm_cell_30/bias*
_output_shapes	
:*
dtype0
§
%lstm_30/lstm_cell_30/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_30/lstm_cell_30/recurrent_kernel
 
9lstm_30/lstm_cell_30/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_30/lstm_cell_30/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_30/lstm_cell_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_30/lstm_cell_30/kernel

/lstm_30/lstm_cell_30/kernel/Read/ReadVariableOpReadVariableOplstm_30/lstm_cell_30/kernel*
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
VARIABLE_VALUElstm_30/lstm_cell_30/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_30/lstm_cell_30/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_30/lstm_cell_30/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_31/lstm_cell_31/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_31/lstm_cell_31/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_31/lstm_cell_31/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEtime_distributed_23/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEtime_distributed_23/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE"Adam/lstm_30/lstm_cell_30/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_30/lstm_cell_30/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_30/lstm_cell_30/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_31/lstm_cell_31/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_31/lstm_cell_31/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_31/lstm_cell_31/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/time_distributed_23/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_23/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_30/lstm_cell_30/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_30/lstm_cell_30/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_30/lstm_cell_30/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_31/lstm_cell_31/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_31/lstm_cell_31/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_31/lstm_cell_31/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/time_distributed_23/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/time_distributed_23/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_30_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Á
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_30_inputlstm_30/lstm_cell_30/kernel%lstm_30/lstm_cell_30/recurrent_kernellstm_30/lstm_cell_30/biaslstm_31/lstm_cell_31/kernel%lstm_31/lstm_cell_31/recurrent_kernellstm_31/lstm_cell_31/biastime_distributed_23/kerneltime_distributed_23/bias*
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
%__inference_signature_wrapper_7747347
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Æ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/lstm_30/lstm_cell_30/kernel/Read/ReadVariableOp9lstm_30/lstm_cell_30/recurrent_kernel/Read/ReadVariableOp-lstm_30/lstm_cell_30/bias/Read/ReadVariableOp/lstm_31/lstm_cell_31/kernel/Read/ReadVariableOp9lstm_31/lstm_cell_31/recurrent_kernel/Read/ReadVariableOp-lstm_31/lstm_cell_31/bias/Read/ReadVariableOp.time_distributed_23/kernel/Read/ReadVariableOp,time_distributed_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp6Adam/lstm_30/lstm_cell_30/kernel/m/Read/ReadVariableOp@Adam/lstm_30/lstm_cell_30/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_30/lstm_cell_30/bias/m/Read/ReadVariableOp6Adam/lstm_31/lstm_cell_31/kernel/m/Read/ReadVariableOp@Adam/lstm_31/lstm_cell_31/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_31/lstm_cell_31/bias/m/Read/ReadVariableOp5Adam/time_distributed_23/kernel/m/Read/ReadVariableOp3Adam/time_distributed_23/bias/m/Read/ReadVariableOp6Adam/lstm_30/lstm_cell_30/kernel/v/Read/ReadVariableOp@Adam/lstm_30/lstm_cell_30/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_30/lstm_cell_30/bias/v/Read/ReadVariableOp6Adam/lstm_31/lstm_cell_31/kernel/v/Read/ReadVariableOp@Adam/lstm_31/lstm_cell_31/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_31/lstm_cell_31/bias/v/Read/ReadVariableOp5Adam/time_distributed_23/kernel/v/Read/ReadVariableOp3Adam/time_distributed_23/bias/v/Read/ReadVariableOpConst*,
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
 __inference__traced_save_7749633
Õ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelstm_30/lstm_cell_30/kernel%lstm_30/lstm_cell_30/recurrent_kernellstm_30/lstm_cell_30/biaslstm_31/lstm_cell_31/kernel%lstm_31/lstm_cell_31/recurrent_kernellstm_31/lstm_cell_31/biastime_distributed_23/kerneltime_distributed_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount"Adam/lstm_30/lstm_cell_30/kernel/m,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m Adam/lstm_30/lstm_cell_30/bias/m"Adam/lstm_31/lstm_cell_31/kernel/m,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m Adam/lstm_31/lstm_cell_31/bias/m!Adam/time_distributed_23/kernel/mAdam/time_distributed_23/bias/m"Adam/lstm_30/lstm_cell_30/kernel/v,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v Adam/lstm_30/lstm_cell_30/bias/v"Adam/lstm_31/lstm_cell_31/kernel/v,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v Adam/lstm_31/lstm_cell_31/bias/v!Adam/time_distributed_23/kernel/vAdam/time_distributed_23/bias/v*+
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
#__inference__traced_restore_7749736²
º
È
while_cond_7746573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7746573___redundant_placeholder05
1while_while_cond_7746573___redundant_placeholder15
1while_while_cond_7746573___redundant_placeholder25
1while_while_cond_7746573___redundant_placeholder3
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


J__inference_sequential_46_layer_call_and_return_conditional_losses_7747226

inputs"
lstm_30_7747203:	"
lstm_30_7747205:	d
lstm_30_7747207:	"
lstm_31_7747211:	dÈ"
lstm_31_7747213:	2È
lstm_31_7747215:	È-
time_distributed_23_7747218:2)
time_distributed_23_7747220:
identity¢lstm_30/StatefulPartitionedCall¢lstm_31/StatefulPartitionedCall¢+time_distributed_23/StatefulPartitionedCall
lstm_30/StatefulPartitionedCallStatefulPartitionedCallinputslstm_30_7747203lstm_30_7747205lstm_30_7747207*
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7747168ï
 repeat_vector_15/PartitionedCallPartitionedCall(lstm_30/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *V
fQRO
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7746074©
lstm_31/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_15/PartitionedCall:output:0lstm_31_7747211lstm_31_7747213lstm_31_7747215*
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7747001Å
+time_distributed_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0time_distributed_23_7747218time_distributed_23_7747220*
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746501r
!time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_23/ReshapeReshape(lstm_31/StatefulPartitionedCall:output:0*time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_23/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall,^time_distributed_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2Z
+time_distributed_23/StatefulPartitionedCall+time_distributed_23/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
äJ

D__inference_lstm_31_layer_call_and_return_conditional_losses_7748813
inputs_0>
+lstm_cell_31_matmul_readvariableop_resource:	dÈ@
-lstm_cell_31_matmul_1_readvariableop_resource:	2È;
,lstm_cell_31_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_31/BiasAdd/ReadVariableOp¢"lstm_cell_31/MatMul/ReadVariableOp¢$lstm_cell_31/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_31/MatMul/ReadVariableOpReadVariableOp+lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_31/MatMulMatMulstrided_slice_2:output:0*lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_31/MatMul_1MatMulzeros:output:0,lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_31/addAddV2lstm_cell_31/MatMul:product:0lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_31/BiasAddBiasAddlstm_cell_31/add:z:0+lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_31/splitSplit%lstm_cell_31/split/split_dim:output:0lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_31/SigmoidSigmoidlstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_1Sigmoidlstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_31/mulMullstm_cell_31/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_31/ReluRelulstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_1Mullstm_cell_31/Sigmoid:y:0lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_31/add_1AddV2lstm_cell_31/mul:z:0lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_2Sigmoidlstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_31/Relu_1Relulstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_2Mullstm_cell_31/Sigmoid_2:y:0!lstm_cell_31/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_31_matmul_readvariableop_resource-lstm_cell_31_matmul_1_readvariableop_resource,lstm_cell_31_biasadd_readvariableop_resource*
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
while_body_7748729*
condR
while_cond_7748728*K
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
NoOpNoOp$^lstm_cell_31/BiasAdd/ReadVariableOp#^lstm_cell_31/MatMul/ReadVariableOp%^lstm_cell_31/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_31/BiasAdd/ReadVariableOp#lstm_cell_31/BiasAdd/ReadVariableOp2H
"lstm_cell_31/MatMul/ReadVariableOp"lstm_cell_31/MatMul/ReadVariableOp2L
$lstm_cell_31/MatMul_1/ReadVariableOp$lstm_cell_31/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0


è
lstm_30_while_cond_7747448,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3.
*lstm_30_while_less_lstm_30_strided_slice_1E
Alstm_30_while_lstm_30_while_cond_7747448___redundant_placeholder0E
Alstm_30_while_lstm_30_while_cond_7747448___redundant_placeholder1E
Alstm_30_while_lstm_30_while_cond_7747448___redundant_placeholder2E
Alstm_30_while_lstm_30_while_cond_7747448___redundant_placeholder3
lstm_30_while_identity

lstm_30/while/LessLesslstm_30_while_placeholder*lstm_30_while_less_lstm_30_strided_slice_1*
T0*
_output_shapes
: [
lstm_30/while/IdentityIdentitylstm_30/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_30_while_identitylstm_30/while/Identity:output:0*(
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
°

J__inference_sequential_46_layer_call_and_return_conditional_losses_7747292
lstm_30_input"
lstm_30_7747269:	"
lstm_30_7747271:	d
lstm_30_7747273:	"
lstm_31_7747277:	dÈ"
lstm_31_7747279:	2È
lstm_31_7747281:	È-
time_distributed_23_7747284:2)
time_distributed_23_7747286:
identity¢lstm_30/StatefulPartitionedCall¢lstm_31/StatefulPartitionedCall¢+time_distributed_23/StatefulPartitionedCall
lstm_30/StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputlstm_30_7747269lstm_30_7747271lstm_30_7747273*
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7746659ï
 repeat_vector_15/PartitionedCallPartitionedCall(lstm_30/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *V
fQRO
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7746074©
lstm_31/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_15/PartitionedCall:output:0lstm_31_7747277lstm_31_7747279lstm_31_7747281*
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7746810Å
+time_distributed_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0time_distributed_23_7747284time_distributed_23_7747286*
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746462r
!time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_23/ReshapeReshape(lstm_31/StatefulPartitionedCall:output:0*time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_23/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall,^time_distributed_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2Z
+time_distributed_23/StatefulPartitionedCall+time_distributed_23/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_30_input
½
i
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7746074

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
Þ

I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749466

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

¢
5__inference_time_distributed_23_layer_call_fn_7749251

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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746462|
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749242

inputs>
+lstm_cell_31_matmul_readvariableop_resource:	dÈ@
-lstm_cell_31_matmul_1_readvariableop_resource:	2È;
,lstm_cell_31_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_31/BiasAdd/ReadVariableOp¢"lstm_cell_31/MatMul/ReadVariableOp¢$lstm_cell_31/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_31/MatMul/ReadVariableOpReadVariableOp+lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_31/MatMulMatMulstrided_slice_2:output:0*lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_31/MatMul_1MatMulzeros:output:0,lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_31/addAddV2lstm_cell_31/MatMul:product:0lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_31/BiasAddBiasAddlstm_cell_31/add:z:0+lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_31/splitSplit%lstm_cell_31/split/split_dim:output:0lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_31/SigmoidSigmoidlstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_1Sigmoidlstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_31/mulMullstm_cell_31/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_31/ReluRelulstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_1Mullstm_cell_31/Sigmoid:y:0lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_31/add_1AddV2lstm_cell_31/mul:z:0lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_2Sigmoidlstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_31/Relu_1Relulstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_2Mullstm_cell_31/Sigmoid_2:y:0!lstm_cell_31/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_31_matmul_readvariableop_resource-lstm_cell_31_matmul_1_readvariableop_resource,lstm_cell_31_biasadd_readvariableop_resource*
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
while_body_7749158*
condR
while_cond_7749157*K
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
NoOpNoOp$^lstm_cell_31/BiasAdd/ReadVariableOp#^lstm_cell_31/MatMul/ReadVariableOp%^lstm_cell_31/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_31/BiasAdd/ReadVariableOp#lstm_cell_31/BiasAdd/ReadVariableOp2H
"lstm_cell_31/MatMul/ReadVariableOp"lstm_cell_31/MatMul/ReadVariableOp2L
$lstm_cell_31/MatMul_1/ReadVariableOp$lstm_cell_31/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
½
i
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7748626

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
Ö

I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745775

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
Ã
Ù
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746462

inputs#
dense_100_7746452:2
dense_100_7746454:
identity¢!dense_100/StatefulPartitionedCall;
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
:ÿÿÿÿÿÿÿÿÿ2
!dense_100/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_100_7746452dense_100_7746454*
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
GPU 2J 8 *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_7746451\
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
	Reshape_1Reshape*dense_100/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
NoOpNoOp"^dense_100/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Æ

+__inference_dense_100_layer_call_fn_7749507

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallÛ
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
GPU 2J 8 *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_7746451o
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


è
lstm_31_while_cond_7747892,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3.
*lstm_31_while_less_lstm_31_strided_slice_1E
Alstm_31_while_lstm_31_while_cond_7747892___redundant_placeholder0E
Alstm_31_while_lstm_31_while_cond_7747892___redundant_placeholder1E
Alstm_31_while_lstm_31_while_cond_7747892___redundant_placeholder2E
Alstm_31_while_lstm_31_while_cond_7747892___redundant_placeholder3
lstm_31_while_identity

lstm_31/while/LessLesslstm_31_while_placeholder*lstm_31_while_less_lstm_31_strided_slice_1*
T0*
_output_shapes
: [
lstm_31/while/IdentityIdentitylstm_31/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_31_while_identitylstm_31/while/Identity:output:0*(
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
©9
Ñ
while_body_7746574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_30_matmul_readvariableop_resource_0:	H
5while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_30_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_30_matmul_readvariableop_resource:	F
3while_lstm_cell_30_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_30_biasadd_readvariableop_resource:	¢)while/lstm_cell_30/BiasAdd/ReadVariableOp¢(while/lstm_cell_30/MatMul/ReadVariableOp¢*while/lstm_cell_30/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_30/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_30/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_30/addAddV2#while/lstm_cell_30/MatMul:product:0%while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_30/BiasAddBiasAddwhile/lstm_cell_30/add:z:01while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_30/splitSplit+while/lstm_cell_30/split/split_dim:output:0#while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_30/SigmoidSigmoid!while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_1Sigmoid!while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mulMul while/lstm_cell_30/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_30/ReluRelu!while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_1Mulwhile/lstm_cell_30/Sigmoid:y:0%while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/add_1AddV2while/lstm_cell_30/mul:z:0while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_2Sigmoid!while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_30/Relu_1Reluwhile/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_2Mul while/lstm_cell_30/Sigmoid_2:y:0'while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_30/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_30/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_30/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_30/BiasAdd/ReadVariableOp)^while/lstm_cell_30/MatMul/ReadVariableOp+^while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_30_biasadd_readvariableop_resource4while_lstm_cell_30_biasadd_readvariableop_resource_0"l
3while_lstm_cell_30_matmul_1_readvariableop_resource5while_lstm_cell_30_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_30_matmul_readvariableop_resource3while_lstm_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_30/BiasAdd/ReadVariableOp)while/lstm_cell_30/BiasAdd/ReadVariableOp2T
(while/lstm_cell_30/MatMul/ReadVariableOp(while/lstm_cell_30/MatMul/ReadVariableOp2X
*while/lstm_cell_30/MatMul_1/ReadVariableOp*while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
while_cond_7746157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7746157___redundant_placeholder05
1while_while_cond_7746157___redundant_placeholder15
1while_while_cond_7746157___redundant_placeholder25
1while_while_cond_7746157___redundant_placeholder3
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
while_cond_7748527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7748527___redundant_placeholder05
1while_while_cond_7748527___redundant_placeholder15
1while_while_cond_7748527___redundant_placeholder25
1while_while_cond_7748527___redundant_placeholder3
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

©
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749302

inputs:
(dense_100_matmul_readvariableop_resource:27
)dense_100_biasadd_readvariableop_resource:
identity¢ dense_100/BiasAdd/ReadVariableOp¢dense_100/MatMul/ReadVariableOp;
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
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_100/MatMulMatMulReshape:output:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
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
	Reshape_1Reshapedense_100/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

©
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749281

inputs:
(dense_100_matmul_readvariableop_resource:27
)dense_100_biasadd_readvariableop_resource:
identity¢ dense_100/BiasAdd/ReadVariableOp¢dense_100/MatMul/ReadVariableOp;
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
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_100/MatMulMatMulReshape:output:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
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
	Reshape_1Reshapedense_100/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
9

D__inference_lstm_30_layer_call_and_return_conditional_losses_7745860

inputs'
lstm_cell_30_7745776:	'
lstm_cell_30_7745778:	d#
lstm_cell_30_7745780:	
identity¢$lstm_cell_30/StatefulPartitionedCall¢while;
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
$lstm_cell_30/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_30_7745776lstm_cell_30_7745778lstm_cell_30_7745780*
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745775n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_30_7745776lstm_cell_30_7745778lstm_cell_30_7745780*
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
while_body_7745790*
condR
while_cond_7745789*K
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
NoOpNoOp%^lstm_cell_30/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_30/StatefulPartitionedCall$lstm_cell_30/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8

D__inference_lstm_31_layer_call_and_return_conditional_losses_7746227

inputs'
lstm_cell_31_7746145:	dÈ'
lstm_cell_31_7746147:	2È#
lstm_cell_31_7746149:	È
identity¢$lstm_cell_31/StatefulPartitionedCall¢while;
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
$lstm_cell_31/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_31_7746145lstm_cell_31_7746147lstm_cell_31_7746149*
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746144n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_31_7746145lstm_cell_31_7746147lstm_cell_31_7746149*
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
while_body_7746158*
condR
while_cond_7746157*K
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
NoOpNoOp%^lstm_cell_31/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_31/StatefulPartitionedCall$lstm_cell_31/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Þ

I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749400

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
í
÷
.__inference_lstm_cell_31_layer_call_fn_7749434

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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746290o
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
÷"
ê
while_body_7746158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_31_7746182_0:	dÈ/
while_lstm_cell_31_7746184_0:	2È+
while_lstm_cell_31_7746186_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_31_7746182:	dÈ-
while_lstm_cell_31_7746184:	2È)
while_lstm_cell_31_7746186:	È¢*while/lstm_cell_31/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0·
*while/lstm_cell_31/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_31_7746182_0while_lstm_cell_31_7746184_0while_lstm_cell_31_7746186_0*
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746144Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_31/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_31/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity3while/lstm_cell_31/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y

while/NoOpNoOp+^while/lstm_cell_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_31_7746182while_lstm_cell_31_7746182_0":
while_lstm_cell_31_7746184while_lstm_cell_31_7746184_0":
while_lstm_cell_31_7746186while_lstm_cell_31_7746186_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_31/StatefulPartitionedCall*while/lstm_cell_31/StatefulPartitionedCall: 
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
©9
Ñ
while_body_7748528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_30_matmul_readvariableop_resource_0:	H
5while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_30_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_30_matmul_readvariableop_resource:	F
3while_lstm_cell_30_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_30_biasadd_readvariableop_resource:	¢)while/lstm_cell_30/BiasAdd/ReadVariableOp¢(while/lstm_cell_30/MatMul/ReadVariableOp¢*while/lstm_cell_30/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_30/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_30/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_30/addAddV2#while/lstm_cell_30/MatMul:product:0%while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_30/BiasAddBiasAddwhile/lstm_cell_30/add:z:01while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_30/splitSplit+while/lstm_cell_30/split/split_dim:output:0#while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_30/SigmoidSigmoid!while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_1Sigmoid!while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mulMul while/lstm_cell_30/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_30/ReluRelu!while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_1Mulwhile/lstm_cell_30/Sigmoid:y:0%while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/add_1AddV2while/lstm_cell_30/mul:z:0while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_2Sigmoid!while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_30/Relu_1Reluwhile/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_2Mul while/lstm_cell_30/Sigmoid_2:y:0'while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_30/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_30/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_30/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_30/BiasAdd/ReadVariableOp)^while/lstm_cell_30/MatMul/ReadVariableOp+^while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_30_biasadd_readvariableop_resource4while_lstm_cell_30_biasadd_readvariableop_resource_0"l
3while_lstm_cell_30_matmul_1_readvariableop_resource5while_lstm_cell_30_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_30_matmul_readvariableop_resource3while_lstm_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_30/BiasAdd/ReadVariableOp)while/lstm_cell_30/BiasAdd/ReadVariableOp2T
(while/lstm_cell_30/MatMul/ReadVariableOp(while/lstm_cell_30/MatMul/ReadVariableOp2X
*while/lstm_cell_30/MatMul_1/ReadVariableOp*while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
¬K

D__inference_lstm_30_layer_call_and_return_conditional_losses_7747168

inputs>
+lstm_cell_30_matmul_readvariableop_resource:	@
-lstm_cell_30_matmul_1_readvariableop_resource:	d;
,lstm_cell_30_biasadd_readvariableop_resource:	
identity¢#lstm_cell_30/BiasAdd/ReadVariableOp¢"lstm_cell_30/MatMul/ReadVariableOp¢$lstm_cell_30/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_30/MatMul/ReadVariableOpReadVariableOp+lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_30/MatMulMatMulstrided_slice_2:output:0*lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_30/MatMul_1MatMulzeros:output:0,lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_30/addAddV2lstm_cell_30/MatMul:product:0lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_30/BiasAddBiasAddlstm_cell_30/add:z:0+lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_30/splitSplit%lstm_cell_30/split/split_dim:output:0lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_30/SigmoidSigmoidlstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_1Sigmoidlstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_30/mulMullstm_cell_30/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_30/ReluRelulstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_1Mullstm_cell_30/Sigmoid:y:0lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_30/add_1AddV2lstm_cell_30/mul:z:0lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_2Sigmoidlstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_30/Relu_1Relulstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_2Mullstm_cell_30/Sigmoid_2:y:0!lstm_cell_30/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_30_matmul_readvariableop_resource-lstm_cell_30_matmul_1_readvariableop_resource,lstm_cell_30_biasadd_readvariableop_resource*
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
while_body_7747083*
condR
while_cond_7747082*K
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
NoOpNoOp$^lstm_cell_30/BiasAdd/ReadVariableOp#^lstm_cell_30/MatMul/ReadVariableOp%^lstm_cell_30/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_30/BiasAdd/ReadVariableOp#lstm_cell_30/BiasAdd/ReadVariableOp2H
"lstm_cell_30/MatMul/ReadVariableOp"lstm_cell_30/MatMul/ReadVariableOp2L
$lstm_cell_30/MatMul_1/ReadVariableOp$lstm_cell_30/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
Ù
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746501

inputs#
dense_100_7746491:2
dense_100_7746493:
identity¢!dense_100/StatefulPartitionedCall;
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
:ÿÿÿÿÿÿÿÿÿ2
!dense_100/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_100_7746491dense_100_7746493*
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
GPU 2J 8 *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_7746451\
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
	Reshape_1Reshape*dense_100/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
NoOpNoOp"^dense_100/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÆA
Ñ

lstm_31_while_body_7747593,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3+
'lstm_31_while_lstm_31_strided_slice_1_0g
clstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈP
=lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈK
<lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
lstm_31_while_identity
lstm_31_while_identity_1
lstm_31_while_identity_2
lstm_31_while_identity_3
lstm_31_while_identity_4
lstm_31_while_identity_5)
%lstm_31_while_lstm_31_strided_slice_1e
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorL
9lstm_31_while_lstm_cell_31_matmul_readvariableop_resource:	dÈN
;lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈI
:lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource:	È¢1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp¢0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp¢2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp
?lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0lstm_31_while_placeholderHlstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp;lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ò
!lstm_31/while/lstm_cell_31/MatMulMatMul8lstm_31/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ±
2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp=lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¹
#lstm_31/while/lstm_cell_31/MatMul_1MatMullstm_31_while_placeholder_2:lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¶
lstm_31/while/lstm_cell_31/addAddV2+lstm_31/while/lstm_cell_31/MatMul:product:0-lstm_31/while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ«
1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp<lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0¿
"lstm_31/while/lstm_cell_31/BiasAddBiasAdd"lstm_31/while/lstm_cell_31/add:z:09lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈl
*lstm_31/while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_31/while/lstm_cell_31/splitSplit3lstm_31/while/lstm_cell_31/split/split_dim:output:0+lstm_31/while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
"lstm_31/while/lstm_cell_31/SigmoidSigmoid)lstm_31/while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_31/while/lstm_cell_31/Sigmoid_1Sigmoid)lstm_31/while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/while/lstm_cell_31/mulMul(lstm_31/while/lstm_cell_31/Sigmoid_1:y:0lstm_31_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/while/lstm_cell_31/ReluRelu)lstm_31/while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
 lstm_31/while/lstm_cell_31/mul_1Mul&lstm_31/while/lstm_cell_31/Sigmoid:y:0-lstm_31/while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
 lstm_31/while/lstm_cell_31/add_1AddV2"lstm_31/while/lstm_cell_31/mul:z:0$lstm_31/while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_31/while/lstm_cell_31/Sigmoid_2Sigmoid)lstm_31/while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!lstm_31/while/lstm_cell_31/Relu_1Relu$lstm_31/while/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
 lstm_31/while/lstm_cell_31/mul_2Mul(lstm_31/while/lstm_cell_31/Sigmoid_2:y:0/lstm_31/while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2å
2lstm_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_31_while_placeholder_1lstm_31_while_placeholder$lstm_31/while/lstm_cell_31/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_31/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_31/while/addAddV2lstm_31_while_placeholderlstm_31/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_31/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_31/while/add_1AddV2(lstm_31_while_lstm_31_while_loop_counterlstm_31/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_31/while/IdentityIdentitylstm_31/while/add_1:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: 
lstm_31/while/Identity_1Identity.lstm_31_while_lstm_31_while_maximum_iterations^lstm_31/while/NoOp*
T0*
_output_shapes
: q
lstm_31/while/Identity_2Identitylstm_31/while/add:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: 
lstm_31/while/Identity_3IdentityBlstm_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_31/while/NoOp*
T0*
_output_shapes
: 
lstm_31/while/Identity_4Identity$lstm_31/while/lstm_cell_31/mul_2:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/while/Identity_5Identity$lstm_31/while/lstm_cell_31/add_1:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ð
lstm_31/while/NoOpNoOp2^lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp1^lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp3^lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_31_while_identitylstm_31/while/Identity:output:0"=
lstm_31_while_identity_1!lstm_31/while/Identity_1:output:0"=
lstm_31_while_identity_2!lstm_31/while/Identity_2:output:0"=
lstm_31_while_identity_3!lstm_31/while/Identity_3:output:0"=
lstm_31_while_identity_4!lstm_31/while/Identity_4:output:0"=
lstm_31_while_identity_5!lstm_31/while/Identity_5:output:0"P
%lstm_31_while_lstm_31_strided_slice_1'lstm_31_while_lstm_31_strided_slice_1_0"z
:lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource<lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0"|
;lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource=lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0"x
9lstm_31_while_lstm_cell_31_matmul_readvariableop_resource;lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0"È
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2f
1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp2d
0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp2h
2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
Þ

I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749498

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
äJ

D__inference_lstm_31_layer_call_and_return_conditional_losses_7748956
inputs_0>
+lstm_cell_31_matmul_readvariableop_resource:	dÈ@
-lstm_cell_31_matmul_1_readvariableop_resource:	2È;
,lstm_cell_31_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_31/BiasAdd/ReadVariableOp¢"lstm_cell_31/MatMul/ReadVariableOp¢$lstm_cell_31/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_31/MatMul/ReadVariableOpReadVariableOp+lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_31/MatMulMatMulstrided_slice_2:output:0*lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_31/MatMul_1MatMulzeros:output:0,lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_31/addAddV2lstm_cell_31/MatMul:product:0lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_31/BiasAddBiasAddlstm_cell_31/add:z:0+lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_31/splitSplit%lstm_cell_31/split/split_dim:output:0lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_31/SigmoidSigmoidlstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_1Sigmoidlstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_31/mulMullstm_cell_31/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_31/ReluRelulstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_1Mullstm_cell_31/Sigmoid:y:0lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_31/add_1AddV2lstm_cell_31/mul:z:0lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_2Sigmoidlstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_31/Relu_1Relulstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_2Mullstm_cell_31/Sigmoid_2:y:0!lstm_cell_31/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_31_matmul_readvariableop_resource-lstm_cell_31_matmul_1_readvariableop_resource,lstm_cell_31_biasadd_readvariableop_resource*
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
while_body_7748872*
condR
while_cond_7748871*K
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
NoOpNoOp$^lstm_cell_31/BiasAdd/ReadVariableOp#^lstm_cell_31/MatMul/ReadVariableOp%^lstm_cell_31/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_31/BiasAdd/ReadVariableOp#lstm_cell_31/BiasAdd/ReadVariableOp2H
"lstm_cell_31/MatMul/ReadVariableOp"lstm_cell_31/MatMul/ReadVariableOp2L
$lstm_cell_31/MatMul_1/ReadVariableOp$lstm_cell_31/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
$
ê
while_body_7745790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_30_7745814_0:	/
while_lstm_cell_30_7745816_0:	d+
while_lstm_cell_30_7745818_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_30_7745814:	-
while_lstm_cell_30_7745816:	d)
while_lstm_cell_30_7745818:	¢*while/lstm_cell_30/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_30/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_30_7745814_0while_lstm_cell_30_7745816_0while_lstm_cell_30_7745818_0*
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745775r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_30/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_30/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity3while/lstm_cell_30/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy

while/NoOpNoOp+^while/lstm_cell_30/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_30_7745814while_lstm_cell_30_7745814_0":
while_lstm_cell_30_7745816while_lstm_cell_30_7745816_0":
while_lstm_cell_30_7745818while_lstm_cell_30_7745818_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_30/StatefulPartitionedCall*while/lstm_cell_30/StatefulPartitionedCall: 
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
8
Ñ
while_body_7746726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_31_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_31_biasadd_readvariableop_resource:	È¢)while/lstm_cell_31/BiasAdd/ReadVariableOp¢(while/lstm_cell_31/MatMul/ReadVariableOp¢*while/lstm_cell_31/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_31/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_31/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_31/addAddV2#while/lstm_cell_31/MatMul:product:0%while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_31/BiasAddBiasAddwhile/lstm_cell_31/add:z:01while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_31/splitSplit+while/lstm_cell_31/split/split_dim:output:0#while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_31/SigmoidSigmoid!while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_1Sigmoid!while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mulMul while/lstm_cell_31/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_31/ReluRelu!while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_1Mulwhile/lstm_cell_31/Sigmoid:y:0%while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/add_1AddV2while/lstm_cell_31/mul:z:0while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_2Sigmoid!while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_31/Relu_1Reluwhile/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_2Mul while/lstm_cell_31/Sigmoid_2:y:0'while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_31/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_31/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_31/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_31/BiasAdd/ReadVariableOp)^while/lstm_cell_31/MatMul/ReadVariableOp+^while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_31_biasadd_readvariableop_resource4while_lstm_cell_31_biasadd_readvariableop_resource_0"l
3while_lstm_cell_31_matmul_1_readvariableop_resource5while_lstm_cell_31_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_31_matmul_readvariableop_resource3while_lstm_cell_31_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_31/BiasAdd/ReadVariableOp)while/lstm_cell_31/BiasAdd/ReadVariableOp2T
(while/lstm_cell_31/MatMul/ReadVariableOp(while/lstm_cell_31/MatMul/ReadVariableOp2X
*while/lstm_cell_31/MatMul_1/ReadVariableOp*while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7747001

inputs>
+lstm_cell_31_matmul_readvariableop_resource:	dÈ@
-lstm_cell_31_matmul_1_readvariableop_resource:	2È;
,lstm_cell_31_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_31/BiasAdd/ReadVariableOp¢"lstm_cell_31/MatMul/ReadVariableOp¢$lstm_cell_31/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_31/MatMul/ReadVariableOpReadVariableOp+lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_31/MatMulMatMulstrided_slice_2:output:0*lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_31/MatMul_1MatMulzeros:output:0,lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_31/addAddV2lstm_cell_31/MatMul:product:0lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_31/BiasAddBiasAddlstm_cell_31/add:z:0+lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_31/splitSplit%lstm_cell_31/split/split_dim:output:0lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_31/SigmoidSigmoidlstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_1Sigmoidlstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_31/mulMullstm_cell_31/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_31/ReluRelulstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_1Mullstm_cell_31/Sigmoid:y:0lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_31/add_1AddV2lstm_cell_31/mul:z:0lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_2Sigmoidlstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_31/Relu_1Relulstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_2Mullstm_cell_31/Sigmoid_2:y:0!lstm_cell_31/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_31_matmul_readvariableop_resource-lstm_cell_31_matmul_1_readvariableop_resource,lstm_cell_31_biasadd_readvariableop_resource*
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
while_body_7746917*
condR
while_cond_7746916*K
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
NoOpNoOp$^lstm_cell_31/BiasAdd/ReadVariableOp#^lstm_cell_31/MatMul/ReadVariableOp%^lstm_cell_31/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_31/BiasAdd/ReadVariableOp#lstm_cell_31/BiasAdd/ReadVariableOp2H
"lstm_cell_31/MatMul/ReadVariableOp"lstm_cell_31/MatMul/ReadVariableOp2L
$lstm_cell_31/MatMul_1/ReadVariableOp$lstm_cell_31/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º
È
while_cond_7748237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7748237___redundant_placeholder05
1while_while_cond_7748237___redundant_placeholder15
1while_while_cond_7748237___redundant_placeholder25
1while_while_cond_7748237___redundant_placeholder3
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
êB
Ñ

lstm_30_while_body_7747749,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3+
'lstm_30_while_lstm_30_strided_slice_1_0g
clstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0:	P
=lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dK
<lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0:	
lstm_30_while_identity
lstm_30_while_identity_1
lstm_30_while_identity_2
lstm_30_while_identity_3
lstm_30_while_identity_4
lstm_30_while_identity_5)
%lstm_30_while_lstm_30_strided_slice_1e
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorL
9lstm_30_while_lstm_cell_30_matmul_readvariableop_resource:	N
;lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource:	dI
:lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource:	¢1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp¢0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp¢2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp
?lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0lstm_30_while_placeholderHlstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp;lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ò
!lstm_30/while/lstm_cell_30/MatMulMatMul8lstm_30/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp=lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¹
#lstm_30/while/lstm_cell_30/MatMul_1MatMullstm_30_while_placeholder_2:lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_30/while/lstm_cell_30/addAddV2+lstm_30/while/lstm_cell_30/MatMul:product:0-lstm_30/while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp<lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_30/while/lstm_cell_30/BiasAddBiasAdd"lstm_30/while/lstm_cell_30/add:z:09lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_30/while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_30/while/lstm_cell_30/splitSplit3lstm_30/while/lstm_cell_30/split/split_dim:output:0+lstm_30/while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
"lstm_30/while/lstm_cell_30/SigmoidSigmoid)lstm_30/while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_30/while/lstm_cell_30/Sigmoid_1Sigmoid)lstm_30/while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/while/lstm_cell_30/mulMul(lstm_30/while/lstm_cell_30/Sigmoid_1:y:0lstm_30_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/while/lstm_cell_30/ReluRelu)lstm_30/while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd°
 lstm_30/while/lstm_cell_30/mul_1Mul&lstm_30/while/lstm_cell_30/Sigmoid:y:0-lstm_30/while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
 lstm_30/while/lstm_cell_30/add_1AddV2"lstm_30/while/lstm_cell_30/mul:z:0$lstm_30/while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_30/while/lstm_cell_30/Sigmoid_2Sigmoid)lstm_30/while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!lstm_30/while/lstm_cell_30/Relu_1Relu$lstm_30/while/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
 lstm_30/while/lstm_cell_30/mul_2Mul(lstm_30/while/lstm_cell_30/Sigmoid_2:y:0/lstm_30/while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
8lstm_30/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_30_while_placeholder_1Alstm_30/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_30/while/lstm_cell_30/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_30/while/addAddV2lstm_30_while_placeholderlstm_30/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_30/while/add_1AddV2(lstm_30_while_lstm_30_while_loop_counterlstm_30/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_30/while/IdentityIdentitylstm_30/while/add_1:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: 
lstm_30/while/Identity_1Identity.lstm_30_while_lstm_30_while_maximum_iterations^lstm_30/while/NoOp*
T0*
_output_shapes
: q
lstm_30/while/Identity_2Identitylstm_30/while/add:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: 
lstm_30/while/Identity_3IdentityBlstm_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_30/while/NoOp*
T0*
_output_shapes
: 
lstm_30/while/Identity_4Identity$lstm_30/while/lstm_cell_30/mul_2:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/while/Identity_5Identity$lstm_30/while/lstm_cell_30/add_1:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
lstm_30/while/NoOpNoOp2^lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp1^lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp3^lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_30_while_identitylstm_30/while/Identity:output:0"=
lstm_30_while_identity_1!lstm_30/while/Identity_1:output:0"=
lstm_30_while_identity_2!lstm_30/while/Identity_2:output:0"=
lstm_30_while_identity_3!lstm_30/while/Identity_3:output:0"=
lstm_30_while_identity_4!lstm_30/while/Identity_4:output:0"=
lstm_30_while_identity_5!lstm_30/while/Identity_5:output:0"P
%lstm_30_while_lstm_30_strided_slice_1'lstm_30_while_lstm_30_strided_slice_1_0"z
:lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource<lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0"|
;lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource=lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0"x
9lstm_30_while_lstm_cell_30_matmul_readvariableop_resource;lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0"È
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2f
1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp2d
0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp2h
2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
while_cond_7749157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7749157___redundant_placeholder05
1while_while_cond_7749157___redundant_placeholder15
1while_while_cond_7749157___redundant_placeholder25
1while_while_cond_7749157___redundant_placeholder3
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
8

D__inference_lstm_31_layer_call_and_return_conditional_losses_7746418

inputs'
lstm_cell_31_7746336:	dÈ'
lstm_cell_31_7746338:	2È#
lstm_cell_31_7746340:	È
identity¢$lstm_cell_31/StatefulPartitionedCall¢while;
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
$lstm_cell_31/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_31_7746336lstm_cell_31_7746338lstm_cell_31_7746340*
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746290n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_31_7746336lstm_cell_31_7746338lstm_cell_31_7746340*
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
while_body_7746349*
condR
while_cond_7746348*K
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
NoOpNoOp%^lstm_cell_31/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2L
$lstm_cell_31/StatefulPartitionedCall$lstm_cell_31/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ç	
Å
%__inference_signature_wrapper_7747347
lstm_30_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_7745708s
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
_user_specified_namelstm_30_input
Û
N
2__inference_repeat_vector_15_layer_call_fn_7748618

inputs
identityÅ
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
GPU 2J 8 *V
fQRO
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7746074m
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
¹S

(sequential_46_lstm_30_while_body_7745468H
Dsequential_46_lstm_30_while_sequential_46_lstm_30_while_loop_counterN
Jsequential_46_lstm_30_while_sequential_46_lstm_30_while_maximum_iterations+
'sequential_46_lstm_30_while_placeholder-
)sequential_46_lstm_30_while_placeholder_1-
)sequential_46_lstm_30_while_placeholder_2-
)sequential_46_lstm_30_while_placeholder_3G
Csequential_46_lstm_30_while_sequential_46_lstm_30_strided_slice_1_0
sequential_46_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_30_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_46_lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0:	^
Ksequential_46_lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dY
Jsequential_46_lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0:	(
$sequential_46_lstm_30_while_identity*
&sequential_46_lstm_30_while_identity_1*
&sequential_46_lstm_30_while_identity_2*
&sequential_46_lstm_30_while_identity_3*
&sequential_46_lstm_30_while_identity_4*
&sequential_46_lstm_30_while_identity_5E
Asequential_46_lstm_30_while_sequential_46_lstm_30_strided_slice_1
}sequential_46_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_30_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_46_lstm_30_while_lstm_cell_30_matmul_readvariableop_resource:	\
Isequential_46_lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource:	dW
Hsequential_46_lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource:	¢?sequential_46/lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp¢>sequential_46/lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp¢@sequential_46/lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp
Msequential_46/lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_46/lstm_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_46_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_30_tensorarrayunstack_tensorlistfromtensor_0'sequential_46_lstm_30_while_placeholderVsequential_46/lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0É
>sequential_46/lstm_30/while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOpIsequential_46_lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ü
/sequential_46/lstm_30/while/lstm_cell_30/MatMulMatMulFsequential_46/lstm_30/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_46/lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
@sequential_46/lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOpKsequential_46_lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ã
1sequential_46/lstm_30/while/lstm_cell_30/MatMul_1MatMul)sequential_46_lstm_30_while_placeholder_2Hsequential_46/lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
,sequential_46/lstm_30/while/lstm_cell_30/addAddV29sequential_46/lstm_30/while/lstm_cell_30/MatMul:product:0;sequential_46/lstm_30/while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
?sequential_46/lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOpJsequential_46_lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0é
0sequential_46/lstm_30/while/lstm_cell_30/BiasAddBiasAdd0sequential_46/lstm_30/while/lstm_cell_30/add:z:0Gsequential_46/lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
8sequential_46/lstm_30/while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_46/lstm_30/while/lstm_cell_30/splitSplitAsequential_46/lstm_30/while/lstm_cell_30/split/split_dim:output:09sequential_46/lstm_30/while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split¦
0sequential_46/lstm_30/while/lstm_cell_30/SigmoidSigmoid7sequential_46/lstm_30/while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
2sequential_46/lstm_30/while/lstm_cell_30/Sigmoid_1Sigmoid7sequential_46/lstm_30/while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÈ
,sequential_46/lstm_30/while/lstm_cell_30/mulMul6sequential_46/lstm_30/while/lstm_cell_30/Sigmoid_1:y:0)sequential_46_lstm_30_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
-sequential_46/lstm_30/while/lstm_cell_30/ReluRelu7sequential_46/lstm_30/while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÚ
.sequential_46/lstm_30/while/lstm_cell_30/mul_1Mul4sequential_46/lstm_30/while/lstm_cell_30/Sigmoid:y:0;sequential_46/lstm_30/while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÏ
.sequential_46/lstm_30/while/lstm_cell_30/add_1AddV20sequential_46/lstm_30/while/lstm_cell_30/mul:z:02sequential_46/lstm_30/while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
2sequential_46/lstm_30/while/lstm_cell_30/Sigmoid_2Sigmoid7sequential_46/lstm_30/while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
/sequential_46/lstm_30/while/lstm_cell_30/Relu_1Relu2sequential_46/lstm_30/while/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÞ
.sequential_46/lstm_30/while/lstm_cell_30/mul_2Mul6sequential_46/lstm_30/while/lstm_cell_30/Sigmoid_2:y:0=sequential_46/lstm_30/while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Fsequential_46/lstm_30/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Å
@sequential_46/lstm_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_46_lstm_30_while_placeholder_1Osequential_46/lstm_30/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_46/lstm_30/while/lstm_cell_30/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_46/lstm_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_46/lstm_30/while/addAddV2'sequential_46_lstm_30_while_placeholder*sequential_46/lstm_30/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_46/lstm_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_46/lstm_30/while/add_1AddV2Dsequential_46_lstm_30_while_sequential_46_lstm_30_while_loop_counter,sequential_46/lstm_30/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_46/lstm_30/while/IdentityIdentity%sequential_46/lstm_30/while/add_1:z:0!^sequential_46/lstm_30/while/NoOp*
T0*
_output_shapes
: Â
&sequential_46/lstm_30/while/Identity_1IdentityJsequential_46_lstm_30_while_sequential_46_lstm_30_while_maximum_iterations!^sequential_46/lstm_30/while/NoOp*
T0*
_output_shapes
: 
&sequential_46/lstm_30/while/Identity_2Identity#sequential_46/lstm_30/while/add:z:0!^sequential_46/lstm_30/while/NoOp*
T0*
_output_shapes
: È
&sequential_46/lstm_30/while/Identity_3IdentityPsequential_46/lstm_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_46/lstm_30/while/NoOp*
T0*
_output_shapes
: »
&sequential_46/lstm_30/while/Identity_4Identity2sequential_46/lstm_30/while/lstm_cell_30/mul_2:z:0!^sequential_46/lstm_30/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
&sequential_46/lstm_30/while/Identity_5Identity2sequential_46/lstm_30/while/lstm_cell_30/add_1:z:0!^sequential_46/lstm_30/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
 sequential_46/lstm_30/while/NoOpNoOp@^sequential_46/lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp?^sequential_46/lstm_30/while/lstm_cell_30/MatMul/ReadVariableOpA^sequential_46/lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_46_lstm_30_while_identity-sequential_46/lstm_30/while/Identity:output:0"Y
&sequential_46_lstm_30_while_identity_1/sequential_46/lstm_30/while/Identity_1:output:0"Y
&sequential_46_lstm_30_while_identity_2/sequential_46/lstm_30/while/Identity_2:output:0"Y
&sequential_46_lstm_30_while_identity_3/sequential_46/lstm_30/while/Identity_3:output:0"Y
&sequential_46_lstm_30_while_identity_4/sequential_46/lstm_30/while/Identity_4:output:0"Y
&sequential_46_lstm_30_while_identity_5/sequential_46/lstm_30/while/Identity_5:output:0"
Hsequential_46_lstm_30_while_lstm_cell_30_biasadd_readvariableop_resourceJsequential_46_lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0"
Isequential_46_lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resourceKsequential_46_lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0"
Gsequential_46_lstm_30_while_lstm_cell_30_matmul_readvariableop_resourceIsequential_46_lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0"
Asequential_46_lstm_30_while_sequential_46_lstm_30_strided_slice_1Csequential_46_lstm_30_while_sequential_46_lstm_30_strided_slice_1_0"
}sequential_46_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_30_tensorarrayunstack_tensorlistfromtensorsequential_46_lstm_30_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2
?sequential_46/lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp?sequential_46/lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp2
>sequential_46/lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp>sequential_46/lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp2
@sequential_46/lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp@sequential_46/lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
while_body_7747083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_30_matmul_readvariableop_resource_0:	H
5while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_30_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_30_matmul_readvariableop_resource:	F
3while_lstm_cell_30_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_30_biasadd_readvariableop_resource:	¢)while/lstm_cell_30/BiasAdd/ReadVariableOp¢(while/lstm_cell_30/MatMul/ReadVariableOp¢*while/lstm_cell_30/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_30/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_30/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_30/addAddV2#while/lstm_cell_30/MatMul:product:0%while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_30/BiasAddBiasAddwhile/lstm_cell_30/add:z:01while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_30/splitSplit+while/lstm_cell_30/split/split_dim:output:0#while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_30/SigmoidSigmoid!while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_1Sigmoid!while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mulMul while/lstm_cell_30/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_30/ReluRelu!while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_1Mulwhile/lstm_cell_30/Sigmoid:y:0%while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/add_1AddV2while/lstm_cell_30/mul:z:0while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_2Sigmoid!while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_30/Relu_1Reluwhile/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_2Mul while/lstm_cell_30/Sigmoid_2:y:0'while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_30/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_30/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_30/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_30/BiasAdd/ReadVariableOp)^while/lstm_cell_30/MatMul/ReadVariableOp+^while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_30_biasadd_readvariableop_resource4while_lstm_cell_30_biasadd_readvariableop_resource_0"l
3while_lstm_cell_30_matmul_1_readvariableop_resource5while_lstm_cell_30_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_30_matmul_readvariableop_resource3while_lstm_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_30/BiasAdd/ReadVariableOp)while/lstm_cell_30/BiasAdd/ReadVariableOp2T
(while/lstm_cell_30/MatMul/ReadVariableOp(while/lstm_cell_30/MatMul/ReadVariableOp2X
*while/lstm_cell_30/MatMul_1/ReadVariableOp*while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
8
Ñ
while_body_7748872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_31_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_31_biasadd_readvariableop_resource:	È¢)while/lstm_cell_31/BiasAdd/ReadVariableOp¢(while/lstm_cell_31/MatMul/ReadVariableOp¢*while/lstm_cell_31/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_31/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_31/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_31/addAddV2#while/lstm_cell_31/MatMul:product:0%while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_31/BiasAddBiasAddwhile/lstm_cell_31/add:z:01while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_31/splitSplit+while/lstm_cell_31/split/split_dim:output:0#while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_31/SigmoidSigmoid!while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_1Sigmoid!while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mulMul while/lstm_cell_31/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_31/ReluRelu!while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_1Mulwhile/lstm_cell_31/Sigmoid:y:0%while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/add_1AddV2while/lstm_cell_31/mul:z:0while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_2Sigmoid!while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_31/Relu_1Reluwhile/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_2Mul while/lstm_cell_31/Sigmoid_2:y:0'while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_31/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_31/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_31/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_31/BiasAdd/ReadVariableOp)^while/lstm_cell_31/MatMul/ReadVariableOp+^while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_31_biasadd_readvariableop_resource4while_lstm_cell_31_biasadd_readvariableop_resource_0"l
3while_lstm_cell_31_matmul_1_readvariableop_resource5while_lstm_cell_31_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_31_matmul_readvariableop_resource3while_lstm_cell_31_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_31/BiasAdd/ReadVariableOp)while/lstm_cell_31/BiasAdd/ReadVariableOp2T
(while/lstm_cell_31/MatMul/ReadVariableOp(while/lstm_cell_31/MatMul/ReadVariableOp2X
*while/lstm_cell_31/MatMul_1/ReadVariableOp*while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
©9
Ñ
while_body_7748383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_30_matmul_readvariableop_resource_0:	H
5while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_30_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_30_matmul_readvariableop_resource:	F
3while_lstm_cell_30_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_30_biasadd_readvariableop_resource:	¢)while/lstm_cell_30/BiasAdd/ReadVariableOp¢(while/lstm_cell_30/MatMul/ReadVariableOp¢*while/lstm_cell_30/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_30/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_30/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_30/addAddV2#while/lstm_cell_30/MatMul:product:0%while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_30/BiasAddBiasAddwhile/lstm_cell_30/add:z:01while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_30/splitSplit+while/lstm_cell_30/split/split_dim:output:0#while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_30/SigmoidSigmoid!while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_1Sigmoid!while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mulMul while/lstm_cell_30/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_30/ReluRelu!while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_1Mulwhile/lstm_cell_30/Sigmoid:y:0%while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/add_1AddV2while/lstm_cell_30/mul:z:0while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_2Sigmoid!while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_30/Relu_1Reluwhile/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_2Mul while/lstm_cell_30/Sigmoid_2:y:0'while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_30/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_30/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_30/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_30/BiasAdd/ReadVariableOp)^while/lstm_cell_30/MatMul/ReadVariableOp+^while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_30_biasadd_readvariableop_resource4while_lstm_cell_30_biasadd_readvariableop_resource_0"l
3while_lstm_cell_30_matmul_1_readvariableop_resource5while_lstm_cell_30_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_30_matmul_readvariableop_resource3while_lstm_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_30/BiasAdd/ReadVariableOp)while/lstm_cell_30/BiasAdd/ReadVariableOp2T
(while/lstm_cell_30/MatMul/ReadVariableOp(while/lstm_cell_30/MatMul/ReadVariableOp2X
*while/lstm_cell_30/MatMul_1/ReadVariableOp*while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
lstm_31_while_cond_7747592,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3.
*lstm_31_while_less_lstm_31_strided_slice_1E
Alstm_31_while_lstm_31_while_cond_7747592___redundant_placeholder0E
Alstm_31_while_lstm_31_while_cond_7747592___redundant_placeholder1E
Alstm_31_while_lstm_31_while_cond_7747592___redundant_placeholder2E
Alstm_31_while_lstm_31_while_cond_7747592___redundant_placeholder3
lstm_31_while_identity

lstm_31/while/LessLesslstm_31_while_placeholder*lstm_31_while_less_lstm_31_strided_slice_1*
T0*
_output_shapes
: [
lstm_31/while/IdentityIdentitylstm_31/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_31_while_identitylstm_31/while/Identity:output:0*(
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
ù
¶
)__inference_lstm_30_layer_call_fn_7748033

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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7747168o
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
ä	
È
/__inference_sequential_46_layer_call_fn_7747389

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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747226s
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
ù	
Ï
/__inference_sequential_46_layer_call_fn_7747266
lstm_30_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747226s
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
_user_specified_namelstm_30_input
«
¸
)__inference_lstm_31_layer_call_fn_7748648
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7746418|
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
ð
Ë
#__inference__traced_restore_7749736
file_prefix?
,assignvariableop_lstm_30_lstm_cell_30_kernel:	K
8assignvariableop_1_lstm_30_lstm_cell_30_recurrent_kernel:	d;
,assignvariableop_2_lstm_30_lstm_cell_30_bias:	A
.assignvariableop_3_lstm_31_lstm_cell_31_kernel:	dÈK
8assignvariableop_4_lstm_31_lstm_cell_31_recurrent_kernel:	2È;
,assignvariableop_5_lstm_31_lstm_cell_31_bias:	È?
-assignvariableop_6_time_distributed_23_kernel:29
+assignvariableop_7_time_distributed_23_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: I
6assignvariableop_15_adam_lstm_30_lstm_cell_30_kernel_m:	S
@assignvariableop_16_adam_lstm_30_lstm_cell_30_recurrent_kernel_m:	dC
4assignvariableop_17_adam_lstm_30_lstm_cell_30_bias_m:	I
6assignvariableop_18_adam_lstm_31_lstm_cell_31_kernel_m:	dÈS
@assignvariableop_19_adam_lstm_31_lstm_cell_31_recurrent_kernel_m:	2ÈC
4assignvariableop_20_adam_lstm_31_lstm_cell_31_bias_m:	ÈG
5assignvariableop_21_adam_time_distributed_23_kernel_m:2A
3assignvariableop_22_adam_time_distributed_23_bias_m:I
6assignvariableop_23_adam_lstm_30_lstm_cell_30_kernel_v:	S
@assignvariableop_24_adam_lstm_30_lstm_cell_30_recurrent_kernel_v:	dC
4assignvariableop_25_adam_lstm_30_lstm_cell_30_bias_v:	I
6assignvariableop_26_adam_lstm_31_lstm_cell_31_kernel_v:	dÈS
@assignvariableop_27_adam_lstm_31_lstm_cell_31_recurrent_kernel_v:	2ÈC
4assignvariableop_28_adam_lstm_31_lstm_cell_31_bias_v:	ÈG
5assignvariableop_29_adam_time_distributed_23_kernel_v:2A
3assignvariableop_30_adam_time_distributed_23_bias_v:
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
AssignVariableOpAssignVariableOp,assignvariableop_lstm_30_lstm_cell_30_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_1AssignVariableOp8assignvariableop_1_lstm_30_lstm_cell_30_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_30_lstm_cell_30_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_lstm_31_lstm_cell_31_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_4AssignVariableOp8assignvariableop_4_lstm_31_lstm_cell_31_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp,assignvariableop_5_lstm_31_lstm_cell_31_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp-assignvariableop_6_time_distributed_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp+assignvariableop_7_time_distributed_23_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp6assignvariableop_15_adam_lstm_30_lstm_cell_30_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_16AssignVariableOp@assignvariableop_16_adam_lstm_30_lstm_cell_30_recurrent_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_17AssignVariableOp4assignvariableop_17_adam_lstm_30_lstm_cell_30_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_31_lstm_cell_31_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_31_lstm_cell_31_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_31_lstm_cell_31_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_time_distributed_23_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_22AssignVariableOp3assignvariableop_22_adam_time_distributed_23_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_lstm_30_lstm_cell_30_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_lstm_30_lstm_cell_30_recurrent_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_30_lstm_cell_30_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_31_lstm_cell_31_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_lstm_31_lstm_cell_31_recurrent_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_31_lstm_cell_31_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_time_distributed_23_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_time_distributed_23_bias_vIdentity_30:output:0"/device:CPU:0*
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
êB
Ñ

lstm_30_while_body_7747449,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3+
'lstm_30_while_lstm_30_strided_slice_1_0g
clstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0:	P
=lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dK
<lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0:	
lstm_30_while_identity
lstm_30_while_identity_1
lstm_30_while_identity_2
lstm_30_while_identity_3
lstm_30_while_identity_4
lstm_30_while_identity_5)
%lstm_30_while_lstm_30_strided_slice_1e
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorL
9lstm_30_while_lstm_cell_30_matmul_readvariableop_resource:	N
;lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource:	dI
:lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource:	¢1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp¢0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp¢2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp
?lstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_30/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0lstm_30_while_placeholderHlstm_30/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0­
0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp;lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Ò
!lstm_30/while/lstm_cell_30/MatMulMatMul8lstm_30/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp=lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¹
#lstm_30/while/lstm_cell_30/MatMul_1MatMullstm_30_while_placeholder_2:lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_30/while/lstm_cell_30/addAddV2+lstm_30/while/lstm_cell_30/MatMul:product:0-lstm_30/while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp<lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_30/while/lstm_cell_30/BiasAddBiasAdd"lstm_30/while/lstm_cell_30/add:z:09lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_30/while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_30/while/lstm_cell_30/splitSplit3lstm_30/while/lstm_cell_30/split/split_dim:output:0+lstm_30/while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
"lstm_30/while/lstm_cell_30/SigmoidSigmoid)lstm_30/while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_30/while/lstm_cell_30/Sigmoid_1Sigmoid)lstm_30/while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/while/lstm_cell_30/mulMul(lstm_30/while/lstm_cell_30/Sigmoid_1:y:0lstm_30_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/while/lstm_cell_30/ReluRelu)lstm_30/while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd°
 lstm_30/while/lstm_cell_30/mul_1Mul&lstm_30/while/lstm_cell_30/Sigmoid:y:0-lstm_30/while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
 lstm_30/while/lstm_cell_30/add_1AddV2"lstm_30/while/lstm_cell_30/mul:z:0$lstm_30/while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
$lstm_30/while/lstm_cell_30/Sigmoid_2Sigmoid)lstm_30/while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!lstm_30/while/lstm_cell_30/Relu_1Relu$lstm_30/while/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
 lstm_30/while/lstm_cell_30/mul_2Mul(lstm_30/while/lstm_cell_30/Sigmoid_2:y:0/lstm_30/while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
8lstm_30/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_30/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_30_while_placeholder_1Alstm_30/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_30/while/lstm_cell_30/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_30/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_30/while/addAddV2lstm_30_while_placeholderlstm_30/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_30/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_30/while/add_1AddV2(lstm_30_while_lstm_30_while_loop_counterlstm_30/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_30/while/IdentityIdentitylstm_30/while/add_1:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: 
lstm_30/while/Identity_1Identity.lstm_30_while_lstm_30_while_maximum_iterations^lstm_30/while/NoOp*
T0*
_output_shapes
: q
lstm_30/while/Identity_2Identitylstm_30/while/add:z:0^lstm_30/while/NoOp*
T0*
_output_shapes
: 
lstm_30/while/Identity_3IdentityBlstm_30/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_30/while/NoOp*
T0*
_output_shapes
: 
lstm_30/while/Identity_4Identity$lstm_30/while/lstm_cell_30/mul_2:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/while/Identity_5Identity$lstm_30/while/lstm_cell_30/add_1:z:0^lstm_30/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdð
lstm_30/while/NoOpNoOp2^lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp1^lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp3^lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_30_while_identitylstm_30/while/Identity:output:0"=
lstm_30_while_identity_1!lstm_30/while/Identity_1:output:0"=
lstm_30_while_identity_2!lstm_30/while/Identity_2:output:0"=
lstm_30_while_identity_3!lstm_30/while/Identity_3:output:0"=
lstm_30_while_identity_4!lstm_30/while/Identity_4:output:0"=
lstm_30_while_identity_5!lstm_30/while/Identity_5:output:0"P
%lstm_30_while_lstm_30_strided_slice_1'lstm_30_while_lstm_30_strided_slice_1_0"z
:lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource<lstm_30_while_lstm_cell_30_biasadd_readvariableop_resource_0"|
;lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource=lstm_30_while_lstm_cell_30_matmul_1_readvariableop_resource_0"x
9lstm_30_while_lstm_cell_30_matmul_readvariableop_resource;lstm_30_while_lstm_cell_30_matmul_readvariableop_resource_0"È
alstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensorclstm_30_while_tensorarrayv2read_tensorlistgetitem_lstm_30_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2f
1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp1lstm_30/while/lstm_cell_30/BiasAdd/ReadVariableOp2d
0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp0lstm_30/while/lstm_cell_30/MatMul/ReadVariableOp2h
2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp2lstm_30/while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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

¸
)__inference_lstm_30_layer_call_fn_7748000
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7745860o
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
Ú»
Õ
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747989

inputsF
3lstm_30_lstm_cell_30_matmul_readvariableop_resource:	H
5lstm_30_lstm_cell_30_matmul_1_readvariableop_resource:	dC
4lstm_30_lstm_cell_30_biasadd_readvariableop_resource:	F
3lstm_31_lstm_cell_31_matmul_readvariableop_resource:	dÈH
5lstm_31_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈC
4lstm_31_lstm_cell_31_biasadd_readvariableop_resource:	ÈN
<time_distributed_23_dense_100_matmul_readvariableop_resource:2K
=time_distributed_23_dense_100_biasadd_readvariableop_resource:
identity¢+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp¢*lstm_30/lstm_cell_30/MatMul/ReadVariableOp¢,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp¢lstm_30/while¢+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp¢*lstm_31/lstm_cell_31/MatMul/ReadVariableOp¢,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp¢lstm_31/while¢4time_distributed_23/dense_100/BiasAdd/ReadVariableOp¢3time_distributed_23/dense_100/MatMul/ReadVariableOpC
lstm_30/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_30/strided_sliceStridedSlicelstm_30/Shape:output:0$lstm_30/strided_slice/stack:output:0&lstm_30/strided_slice/stack_1:output:0&lstm_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_30/zeros/packedPacklstm_30/strided_slice:output:0lstm_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_30/zerosFilllstm_30/zeros/packed:output:0lstm_30/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_30/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_30/zeros_1/packedPacklstm_30/strided_slice:output:0!lstm_30/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_30/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_30/zeros_1Filllstm_30/zeros_1/packed:output:0lstm_30/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_30/transpose	Transposeinputslstm_30/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_30/Shape_1Shapelstm_30/transpose:y:0*
T0*
_output_shapes
:g
lstm_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_30/strided_slice_1StridedSlicelstm_30/Shape_1:output:0&lstm_30/strided_slice_1/stack:output:0(lstm_30/strided_slice_1/stack_1:output:0(lstm_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_30/TensorArrayV2TensorListReserve,lstm_30/TensorArrayV2/element_shape:output:0 lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_30/transpose:y:0Flstm_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_30/strided_slice_2StridedSlicelstm_30/transpose:y:0&lstm_30/strided_slice_2/stack:output:0(lstm_30/strided_slice_2/stack_1:output:0(lstm_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_30/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3lstm_30_lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0®
lstm_30/lstm_cell_30/MatMulMatMul lstm_30/strided_slice_2:output:02lstm_30/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5lstm_30_lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0¨
lstm_30/lstm_cell_30/MatMul_1MatMullstm_30/zeros:output:04lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_30/lstm_cell_30/addAddV2%lstm_30/lstm_cell_30/MatMul:product:0'lstm_30/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4lstm_30_lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_30/lstm_cell_30/BiasAddBiasAddlstm_30/lstm_cell_30/add:z:03lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_30/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_30/lstm_cell_30/splitSplit-lstm_30/lstm_cell_30/split/split_dim:output:0%lstm_30/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split~
lstm_30/lstm_cell_30/SigmoidSigmoid#lstm_30/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/Sigmoid_1Sigmoid#lstm_30/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/mulMul"lstm_30/lstm_cell_30/Sigmoid_1:y:0lstm_30/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
lstm_30/lstm_cell_30/ReluRelu#lstm_30/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/mul_1Mul lstm_30/lstm_cell_30/Sigmoid:y:0'lstm_30/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/add_1AddV2lstm_30/lstm_cell_30/mul:z:0lstm_30/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/Sigmoid_2Sigmoid#lstm_30/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
lstm_30/lstm_cell_30/Relu_1Relulstm_30/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
lstm_30/lstm_cell_30/mul_2Mul"lstm_30/lstm_cell_30/Sigmoid_2:y:0)lstm_30/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   f
$lstm_30/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_30/TensorArrayV2_1TensorListReserve.lstm_30/TensorArrayV2_1/element_shape:output:0-lstm_30/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_30/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_30/whileWhile#lstm_30/while/loop_counter:output:0)lstm_30/while/maximum_iterations:output:0lstm_30/time:output:0 lstm_30/TensorArrayV2_1:handle:0lstm_30/zeros:output:0lstm_30/zeros_1:output:0 lstm_30/strided_slice_1:output:0?lstm_30/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_30_lstm_cell_30_matmul_readvariableop_resource5lstm_30_lstm_cell_30_matmul_1_readvariableop_resource4lstm_30_lstm_cell_30_biasadd_readvariableop_resource*
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
lstm_30_while_body_7747749*&
condR
lstm_30_while_cond_7747748*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   î
*lstm_30/TensorArrayV2Stack/TensorListStackTensorListStacklstm_30/while:output:3Alstm_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsp
lstm_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_30/strided_slice_3StridedSlice3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_30/strided_slice_3/stack:output:0(lstm_30/strided_slice_3/stack_1:output:0(lstm_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_30/transpose_1	Transpose3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_30/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_30/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    a
repeat_vector_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :«
repeat_vector_15/ExpandDims
ExpandDims lstm_30/strided_slice_3:output:0(repeat_vector_15/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
repeat_vector_15/stackConst*
_output_shapes
:*
dtype0*!
valueB"         
repeat_vector_15/TileTile$repeat_vector_15/ExpandDims:output:0repeat_vector_15/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_31/ShapeShaperepeat_vector_15/Tile:output:0*
T0*
_output_shapes
:e
lstm_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_31/strided_sliceStridedSlicelstm_31/Shape:output:0$lstm_31/strided_slice/stack:output:0&lstm_31/strided_slice/stack_1:output:0&lstm_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_31/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_31/zeros/packedPacklstm_31/strided_slice:output:0lstm_31/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_31/zerosFilllstm_31/zeros/packed:output:0lstm_31/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_31/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_31/zeros_1/packedPacklstm_31/strided_slice:output:0!lstm_31/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_31/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_31/zeros_1Filllstm_31/zeros_1/packed:output:0lstm_31/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_31/transpose	Transposerepeat_vector_15/Tile:output:0lstm_31/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_31/Shape_1Shapelstm_31/transpose:y:0*
T0*
_output_shapes
:g
lstm_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_31/strided_slice_1StridedSlicelstm_31/Shape_1:output:0&lstm_31/strided_slice_1/stack:output:0(lstm_31/strided_slice_1/stack_1:output:0(lstm_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_31/TensorArrayV2TensorListReserve,lstm_31/TensorArrayV2/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_31/transpose:y:0Flstm_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_31/strided_slice_2StridedSlicelstm_31/transpose:y:0&lstm_31/strided_slice_2/stack:output:0(lstm_31/strided_slice_2/stack_1:output:0(lstm_31/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
*lstm_31/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3lstm_31_lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0®
lstm_31/lstm_cell_31/MatMulMatMul lstm_31/strided_slice_2:output:02lstm_31/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5lstm_31_lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0¨
lstm_31/lstm_cell_31/MatMul_1MatMullstm_31/zeros:output:04lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¤
lstm_31/lstm_cell_31/addAddV2%lstm_31/lstm_cell_31/MatMul:product:0'lstm_31/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4lstm_31_lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0­
lstm_31/lstm_cell_31/BiasAddBiasAddlstm_31/lstm_cell_31/add:z:03lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈf
$lstm_31/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_31/lstm_cell_31/splitSplit-lstm_31/lstm_cell_31/split/split_dim:output:0%lstm_31/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split~
lstm_31/lstm_cell_31/SigmoidSigmoid#lstm_31/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/Sigmoid_1Sigmoid#lstm_31/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/mulMul"lstm_31/lstm_cell_31/Sigmoid_1:y:0lstm_31/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
lstm_31/lstm_cell_31/ReluRelu#lstm_31/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/mul_1Mul lstm_31/lstm_cell_31/Sigmoid:y:0'lstm_31/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/add_1AddV2lstm_31/lstm_cell_31/mul:z:0lstm_31/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/Sigmoid_2Sigmoid#lstm_31/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2u
lstm_31/lstm_cell_31/Relu_1Relulstm_31/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
lstm_31/lstm_cell_31/mul_2Mul"lstm_31/lstm_cell_31/Sigmoid_2:y:0)lstm_31/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_31/TensorArrayV2_1TensorListReserve.lstm_31/TensorArrayV2_1/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_31/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_31/whileWhile#lstm_31/while/loop_counter:output:0)lstm_31/while/maximum_iterations:output:0lstm_31/time:output:0 lstm_31/TensorArrayV2_1:handle:0lstm_31/zeros:output:0lstm_31/zeros_1:output:0 lstm_31/strided_slice_1:output:0?lstm_31/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_31_lstm_cell_31_matmul_readvariableop_resource5lstm_31_lstm_cell_31_matmul_1_readvariableop_resource4lstm_31_lstm_cell_31_biasadd_readvariableop_resource*
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
lstm_31_while_body_7747893*&
condR
lstm_31_while_cond_7747892*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_31/TensorArrayV2Stack/TensorListStackTensorListStacklstm_31/while:output:3Alstm_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_31/strided_slice_3StridedSlice3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_31/strided_slice_3/stack:output:0(lstm_31/strided_slice_3/stack_1:output:0(lstm_31/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_31/transpose_1	Transpose3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_31/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_31/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
!time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
time_distributed_23/ReshapeReshapelstm_31/transpose_1:y:0*time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
3time_distributed_23/dense_100/MatMul/ReadVariableOpReadVariableOp<time_distributed_23_dense_100_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ã
$time_distributed_23/dense_100/MatMulMatMul$time_distributed_23/Reshape:output:0;time_distributed_23/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4time_distributed_23/dense_100/BiasAdd/ReadVariableOpReadVariableOp=time_distributed_23_dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ð
%time_distributed_23/dense_100/BiasAddBiasAdd.time_distributed_23/dense_100/MatMul:product:0<time_distributed_23/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#time_distributed_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      ¼
time_distributed_23/Reshape_1Reshape.time_distributed_23/dense_100/BiasAdd:output:0,time_distributed_23/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#time_distributed_23/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¡
time_distributed_23/Reshape_2Reshapelstm_31/transpose_1:y:0,time_distributed_23/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
IdentityIdentity&time_distributed_23/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp,^lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp+^lstm_30/lstm_cell_30/MatMul/ReadVariableOp-^lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp^lstm_30/while,^lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp+^lstm_31/lstm_cell_31/MatMul/ReadVariableOp-^lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp^lstm_31/while5^time_distributed_23/dense_100/BiasAdd/ReadVariableOp4^time_distributed_23/dense_100/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp2X
*lstm_30/lstm_cell_30/MatMul/ReadVariableOp*lstm_30/lstm_cell_30/MatMul/ReadVariableOp2\
,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp2
lstm_30/whilelstm_30/while2Z
+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp2X
*lstm_31/lstm_cell_31/MatMul/ReadVariableOp*lstm_31/lstm_cell_31/MatMul/ReadVariableOp2\
,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp2
lstm_31/whilelstm_31/while2l
4time_distributed_23/dense_100/BiasAdd/ReadVariableOp4time_distributed_23/dense_100/BiasAdd/ReadVariableOp2j
3time_distributed_23/dense_100/MatMul/ReadVariableOp3time_distributed_23/dense_100/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ñ
while_body_7746917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_31_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_31_biasadd_readvariableop_resource:	È¢)while/lstm_cell_31/BiasAdd/ReadVariableOp¢(while/lstm_cell_31/MatMul/ReadVariableOp¢*while/lstm_cell_31/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_31/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_31/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_31/addAddV2#while/lstm_cell_31/MatMul:product:0%while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_31/BiasAddBiasAddwhile/lstm_cell_31/add:z:01while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_31/splitSplit+while/lstm_cell_31/split/split_dim:output:0#while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_31/SigmoidSigmoid!while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_1Sigmoid!while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mulMul while/lstm_cell_31/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_31/ReluRelu!while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_1Mulwhile/lstm_cell_31/Sigmoid:y:0%while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/add_1AddV2while/lstm_cell_31/mul:z:0while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_2Sigmoid!while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_31/Relu_1Reluwhile/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_2Mul while/lstm_cell_31/Sigmoid_2:y:0'while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_31/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_31/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_31/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_31/BiasAdd/ReadVariableOp)^while/lstm_cell_31/MatMul/ReadVariableOp+^while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_31_biasadd_readvariableop_resource4while_lstm_cell_31_biasadd_readvariableop_resource_0"l
3while_lstm_cell_31_matmul_1_readvariableop_resource5while_lstm_cell_31_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_31_matmul_readvariableop_resource3while_lstm_cell_31_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_31/BiasAdd/ReadVariableOp)while/lstm_cell_31/BiasAdd/ReadVariableOp2T
(while/lstm_cell_31/MatMul/ReadVariableOp(while/lstm_cell_31/MatMul/ReadVariableOp2X
*while/lstm_cell_31/MatMul_1/ReadVariableOp*while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
while_cond_7748382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7748382___redundant_placeholder05
1while_while_cond_7748382___redundant_placeholder15
1while_while_cond_7748382___redundant_placeholder25
1while_while_cond_7748382___redundant_placeholder3
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
 __inference__traced_save_7749633
file_prefix:
6savev2_lstm_30_lstm_cell_30_kernel_read_readvariableopD
@savev2_lstm_30_lstm_cell_30_recurrent_kernel_read_readvariableop8
4savev2_lstm_30_lstm_cell_30_bias_read_readvariableop:
6savev2_lstm_31_lstm_cell_31_kernel_read_readvariableopD
@savev2_lstm_31_lstm_cell_31_recurrent_kernel_read_readvariableop8
4savev2_lstm_31_lstm_cell_31_bias_read_readvariableop9
5savev2_time_distributed_23_kernel_read_readvariableop7
3savev2_time_distributed_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopA
=savev2_adam_lstm_30_lstm_cell_30_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_30_lstm_cell_30_bias_m_read_readvariableopA
=savev2_adam_lstm_31_lstm_cell_31_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_31_lstm_cell_31_bias_m_read_readvariableop@
<savev2_adam_time_distributed_23_kernel_m_read_readvariableop>
:savev2_adam_time_distributed_23_bias_m_read_readvariableopA
=savev2_adam_lstm_30_lstm_cell_30_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_30_lstm_cell_30_bias_v_read_readvariableopA
=savev2_adam_lstm_31_lstm_cell_31_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_31_lstm_cell_31_bias_v_read_readvariableop@
<savev2_adam_time_distributed_23_kernel_v_read_readvariableop>
:savev2_adam_time_distributed_23_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_lstm_30_lstm_cell_30_kernel_read_readvariableop@savev2_lstm_30_lstm_cell_30_recurrent_kernel_read_readvariableop4savev2_lstm_30_lstm_cell_30_bias_read_readvariableop6savev2_lstm_31_lstm_cell_31_kernel_read_readvariableop@savev2_lstm_31_lstm_cell_31_recurrent_kernel_read_readvariableop4savev2_lstm_31_lstm_cell_31_bias_read_readvariableop5savev2_time_distributed_23_kernel_read_readvariableop3savev2_time_distributed_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop=savev2_adam_lstm_30_lstm_cell_30_kernel_m_read_readvariableopGsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_30_lstm_cell_30_bias_m_read_readvariableop=savev2_adam_lstm_31_lstm_cell_31_kernel_m_read_readvariableopGsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_31_lstm_cell_31_bias_m_read_readvariableop<savev2_adam_time_distributed_23_kernel_m_read_readvariableop:savev2_adam_time_distributed_23_bias_m_read_readvariableop=savev2_adam_lstm_30_lstm_cell_30_kernel_v_read_readvariableopGsavev2_adam_lstm_30_lstm_cell_30_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_30_lstm_cell_30_bias_v_read_readvariableop=savev2_adam_lstm_31_lstm_cell_31_kernel_v_read_readvariableopGsavev2_adam_lstm_31_lstm_cell_31_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_31_lstm_cell_31_bias_v_read_readvariableop<savev2_adam_time_distributed_23_kernel_v_read_readvariableop:savev2_adam_time_distributed_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
©9
Ñ
while_body_7748238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_30_matmul_readvariableop_resource_0:	H
5while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_30_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_30_matmul_readvariableop_resource:	F
3while_lstm_cell_30_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_30_biasadd_readvariableop_resource:	¢)while/lstm_cell_30/BiasAdd/ReadVariableOp¢(while/lstm_cell_30/MatMul/ReadVariableOp¢*while/lstm_cell_30/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_30/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_30/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_30/addAddV2#while/lstm_cell_30/MatMul:product:0%while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_30/BiasAddBiasAddwhile/lstm_cell_30/add:z:01while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_30/splitSplit+while/lstm_cell_30/split/split_dim:output:0#while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_30/SigmoidSigmoid!while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_1Sigmoid!while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mulMul while/lstm_cell_30/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_30/ReluRelu!while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_1Mulwhile/lstm_cell_30/Sigmoid:y:0%while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/add_1AddV2while/lstm_cell_30/mul:z:0while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_2Sigmoid!while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_30/Relu_1Reluwhile/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_2Mul while/lstm_cell_30/Sigmoid_2:y:0'while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_30/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_30/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_30/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_30/BiasAdd/ReadVariableOp)^while/lstm_cell_30/MatMul/ReadVariableOp+^while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_30_biasadd_readvariableop_resource4while_lstm_cell_30_biasadd_readvariableop_resource_0"l
3while_lstm_cell_30_matmul_1_readvariableop_resource5while_lstm_cell_30_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_30_matmul_readvariableop_resource3while_lstm_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_30/BiasAdd/ReadVariableOp)while/lstm_cell_30/BiasAdd/ReadVariableOp2T
(while/lstm_cell_30/MatMul/ReadVariableOp(while/lstm_cell_30/MatMul/ReadVariableOp2X
*while/lstm_cell_30/MatMul_1/ReadVariableOp*while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
$
ê
while_body_7745983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_30_7746007_0:	/
while_lstm_cell_30_7746009_0:	d+
while_lstm_cell_30_7746011_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_30_7746007:	-
while_lstm_cell_30_7746009:	d)
while_lstm_cell_30_7746011:	¢*while/lstm_cell_30/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_30/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_30_7746007_0while_lstm_cell_30_7746009_0while_lstm_cell_30_7746011_0*
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745923r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_30/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_30/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/Identity_5Identity3while/lstm_cell_30/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy

while/NoOpNoOp+^while/lstm_cell_30/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_30_7746007while_lstm_cell_30_7746007_0":
while_lstm_cell_30_7746009while_lstm_cell_30_7746009_0":
while_lstm_cell_30_7746011while_lstm_cell_30_7746011_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2X
*while/lstm_cell_30/StatefulPartitionedCall*while/lstm_cell_30/StatefulPartitionedCall: 
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
ù	
Ï
/__inference_sequential_46_layer_call_fn_7746845
lstm_30_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dÈ
	unknown_3:	2È
	unknown_4:	È
	unknown_5:2
	unknown_6:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7746826s
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
_user_specified_namelstm_30_input
°

J__inference_sequential_46_layer_call_and_return_conditional_losses_7747318
lstm_30_input"
lstm_30_7747295:	"
lstm_30_7747297:	d
lstm_30_7747299:	"
lstm_31_7747303:	dÈ"
lstm_31_7747305:	2È
lstm_31_7747307:	È-
time_distributed_23_7747310:2)
time_distributed_23_7747312:
identity¢lstm_30/StatefulPartitionedCall¢lstm_31/StatefulPartitionedCall¢+time_distributed_23/StatefulPartitionedCall
lstm_30/StatefulPartitionedCallStatefulPartitionedCalllstm_30_inputlstm_30_7747295lstm_30_7747297lstm_30_7747299*
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7747168ï
 repeat_vector_15/PartitionedCallPartitionedCall(lstm_30/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *V
fQRO
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7746074©
lstm_31/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_15/PartitionedCall:output:0lstm_31_7747303lstm_31_7747305lstm_31_7747307*
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7747001Å
+time_distributed_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0time_distributed_23_7747310time_distributed_23_7747312*
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746501r
!time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_23/ReshapeReshape(lstm_31/StatefulPartitionedCall:output:0*time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_23/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall,^time_distributed_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2Z
+time_distributed_23/StatefulPartitionedCall+time_distributed_23/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_30_input
º
È
while_cond_7746725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7746725___redundant_placeholder05
1while_while_cond_7746725___redundant_placeholder15
1while_while_cond_7746725___redundant_placeholder25
1while_while_cond_7746725___redundant_placeholder3
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
ä	
È
/__inference_sequential_46_layer_call_fn_7747368

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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7746826s
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
ù
¶
)__inference_lstm_30_layer_call_fn_7748022

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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7746659o
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
º
È
while_cond_7746348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7746348___redundant_placeholder05
1while_while_cond_7746348___redundant_placeholder15
1while_while_cond_7746348___redundant_placeholder25
1while_while_cond_7746348___redundant_placeholder3
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
÷"
ê
while_body_7746349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_31_7746373_0:	dÈ/
while_lstm_cell_31_7746375_0:	2È+
while_lstm_cell_31_7746377_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_31_7746373:	dÈ-
while_lstm_cell_31_7746375:	2È)
while_lstm_cell_31_7746377:	È¢*while/lstm_cell_31/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0·
*while/lstm_cell_31/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_31_7746373_0while_lstm_cell_31_7746375_0while_lstm_cell_31_7746377_0*
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746290Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_31/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_31/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Identity3while/lstm_cell_31/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y

while/NoOpNoOp+^while/lstm_cell_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_31_7746373while_lstm_cell_31_7746373_0":
while_lstm_cell_31_7746375while_lstm_cell_31_7746375_0":
while_lstm_cell_31_7746377while_lstm_cell_31_7746377_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2X
*while/lstm_cell_31/StatefulPartitionedCall*while/lstm_cell_31/StatefulPartitionedCall: 
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
¹â
°

"__inference__wrapped_model_7745708
lstm_30_inputT
Asequential_46_lstm_30_lstm_cell_30_matmul_readvariableop_resource:	V
Csequential_46_lstm_30_lstm_cell_30_matmul_1_readvariableop_resource:	dQ
Bsequential_46_lstm_30_lstm_cell_30_biasadd_readvariableop_resource:	T
Asequential_46_lstm_31_lstm_cell_31_matmul_readvariableop_resource:	dÈV
Csequential_46_lstm_31_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈQ
Bsequential_46_lstm_31_lstm_cell_31_biasadd_readvariableop_resource:	È\
Jsequential_46_time_distributed_23_dense_100_matmul_readvariableop_resource:2Y
Ksequential_46_time_distributed_23_dense_100_biasadd_readvariableop_resource:
identity¢9sequential_46/lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp¢8sequential_46/lstm_30/lstm_cell_30/MatMul/ReadVariableOp¢:sequential_46/lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp¢sequential_46/lstm_30/while¢9sequential_46/lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp¢8sequential_46/lstm_31/lstm_cell_31/MatMul/ReadVariableOp¢:sequential_46/lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp¢sequential_46/lstm_31/while¢Bsequential_46/time_distributed_23/dense_100/BiasAdd/ReadVariableOp¢Asequential_46/time_distributed_23/dense_100/MatMul/ReadVariableOpX
sequential_46/lstm_30/ShapeShapelstm_30_input*
T0*
_output_shapes
:s
)sequential_46/lstm_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_46/lstm_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_46/lstm_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_46/lstm_30/strided_sliceStridedSlice$sequential_46/lstm_30/Shape:output:02sequential_46/lstm_30/strided_slice/stack:output:04sequential_46/lstm_30/strided_slice/stack_1:output:04sequential_46/lstm_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_46/lstm_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dµ
"sequential_46/lstm_30/zeros/packedPack,sequential_46/lstm_30/strided_slice:output:0-sequential_46/lstm_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_46/lstm_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_46/lstm_30/zerosFill+sequential_46/lstm_30/zeros/packed:output:0*sequential_46/lstm_30/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&sequential_46/lstm_30/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d¹
$sequential_46/lstm_30/zeros_1/packedPack,sequential_46/lstm_30/strided_slice:output:0/sequential_46/lstm_30/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_46/lstm_30/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_46/lstm_30/zeros_1Fill-sequential_46/lstm_30/zeros_1/packed:output:0,sequential_46/lstm_30/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_46/lstm_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_46/lstm_30/transpose	Transposelstm_30_input-sequential_46/lstm_30/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
sequential_46/lstm_30/Shape_1Shape#sequential_46/lstm_30/transpose:y:0*
T0*
_output_shapes
:u
+sequential_46/lstm_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_46/lstm_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_46/lstm_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_46/lstm_30/strided_slice_1StridedSlice&sequential_46/lstm_30/Shape_1:output:04sequential_46/lstm_30/strided_slice_1/stack:output:06sequential_46/lstm_30/strided_slice_1/stack_1:output:06sequential_46/lstm_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_46/lstm_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_46/lstm_30/TensorArrayV2TensorListReserve:sequential_46/lstm_30/TensorArrayV2/element_shape:output:0.sequential_46/lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_46/lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_46/lstm_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_46/lstm_30/transpose:y:0Tsequential_46/lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_46/lstm_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_46/lstm_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_46/lstm_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_46/lstm_30/strided_slice_2StridedSlice#sequential_46/lstm_30/transpose:y:04sequential_46/lstm_30/strided_slice_2/stack:output:06sequential_46/lstm_30/strided_slice_2/stack_1:output:06sequential_46/lstm_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask»
8sequential_46/lstm_30/lstm_cell_30/MatMul/ReadVariableOpReadVariableOpAsequential_46_lstm_30_lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
)sequential_46/lstm_30/lstm_cell_30/MatMulMatMul.sequential_46/lstm_30/strided_slice_2:output:0@sequential_46/lstm_30/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
:sequential_46/lstm_30/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOpCsequential_46_lstm_30_lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ò
+sequential_46/lstm_30/lstm_cell_30/MatMul_1MatMul$sequential_46/lstm_30/zeros:output:0Bsequential_46/lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
&sequential_46/lstm_30/lstm_cell_30/addAddV23sequential_46/lstm_30/lstm_cell_30/MatMul:product:05sequential_46/lstm_30/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9sequential_46/lstm_30/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOpBsequential_46_lstm_30_lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0×
*sequential_46/lstm_30/lstm_cell_30/BiasAddBiasAdd*sequential_46/lstm_30/lstm_cell_30/add:z:0Asequential_46/lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
2sequential_46/lstm_30/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_46/lstm_30/lstm_cell_30/splitSplit;sequential_46/lstm_30/lstm_cell_30/split/split_dim:output:03sequential_46/lstm_30/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split
*sequential_46/lstm_30/lstm_cell_30/SigmoidSigmoid1sequential_46/lstm_30/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_46/lstm_30/lstm_cell_30/Sigmoid_1Sigmoid1sequential_46/lstm_30/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¹
&sequential_46/lstm_30/lstm_cell_30/mulMul0sequential_46/lstm_30/lstm_cell_30/Sigmoid_1:y:0&sequential_46/lstm_30/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'sequential_46/lstm_30/lstm_cell_30/ReluRelu1sequential_46/lstm_30/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÈ
(sequential_46/lstm_30/lstm_cell_30/mul_1Mul.sequential_46/lstm_30/lstm_cell_30/Sigmoid:y:05sequential_46/lstm_30/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd½
(sequential_46/lstm_30/lstm_cell_30/add_1AddV2*sequential_46/lstm_30/lstm_cell_30/mul:z:0,sequential_46/lstm_30/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_46/lstm_30/lstm_cell_30/Sigmoid_2Sigmoid1sequential_46/lstm_30/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
)sequential_46/lstm_30/lstm_cell_30/Relu_1Relu,sequential_46/lstm_30/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÌ
(sequential_46/lstm_30/lstm_cell_30/mul_2Mul0sequential_46/lstm_30/lstm_cell_30/Sigmoid_2:y:07sequential_46/lstm_30/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential_46/lstm_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   t
2sequential_46/lstm_30/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_46/lstm_30/TensorArrayV2_1TensorListReserve<sequential_46/lstm_30/TensorArrayV2_1/element_shape:output:0;sequential_46/lstm_30/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_46/lstm_30/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_46/lstm_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_46/lstm_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
sequential_46/lstm_30/whileWhile1sequential_46/lstm_30/while/loop_counter:output:07sequential_46/lstm_30/while/maximum_iterations:output:0#sequential_46/lstm_30/time:output:0.sequential_46/lstm_30/TensorArrayV2_1:handle:0$sequential_46/lstm_30/zeros:output:0&sequential_46/lstm_30/zeros_1:output:0.sequential_46/lstm_30/strided_slice_1:output:0Msequential_46/lstm_30/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_46_lstm_30_lstm_cell_30_matmul_readvariableop_resourceCsequential_46_lstm_30_lstm_cell_30_matmul_1_readvariableop_resourceBsequential_46_lstm_30_lstm_cell_30_biasadd_readvariableop_resource*
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
(sequential_46_lstm_30_while_body_7745468*4
cond,R*
(sequential_46_lstm_30_while_cond_7745467*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
Fsequential_46/lstm_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
8sequential_46/lstm_30/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_46/lstm_30/while:output:3Osequential_46/lstm_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elements~
+sequential_46/lstm_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_46/lstm_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_46/lstm_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_46/lstm_30/strided_slice_3StridedSliceAsequential_46/lstm_30/TensorArrayV2Stack/TensorListStack:tensor:04sequential_46/lstm_30/strided_slice_3/stack:output:06sequential_46/lstm_30/strided_slice_3/stack_1:output:06sequential_46/lstm_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask{
&sequential_46/lstm_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_46/lstm_30/transpose_1	TransposeAsequential_46/lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_46/lstm_30/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
sequential_46/lstm_30/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
-sequential_46/repeat_vector_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Õ
)sequential_46/repeat_vector_15/ExpandDims
ExpandDims.sequential_46/lstm_30/strided_slice_3:output:06sequential_46/repeat_vector_15/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
$sequential_46/repeat_vector_15/stackConst*
_output_shapes
:*
dtype0*!
valueB"         Ä
#sequential_46/repeat_vector_15/TileTile2sequential_46/repeat_vector_15/ExpandDims:output:0-sequential_46/repeat_vector_15/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
sequential_46/lstm_31/ShapeShape,sequential_46/repeat_vector_15/Tile:output:0*
T0*
_output_shapes
:s
)sequential_46/lstm_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_46/lstm_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_46/lstm_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_46/lstm_31/strided_sliceStridedSlice$sequential_46/lstm_31/Shape:output:02sequential_46/lstm_31/strided_slice/stack:output:04sequential_46/lstm_31/strided_slice/stack_1:output:04sequential_46/lstm_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_46/lstm_31/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2µ
"sequential_46/lstm_31/zeros/packedPack,sequential_46/lstm_31/strided_slice:output:0-sequential_46/lstm_31/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_46/lstm_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_46/lstm_31/zerosFill+sequential_46/lstm_31/zeros/packed:output:0*sequential_46/lstm_31/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
&sequential_46/lstm_31/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2¹
$sequential_46/lstm_31/zeros_1/packedPack,sequential_46/lstm_31/strided_slice:output:0/sequential_46/lstm_31/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_46/lstm_31/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_46/lstm_31/zeros_1Fill-sequential_46/lstm_31/zeros_1/packed:output:0,sequential_46/lstm_31/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
$sequential_46/lstm_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¿
sequential_46/lstm_31/transpose	Transpose,sequential_46/repeat_vector_15/Tile:output:0-sequential_46/lstm_31/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
sequential_46/lstm_31/Shape_1Shape#sequential_46/lstm_31/transpose:y:0*
T0*
_output_shapes
:u
+sequential_46/lstm_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_46/lstm_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_46/lstm_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_46/lstm_31/strided_slice_1StridedSlice&sequential_46/lstm_31/Shape_1:output:04sequential_46/lstm_31/strided_slice_1/stack:output:06sequential_46/lstm_31/strided_slice_1/stack_1:output:06sequential_46/lstm_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_46/lstm_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_46/lstm_31/TensorArrayV2TensorListReserve:sequential_46/lstm_31/TensorArrayV2/element_shape:output:0.sequential_46/lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_46/lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¢
=sequential_46/lstm_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_46/lstm_31/transpose:y:0Tsequential_46/lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_46/lstm_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_46/lstm_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_46/lstm_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_46/lstm_31/strided_slice_2StridedSlice#sequential_46/lstm_31/transpose:y:04sequential_46/lstm_31/strided_slice_2/stack:output:06sequential_46/lstm_31/strided_slice_2/stack_1:output:06sequential_46/lstm_31/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask»
8sequential_46/lstm_31/lstm_cell_31/MatMul/ReadVariableOpReadVariableOpAsequential_46_lstm_31_lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0Ø
)sequential_46/lstm_31/lstm_cell_31/MatMulMatMul.sequential_46/lstm_31/strided_slice_2:output:0@sequential_46/lstm_31/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¿
:sequential_46/lstm_31/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOpCsequential_46_lstm_31_lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0Ò
+sequential_46/lstm_31/lstm_cell_31/MatMul_1MatMul$sequential_46/lstm_31/zeros:output:0Bsequential_46/lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÎ
&sequential_46/lstm_31/lstm_cell_31/addAddV23sequential_46/lstm_31/lstm_cell_31/MatMul:product:05sequential_46/lstm_31/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¹
9sequential_46/lstm_31/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOpBsequential_46_lstm_31_lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0×
*sequential_46/lstm_31/lstm_cell_31/BiasAddBiasAdd*sequential_46/lstm_31/lstm_cell_31/add:z:0Asequential_46/lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈt
2sequential_46/lstm_31/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_46/lstm_31/lstm_cell_31/splitSplit;sequential_46/lstm_31/lstm_cell_31/split/split_dim:output:03sequential_46/lstm_31/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
*sequential_46/lstm_31/lstm_cell_31/SigmoidSigmoid1sequential_46/lstm_31/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_46/lstm_31/lstm_cell_31/Sigmoid_1Sigmoid1sequential_46/lstm_31/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
&sequential_46/lstm_31/lstm_cell_31/mulMul0sequential_46/lstm_31/lstm_cell_31/Sigmoid_1:y:0&sequential_46/lstm_31/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'sequential_46/lstm_31/lstm_cell_31/ReluRelu1sequential_46/lstm_31/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2È
(sequential_46/lstm_31/lstm_cell_31/mul_1Mul.sequential_46/lstm_31/lstm_cell_31/Sigmoid:y:05sequential_46/lstm_31/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2½
(sequential_46/lstm_31/lstm_cell_31/add_1AddV2*sequential_46/lstm_31/lstm_cell_31/mul:z:0,sequential_46/lstm_31/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
,sequential_46/lstm_31/lstm_cell_31/Sigmoid_2Sigmoid1sequential_46/lstm_31/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
)sequential_46/lstm_31/lstm_cell_31/Relu_1Relu,sequential_46/lstm_31/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ì
(sequential_46/lstm_31/lstm_cell_31/mul_2Mul0sequential_46/lstm_31/lstm_cell_31/Sigmoid_2:y:07sequential_46/lstm_31/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
3sequential_46/lstm_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ú
%sequential_46/lstm_31/TensorArrayV2_1TensorListReserve<sequential_46/lstm_31/TensorArrayV2_1/element_shape:output:0.sequential_46/lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_46/lstm_31/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_46/lstm_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_46/lstm_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
sequential_46/lstm_31/whileWhile1sequential_46/lstm_31/while/loop_counter:output:07sequential_46/lstm_31/while/maximum_iterations:output:0#sequential_46/lstm_31/time:output:0.sequential_46/lstm_31/TensorArrayV2_1:handle:0$sequential_46/lstm_31/zeros:output:0&sequential_46/lstm_31/zeros_1:output:0.sequential_46/lstm_31/strided_slice_1:output:0Msequential_46/lstm_31/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_46_lstm_31_lstm_cell_31_matmul_readvariableop_resourceCsequential_46_lstm_31_lstm_cell_31_matmul_1_readvariableop_resourceBsequential_46_lstm_31_lstm_cell_31_biasadd_readvariableop_resource*
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
(sequential_46_lstm_31_while_body_7745612*4
cond,R*
(sequential_46_lstm_31_while_cond_7745611*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
Fsequential_46/lstm_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
8sequential_46/lstm_31/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_46/lstm_31/while:output:3Osequential_46/lstm_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0~
+sequential_46/lstm_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_46/lstm_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_46/lstm_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_46/lstm_31/strided_slice_3StridedSliceAsequential_46/lstm_31/TensorArrayV2Stack/TensorListStack:tensor:04sequential_46/lstm_31/strided_slice_3/stack:output:06sequential_46/lstm_31/strided_slice_3/stack_1:output:06sequential_46/lstm_31/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask{
&sequential_46/lstm_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_46/lstm_31/transpose_1	TransposeAsequential_46/lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_46/lstm_31/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_46/lstm_31/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
/sequential_46/time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ç
)sequential_46/time_distributed_23/ReshapeReshape%sequential_46/lstm_31/transpose_1:y:08sequential_46/time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ì
Asequential_46/time_distributed_23/dense_100/MatMul/ReadVariableOpReadVariableOpJsequential_46_time_distributed_23_dense_100_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0í
2sequential_46/time_distributed_23/dense_100/MatMulMatMul2sequential_46/time_distributed_23/Reshape:output:0Isequential_46/time_distributed_23/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
Bsequential_46/time_distributed_23/dense_100/BiasAdd/ReadVariableOpReadVariableOpKsequential_46_time_distributed_23_dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ú
3sequential_46/time_distributed_23/dense_100/BiasAddBiasAdd<sequential_46/time_distributed_23/dense_100/MatMul:product:0Jsequential_46/time_distributed_23/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_46/time_distributed_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      æ
+sequential_46/time_distributed_23/Reshape_1Reshape<sequential_46/time_distributed_23/dense_100/BiasAdd:output:0:sequential_46/time_distributed_23/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_46/time_distributed_23/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ë
+sequential_46/time_distributed_23/Reshape_2Reshape%sequential_46/lstm_31/transpose_1:y:0:sequential_46/time_distributed_23/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4sequential_46/time_distributed_23/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp:^sequential_46/lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp9^sequential_46/lstm_30/lstm_cell_30/MatMul/ReadVariableOp;^sequential_46/lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp^sequential_46/lstm_30/while:^sequential_46/lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp9^sequential_46/lstm_31/lstm_cell_31/MatMul/ReadVariableOp;^sequential_46/lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp^sequential_46/lstm_31/whileC^sequential_46/time_distributed_23/dense_100/BiasAdd/ReadVariableOpB^sequential_46/time_distributed_23/dense_100/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2v
9sequential_46/lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp9sequential_46/lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp2t
8sequential_46/lstm_30/lstm_cell_30/MatMul/ReadVariableOp8sequential_46/lstm_30/lstm_cell_30/MatMul/ReadVariableOp2x
:sequential_46/lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp:sequential_46/lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp2:
sequential_46/lstm_30/whilesequential_46/lstm_30/while2v
9sequential_46/lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp9sequential_46/lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp2t
8sequential_46/lstm_31/lstm_cell_31/MatMul/ReadVariableOp8sequential_46/lstm_31/lstm_cell_31/MatMul/ReadVariableOp2x
:sequential_46/lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp:sequential_46/lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp2:
sequential_46/lstm_31/whilesequential_46/lstm_31/while2
Bsequential_46/time_distributed_23/dense_100/BiasAdd/ReadVariableOpBsequential_46/time_distributed_23/dense_100/BiasAdd/ReadVariableOp2
Asequential_46/time_distributed_23/dense_100/MatMul/ReadVariableOpAsequential_46/time_distributed_23/dense_100/MatMul/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_30_input
º
È
while_cond_7746916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7746916___redundant_placeholder05
1while_while_cond_7746916___redundant_placeholder15
1while_while_cond_7746916___redundant_placeholder25
1while_while_cond_7746916___redundant_placeholder3
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
Ö

I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746144

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
£

(sequential_46_lstm_31_while_cond_7745611H
Dsequential_46_lstm_31_while_sequential_46_lstm_31_while_loop_counterN
Jsequential_46_lstm_31_while_sequential_46_lstm_31_while_maximum_iterations+
'sequential_46_lstm_31_while_placeholder-
)sequential_46_lstm_31_while_placeholder_1-
)sequential_46_lstm_31_while_placeholder_2-
)sequential_46_lstm_31_while_placeholder_3J
Fsequential_46_lstm_31_while_less_sequential_46_lstm_31_strided_slice_1a
]sequential_46_lstm_31_while_sequential_46_lstm_31_while_cond_7745611___redundant_placeholder0a
]sequential_46_lstm_31_while_sequential_46_lstm_31_while_cond_7745611___redundant_placeholder1a
]sequential_46_lstm_31_while_sequential_46_lstm_31_while_cond_7745611___redundant_placeholder2a
]sequential_46_lstm_31_while_sequential_46_lstm_31_while_cond_7745611___redundant_placeholder3(
$sequential_46_lstm_31_while_identity
º
 sequential_46/lstm_31/while/LessLess'sequential_46_lstm_31_while_placeholderFsequential_46_lstm_31_while_less_sequential_46_lstm_31_strided_slice_1*
T0*
_output_shapes
: w
$sequential_46/lstm_31/while/IdentityIdentity$sequential_46/lstm_31/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_46_lstm_31_while_identity-sequential_46/lstm_31/while/Identity:output:0*(
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
while_cond_7748871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7748871___redundant_placeholder05
1while_while_cond_7748871___redundant_placeholder15
1while_while_cond_7748871___redundant_placeholder25
1while_while_cond_7748871___redundant_placeholder3
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
¦J

D__inference_lstm_31_layer_call_and_return_conditional_losses_7749099

inputs>
+lstm_cell_31_matmul_readvariableop_resource:	dÈ@
-lstm_cell_31_matmul_1_readvariableop_resource:	2È;
,lstm_cell_31_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_31/BiasAdd/ReadVariableOp¢"lstm_cell_31/MatMul/ReadVariableOp¢$lstm_cell_31/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_31/MatMul/ReadVariableOpReadVariableOp+lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_31/MatMulMatMulstrided_slice_2:output:0*lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_31/MatMul_1MatMulzeros:output:0,lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_31/addAddV2lstm_cell_31/MatMul:product:0lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_31/BiasAddBiasAddlstm_cell_31/add:z:0+lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_31/splitSplit%lstm_cell_31/split/split_dim:output:0lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_31/SigmoidSigmoidlstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_1Sigmoidlstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_31/mulMullstm_cell_31/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_31/ReluRelulstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_1Mullstm_cell_31/Sigmoid:y:0lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_31/add_1AddV2lstm_cell_31/mul:z:0lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_2Sigmoidlstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_31/Relu_1Relulstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_2Mullstm_cell_31/Sigmoid_2:y:0!lstm_cell_31/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_31_matmul_readvariableop_resource-lstm_cell_31_matmul_1_readvariableop_resource,lstm_cell_31_biasadd_readvariableop_resource*
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
while_body_7749015*
condR
while_cond_7749014*K
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
NoOpNoOp$^lstm_cell_31/BiasAdd/ReadVariableOp#^lstm_cell_31/MatMul/ReadVariableOp%^lstm_cell_31/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_31/BiasAdd/ReadVariableOp#lstm_cell_31/BiasAdd/ReadVariableOp2H
"lstm_cell_31/MatMul/ReadVariableOp"lstm_cell_31/MatMul/ReadVariableOp2L
$lstm_cell_31/MatMul_1/ReadVariableOp$lstm_cell_31/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
8
Ñ
while_body_7749158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_31_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_31_biasadd_readvariableop_resource:	È¢)while/lstm_cell_31/BiasAdd/ReadVariableOp¢(while/lstm_cell_31/MatMul/ReadVariableOp¢*while/lstm_cell_31/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_31/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_31/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_31/addAddV2#while/lstm_cell_31/MatMul:product:0%while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_31/BiasAddBiasAddwhile/lstm_cell_31/add:z:01while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_31/splitSplit+while/lstm_cell_31/split/split_dim:output:0#while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_31/SigmoidSigmoid!while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_1Sigmoid!while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mulMul while/lstm_cell_31/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_31/ReluRelu!while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_1Mulwhile/lstm_cell_31/Sigmoid:y:0%while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/add_1AddV2while/lstm_cell_31/mul:z:0while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_2Sigmoid!while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_31/Relu_1Reluwhile/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_2Mul while/lstm_cell_31/Sigmoid_2:y:0'while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_31/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_31/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_31/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_31/BiasAdd/ReadVariableOp)^while/lstm_cell_31/MatMul/ReadVariableOp+^while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_31_biasadd_readvariableop_resource4while_lstm_cell_31_biasadd_readvariableop_resource_0"l
3while_lstm_cell_31_matmul_1_readvariableop_resource5while_lstm_cell_31_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_31_matmul_readvariableop_resource3while_lstm_cell_31_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_31/BiasAdd/ReadVariableOp)while/lstm_cell_31/BiasAdd/ReadVariableOp2T
(while/lstm_cell_31/MatMul/ReadVariableOp(while/lstm_cell_31/MatMul/ReadVariableOp2X
*while/lstm_cell_31/MatMul_1/ReadVariableOp*while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
ÏK

D__inference_lstm_30_layer_call_and_return_conditional_losses_7748178
inputs_0>
+lstm_cell_30_matmul_readvariableop_resource:	@
-lstm_cell_30_matmul_1_readvariableop_resource:	d;
,lstm_cell_30_biasadd_readvariableop_resource:	
identity¢#lstm_cell_30/BiasAdd/ReadVariableOp¢"lstm_cell_30/MatMul/ReadVariableOp¢$lstm_cell_30/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_30/MatMul/ReadVariableOpReadVariableOp+lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_30/MatMulMatMulstrided_slice_2:output:0*lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_30/MatMul_1MatMulzeros:output:0,lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_30/addAddV2lstm_cell_30/MatMul:product:0lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_30/BiasAddBiasAddlstm_cell_30/add:z:0+lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_30/splitSplit%lstm_cell_30/split/split_dim:output:0lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_30/SigmoidSigmoidlstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_1Sigmoidlstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_30/mulMullstm_cell_30/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_30/ReluRelulstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_1Mullstm_cell_30/Sigmoid:y:0lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_30/add_1AddV2lstm_cell_30/mul:z:0lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_2Sigmoidlstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_30/Relu_1Relulstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_2Mullstm_cell_30/Sigmoid_2:y:0!lstm_cell_30/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_30_matmul_readvariableop_resource-lstm_cell_30_matmul_1_readvariableop_resource,lstm_cell_30_biasadd_readvariableop_resource*
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
while_body_7748093*
condR
while_cond_7748092*K
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
NoOpNoOp$^lstm_cell_30/BiasAdd/ReadVariableOp#^lstm_cell_30/MatMul/ReadVariableOp%^lstm_cell_30/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_30/BiasAdd/ReadVariableOp#lstm_cell_30/BiasAdd/ReadVariableOp2H
"lstm_cell_30/MatMul/ReadVariableOp"lstm_cell_30/MatMul/ReadVariableOp2L
$lstm_cell_30/MatMul_1/ReadVariableOp$lstm_cell_30/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
º
È
while_cond_7747082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7747082___redundant_placeholder05
1while_while_cond_7747082___redundant_placeholder15
1while_while_cond_7747082___redundant_placeholder25
1while_while_cond_7747082___redundant_placeholder3
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
ÆA
Ñ

lstm_31_while_body_7747893,
(lstm_31_while_lstm_31_while_loop_counter2
.lstm_31_while_lstm_31_while_maximum_iterations
lstm_31_while_placeholder
lstm_31_while_placeholder_1
lstm_31_while_placeholder_2
lstm_31_while_placeholder_3+
'lstm_31_while_lstm_31_strided_slice_1_0g
clstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈP
=lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈK
<lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
lstm_31_while_identity
lstm_31_while_identity_1
lstm_31_while_identity_2
lstm_31_while_identity_3
lstm_31_while_identity_4
lstm_31_while_identity_5)
%lstm_31_while_lstm_31_strided_slice_1e
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorL
9lstm_31_while_lstm_cell_31_matmul_readvariableop_resource:	dÈN
;lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈI
:lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource:	È¢1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp¢0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp¢2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp
?lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   Î
1lstm_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0lstm_31_while_placeholderHlstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp;lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0Ò
!lstm_31/while/lstm_cell_31/MatMulMatMul8lstm_31/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ±
2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp=lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¹
#lstm_31/while/lstm_cell_31/MatMul_1MatMullstm_31_while_placeholder_2:lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¶
lstm_31/while/lstm_cell_31/addAddV2+lstm_31/while/lstm_cell_31/MatMul:product:0-lstm_31/while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ«
1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp<lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0¿
"lstm_31/while/lstm_cell_31/BiasAddBiasAdd"lstm_31/while/lstm_cell_31/add:z:09lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈl
*lstm_31/while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_31/while/lstm_cell_31/splitSplit3lstm_31/while/lstm_cell_31/split/split_dim:output:0+lstm_31/while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split
"lstm_31/while/lstm_cell_31/SigmoidSigmoid)lstm_31/while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_31/while/lstm_cell_31/Sigmoid_1Sigmoid)lstm_31/while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/while/lstm_cell_31/mulMul(lstm_31/while/lstm_cell_31/Sigmoid_1:y:0lstm_31_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/while/lstm_cell_31/ReluRelu)lstm_31/while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
 lstm_31/while/lstm_cell_31/mul_1Mul&lstm_31/while/lstm_cell_31/Sigmoid:y:0-lstm_31/while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¥
 lstm_31/while/lstm_cell_31/add_1AddV2"lstm_31/while/lstm_cell_31/mul:z:0$lstm_31/while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
$lstm_31/while/lstm_cell_31/Sigmoid_2Sigmoid)lstm_31/while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!lstm_31/while/lstm_cell_31/Relu_1Relu$lstm_31/while/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2´
 lstm_31/while/lstm_cell_31/mul_2Mul(lstm_31/while/lstm_cell_31/Sigmoid_2:y:0/lstm_31/while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2å
2lstm_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_31_while_placeholder_1lstm_31_while_placeholder$lstm_31/while/lstm_cell_31/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_31/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_31/while/addAddV2lstm_31_while_placeholderlstm_31/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_31/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_31/while/add_1AddV2(lstm_31_while_lstm_31_while_loop_counterlstm_31/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_31/while/IdentityIdentitylstm_31/while/add_1:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: 
lstm_31/while/Identity_1Identity.lstm_31_while_lstm_31_while_maximum_iterations^lstm_31/while/NoOp*
T0*
_output_shapes
: q
lstm_31/while/Identity_2Identitylstm_31/while/add:z:0^lstm_31/while/NoOp*
T0*
_output_shapes
: 
lstm_31/while/Identity_3IdentityBlstm_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_31/while/NoOp*
T0*
_output_shapes
: 
lstm_31/while/Identity_4Identity$lstm_31/while/lstm_cell_31/mul_2:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/while/Identity_5Identity$lstm_31/while/lstm_cell_31/add_1:z:0^lstm_31/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ð
lstm_31/while/NoOpNoOp2^lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp1^lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp3^lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_31_while_identitylstm_31/while/Identity:output:0"=
lstm_31_while_identity_1!lstm_31/while/Identity_1:output:0"=
lstm_31_while_identity_2!lstm_31/while/Identity_2:output:0"=
lstm_31_while_identity_3!lstm_31/while/Identity_3:output:0"=
lstm_31_while_identity_4!lstm_31/while/Identity_4:output:0"=
lstm_31_while_identity_5!lstm_31/while/Identity_5:output:0"P
%lstm_31_while_lstm_31_strided_slice_1'lstm_31_while_lstm_31_strided_slice_1_0"z
:lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource<lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0"|
;lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource=lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0"x
9lstm_31_while_lstm_cell_31_matmul_readvariableop_resource;lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0"È
alstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensorclstm_31_while_tensorarrayv2read_tensorlistgetitem_lstm_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2f
1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp1lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp2d
0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp0lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp2h
2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp2lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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

¶
)__inference_lstm_31_layer_call_fn_7748670

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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7747001s
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
Ú»
Õ
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747689

inputsF
3lstm_30_lstm_cell_30_matmul_readvariableop_resource:	H
5lstm_30_lstm_cell_30_matmul_1_readvariableop_resource:	dC
4lstm_30_lstm_cell_30_biasadd_readvariableop_resource:	F
3lstm_31_lstm_cell_31_matmul_readvariableop_resource:	dÈH
5lstm_31_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈC
4lstm_31_lstm_cell_31_biasadd_readvariableop_resource:	ÈN
<time_distributed_23_dense_100_matmul_readvariableop_resource:2K
=time_distributed_23_dense_100_biasadd_readvariableop_resource:
identity¢+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp¢*lstm_30/lstm_cell_30/MatMul/ReadVariableOp¢,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp¢lstm_30/while¢+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp¢*lstm_31/lstm_cell_31/MatMul/ReadVariableOp¢,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp¢lstm_31/while¢4time_distributed_23/dense_100/BiasAdd/ReadVariableOp¢3time_distributed_23/dense_100/MatMul/ReadVariableOpC
lstm_30/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_30/strided_sliceStridedSlicelstm_30/Shape:output:0$lstm_30/strided_slice/stack:output:0&lstm_30/strided_slice/stack_1:output:0&lstm_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_30/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_30/zeros/packedPacklstm_30/strided_slice:output:0lstm_30/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_30/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_30/zerosFilllstm_30/zeros/packed:output:0lstm_30/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
lstm_30/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_30/zeros_1/packedPacklstm_30/strided_slice:output:0!lstm_30/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_30/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_30/zeros_1Filllstm_30/zeros_1/packed:output:0lstm_30/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
lstm_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_30/transpose	Transposeinputslstm_30/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
lstm_30/Shape_1Shapelstm_30/transpose:y:0*
T0*
_output_shapes
:g
lstm_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_30/strided_slice_1StridedSlicelstm_30/Shape_1:output:0&lstm_30/strided_slice_1/stack:output:0(lstm_30/strided_slice_1/stack_1:output:0(lstm_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_30/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_30/TensorArrayV2TensorListReserve,lstm_30/TensorArrayV2/element_shape:output:0 lstm_30/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_30/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_30/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_30/transpose:y:0Flstm_30/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_30/strided_slice_2StridedSlicelstm_30/transpose:y:0&lstm_30/strided_slice_2/stack:output:0(lstm_30/strided_slice_2/stack_1:output:0(lstm_30/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_30/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3lstm_30_lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0®
lstm_30/lstm_cell_30/MatMulMatMul lstm_30/strided_slice_2:output:02lstm_30/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5lstm_30_lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0¨
lstm_30/lstm_cell_30/MatMul_1MatMullstm_30/zeros:output:04lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_30/lstm_cell_30/addAddV2%lstm_30/lstm_cell_30/MatMul:product:0'lstm_30/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4lstm_30_lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_30/lstm_cell_30/BiasAddBiasAddlstm_30/lstm_cell_30/add:z:03lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_30/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_30/lstm_cell_30/splitSplit-lstm_30/lstm_cell_30/split/split_dim:output:0%lstm_30/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_split~
lstm_30/lstm_cell_30/SigmoidSigmoid#lstm_30/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/Sigmoid_1Sigmoid#lstm_30/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/mulMul"lstm_30/lstm_cell_30/Sigmoid_1:y:0lstm_30/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
lstm_30/lstm_cell_30/ReluRelu#lstm_30/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/mul_1Mul lstm_30/lstm_cell_30/Sigmoid:y:0'lstm_30/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/add_1AddV2lstm_30/lstm_cell_30/mul:z:0lstm_30/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_30/lstm_cell_30/Sigmoid_2Sigmoid#lstm_30/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
lstm_30/lstm_cell_30/Relu_1Relulstm_30/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
lstm_30/lstm_cell_30/mul_2Mul"lstm_30/lstm_cell_30/Sigmoid_2:y:0)lstm_30/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdv
%lstm_30/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   f
$lstm_30/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_30/TensorArrayV2_1TensorListReserve.lstm_30/TensorArrayV2_1/element_shape:output:0-lstm_30/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_30/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_30/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_30/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_30/whileWhile#lstm_30/while/loop_counter:output:0)lstm_30/while/maximum_iterations:output:0lstm_30/time:output:0 lstm_30/TensorArrayV2_1:handle:0lstm_30/zeros:output:0lstm_30/zeros_1:output:0 lstm_30/strided_slice_1:output:0?lstm_30/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_30_lstm_cell_30_matmul_readvariableop_resource5lstm_30_lstm_cell_30_matmul_1_readvariableop_resource4lstm_30_lstm_cell_30_biasadd_readvariableop_resource*
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
lstm_30_while_body_7747449*&
condR
lstm_30_while_cond_7747448*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : *
parallel_iterations 
8lstm_30/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   î
*lstm_30/TensorArrayV2Stack/TensorListStackTensorListStacklstm_30/while:output:3Alstm_30/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0*
num_elementsp
lstm_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_30/strided_slice_3StridedSlice3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_30/strided_slice_3/stack:output:0(lstm_30/strided_slice_3/stack_1:output:0(lstm_30/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
lstm_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_30/transpose_1	Transpose3lstm_30/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_30/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm_30/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    a
repeat_vector_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :«
repeat_vector_15/ExpandDims
ExpandDims lstm_30/strided_slice_3:output:0(repeat_vector_15/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
repeat_vector_15/stackConst*
_output_shapes
:*
dtype0*!
valueB"         
repeat_vector_15/TileTile$repeat_vector_15/ExpandDims:output:0repeat_vector_15/stack:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_31/ShapeShaperepeat_vector_15/Tile:output:0*
T0*
_output_shapes
:e
lstm_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_31/strided_sliceStridedSlicelstm_31/Shape:output:0$lstm_31/strided_slice/stack:output:0&lstm_31/strided_slice/stack_1:output:0&lstm_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_31/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_31/zeros/packedPacklstm_31/strided_slice:output:0lstm_31/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_31/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_31/zerosFilllstm_31/zeros/packed:output:0lstm_31/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
lstm_31/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_31/zeros_1/packedPacklstm_31/strided_slice:output:0!lstm_31/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_31/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_31/zeros_1Filllstm_31/zeros_1/packed:output:0lstm_31/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2k
lstm_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_31/transpose	Transposerepeat_vector_15/Tile:output:0lstm_31/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
lstm_31/Shape_1Shapelstm_31/transpose:y:0*
T0*
_output_shapes
:g
lstm_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_31/strided_slice_1StridedSlicelstm_31/Shape_1:output:0&lstm_31/strided_slice_1/stack:output:0(lstm_31/strided_slice_1/stack_1:output:0(lstm_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_31/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_31/TensorArrayV2TensorListReserve,lstm_31/TensorArrayV2/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_31/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ø
/lstm_31/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_31/transpose:y:0Flstm_31/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_31/strided_slice_2StridedSlicelstm_31/transpose:y:0&lstm_31/strided_slice_2/stack:output:0(lstm_31/strided_slice_2/stack_1:output:0(lstm_31/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
*lstm_31/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3lstm_31_lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0®
lstm_31/lstm_cell_31/MatMulMatMul lstm_31/strided_slice_2:output:02lstm_31/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ£
,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5lstm_31_lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0¨
lstm_31/lstm_cell_31/MatMul_1MatMullstm_31/zeros:output:04lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¤
lstm_31/lstm_cell_31/addAddV2%lstm_31/lstm_cell_31/MatMul:product:0'lstm_31/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4lstm_31_lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0­
lstm_31/lstm_cell_31/BiasAddBiasAddlstm_31/lstm_cell_31/add:z:03lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈf
$lstm_31/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_31/lstm_cell_31/splitSplit-lstm_31/lstm_cell_31/split/split_dim:output:0%lstm_31/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split~
lstm_31/lstm_cell_31/SigmoidSigmoid#lstm_31/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/Sigmoid_1Sigmoid#lstm_31/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/mulMul"lstm_31/lstm_cell_31/Sigmoid_1:y:0lstm_31/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
lstm_31/lstm_cell_31/ReluRelu#lstm_31/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/mul_1Mul lstm_31/lstm_cell_31/Sigmoid:y:0'lstm_31/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/add_1AddV2lstm_31/lstm_cell_31/mul:z:0lstm_31/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_31/lstm_cell_31/Sigmoid_2Sigmoid#lstm_31/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2u
lstm_31/lstm_cell_31/Relu_1Relulstm_31/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
lstm_31/lstm_cell_31/mul_2Mul"lstm_31/lstm_cell_31/Sigmoid_2:y:0)lstm_31/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%lstm_31/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ð
lstm_31/TensorArrayV2_1TensorListReserve.lstm_31/TensorArrayV2_1/element_shape:output:0 lstm_31/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_31/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_31/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_31/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_31/whileWhile#lstm_31/while/loop_counter:output:0)lstm_31/while/maximum_iterations:output:0lstm_31/time:output:0 lstm_31/TensorArrayV2_1:handle:0lstm_31/zeros:output:0lstm_31/zeros_1:output:0 lstm_31/strided_slice_1:output:0?lstm_31/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_31_lstm_cell_31_matmul_readvariableop_resource5lstm_31_lstm_cell_31_matmul_1_readvariableop_resource4lstm_31_lstm_cell_31_biasadd_readvariableop_resource*
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
lstm_31_while_body_7747593*&
condR
lstm_31_while_cond_7747592*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 
8lstm_31/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ú
*lstm_31/TensorArrayV2Stack/TensorListStackTensorListStacklstm_31/while:output:3Alstm_31/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0p
lstm_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_31/strided_slice_3StridedSlice3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_31/strided_slice_3/stack:output:0(lstm_31/strided_slice_3/stack_1:output:0(lstm_31/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskm
lstm_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_31/transpose_1	Transpose3lstm_31/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_31/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_31/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
!time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
time_distributed_23/ReshapeReshapelstm_31/transpose_1:y:0*time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2°
3time_distributed_23/dense_100/MatMul/ReadVariableOpReadVariableOp<time_distributed_23_dense_100_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ã
$time_distributed_23/dense_100/MatMulMatMul$time_distributed_23/Reshape:output:0;time_distributed_23/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4time_distributed_23/dense_100/BiasAdd/ReadVariableOpReadVariableOp=time_distributed_23_dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ð
%time_distributed_23/dense_100/BiasAddBiasAdd.time_distributed_23/dense_100/MatMul:product:0<time_distributed_23/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#time_distributed_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ      ¼
time_distributed_23/Reshape_1Reshape.time_distributed_23/dense_100/BiasAdd:output:0,time_distributed_23/Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#time_distributed_23/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¡
time_distributed_23/Reshape_2Reshapelstm_31/transpose_1:y:0,time_distributed_23/Reshape_2/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
IdentityIdentity&time_distributed_23/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp,^lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp+^lstm_30/lstm_cell_30/MatMul/ReadVariableOp-^lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp^lstm_30/while,^lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp+^lstm_31/lstm_cell_31/MatMul/ReadVariableOp-^lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp^lstm_31/while5^time_distributed_23/dense_100/BiasAdd/ReadVariableOp4^time_distributed_23/dense_100/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2Z
+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp+lstm_30/lstm_cell_30/BiasAdd/ReadVariableOp2X
*lstm_30/lstm_cell_30/MatMul/ReadVariableOp*lstm_30/lstm_cell_30/MatMul/ReadVariableOp2\
,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp,lstm_30/lstm_cell_30/MatMul_1/ReadVariableOp2
lstm_30/whilelstm_30/while2Z
+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp+lstm_31/lstm_cell_31/BiasAdd/ReadVariableOp2X
*lstm_31/lstm_cell_31/MatMul/ReadVariableOp*lstm_31/lstm_cell_31/MatMul/ReadVariableOp2\
,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp,lstm_31/lstm_cell_31/MatMul_1/ReadVariableOp2
lstm_31/whilelstm_31/while2l
4time_distributed_23/dense_100/BiasAdd/ReadVariableOp4time_distributed_23/dense_100/BiasAdd/ReadVariableOp2j
3time_distributed_23/dense_100/MatMul/ReadVariableOp3time_distributed_23/dense_100/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö

I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745923

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
8
Ñ
while_body_7748729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_31_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_31_biasadd_readvariableop_resource:	È¢)while/lstm_cell_31/BiasAdd/ReadVariableOp¢(while/lstm_cell_31/MatMul/ReadVariableOp¢*while/lstm_cell_31/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_31/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_31/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_31/addAddV2#while/lstm_cell_31/MatMul:product:0%while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_31/BiasAddBiasAddwhile/lstm_cell_31/add:z:01while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_31/splitSplit+while/lstm_cell_31/split/split_dim:output:0#while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_31/SigmoidSigmoid!while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_1Sigmoid!while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mulMul while/lstm_cell_31/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_31/ReluRelu!while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_1Mulwhile/lstm_cell_31/Sigmoid:y:0%while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/add_1AddV2while/lstm_cell_31/mul:z:0while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_2Sigmoid!while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_31/Relu_1Reluwhile/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_2Mul while/lstm_cell_31/Sigmoid_2:y:0'while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_31/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_31/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_31/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_31/BiasAdd/ReadVariableOp)^while/lstm_cell_31/MatMul/ReadVariableOp+^while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_31_biasadd_readvariableop_resource4while_lstm_cell_31_biasadd_readvariableop_resource_0"l
3while_lstm_cell_31_matmul_1_readvariableop_resource5while_lstm_cell_31_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_31_matmul_readvariableop_resource3while_lstm_cell_31_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_31/BiasAdd/ReadVariableOp)while/lstm_cell_31/BiasAdd/ReadVariableOp2T
(while/lstm_cell_31/MatMul/ReadVariableOp(while/lstm_cell_31/MatMul/ReadVariableOp2X
*while/lstm_cell_31/MatMul_1/ReadVariableOp*while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
9

D__inference_lstm_30_layer_call_and_return_conditional_losses_7746053

inputs'
lstm_cell_30_7745969:	'
lstm_cell_30_7745971:	d#
lstm_cell_30_7745973:	
identity¢$lstm_cell_30/StatefulPartitionedCall¢while;
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
$lstm_cell_30/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_30_7745969lstm_cell_30_7745971lstm_cell_30_7745973*
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745923n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_30_7745969lstm_cell_30_7745971lstm_cell_30_7745973*
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
while_body_7745983*
condR
while_cond_7745982*K
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
NoOpNoOp%^lstm_cell_30/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_30/StatefulPartitionedCall$lstm_cell_30/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


J__inference_sequential_46_layer_call_and_return_conditional_losses_7746826

inputs"
lstm_30_7746660:	"
lstm_30_7746662:	d
lstm_30_7746664:	"
lstm_31_7746811:	dÈ"
lstm_31_7746813:	2È
lstm_31_7746815:	È-
time_distributed_23_7746818:2)
time_distributed_23_7746820:
identity¢lstm_30/StatefulPartitionedCall¢lstm_31/StatefulPartitionedCall¢+time_distributed_23/StatefulPartitionedCall
lstm_30/StatefulPartitionedCallStatefulPartitionedCallinputslstm_30_7746660lstm_30_7746662lstm_30_7746664*
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7746659ï
 repeat_vector_15/PartitionedCallPartitionedCall(lstm_30/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *V
fQRO
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7746074©
lstm_31/StatefulPartitionedCallStatefulPartitionedCall)repeat_vector_15/PartitionedCall:output:0lstm_31_7746811lstm_31_7746813lstm_31_7746815*
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7746810Å
+time_distributed_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_31/StatefulPartitionedCall:output:0time_distributed_23_7746818time_distributed_23_7746820*
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746462r
!time_distributed_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ®
time_distributed_23/ReshapeReshape(lstm_31/StatefulPartitionedCall:output:0*time_distributed_23/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
IdentityIdentity4time_distributed_23/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
NoOpNoOp ^lstm_30/StatefulPartitionedCall ^lstm_31/StatefulPartitionedCall,^time_distributed_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
lstm_30/StatefulPartitionedCalllstm_30/StatefulPartitionedCall2B
lstm_31/StatefulPartitionedCalllstm_31/StatefulPartitionedCall2Z
+time_distributed_23/StatefulPartitionedCall+time_distributed_23/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_7748728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7748728___redundant_placeholder05
1while_while_cond_7748728___redundant_placeholder15
1while_while_cond_7748728___redundant_placeholder25
1while_while_cond_7748728___redundant_placeholder3
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
í
÷
.__inference_lstm_cell_30_layer_call_fn_7749319

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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745775o
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
Þ

I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749368

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
while_cond_7745789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7745789___redundant_placeholder05
1while_while_cond_7745789___redundant_placeholder15
1while_while_cond_7745789___redundant_placeholder25
1while_while_cond_7745789___redundant_placeholder3
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

¶
)__inference_lstm_31_layer_call_fn_7748659

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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7746810s
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
ÏK

D__inference_lstm_30_layer_call_and_return_conditional_losses_7748323
inputs_0>
+lstm_cell_30_matmul_readvariableop_resource:	@
-lstm_cell_30_matmul_1_readvariableop_resource:	d;
,lstm_cell_30_biasadd_readvariableop_resource:	
identity¢#lstm_cell_30/BiasAdd/ReadVariableOp¢"lstm_cell_30/MatMul/ReadVariableOp¢$lstm_cell_30/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_30/MatMul/ReadVariableOpReadVariableOp+lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_30/MatMulMatMulstrided_slice_2:output:0*lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_30/MatMul_1MatMulzeros:output:0,lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_30/addAddV2lstm_cell_30/MatMul:product:0lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_30/BiasAddBiasAddlstm_cell_30/add:z:0+lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_30/splitSplit%lstm_cell_30/split/split_dim:output:0lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_30/SigmoidSigmoidlstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_1Sigmoidlstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_30/mulMullstm_cell_30/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_30/ReluRelulstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_1Mullstm_cell_30/Sigmoid:y:0lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_30/add_1AddV2lstm_cell_30/mul:z:0lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_2Sigmoidlstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_30/Relu_1Relulstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_2Mullstm_cell_30/Sigmoid_2:y:0!lstm_cell_30/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_30_matmul_readvariableop_resource-lstm_cell_30_matmul_1_readvariableop_resource,lstm_cell_30_biasadd_readvariableop_resource*
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
while_body_7748238*
condR
while_cond_7748237*K
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
NoOpNoOp$^lstm_cell_30/BiasAdd/ReadVariableOp#^lstm_cell_30/MatMul/ReadVariableOp%^lstm_cell_30/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_30/BiasAdd/ReadVariableOp#lstm_cell_30/BiasAdd/ReadVariableOp2H
"lstm_cell_30/MatMul/ReadVariableOp"lstm_cell_30/MatMul/ReadVariableOp2L
$lstm_cell_30/MatMul_1/ReadVariableOp$lstm_cell_30/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
É	
÷
F__inference_dense_100_layer_call_and_return_conditional_losses_7749517

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
©9
Ñ
while_body_7748093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_30_matmul_readvariableop_resource_0:	H
5while_lstm_cell_30_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_30_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_30_matmul_readvariableop_resource:	F
3while_lstm_cell_30_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_30_biasadd_readvariableop_resource:	¢)while/lstm_cell_30/BiasAdd/ReadVariableOp¢(while/lstm_cell_30/MatMul/ReadVariableOp¢*while/lstm_cell_30/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_30/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_30_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0º
while/lstm_cell_30/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_30_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0¡
while/lstm_cell_30/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_30/addAddV2#while/lstm_cell_30/MatMul:product:0%while/lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_30_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_30/BiasAddBiasAddwhile/lstm_cell_30/add:z:01while/lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_30/splitSplit+while/lstm_cell_30/split/split_dim:output:0#while/lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitz
while/lstm_cell_30/SigmoidSigmoid!while/lstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_1Sigmoid!while/lstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mulMul while/lstm_cell_30/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdt
while/lstm_cell_30/ReluRelu!while/lstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_1Mulwhile/lstm_cell_30/Sigmoid:y:0%while/lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/add_1AddV2while/lstm_cell_30/mul:z:0while/lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
while/lstm_cell_30/Sigmoid_2Sigmoid!while/lstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
while/lstm_cell_30/Relu_1Reluwhile/lstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_30/mul_2Mul while/lstm_cell_30/Sigmoid_2:y:0'while/lstm_cell_30/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : í
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_30/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_30/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdy
while/Identity_5Identitywhile/lstm_cell_30/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÐ

while/NoOpNoOp*^while/lstm_cell_30/BiasAdd/ReadVariableOp)^while/lstm_cell_30/MatMul/ReadVariableOp+^while/lstm_cell_30/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_30_biasadd_readvariableop_resource4while_lstm_cell_30_biasadd_readvariableop_resource_0"l
3while_lstm_cell_30_matmul_1_readvariableop_resource5while_lstm_cell_30_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_30_matmul_readvariableop_resource3while_lstm_cell_30_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd: : : : : 2V
)while/lstm_cell_30/BiasAdd/ReadVariableOp)while/lstm_cell_30/BiasAdd/ReadVariableOp2T
(while/lstm_cell_30/MatMul/ReadVariableOp(while/lstm_cell_30/MatMul/ReadVariableOp2X
*while/lstm_cell_30/MatMul_1/ReadVariableOp*while/lstm_cell_30/MatMul_1/ReadVariableOp: 
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
¬K

D__inference_lstm_30_layer_call_and_return_conditional_losses_7748613

inputs>
+lstm_cell_30_matmul_readvariableop_resource:	@
-lstm_cell_30_matmul_1_readvariableop_resource:	d;
,lstm_cell_30_biasadd_readvariableop_resource:	
identity¢#lstm_cell_30/BiasAdd/ReadVariableOp¢"lstm_cell_30/MatMul/ReadVariableOp¢$lstm_cell_30/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_30/MatMul/ReadVariableOpReadVariableOp+lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_30/MatMulMatMulstrided_slice_2:output:0*lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_30/MatMul_1MatMulzeros:output:0,lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_30/addAddV2lstm_cell_30/MatMul:product:0lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_30/BiasAddBiasAddlstm_cell_30/add:z:0+lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_30/splitSplit%lstm_cell_30/split/split_dim:output:0lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_30/SigmoidSigmoidlstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_1Sigmoidlstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_30/mulMullstm_cell_30/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_30/ReluRelulstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_1Mullstm_cell_30/Sigmoid:y:0lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_30/add_1AddV2lstm_cell_30/mul:z:0lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_2Sigmoidlstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_30/Relu_1Relulstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_2Mullstm_cell_30/Sigmoid_2:y:0!lstm_cell_30/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_30_matmul_readvariableop_resource-lstm_cell_30_matmul_1_readvariableop_resource,lstm_cell_30_biasadd_readvariableop_resource*
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
while_body_7748528*
condR
while_cond_7748527*K
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
NoOpNoOp$^lstm_cell_30/BiasAdd/ReadVariableOp#^lstm_cell_30/MatMul/ReadVariableOp%^lstm_cell_30/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_30/BiasAdd/ReadVariableOp#lstm_cell_30/BiasAdd/ReadVariableOp2H
"lstm_cell_30/MatMul/ReadVariableOp"lstm_cell_30/MatMul/ReadVariableOp2L
$lstm_cell_30/MatMul_1/ReadVariableOp$lstm_cell_30/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_7745982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7745982___redundant_placeholder05
1while_while_cond_7745982___redundant_placeholder15
1while_while_cond_7745982___redundant_placeholder25
1while_while_cond_7745982___redundant_placeholder3
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
÷
F__inference_dense_100_layer_call_and_return_conditional_losses_7746451

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
while_cond_7749014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7749014___redundant_placeholder05
1while_while_cond_7749014___redundant_placeholder15
1while_while_cond_7749014___redundant_placeholder25
1while_while_cond_7749014___redundant_placeholder3
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
8
Ñ
while_body_7749015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈH
5while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈC
4while_lstm_cell_31_biasadd_readvariableop_resource_0:	È
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_31_matmul_readvariableop_resource:	dÈF
3while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈA
2while_lstm_cell_31_biasadd_readvariableop_resource:	È¢)while/lstm_cell_31/BiasAdd/ReadVariableOp¢(while/lstm_cell_31/MatMul/ReadVariableOp¢*while/lstm_cell_31/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
(while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0º
while/lstm_cell_31/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ¡
*while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0¡
while/lstm_cell_31/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
while/lstm_cell_31/addAddV2#while/lstm_cell_31/MatMul:product:0%while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0§
while/lstm_cell_31/BiasAddBiasAddwhile/lstm_cell_31/add:z:01while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈd
"while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_31/splitSplit+while/lstm_cell_31/split/split_dim:output:0#while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitz
while/lstm_cell_31/SigmoidSigmoid!while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_1Sigmoid!while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mulMul while/lstm_cell_31/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2t
while/lstm_cell_31/ReluRelu!while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_1Mulwhile/lstm_cell_31/Sigmoid:y:0%while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/add_1AddV2while/lstm_cell_31/mul:z:0while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2|
while/lstm_cell_31/Sigmoid_2Sigmoid!while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
while/lstm_cell_31/Relu_1Reluwhile/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_31/mul_2Mul while/lstm_cell_31/Sigmoid_2:y:0'while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_31/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_31/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2y
while/Identity_5Identitywhile/lstm_cell_31/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ð

while/NoOpNoOp*^while/lstm_cell_31/BiasAdd/ReadVariableOp)^while/lstm_cell_31/MatMul/ReadVariableOp+^while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_31_biasadd_readvariableop_resource4while_lstm_cell_31_biasadd_readvariableop_resource_0"l
3while_lstm_cell_31_matmul_1_readvariableop_resource5while_lstm_cell_31_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_31_matmul_readvariableop_resource3while_lstm_cell_31_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2V
)while/lstm_cell_31/BiasAdd/ReadVariableOp)while/lstm_cell_31/BiasAdd/ReadVariableOp2T
(while/lstm_cell_31/MatMul/ReadVariableOp(while/lstm_cell_31/MatMul/ReadVariableOp2X
*while/lstm_cell_31/MatMul_1/ReadVariableOp*while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
¬K

D__inference_lstm_30_layer_call_and_return_conditional_losses_7748468

inputs>
+lstm_cell_30_matmul_readvariableop_resource:	@
-lstm_cell_30_matmul_1_readvariableop_resource:	d;
,lstm_cell_30_biasadd_readvariableop_resource:	
identity¢#lstm_cell_30/BiasAdd/ReadVariableOp¢"lstm_cell_30/MatMul/ReadVariableOp¢$lstm_cell_30/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_30/MatMul/ReadVariableOpReadVariableOp+lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_30/MatMulMatMulstrided_slice_2:output:0*lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_30/MatMul_1MatMulzeros:output:0,lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_30/addAddV2lstm_cell_30/MatMul:product:0lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_30/BiasAddBiasAddlstm_cell_30/add:z:0+lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_30/splitSplit%lstm_cell_30/split/split_dim:output:0lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_30/SigmoidSigmoidlstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_1Sigmoidlstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_30/mulMullstm_cell_30/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_30/ReluRelulstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_1Mullstm_cell_30/Sigmoid:y:0lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_30/add_1AddV2lstm_cell_30/mul:z:0lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_2Sigmoidlstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_30/Relu_1Relulstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_2Mullstm_cell_30/Sigmoid_2:y:0!lstm_cell_30/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_30_matmul_readvariableop_resource-lstm_cell_30_matmul_1_readvariableop_resource,lstm_cell_30_biasadd_readvariableop_resource*
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
while_body_7748383*
condR
while_cond_7748382*K
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
NoOpNoOp$^lstm_cell_30/BiasAdd/ReadVariableOp#^lstm_cell_30/MatMul/ReadVariableOp%^lstm_cell_30/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_30/BiasAdd/ReadVariableOp#lstm_cell_30/BiasAdd/ReadVariableOp2H
"lstm_cell_30/MatMul/ReadVariableOp"lstm_cell_30/MatMul/ReadVariableOp2L
$lstm_cell_30/MatMul_1/ReadVariableOp$lstm_cell_30/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


è
lstm_30_while_cond_7747748,
(lstm_30_while_lstm_30_while_loop_counter2
.lstm_30_while_lstm_30_while_maximum_iterations
lstm_30_while_placeholder
lstm_30_while_placeholder_1
lstm_30_while_placeholder_2
lstm_30_while_placeholder_3.
*lstm_30_while_less_lstm_30_strided_slice_1E
Alstm_30_while_lstm_30_while_cond_7747748___redundant_placeholder0E
Alstm_30_while_lstm_30_while_cond_7747748___redundant_placeholder1E
Alstm_30_while_lstm_30_while_cond_7747748___redundant_placeholder2E
Alstm_30_while_lstm_30_while_cond_7747748___redundant_placeholder3
lstm_30_while_identity

lstm_30/while/LessLesslstm_30_while_placeholder*lstm_30_while_less_lstm_30_strided_slice_1*
T0*
_output_shapes
: [
lstm_30/while/IdentityIdentitylstm_30/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_30_while_identitylstm_30/while/Identity:output:0*(
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7746810

inputs>
+lstm_cell_31_matmul_readvariableop_resource:	dÈ@
-lstm_cell_31_matmul_1_readvariableop_resource:	2È;
,lstm_cell_31_biasadd_readvariableop_resource:	È
identity¢#lstm_cell_31/BiasAdd/ReadVariableOp¢"lstm_cell_31/MatMul/ReadVariableOp¢$lstm_cell_31/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_31/MatMul/ReadVariableOpReadVariableOp+lstm_cell_31_matmul_readvariableop_resource*
_output_shapes
:	dÈ*
dtype0
lstm_cell_31/MatMulMatMulstrided_slice_2:output:0*lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
$lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_31_matmul_1_readvariableop_resource*
_output_shapes
:	2È*
dtype0
lstm_cell_31/MatMul_1MatMulzeros:output:0,lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
lstm_cell_31/addAddV2lstm_cell_31/MatMul:product:0lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_31_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype0
lstm_cell_31/BiasAddBiasAddlstm_cell_31/add:z:0+lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ^
lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_31/splitSplit%lstm_cell_31/split/split_dim:output:0lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_splitn
lstm_cell_31/SigmoidSigmoidlstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_1Sigmoidlstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
lstm_cell_31/mulMullstm_cell_31/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
lstm_cell_31/ReluRelulstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_1Mullstm_cell_31/Sigmoid:y:0lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2{
lstm_cell_31/add_1AddV2lstm_cell_31/mul:z:0lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
lstm_cell_31/Sigmoid_2Sigmoidlstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
lstm_cell_31/Relu_1Relulstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_31/mul_2Mullstm_cell_31/Sigmoid_2:y:0!lstm_cell_31/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_31_matmul_readvariableop_resource-lstm_cell_31_matmul_1_readvariableop_resource,lstm_cell_31_biasadd_readvariableop_resource*
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
while_body_7746726*
condR
while_cond_7746725*K
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
NoOpNoOp$^lstm_cell_31/BiasAdd/ReadVariableOp#^lstm_cell_31/MatMul/ReadVariableOp%^lstm_cell_31/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_31/BiasAdd/ReadVariableOp#lstm_cell_31/BiasAdd/ReadVariableOp2H
"lstm_cell_31/MatMul/ReadVariableOp"lstm_cell_31/MatMul/ReadVariableOp2L
$lstm_cell_31/MatMul_1/ReadVariableOp$lstm_cell_31/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
£

(sequential_46_lstm_30_while_cond_7745467H
Dsequential_46_lstm_30_while_sequential_46_lstm_30_while_loop_counterN
Jsequential_46_lstm_30_while_sequential_46_lstm_30_while_maximum_iterations+
'sequential_46_lstm_30_while_placeholder-
)sequential_46_lstm_30_while_placeholder_1-
)sequential_46_lstm_30_while_placeholder_2-
)sequential_46_lstm_30_while_placeholder_3J
Fsequential_46_lstm_30_while_less_sequential_46_lstm_30_strided_slice_1a
]sequential_46_lstm_30_while_sequential_46_lstm_30_while_cond_7745467___redundant_placeholder0a
]sequential_46_lstm_30_while_sequential_46_lstm_30_while_cond_7745467___redundant_placeholder1a
]sequential_46_lstm_30_while_sequential_46_lstm_30_while_cond_7745467___redundant_placeholder2a
]sequential_46_lstm_30_while_sequential_46_lstm_30_while_cond_7745467___redundant_placeholder3(
$sequential_46_lstm_30_while_identity
º
 sequential_46/lstm_30/while/LessLess'sequential_46_lstm_30_while_placeholderFsequential_46_lstm_30_while_less_sequential_46_lstm_30_strided_slice_1*
T0*
_output_shapes
: w
$sequential_46/lstm_30/while/IdentityIdentity$sequential_46/lstm_30/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_46_lstm_30_while_identity-sequential_46/lstm_30/while/Identity:output:0*(
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7746659

inputs>
+lstm_cell_30_matmul_readvariableop_resource:	@
-lstm_cell_30_matmul_1_readvariableop_resource:	d;
,lstm_cell_30_biasadd_readvariableop_resource:	
identity¢#lstm_cell_30/BiasAdd/ReadVariableOp¢"lstm_cell_30/MatMul/ReadVariableOp¢$lstm_cell_30/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_30/MatMul/ReadVariableOpReadVariableOp+lstm_cell_30_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_30/MatMulMatMulstrided_slice_2:output:0*lstm_cell_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_30/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_30_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_30/MatMul_1MatMulzeros:output:0,lstm_cell_30/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_30/addAddV2lstm_cell_30/MatMul:product:0lstm_cell_30/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_30/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_30_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_30/BiasAddBiasAddlstm_cell_30/add:z:0+lstm_cell_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_30/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_30/splitSplit%lstm_cell_30/split/split_dim:output:0lstm_cell_30/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿd*
	num_splitn
lstm_cell_30/SigmoidSigmoidlstm_cell_30/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_1Sigmoidlstm_cell_30/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
lstm_cell_30/mulMullstm_cell_30/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
lstm_cell_30/ReluRelulstm_cell_30/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_1Mullstm_cell_30/Sigmoid:y:0lstm_cell_30/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
lstm_cell_30/add_1AddV2lstm_cell_30/mul:z:0lstm_cell_30/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
lstm_cell_30/Sigmoid_2Sigmoidlstm_cell_30/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
lstm_cell_30/Relu_1Relulstm_cell_30/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_30/mul_2Mullstm_cell_30/Sigmoid_2:y:0!lstm_cell_30/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_30_matmul_readvariableop_resource-lstm_cell_30_matmul_1_readvariableop_resource,lstm_cell_30_biasadd_readvariableop_resource*
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
while_body_7746574*
condR
while_cond_7746573*K
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
NoOpNoOp$^lstm_cell_30/BiasAdd/ReadVariableOp#^lstm_cell_30/MatMul/ReadVariableOp%^lstm_cell_30/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_30/BiasAdd/ReadVariableOp#lstm_cell_30/BiasAdd/ReadVariableOp2H
"lstm_cell_30/MatMul/ReadVariableOp"lstm_cell_30/MatMul/ReadVariableOp2L
$lstm_cell_30/MatMul_1/ReadVariableOp$lstm_cell_30/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_7748092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_7748092___redundant_placeholder05
1while_while_cond_7748092___redundant_placeholder15
1while_while_cond_7748092___redundant_placeholder25
1while_while_cond_7748092___redundant_placeholder3
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
í
÷
.__inference_lstm_cell_30_layer_call_fn_7749336

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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7745923o
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
Ö

I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746290

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
«
¸
)__inference_lstm_31_layer_call_fn_7748637
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7746227|
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
R

(sequential_46_lstm_31_while_body_7745612H
Dsequential_46_lstm_31_while_sequential_46_lstm_31_while_loop_counterN
Jsequential_46_lstm_31_while_sequential_46_lstm_31_while_maximum_iterations+
'sequential_46_lstm_31_while_placeholder-
)sequential_46_lstm_31_while_placeholder_1-
)sequential_46_lstm_31_while_placeholder_2-
)sequential_46_lstm_31_while_placeholder_3G
Csequential_46_lstm_31_while_sequential_46_lstm_31_strided_slice_1_0
sequential_46_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_31_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_46_lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0:	dÈ^
Ksequential_46_lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0:	2ÈY
Jsequential_46_lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0:	È(
$sequential_46_lstm_31_while_identity*
&sequential_46_lstm_31_while_identity_1*
&sequential_46_lstm_31_while_identity_2*
&sequential_46_lstm_31_while_identity_3*
&sequential_46_lstm_31_while_identity_4*
&sequential_46_lstm_31_while_identity_5E
Asequential_46_lstm_31_while_sequential_46_lstm_31_strided_slice_1
}sequential_46_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_31_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_46_lstm_31_while_lstm_cell_31_matmul_readvariableop_resource:	dÈ\
Isequential_46_lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource:	2ÈW
Hsequential_46_lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource:	È¢?sequential_46/lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp¢>sequential_46/lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp¢@sequential_46/lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp
Msequential_46/lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
?sequential_46/lstm_31/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_46_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_31_tensorarrayunstack_tensorlistfromtensor_0'sequential_46_lstm_31_while_placeholderVsequential_46/lstm_31/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0É
>sequential_46/lstm_31/while/lstm_cell_31/MatMul/ReadVariableOpReadVariableOpIsequential_46_lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0*
_output_shapes
:	dÈ*
dtype0ü
/sequential_46/lstm_31/while/lstm_cell_31/MatMulMatMulFsequential_46/lstm_31/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_46/lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÍ
@sequential_46/lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOpReadVariableOpKsequential_46_lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0*
_output_shapes
:	2È*
dtype0ã
1sequential_46/lstm_31/while/lstm_cell_31/MatMul_1MatMul)sequential_46_lstm_31_while_placeholder_2Hsequential_46/lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈà
,sequential_46/lstm_31/while/lstm_cell_31/addAddV29sequential_46/lstm_31/while/lstm_cell_31/MatMul:product:0;sequential_46/lstm_31/while/lstm_cell_31/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈÇ
?sequential_46/lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOpReadVariableOpJsequential_46_lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0*
_output_shapes	
:È*
dtype0é
0sequential_46/lstm_31/while/lstm_cell_31/BiasAddBiasAdd0sequential_46/lstm_31/while/lstm_cell_31/add:z:0Gsequential_46/lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈz
8sequential_46/lstm_31/while/lstm_cell_31/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_46/lstm_31/while/lstm_cell_31/splitSplitAsequential_46/lstm_31/while/lstm_cell_31/split/split_dim:output:09sequential_46/lstm_31/while/lstm_cell_31/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*
	num_split¦
0sequential_46/lstm_31/while/lstm_cell_31/SigmoidSigmoid7sequential_46/lstm_31/while/lstm_cell_31/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
2sequential_46/lstm_31/while/lstm_cell_31/Sigmoid_1Sigmoid7sequential_46/lstm_31/while/lstm_cell_31/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2È
,sequential_46/lstm_31/while/lstm_cell_31/mulMul6sequential_46/lstm_31/while/lstm_cell_31/Sigmoid_1:y:0)sequential_46_lstm_31_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
-sequential_46/lstm_31/while/lstm_cell_31/ReluRelu7sequential_46/lstm_31/while/lstm_cell_31/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ú
.sequential_46/lstm_31/while/lstm_cell_31/mul_1Mul4sequential_46/lstm_31/while/lstm_cell_31/Sigmoid:y:0;sequential_46/lstm_31/while/lstm_cell_31/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ï
.sequential_46/lstm_31/while/lstm_cell_31/add_1AddV20sequential_46/lstm_31/while/lstm_cell_31/mul:z:02sequential_46/lstm_31/while/lstm_cell_31/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
2sequential_46/lstm_31/while/lstm_cell_31/Sigmoid_2Sigmoid7sequential_46/lstm_31/while/lstm_cell_31/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
/sequential_46/lstm_31/while/lstm_cell_31/Relu_1Relu2sequential_46/lstm_31/while/lstm_cell_31/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Þ
.sequential_46/lstm_31/while/lstm_cell_31/mul_2Mul6sequential_46/lstm_31/while/lstm_cell_31/Sigmoid_2:y:0=sequential_46/lstm_31/while/lstm_cell_31/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@sequential_46/lstm_31/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_46_lstm_31_while_placeholder_1'sequential_46_lstm_31_while_placeholder2sequential_46/lstm_31/while/lstm_cell_31/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_46/lstm_31/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_46/lstm_31/while/addAddV2'sequential_46_lstm_31_while_placeholder*sequential_46/lstm_31/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_46/lstm_31/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_46/lstm_31/while/add_1AddV2Dsequential_46_lstm_31_while_sequential_46_lstm_31_while_loop_counter,sequential_46/lstm_31/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_46/lstm_31/while/IdentityIdentity%sequential_46/lstm_31/while/add_1:z:0!^sequential_46/lstm_31/while/NoOp*
T0*
_output_shapes
: Â
&sequential_46/lstm_31/while/Identity_1IdentityJsequential_46_lstm_31_while_sequential_46_lstm_31_while_maximum_iterations!^sequential_46/lstm_31/while/NoOp*
T0*
_output_shapes
: 
&sequential_46/lstm_31/while/Identity_2Identity#sequential_46/lstm_31/while/add:z:0!^sequential_46/lstm_31/while/NoOp*
T0*
_output_shapes
: È
&sequential_46/lstm_31/while/Identity_3IdentityPsequential_46/lstm_31/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_46/lstm_31/while/NoOp*
T0*
_output_shapes
: »
&sequential_46/lstm_31/while/Identity_4Identity2sequential_46/lstm_31/while/lstm_cell_31/mul_2:z:0!^sequential_46/lstm_31/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2»
&sequential_46/lstm_31/while/Identity_5Identity2sequential_46/lstm_31/while/lstm_cell_31/add_1:z:0!^sequential_46/lstm_31/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¨
 sequential_46/lstm_31/while/NoOpNoOp@^sequential_46/lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp?^sequential_46/lstm_31/while/lstm_cell_31/MatMul/ReadVariableOpA^sequential_46/lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_46_lstm_31_while_identity-sequential_46/lstm_31/while/Identity:output:0"Y
&sequential_46_lstm_31_while_identity_1/sequential_46/lstm_31/while/Identity_1:output:0"Y
&sequential_46_lstm_31_while_identity_2/sequential_46/lstm_31/while/Identity_2:output:0"Y
&sequential_46_lstm_31_while_identity_3/sequential_46/lstm_31/while/Identity_3:output:0"Y
&sequential_46_lstm_31_while_identity_4/sequential_46/lstm_31/while/Identity_4:output:0"Y
&sequential_46_lstm_31_while_identity_5/sequential_46/lstm_31/while/Identity_5:output:0"
Hsequential_46_lstm_31_while_lstm_cell_31_biasadd_readvariableop_resourceJsequential_46_lstm_31_while_lstm_cell_31_biasadd_readvariableop_resource_0"
Isequential_46_lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resourceKsequential_46_lstm_31_while_lstm_cell_31_matmul_1_readvariableop_resource_0"
Gsequential_46_lstm_31_while_lstm_cell_31_matmul_readvariableop_resourceIsequential_46_lstm_31_while_lstm_cell_31_matmul_readvariableop_resource_0"
Asequential_46_lstm_31_while_sequential_46_lstm_31_strided_slice_1Csequential_46_lstm_31_while_sequential_46_lstm_31_strided_slice_1_0"
}sequential_46_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_31_tensorarrayunstack_tensorlistfromtensorsequential_46_lstm_31_while_tensorarrayv2read_tensorlistgetitem_sequential_46_lstm_31_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : 2
?sequential_46/lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp?sequential_46/lstm_31/while/lstm_cell_31/BiasAdd/ReadVariableOp2
>sequential_46/lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp>sequential_46/lstm_31/while/lstm_cell_31/MatMul/ReadVariableOp2
@sequential_46/lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp@sequential_46/lstm_31/while/lstm_cell_31/MatMul_1/ReadVariableOp: 
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
5__inference_time_distributed_23_layer_call_fn_7749260

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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7746501|
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

¸
)__inference_lstm_30_layer_call_fn_7748011
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7746053o
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
í
÷
.__inference_lstm_cell_31_layer_call_fn_7749417

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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7746144o
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
states/1"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ê
serving_default¶
K
lstm_30_input:
serving_default_lstm_30_input:0ÿÿÿÿÿÿÿÿÿK
time_distributed_234
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¾
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
/__inference_sequential_46_layer_call_fn_7746845
/__inference_sequential_46_layer_call_fn_7747368
/__inference_sequential_46_layer_call_fn_7747389
/__inference_sequential_46_layer_call_fn_7747266À
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747689
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747989
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747292
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747318À
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
"__inference__wrapped_model_7745708lstm_30_input"
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
)__inference_lstm_30_layer_call_fn_7748000
)__inference_lstm_30_layer_call_fn_7748011
)__inference_lstm_30_layer_call_fn_7748022
)__inference_lstm_30_layer_call_fn_7748033Õ
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748178
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748323
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748468
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748613Õ
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
ö
ctrace_02Ù
2__inference_repeat_vector_15_layer_call_fn_7748618¢
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

dtrace_02ô
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7748626¢
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
)__inference_lstm_31_layer_call_fn_7748637
)__inference_lstm_31_layer_call_fn_7748648
)__inference_lstm_31_layer_call_fn_7748659
)__inference_lstm_31_layer_call_fn_7748670Õ
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7748813
D__inference_lstm_31_layer_call_and_return_conditional_losses_7748956
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749099
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749242Õ
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
5__inference_time_distributed_23_layer_call_fn_7749251
5__inference_time_distributed_23_layer_call_fn_7749260À
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749281
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749302À
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
.:,	2lstm_30/lstm_cell_30/kernel
8:6	d2%lstm_30/lstm_cell_30/recurrent_kernel
(:&2lstm_30/lstm_cell_30/bias
.:,	dÈ2lstm_31/lstm_cell_31/kernel
8:6	2È2%lstm_31/lstm_cell_31/recurrent_kernel
(:&È2lstm_31/lstm_cell_31/bias
,:*22time_distributed_23/kernel
&:$2time_distributed_23/bias
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
/__inference_sequential_46_layer_call_fn_7746845lstm_30_input"À
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
/__inference_sequential_46_layer_call_fn_7747368inputs"À
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
/__inference_sequential_46_layer_call_fn_7747389inputs"À
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
/__inference_sequential_46_layer_call_fn_7747266lstm_30_input"À
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747689inputs"À
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747989inputs"À
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747292lstm_30_input"À
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747318lstm_30_input"À
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
%__inference_signature_wrapper_7747347lstm_30_input"
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
)__inference_lstm_30_layer_call_fn_7748000inputs/0"Õ
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
)__inference_lstm_30_layer_call_fn_7748011inputs/0"Õ
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
)__inference_lstm_30_layer_call_fn_7748022inputs"Õ
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
)__inference_lstm_30_layer_call_fn_7748033inputs"Õ
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748178inputs/0"Õ
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748323inputs/0"Õ
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748468inputs"Õ
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748613inputs"Õ
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
.__inference_lstm_cell_30_layer_call_fn_7749319
.__inference_lstm_cell_30_layer_call_fn_7749336¾
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749368
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749400¾
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
æBã
2__inference_repeat_vector_15_layer_call_fn_7748618inputs"¢
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
Bþ
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7748626inputs"¢
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
)__inference_lstm_31_layer_call_fn_7748637inputs/0"Õ
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
)__inference_lstm_31_layer_call_fn_7748648inputs/0"Õ
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
)__inference_lstm_31_layer_call_fn_7748659inputs"Õ
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
)__inference_lstm_31_layer_call_fn_7748670inputs"Õ
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7748813inputs/0"Õ
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7748956inputs/0"Õ
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749099inputs"Õ
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749242inputs"Õ
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
.__inference_lstm_cell_31_layer_call_fn_7749417
.__inference_lstm_cell_31_layer_call_fn_7749434¾
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749466
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749498¾
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
5__inference_time_distributed_23_layer_call_fn_7749251inputs"À
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
5__inference_time_distributed_23_layer_call_fn_7749260inputs"À
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749281inputs"À
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749302inputs"À
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
ñ
¢trace_02Ò
+__inference_dense_100_layer_call_fn_7749507¢
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

£trace_02í
F__inference_dense_100_layer_call_and_return_conditional_losses_7749517¢
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
.__inference_lstm_cell_30_layer_call_fn_7749319inputsstates/0states/1"¾
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
.__inference_lstm_cell_30_layer_call_fn_7749336inputsstates/0states/1"¾
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749368inputsstates/0states/1"¾
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749400inputsstates/0states/1"¾
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
.__inference_lstm_cell_31_layer_call_fn_7749417inputsstates/0states/1"¾
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
.__inference_lstm_cell_31_layer_call_fn_7749434inputsstates/0states/1"¾
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749466inputsstates/0states/1"¾
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749498inputsstates/0states/1"¾
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
ßBÜ
+__inference_dense_100_layer_call_fn_7749507inputs"¢
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
úB÷
F__inference_dense_100_layer_call_and_return_conditional_losses_7749517inputs"¢
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
3:1	2"Adam/lstm_30/lstm_cell_30/kernel/m
=:;	d2,Adam/lstm_30/lstm_cell_30/recurrent_kernel/m
-:+2 Adam/lstm_30/lstm_cell_30/bias/m
3:1	dÈ2"Adam/lstm_31/lstm_cell_31/kernel/m
=:;	2È2,Adam/lstm_31/lstm_cell_31/recurrent_kernel/m
-:+È2 Adam/lstm_31/lstm_cell_31/bias/m
1:/22!Adam/time_distributed_23/kernel/m
+:)2Adam/time_distributed_23/bias/m
3:1	2"Adam/lstm_30/lstm_cell_30/kernel/v
=:;	d2,Adam/lstm_30/lstm_cell_30/recurrent_kernel/v
-:+2 Adam/lstm_30/lstm_cell_30/bias/v
3:1	dÈ2"Adam/lstm_31/lstm_cell_31/kernel/v
=:;	2È2,Adam/lstm_31/lstm_cell_31/recurrent_kernel/v
-:+È2 Adam/lstm_31/lstm_cell_31/bias/v
1:/22!Adam/time_distributed_23/kernel/v
+:)2Adam/time_distributed_23/bias/v¼
"__inference__wrapped_model_7745708-./01234:¢7
0¢-
+(
lstm_30_inputÿÿÿÿÿÿÿÿÿ
ª "MªJ
H
time_distributed_231.
time_distributed_23ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_100_layer_call_and_return_conditional_losses_7749517\34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_100_layer_call_fn_7749507O34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿÅ
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748178}-./O¢L
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748323}-./O¢L
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748468m-./?¢<
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
D__inference_lstm_30_layer_call_and_return_conditional_losses_7748613m-./?¢<
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
)__inference_lstm_30_layer_call_fn_7748000p-./O¢L
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
)__inference_lstm_30_layer_call_fn_7748011p-./O¢L
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
)__inference_lstm_30_layer_call_fn_7748022`-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿd
)__inference_lstm_30_layer_call_fn_7748033`-./?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿdÓ
D__inference_lstm_31_layer_call_and_return_conditional_losses_7748813012O¢L
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7748956012O¢L
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749099q012?¢<
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
D__inference_lstm_31_layer_call_and_return_conditional_losses_7749242q012?¢<
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
)__inference_lstm_31_layer_call_fn_7748637}012O¢L
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
)__inference_lstm_31_layer_call_fn_7748648}012O¢L
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
)__inference_lstm_31_layer_call_fn_7748659d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_31_layer_call_fn_7748670d012?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Ë
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749368ý-./¢}
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
I__inference_lstm_cell_30_layer_call_and_return_conditional_losses_7749400ý-./¢}
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
.__inference_lstm_cell_30_layer_call_fn_7749319í-./¢}
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
.__inference_lstm_cell_30_layer_call_fn_7749336í-./¢}
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749466ý012¢}
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
I__inference_lstm_cell_31_layer_call_and_return_conditional_losses_7749498ý012¢}
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
.__inference_lstm_cell_31_layer_call_fn_7749417í012¢}
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
.__inference_lstm_cell_31_layer_call_fn_7749434í012¢}
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
1/1ÿÿÿÿÿÿÿÿÿ2¿
M__inference_repeat_vector_15_layer_call_and_return_conditional_losses_7748626n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
2__inference_repeat_vector_15_layer_call_fn_7748618a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÇ
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747292y-./01234B¢?
8¢5
+(
lstm_30_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ç
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747318y-./01234B¢?
8¢5
+(
lstm_30_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 À
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747689r-./01234;¢8
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
J__inference_sequential_46_layer_call_and_return_conditional_losses_7747989r-./01234;¢8
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
/__inference_sequential_46_layer_call_fn_7746845l-./01234B¢?
8¢5
+(
lstm_30_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_46_layer_call_fn_7747266l-./01234B¢?
8¢5
+(
lstm_30_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_46_layer_call_fn_7747368e-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_46_layer_call_fn_7747389e-./01234;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÐ
%__inference_signature_wrapper_7747347¦-./01234K¢H
¢ 
Aª>
<
lstm_30_input+(
lstm_30_inputÿÿÿÿÿÿÿÿÿ"MªJ
H
time_distributed_231.
time_distributed_23ÿÿÿÿÿÿÿÿÿÒ
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749281~34D¢A
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
P__inference_time_distributed_23_layer_call_and_return_conditional_losses_7749302~34D¢A
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
5__inference_time_distributed_23_layer_call_fn_7749251q34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
5__inference_time_distributed_23_layer_call_fn_7749260q34D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ