Þ
¸
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
-
Tanh
x"T
y"T"
Ttype:

2
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
"serve*2.9.22v2.9.1-132-g18960c44ad38¬
°
,Adam/simple_rnn_11/simple_rnn_cell_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v
©
@Adam/simple_rnn_11/simple_rnn_cell_11/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v*
_output_shapes
:*
dtype0
Ì
8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v
Å
LAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v*
_output_shapes

:*
dtype0
¸
.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v
±
BAdam/simple_rnn_11/simple_rnn_cell_11/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_144/bias/v
{
)Adam/dense_144/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/v*
_output_shapes
:*
dtype0

Adam/dense_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_144/kernel/v

+Adam/dense_144/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_143/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_143/bias/v
{
)Adam/dense_143/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_143/bias/v*
_output_shapes
:*
dtype0

Adam/dense_143/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_143/kernel/v

+Adam/dense_143/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_143/kernel/v*
_output_shapes

:*
dtype0
°
,Adam/simple_rnn_11/simple_rnn_cell_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m
©
@Adam/simple_rnn_11/simple_rnn_cell_11/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m*
_output_shapes
:*
dtype0
Ì
8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m
Å
LAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m*
_output_shapes

:*
dtype0
¸
.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m
±
BAdam/simple_rnn_11/simple_rnn_cell_11/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_144/bias/m
{
)Adam/dense_144/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/m*
_output_shapes
:*
dtype0

Adam/dense_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_144/kernel/m

+Adam/dense_144/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_143/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_143/bias/m
{
)Adam/dense_143/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_143/bias/m*
_output_shapes
:*
dtype0

Adam/dense_143/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_143/kernel/m

+Adam/dense_143/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_143/kernel/m*
_output_shapes

:*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
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
¢
%simple_rnn_11/simple_rnn_cell_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%simple_rnn_11/simple_rnn_cell_11/bias

9simple_rnn_11/simple_rnn_cell_11/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_11/simple_rnn_cell_11/bias*
_output_shapes
:*
dtype0
¾
1simple_rnn_11/simple_rnn_cell_11/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31simple_rnn_11/simple_rnn_cell_11/recurrent_kernel
·
Esimple_rnn_11/simple_rnn_cell_11/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel*
_output_shapes

:*
dtype0
ª
'simple_rnn_11/simple_rnn_cell_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'simple_rnn_11/simple_rnn_cell_11/kernel
£
;simple_rnn_11/simple_rnn_cell_11/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_11/simple_rnn_cell_11/kernel*
_output_shapes

:*
dtype0
t
dense_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_144/bias
m
"dense_144/bias/Read/ReadVariableOpReadVariableOpdense_144/bias*
_output_shapes
:*
dtype0
|
dense_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_144/kernel
u
$dense_144/kernel/Read/ReadVariableOpReadVariableOpdense_144/kernel*
_output_shapes

:*
dtype0
t
dense_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_143/bias
m
"dense_143/bias/Read/ReadVariableOpReadVariableOpdense_143/bias*
_output_shapes
:*
dtype0
|
dense_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_143/kernel
u
$dense_143/kernel/Read/ReadVariableOpReadVariableOpdense_143/kernel*
_output_shapes

:*
dtype0

NoOpNoOp
Ö;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*;
value;B; Bý:
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
ª
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
5
%0
&1
'2
3
4
#5
$6*
5
%0
&1
'2
3
4
#5
$6*
* 
°
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
-trace_0
.trace_1
/trace_2
0trace_3* 
6
1trace_0
2trace_1
3trace_2
4trace_3* 
* 
È
5iter

6beta_1

7beta_2
	8decay
9learning_ratemxmy#mz$m{%m|&m}'m~vv#v$v%v&v'v*

:serving_default* 

%0
&1
'2*

%0
&1
'2*
* 


;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Atrace_0
Btrace_1
Ctrace_2
Dtrace_3* 
6
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3* 
Ó
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator

%kernel
&recurrent_kernel
'bias*
* 

0
1*

0
1*
* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Utrace_0* 

Vtrace_0* 
`Z
VARIABLE_VALUEdense_143/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_143/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 

Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

\trace_0* 

]trace_0* 
`Z
VARIABLE_VALUEdense_144/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_144/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_11/simple_rnn_cell_11/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_11/simple_rnn_cell_11/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

^0
_1
`2*
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

0*
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
%0
&1
'2*

%0
&1
'2*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

ftrace_0
gtrace_1* 

htrace_0
itrace_1* 
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
8
j	variables
k	keras_api
	ltotal
	mcount*
H
n	variables
o	keras_api
	ptotal
	qcount
r
_fn_kwargs*
H
s	variables
t	keras_api
	utotal
	vcount
w
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 

l0
m1*

j	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

n	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

u0
v1*

s	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}
VARIABLE_VALUEAdam/dense_143/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_143/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_144/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_144/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_11/simple_rnn_cell_11/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_143/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_143/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_144/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_144/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_11/simple_rnn_cell_11/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

#serving_default_simple_rnn_11_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_11_input'simple_rnn_11/simple_rnn_cell_11/kernel%simple_rnn_11/simple_rnn_cell_11/bias1simple_rnn_11/simple_rnn_cell_11/recurrent_kerneldense_143/kerneldense_143/biasdense_144/kerneldense_144/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_11798716
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ë
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_143/kernel/Read/ReadVariableOp"dense_143/bias/Read/ReadVariableOp$dense_144/kernel/Read/ReadVariableOp"dense_144/bias/Read/ReadVariableOp;simple_rnn_11/simple_rnn_cell_11/kernel/Read/ReadVariableOpEsimple_rnn_11/simple_rnn_cell_11/recurrent_kernel/Read/ReadVariableOp9simple_rnn_11/simple_rnn_cell_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_143/kernel/m/Read/ReadVariableOp)Adam/dense_143/bias/m/Read/ReadVariableOp+Adam/dense_144/kernel/m/Read/ReadVariableOp)Adam/dense_144/bias/m/Read/ReadVariableOpBAdam/simple_rnn_11/simple_rnn_cell_11/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_11/simple_rnn_cell_11/bias/m/Read/ReadVariableOp+Adam/dense_143/kernel/v/Read/ReadVariableOp)Adam/dense_143/bias/v/Read/ReadVariableOp+Adam/dense_144/kernel/v/Read/ReadVariableOp)Adam/dense_144/bias/v/Read/ReadVariableOpBAdam/simple_rnn_11/simple_rnn_cell_11/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_11/simple_rnn_cell_11/bias/v/Read/ReadVariableOpConst*-
Tin&
$2"	*
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
!__inference__traced_save_11799704
æ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_143/kerneldense_143/biasdense_144/kerneldense_144/bias'simple_rnn_11/simple_rnn_cell_11/kernel1simple_rnn_11/simple_rnn_cell_11/recurrent_kernel%simple_rnn_11/simple_rnn_cell_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_2count_2total_1count_1totalcountAdam/dense_143/kernel/mAdam/dense_143/bias/mAdam/dense_144/kernel/mAdam/dense_144/bias/m.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m,Adam/simple_rnn_11/simple_rnn_cell_11/bias/mAdam/dense_143/kernel/vAdam/dense_143/bias/vAdam/dense_144/kernel/vAdam/dense_144/bias/v.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v8Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v,Adam/simple_rnn_11/simple_rnn_cell_11/bias/v*,
Tin%
#2!*
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
$__inference__traced_restore_11799810ëö
ä
´
while_cond_11798492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11798492___redundant_placeholder06
2while_while_cond_11798492___redundant_placeholder16
2while_while_cond_11798492___redundant_placeholder26
2while_while_cond_11798492___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
È

,__inference_dense_144_layer_call_fn_11799513

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_144_layer_call_and_return_conditional_losses_11798393o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ø
G__inference_dense_143_layer_call_and_return_conditional_losses_11798377

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢5
¨
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798233

inputs-
simple_rnn_cell_11_11798156:)
simple_rnn_cell_11_11798158:-
simple_rnn_cell_11_11798160:
identity¢*simple_rnn_cell_11/StatefulPartitionedCall¢while;
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskô
*simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_11_11798156simple_rnn_cell_11_11798158simple_rnn_cell_11_11798160*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11798116n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_11_11798156simple_rnn_cell_11_11798158simple_rnn_cell_11_11798160*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11798169*
condR
while_cond_11798168*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
NoOpNoOp+^simple_rnn_cell_11/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2X
*simple_rnn_cell_11/StatefulPartitionedCall*simple_rnn_cell_11/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿

Ý
5__inference_simple_rnn_cell_11_layer_call_fn_11799551

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11798116o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
¿

Ý
5__inference_simple_rnn_cell_11_layer_call_fn_11799537

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11797994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ô-
Ó
while_body_11798493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_11_matmul_readvariableop_resource:F
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_11/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

¼
0__inference_simple_rnn_11_layer_call_fn_11799011
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ô-
Ó
while_body_11798291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_11_matmul_readvariableop_resource:F
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_11/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ä
´
while_cond_11798007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11798007___redundant_placeholder06
2while_while_cond_11798007___redundant_placeholder16
2while_while_cond_11798007___redundant_placeholder26
2while_while_cond_11798007___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ä
´
while_cond_11799086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11799086___redundant_placeholder06
2while_while_cond_11799086___redundant_placeholder16
2while_while_cond_11799086___redundant_placeholder26
2while_while_cond_11799086___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÉF
ü
!__inference__traced_save_11799704
file_prefix/
+savev2_dense_143_kernel_read_readvariableop-
)savev2_dense_143_bias_read_readvariableop/
+savev2_dense_144_kernel_read_readvariableop-
)savev2_dense_144_bias_read_readvariableopF
Bsavev2_simple_rnn_11_simple_rnn_cell_11_kernel_read_readvariableopP
Lsavev2_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_11_simple_rnn_cell_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_143_kernel_m_read_readvariableop4
0savev2_adam_dense_143_bias_m_read_readvariableop6
2savev2_adam_dense_144_kernel_m_read_readvariableop4
0savev2_adam_dense_144_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_m_read_readvariableop6
2savev2_adam_dense_143_kernel_v_read_readvariableop4
0savev2_adam_dense_143_bias_v_read_readvariableop6
2savev2_adam_dense_144_kernel_v_read_readvariableop4
0savev2_adam_dense_144_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_v_read_readvariableop
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
: ·
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*à
valueÖBÓ!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¯
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Þ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_143_kernel_read_readvariableop)savev2_dense_143_bias_read_readvariableop+savev2_dense_144_kernel_read_readvariableop)savev2_dense_144_bias_read_readvariableopBsavev2_simple_rnn_11_simple_rnn_cell_11_kernel_read_readvariableopLsavev2_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_read_readvariableop@savev2_simple_rnn_11_simple_rnn_cell_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_143_kernel_m_read_readvariableop0savev2_adam_dense_143_bias_m_read_readvariableop2savev2_adam_dense_144_kernel_m_read_readvariableop0savev2_adam_dense_144_bias_m_read_readvariableopIsavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_m_read_readvariableop2savev2_adam_dense_143_kernel_v_read_readvariableop0savev2_adam_dense_143_bias_v_read_readvariableop2savev2_adam_dense_144_kernel_v_read_readvariableop0savev2_adam_dense_144_bias_v_read_readvariableopIsavev2_adam_simple_rnn_11_simple_rnn_cell_11_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_11_simple_rnn_cell_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!	
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

identity_1Identity_1:output:0*Ý
_input_shapesË
È: :::::::: : : : : : : : : : : ::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :	
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::  

_output_shapes
::!

_output_shapes
: 
ß

¾
!simple_rnn_11_while_cond_117987968
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_2:
6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798796___redundant_placeholder0R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798796___redundant_placeholder1R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798796___redundant_placeholder2R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798796___redundant_placeholder3 
simple_rnn_11_while_identity

simple_rnn_11/while/LessLesssimple_rnn_11_while_placeholder6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ë
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11797994

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ó	
³
0__inference_sequential_66_layer_call_fn_11798417
simple_rnn_11_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_11_input
ä
´
while_cond_11798168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11798168___redundant_placeholder06
2while_while_cond_11798168___redundant_placeholder16
2while_while_cond_11798168___redundant_placeholder26
2while_while_cond_11798168___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

¼
0__inference_simple_rnn_11_layer_call_fn_11799022
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ê	
ø
G__inference_dense_144_layer_call_and_return_conditional_losses_11799523

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

¾
!simple_rnn_11_while_cond_117989198
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_2:
6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798919___redundant_placeholder0R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798919___redundant_placeholder1R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798919___redundant_placeholder2R
Nsimple_rnn_11_while_simple_rnn_11_while_cond_11798919___redundant_placeholder3 
simple_rnn_11_while_identity

simple_rnn_11/while/LessLesssimple_rnn_11_while_placeholder6simple_rnn_11_while_less_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ó>
Ä
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798560

inputsC
1simple_rnn_cell_11_matmul_readvariableop_resource:@
2simple_rnn_cell_11_biasadd_readvariableop_resource:E
3simple_rnn_cell_11_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢while;
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : ß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11798493*
condR
while_cond_11798492*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
while_cond_11798290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11798290___redundant_placeholder06
2while_while_cond_11798290___redundant_placeholder16
2while_while_cond_11798290___redundant_placeholder26
2while_while_cond_11798290___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

º
0__inference_simple_rnn_11_layer_call_fn_11799033

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798358o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
å
$__inference__traced_restore_11799810
file_prefix3
!assignvariableop_dense_143_kernel:/
!assignvariableop_1_dense_143_bias:5
#assignvariableop_2_dense_144_kernel:/
!assignvariableop_3_dense_144_bias:L
:assignvariableop_4_simple_rnn_11_simple_rnn_cell_11_kernel:V
Dassignvariableop_5_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel:F
8assignvariableop_6_simple_rnn_11_simple_rnn_cell_11_bias:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: %
assignvariableop_12_total_2: %
assignvariableop_13_count_2: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_143_kernel_m:7
)assignvariableop_19_adam_dense_143_bias_m:=
+assignvariableop_20_adam_dense_144_kernel_m:7
)assignvariableop_21_adam_dense_144_bias_m:T
Bassignvariableop_22_adam_simple_rnn_11_simple_rnn_cell_11_kernel_m:^
Lassignvariableop_23_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_m:N
@assignvariableop_24_adam_simple_rnn_11_simple_rnn_cell_11_bias_m:=
+assignvariableop_25_adam_dense_143_kernel_v:7
)assignvariableop_26_adam_dense_143_bias_v:=
+assignvariableop_27_adam_dense_144_kernel_v:7
)assignvariableop_28_adam_dense_144_bias_v:T
Bassignvariableop_29_adam_simple_rnn_11_simple_rnn_cell_11_kernel_v:^
Lassignvariableop_30_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_v:N
@assignvariableop_31_adam_simple_rnn_11_simple_rnn_cell_11_bias_v:
identity_33¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9º
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*à
valueÖBÓ!B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH²
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Æ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_143_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_143_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_144_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_144_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_4AssignVariableOp:assignvariableop_4_simple_rnn_11_simple_rnn_cell_11_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_5AssignVariableOpDassignvariableop_5_simple_rnn_11_simple_rnn_cell_11_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_simple_rnn_11_simple_rnn_cell_11_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_143_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_143_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_dense_144_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_144_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adam_simple_rnn_11_simple_rnn_cell_11_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_23AssignVariableOpLassignvariableop_23_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_11_simple_rnn_cell_11_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_143_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_143_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_144_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_144_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_29AssignVariableOpBassignvariableop_29_adam_simple_rnn_11_simple_rnn_cell_11_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_30AssignVariableOpLassignvariableop_30_adam_simple_rnn_11_simple_rnn_cell_11_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_simple_rnn_11_simple_rnn_cell_11_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_33IdentityIdentity_32:output:0^NoOp_1*
T0*
_output_shapes
: ü
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_33Identity_33:output:0*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
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
Ë"
æ
while_body_11798169
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
#while_simple_rnn_cell_11_11798191_0:1
#while_simple_rnn_cell_11_11798193_0:5
#while_simple_rnn_cell_11_11798195_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
!while_simple_rnn_cell_11_11798191:/
!while_simple_rnn_cell_11_11798193:3
!while_simple_rnn_cell_11_11798195:¢0while/simple_rnn_cell_11/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
0while/simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2#while_simple_rnn_cell_11_11798191_0#while_simple_rnn_cell_11_11798193_0#while_simple_rnn_cell_11_11798195_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11798116r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_11/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity9while/simple_rnn_cell_11/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/NoOpNoOp1^while/simple_rnn_cell_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"H
!while_simple_rnn_cell_11_11798191#while_simple_rnn_cell_11_11798191_0"H
!while_simple_rnn_cell_11_11798193#while_simple_rnn_cell_11_11798193_0"H
!while_simple_rnn_cell_11_11798195#while_simple_rnn_cell_11_11798195_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0while/simple_rnn_cell_11/StatefulPartitionedCall0while/simple_rnn_cell_11/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ô-
Ó
while_body_11799087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_11_matmul_readvariableop_resource:F
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_11/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ê	
ø
G__inference_dense_144_layer_call_and_return_conditional_losses_11798393

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô-
Ó
while_body_11799417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_11_matmul_readvariableop_resource:F
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_11/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ç
ñ
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798668
simple_rnn_11_input(
simple_rnn_11_11798650:$
simple_rnn_11_11798652:(
simple_rnn_11_11798654:$
dense_143_11798657: 
dense_143_11798659:$
dense_144_11798662: 
dense_144_11798664:
identity¢!dense_143/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall±
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputsimple_rnn_11_11798650simple_rnn_11_11798652simple_rnn_11_11798654*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798358¢
!dense_143/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0dense_143_11798657dense_143_11798659*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_143_layer_call_and_return_conditional_losses_11798377
!dense_144/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0dense_144_11798662dense_144_11798664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_144_layer_call_and_return_conditional_losses_11798393y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_143/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_11_input
Ó>
Ä
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798358

inputsC
1simple_rnn_cell_11_matmul_readvariableop_resource:@
2simple_rnn_cell_11_biasadd_readvariableop_resource:E
3simple_rnn_cell_11_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢while;
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : ß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11798291*
condR
while_cond_11798290*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
while_cond_11799196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11799196___redundant_placeholder06
2while_while_cond_11799196___redundant_placeholder16
2while_while_cond_11799196___redundant_placeholder26
2while_while_cond_11799196___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
\

K__inference_sequential_66_layer_call_and_return_conditional_losses_11798877

inputsQ
?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource:N
@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource:S
Asimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource::
(dense_143_matmul_readvariableop_resource:7
)dense_143_biasadd_readvariableop_resource::
(dense_144_matmul_readvariableop_resource:7
)dense_144_biasadd_readvariableop_resource:
identity¢ dense_143/BiasAdd/ReadVariableOp¢dense_143/MatMul/ReadVariableOp¢ dense_144/BiasAdd/ReadVariableOp¢dense_144/MatMul/ReadVariableOp¢7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp¢8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¢simple_rnn_11/whileI
simple_rnn_11/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_11/strided_sliceStridedSlicesimple_rnn_11/Shape:output:0*simple_rnn_11/strided_slice/stack:output:0,simple_rnn_11/strided_slice/stack_1:output:0,simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_11/zeros/packedPack$simple_rnn_11/strided_slice:output:0%simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_11/zerosFill#simple_rnn_11/zeros/packed:output:0"simple_rnn_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_11/transpose	Transposeinputs%simple_rnn_11/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
simple_rnn_11/Shape_1Shapesimple_rnn_11/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
simple_rnn_11/strided_slice_1StridedSlicesimple_rnn_11/Shape_1:output:0,simple_rnn_11/strided_slice_1/stack:output:0.simple_rnn_11/strided_slice_1/stack_1:output:0.simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
simple_rnn_11/TensorArrayV2TensorListReserve2simple_rnn_11/TensorArrayV2/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_11/transpose:y:0Lsimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
simple_rnn_11/strided_slice_2StridedSlicesimple_rnn_11/transpose:y:0,simple_rnn_11/strided_slice_2/stack:output:0.simple_rnn_11/strided_slice_2/stack_1:output:0.simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¶
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ë
'simple_rnn_11/simple_rnn_cell_11/MatMulMatMul&simple_rnn_11/strided_slice_2:output:0>simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ù
(simple_rnn_11/simple_rnn_cell_11/BiasAddBiasAdd1simple_rnn_11/simple_rnn_cell_11/MatMul:product:0?simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Å
)simple_rnn_11/simple_rnn_cell_11/MatMul_1MatMulsimple_rnn_11/zeros:output:0@simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
$simple_rnn_11/simple_rnn_cell_11/addAddV21simple_rnn_11/simple_rnn_cell_11/BiasAdd:output:03simple_rnn_11/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%simple_rnn_11/simple_rnn_cell_11/TanhTanh(simple_rnn_11/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
+simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   l
*simple_rnn_11/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
simple_rnn_11/TensorArrayV2_1TensorListReserve4simple_rnn_11/TensorArrayV2_1/element_shape:output:03simple_rnn_11/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_11/whileWhile)simple_rnn_11/while/loop_counter:output:0/simple_rnn_11/while/maximum_iterations:output:0simple_rnn_11/time:output:0&simple_rnn_11/TensorArrayV2_1:handle:0simple_rnn_11/zeros:output:0&simple_rnn_11/strided_slice_1:output:0Esimple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *-
body%R#
!simple_rnn_11_while_body_11798797*-
cond%R#
!simple_rnn_11_while_cond_11798796*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
0simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_11/while:output:3Gsimple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsv
#simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
simple_rnn_11/strided_slice_3StridedSlice9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_11/strided_slice_3/stack:output:0.simple_rnn_11/strided_slice_3/stack_1:output:0.simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_masks
simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
simple_rnn_11/transpose_1	Transpose9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_143/MatMulMatMul&simple_rnn_11/strided_slice_3:output:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_143/ReluReludense_143/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_144/MatMulMatMuldense_143/Relu:activations:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_144/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp8^simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7^simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp9^simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp^simple_rnn_11/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2r
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp2p
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp2t
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp2*
simple_rnn_11/whilesimple_rnn_11/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
ä
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798400

inputs(
simple_rnn_11_11798359:$
simple_rnn_11_11798361:(
simple_rnn_11_11798363:$
dense_143_11798378: 
dense_143_11798380:$
dense_144_11798394: 
dense_144_11798396:
identity¢!dense_143/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall¤
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_11_11798359simple_rnn_11_11798361simple_rnn_11_11798363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798358¢
!dense_143/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0dense_143_11798378dense_143_11798380*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_143_layer_call_and_return_conditional_losses_11798377
!dense_144/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0dense_144_11798394dense_144_11798396*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_144_layer_call_and_return_conditional_losses_11798393y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_143/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢5
¨
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798072

inputs-
simple_rnn_cell_11_11797995:)
simple_rnn_cell_11_11797997:-
simple_rnn_cell_11_11797999:
identity¢*simple_rnn_cell_11/StatefulPartitionedCall¢while;
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskô
*simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_11_11797995simple_rnn_cell_11_11797997simple_rnn_cell_11_11797999*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11797994n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_11_11797995simple_rnn_cell_11_11797997simple_rnn_cell_11_11797999*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11798008*
condR
while_cond_11798007*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
NoOpNoOp+^simple_rnn_cell_11/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2X
*simple_rnn_cell_11/StatefulPartitionedCall*simple_rnn_cell_11/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó>
Ä
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799374

inputsC
1simple_rnn_cell_11_matmul_readvariableop_resource:@
2simple_rnn_cell_11_biasadd_readvariableop_resource:E
3simple_rnn_cell_11_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢while;
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : ß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11799307*
condR
while_cond_11799306*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó>
Ä
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799484

inputsC
1simple_rnn_cell_11_matmul_readvariableop_resource:@
2simple_rnn_cell_11_biasadd_readvariableop_resource:E
3simple_rnn_cell_11_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢while;
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : ß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11799417*
condR
while_cond_11799416*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô-
Ó
while_body_11799307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_11_matmul_readvariableop_resource:F
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_11/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ó	
³
0__inference_sequential_66_layer_call_fn_11798647
simple_rnn_11_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_11_input
\

K__inference_sequential_66_layer_call_and_return_conditional_losses_11799000

inputsQ
?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource:N
@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource:S
Asimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource::
(dense_143_matmul_readvariableop_resource:7
)dense_143_biasadd_readvariableop_resource::
(dense_144_matmul_readvariableop_resource:7
)dense_144_biasadd_readvariableop_resource:
identity¢ dense_143/BiasAdd/ReadVariableOp¢dense_143/MatMul/ReadVariableOp¢ dense_144/BiasAdd/ReadVariableOp¢dense_144/MatMul/ReadVariableOp¢7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp¢8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¢simple_rnn_11/whileI
simple_rnn_11/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_11/strided_sliceStridedSlicesimple_rnn_11/Shape:output:0*simple_rnn_11/strided_slice/stack:output:0,simple_rnn_11/strided_slice/stack_1:output:0,simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_11/zeros/packedPack$simple_rnn_11/strided_slice:output:0%simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_11/zerosFill#simple_rnn_11/zeros/packed:output:0"simple_rnn_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_11/transpose	Transposeinputs%simple_rnn_11/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
simple_rnn_11/Shape_1Shapesimple_rnn_11/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
simple_rnn_11/strided_slice_1StridedSlicesimple_rnn_11/Shape_1:output:0,simple_rnn_11/strided_slice_1/stack:output:0.simple_rnn_11/strided_slice_1/stack_1:output:0.simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
simple_rnn_11/TensorArrayV2TensorListReserve2simple_rnn_11/TensorArrayV2/element_shape:output:0&simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Csimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
5simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_11/transpose:y:0Lsimple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
simple_rnn_11/strided_slice_2StridedSlicesimple_rnn_11/transpose:y:0,simple_rnn_11/strided_slice_2/stack:output:0.simple_rnn_11/strided_slice_2/stack_1:output:0.simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¶
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ë
'simple_rnn_11/simple_rnn_cell_11/MatMulMatMul&simple_rnn_11/strided_slice_2:output:0>simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ù
(simple_rnn_11/simple_rnn_cell_11/BiasAddBiasAdd1simple_rnn_11/simple_rnn_cell_11/MatMul:product:0?simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Å
)simple_rnn_11/simple_rnn_cell_11/MatMul_1MatMulsimple_rnn_11/zeros:output:0@simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
$simple_rnn_11/simple_rnn_cell_11/addAddV21simple_rnn_11/simple_rnn_cell_11/BiasAdd:output:03simple_rnn_11/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%simple_rnn_11/simple_rnn_cell_11/TanhTanh(simple_rnn_11/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
+simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   l
*simple_rnn_11/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
simple_rnn_11/TensorArrayV2_1TensorListReserve4simple_rnn_11/TensorArrayV2_1/element_shape:output:03simple_rnn_11/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_11/whileWhile)simple_rnn_11/while/loop_counter:output:0/simple_rnn_11/while/maximum_iterations:output:0simple_rnn_11/time:output:0&simple_rnn_11/TensorArrayV2_1:handle:0simple_rnn_11/zeros:output:0&simple_rnn_11/strided_slice_1:output:0Esimple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource@simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceAsimple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *-
body%R#
!simple_rnn_11_while_body_11798920*-
cond%R#
!simple_rnn_11_while_cond_11798919*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
>simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
0simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_11/while:output:3Gsimple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsv
#simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
simple_rnn_11/strided_slice_3StridedSlice9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_11/strided_slice_3/stack:output:0.simple_rnn_11/strided_slice_3/stack_1:output:0.simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_masks
simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
simple_rnn_11/transpose_1	Transpose9simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_143/MatMulMatMul&simple_rnn_11/strided_slice_3:output:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_143/ReluReludense_143/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_144/MatMulMatMuldense_143/Relu:activations:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_144/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp8^simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7^simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp9^simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp^simple_rnn_11/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2r
7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp7simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp2p
6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp6simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp2t
8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp8simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp2*
simple_rnn_11/whilesimple_rnn_11/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô-
Ó
while_body_11799197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_11_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_11_matmul_readvariableop_resource:F
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_11/MatMul/ReadVariableOp¢0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_11/BiasAddBiasAdd)while/simple_rnn_cell_11/MatMul:product:07while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_11/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_11/addAddV2)while/simple_rnn_cell_11/BiasAdd:output:0+while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_11/TanhTanh while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_11/Tanh:y:0*
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
: ~
while/Identity_4Identity!while/simple_rnn_cell_11/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_11/MatMul/ReadVariableOp1^while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_11_biasadd_readvariableop_resource:while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_11_matmul_1_readvariableop_resource;while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_11_matmul_readvariableop_resource9while_simple_rnn_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_11/MatMul/ReadVariableOp.while/simple_rnn_cell_11/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp0while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ªH

/sequential_66_simple_rnn_11_while_body_11797866T
Psequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_loop_counterZ
Vsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_maximum_iterations1
-sequential_66_simple_rnn_11_while_placeholder3
/sequential_66_simple_rnn_11_while_placeholder_13
/sequential_66_simple_rnn_11_while_placeholder_2S
Osequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_strided_slice_1_0
sequential_66_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_66_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0:d
Vsequential_66_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:i
Wsequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0:.
*sequential_66_simple_rnn_11_while_identity0
,sequential_66_simple_rnn_11_while_identity_10
,sequential_66_simple_rnn_11_while_identity_20
,sequential_66_simple_rnn_11_while_identity_30
,sequential_66_simple_rnn_11_while_identity_4Q
Msequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_strided_slice_1
sequential_66_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_66_simple_rnn_11_tensorarrayunstack_tensorlistfromtensore
Ssequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource:b
Tsequential_66_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource:g
Usequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢Ksequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢Jsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp¢Lsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp¤
Ssequential_66/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ³
Esequential_66/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_66_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_66_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0-sequential_66_simple_rnn_11_while_placeholder\sequential_66/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0à
Jsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpUsequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
;sequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMulMatMulLsequential_66/simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
Ksequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpVsequential_66_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
<sequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAddBiasAddEsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul:product:0Ssequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
Lsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpWsequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0
=sequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1MatMul/sequential_66_simple_rnn_11_while_placeholder_2Tsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8sequential_66/simple_rnn_11/while/simple_rnn_cell_11/addAddV2Esequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd:output:0Gsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
9sequential_66/simple_rnn_11/while/simple_rnn_cell_11/TanhTanh<sequential_66/simple_rnn_11/while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Lsequential_66/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : â
Fsequential_66/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_66_simple_rnn_11_while_placeholder_1Usequential_66/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem/index:output:0=sequential_66/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒi
'sequential_66/simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :°
%sequential_66/simple_rnn_11/while/addAddV2-sequential_66_simple_rnn_11_while_placeholder0sequential_66/simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_66/simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :×
'sequential_66/simple_rnn_11/while/add_1AddV2Psequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_loop_counter2sequential_66/simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*sequential_66/simple_rnn_11/while/IdentityIdentity+sequential_66/simple_rnn_11/while/add_1:z:0'^sequential_66/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: Ú
,sequential_66/simple_rnn_11/while/Identity_1IdentityVsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_maximum_iterations'^sequential_66/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: ­
,sequential_66/simple_rnn_11/while/Identity_2Identity)sequential_66/simple_rnn_11/while/add:z:0'^sequential_66/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: Ú
,sequential_66/simple_rnn_11/while/Identity_3IdentityVsequential_66/simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_66/simple_rnn_11/while/NoOp*
T0*
_output_shapes
: Ò
,sequential_66/simple_rnn_11/while/Identity_4Identity=sequential_66/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0'^sequential_66/simple_rnn_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
&sequential_66/simple_rnn_11/while/NoOpNoOpL^sequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpK^sequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpM^sequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_66_simple_rnn_11_while_identity3sequential_66/simple_rnn_11/while/Identity:output:0"e
,sequential_66_simple_rnn_11_while_identity_15sequential_66/simple_rnn_11/while/Identity_1:output:0"e
,sequential_66_simple_rnn_11_while_identity_25sequential_66/simple_rnn_11/while/Identity_2:output:0"e
,sequential_66_simple_rnn_11_while_identity_35sequential_66/simple_rnn_11/while/Identity_3:output:0"e
,sequential_66_simple_rnn_11_while_identity_45sequential_66/simple_rnn_11/while/Identity_4:output:0" 
Msequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_strided_slice_1Osequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_strided_slice_1_0"®
Tsequential_66_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceVsequential_66_simple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"°
Usequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resourceWsequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"¬
Ssequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceUsequential_66_simple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0"
sequential_66_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_66_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorsequential_66_simple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_sequential_66_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Ksequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpKsequential_66/simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2
Jsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpJsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp2
Lsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpLsequential_66/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ú
È
/sequential_66_simple_rnn_11_while_cond_11797865T
Psequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_loop_counterZ
Vsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_maximum_iterations1
-sequential_66_simple_rnn_11_while_placeholder3
/sequential_66_simple_rnn_11_while_placeholder_13
/sequential_66_simple_rnn_11_while_placeholder_2V
Rsequential_66_simple_rnn_11_while_less_sequential_66_simple_rnn_11_strided_slice_1n
jsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_cond_11797865___redundant_placeholder0n
jsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_cond_11797865___redundant_placeholder1n
jsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_cond_11797865___redundant_placeholder2n
jsequential_66_simple_rnn_11_while_sequential_66_simple_rnn_11_while_cond_11797865___redundant_placeholder3.
*sequential_66_simple_rnn_11_while_identity
Ò
&sequential_66/simple_rnn_11/while/LessLess-sequential_66_simple_rnn_11_while_placeholderRsequential_66_simple_rnn_11_while_less_sequential_66_simple_rnn_11_strided_slice_1*
T0*
_output_shapes
: 
*sequential_66/simple_rnn_11/while/IdentityIdentity*sequential_66/simple_rnn_11/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_66_simple_rnn_11_while_identity3sequential_66/simple_rnn_11/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ë
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11798116

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¬	
¦
0__inference_sequential_66_layer_call_fn_11798754

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬	
¦
0__inference_sequential_66_layer_call_fn_11798735

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
;
÷
!simple_rnn_11_while_body_117989208
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_27
3simple_rnn_11_while_simple_rnn_11_strided_slice_1_0s
osimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0:V
Hsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:[
Isimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0: 
simple_rnn_11_while_identity"
simple_rnn_11_while_identity_1"
simple_rnn_11_while_identity_2"
simple_rnn_11_while_identity_3"
simple_rnn_11_while_identity_45
1simple_rnn_11_while_simple_rnn_11_strided_slice_1q
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource:T
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource:Y
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp¢>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ì
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_11_while_placeholderNsimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ä
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ï
-simple_rnn_11/while/simple_rnn_cell_11/MatMulMatMul>simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0ë
.simple_rnn_11/while/simple_rnn_cell_11/BiasAddBiasAdd7simple_rnn_11/while/simple_rnn_cell_11/MatMul:product:0Esimple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Ö
/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1MatMul!simple_rnn_11_while_placeholder_2Fsimple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
*simple_rnn_11/while/simple_rnn_cell_11/addAddV27simple_rnn_11/while/simple_rnn_cell_11/BiasAdd:output:09simple_rnn_11/while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+simple_rnn_11/while/simple_rnn_cell_11/TanhTanh.simple_rnn_11/while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ª
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_11_while_placeholder_1Gsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒ[
simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_11/while/addAddV2simple_rnn_11_while_placeholder"simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_11/while/add_1AddV24simple_rnn_11_while_simple_rnn_11_while_loop_counter$simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/add_1:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: ¢
simple_rnn_11/while/Identity_1Identity:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_11/while/Identity_2Identitysimple_rnn_11/while/add:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: °
simple_rnn_11/while/Identity_3IdentityHsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: ¨
simple_rnn_11/while/Identity_4Identity/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0^simple_rnn_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_11/while/NoOpNoOp>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0"I
simple_rnn_11_while_identity_1'simple_rnn_11/while/Identity_1:output:0"I
simple_rnn_11_while_identity_2'simple_rnn_11/while/Identity_2:output:0"I
simple_rnn_11_while_identity_3'simple_rnn_11/while/Identity_3:output:0"I
simple_rnn_11_while_identity_4'simple_rnn_11/while/Identity_4:output:0"h
1simple_rnn_11_while_simple_rnn_11_strided_slice_13simple_rnn_11_while_simple_rnn_11_strided_slice_1_0"
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resourceIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0"à
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2~
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2|
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp2
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ç
ñ
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798689
simple_rnn_11_input(
simple_rnn_11_11798671:$
simple_rnn_11_11798673:(
simple_rnn_11_11798675:$
dense_143_11798678: 
dense_143_11798680:$
dense_144_11798683: 
dense_144_11798685:
identity¢!dense_143/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall±
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputsimple_rnn_11_11798671simple_rnn_11_11798673simple_rnn_11_11798675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798560¢
!dense_143/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0dense_143_11798678dense_143_11798680*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_143_layer_call_and_return_conditional_losses_11798377
!dense_144/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0dense_144_11798683dense_144_11798685*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_144_layer_call_and_return_conditional_losses_11798393y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_143/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_11_input


ø
G__inference_dense_143_layer_call_and_return_conditional_losses_11799504

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡	
©
&__inference_signature_wrapper_11798716
simple_rnn_11_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_11797946o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_11_input
;
÷
!simple_rnn_11_while_body_117987978
4simple_rnn_11_while_simple_rnn_11_while_loop_counter>
:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations#
simple_rnn_11_while_placeholder%
!simple_rnn_11_while_placeholder_1%
!simple_rnn_11_while_placeholder_27
3simple_rnn_11_while_simple_rnn_11_strided_slice_1_0s
osimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0:V
Hsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0:[
Isimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0: 
simple_rnn_11_while_identity"
simple_rnn_11_while_identity_1"
simple_rnn_11_while_identity_2"
simple_rnn_11_while_identity_3"
simple_rnn_11_while_identity_45
1simple_rnn_11_while_simple_rnn_11_strided_slice_1q
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource:T
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource:Y
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource:¢=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp¢>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp
Esimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ì
7simple_rnn_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_11_while_placeholderNsimple_rnn_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ä
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ï
-simple_rnn_11/while/simple_rnn_cell_11/MatMulMatMul>simple_rnn_11/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0ë
.simple_rnn_11/while/simple_rnn_cell_11/BiasAddBiasAdd7simple_rnn_11/while/simple_rnn_cell_11/MatMul:product:0Esimple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Ö
/simple_rnn_11/while/simple_rnn_cell_11/MatMul_1MatMul!simple_rnn_11_while_placeholder_2Fsimple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
*simple_rnn_11/while/simple_rnn_cell_11/addAddV27simple_rnn_11/while/simple_rnn_cell_11/BiasAdd:output:09simple_rnn_11/while/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+simple_rnn_11/while/simple_rnn_cell_11/TanhTanh.simple_rnn_11/while/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>simple_rnn_11/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ª
8simple_rnn_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_11_while_placeholder_1Gsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒ[
simple_rnn_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_11/while/addAddV2simple_rnn_11_while_placeholder"simple_rnn_11/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_11/while/add_1AddV24simple_rnn_11_while_simple_rnn_11_while_loop_counter$simple_rnn_11/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_11/while/IdentityIdentitysimple_rnn_11/while/add_1:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: ¢
simple_rnn_11/while/Identity_1Identity:simple_rnn_11_while_simple_rnn_11_while_maximum_iterations^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_11/while/Identity_2Identitysimple_rnn_11/while/add:z:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: °
simple_rnn_11/while/Identity_3IdentityHsimple_rnn_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_11/while/NoOp*
T0*
_output_shapes
: ¨
simple_rnn_11/while/Identity_4Identity/simple_rnn_11/while/simple_rnn_cell_11/Tanh:y:0^simple_rnn_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_11/while/NoOpNoOp>^simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=^simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp?^simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_11_while_identity%simple_rnn_11/while/Identity:output:0"I
simple_rnn_11_while_identity_1'simple_rnn_11/while/Identity_1:output:0"I
simple_rnn_11_while_identity_2'simple_rnn_11/while/Identity_2:output:0"I
simple_rnn_11_while_identity_3'simple_rnn_11/while/Identity_3:output:0"I
simple_rnn_11_while_identity_4'simple_rnn_11/while/Identity_4:output:0"h
1simple_rnn_11_while_simple_rnn_11_strided_slice_13simple_rnn_11_while_simple_rnn_11_strided_slice_1_0"
Fsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resourceHsimple_rnn_11_while_simple_rnn_cell_11_biasadd_readvariableop_resource_0"
Gsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resourceIsimple_rnn_11_while_simple_rnn_cell_11_matmul_1_readvariableop_resource_0"
Esimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resourceGsimple_rnn_11_while_simple_rnn_cell_11_matmul_readvariableop_resource_0"à
msimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensorosimple_rnn_11_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2~
=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp=simple_rnn_11/while/simple_rnn_cell_11/BiasAdd/ReadVariableOp2|
<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp<simple_rnn_11/while/simple_rnn_cell_11/MatMul/ReadVariableOp2
>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp>simple_rnn_11/while/simple_rnn_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ä
´
while_cond_11799306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11799306___redundant_placeholder06
2while_while_cond_11799306___redundant_placeholder16
2while_while_cond_11799306___redundant_placeholder26
2while_while_cond_11799306___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
È

,__inference_dense_143_layer_call_fn_11799493

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_143_layer_call_and_return_conditional_losses_11798377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë"
æ
while_body_11798008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
#while_simple_rnn_cell_11_11798030_0:1
#while_simple_rnn_cell_11_11798032_0:5
#while_simple_rnn_cell_11_11798034_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
!while_simple_rnn_cell_11_11798030:/
!while_simple_rnn_cell_11_11798032:3
!while_simple_rnn_cell_11_11798034:¢0while/simple_rnn_cell_11/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
0while/simple_rnn_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2#while_simple_rnn_cell_11_11798030_0#while_simple_rnn_cell_11_11798032_0#while_simple_rnn_cell_11_11798034_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11797994r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_11/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity9while/simple_rnn_cell_11/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/NoOpNoOp1^while/simple_rnn_cell_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"H
!while_simple_rnn_cell_11_11798030#while_simple_rnn_cell_11_11798030_0"H
!while_simple_rnn_cell_11_11798032#while_simple_rnn_cell_11_11798032_0"H
!while_simple_rnn_cell_11_11798034#while_simple_rnn_cell_11_11798034_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0while/simple_rnn_cell_11/StatefulPartitionedCall0while/simple_rnn_cell_11/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
À
ä
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798611

inputs(
simple_rnn_11_11798593:$
simple_rnn_11_11798595:(
simple_rnn_11_11798597:$
dense_143_11798600: 
dense_143_11798602:$
dense_144_11798605: 
dense_144_11798607:
identity¢!dense_143/StatefulPartitionedCall¢!dense_144/StatefulPartitionedCall¢%simple_rnn_11/StatefulPartitionedCall¤
%simple_rnn_11/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_11_11798593simple_rnn_11_11798595simple_rnn_11_11798597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798560¢
!dense_143/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_11/StatefulPartitionedCall:output:0dense_143_11798600dense_143_11798602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_143_layer_call_and_return_conditional_losses_11798377
!dense_144/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0dense_144_11798605dense_144_11798607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_144_layer_call_and_return_conditional_losses_11798393y
IdentityIdentity*dense_144/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_143/StatefulPartitionedCall"^dense_144/StatefulPartitionedCall&^simple_rnn_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2N
%simple_rnn_11/StatefulPartitionedCall%simple_rnn_11/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö>
Æ
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799264
inputs_0C
1simple_rnn_cell_11_matmul_readvariableop_resource:@
2simple_rnn_cell_11_biasadd_readvariableop_resource:E
3simple_rnn_cell_11_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢while=
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : ß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11799197*
condR
while_cond_11799196*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
«n
Ñ
#__inference__wrapped_model_11797946
simple_rnn_11_input_
Msequential_66_simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource:\
Nsequential_66_simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource:a
Osequential_66_simple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource:H
6sequential_66_dense_143_matmul_readvariableop_resource:E
7sequential_66_dense_143_biasadd_readvariableop_resource:H
6sequential_66_dense_144_matmul_readvariableop_resource:E
7sequential_66_dense_144_biasadd_readvariableop_resource:
identity¢.sequential_66/dense_143/BiasAdd/ReadVariableOp¢-sequential_66/dense_143/MatMul/ReadVariableOp¢.sequential_66/dense_144/BiasAdd/ReadVariableOp¢-sequential_66/dense_144/MatMul/ReadVariableOp¢Esequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp¢Dsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp¢Fsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp¢!sequential_66/simple_rnn_11/whiled
!sequential_66/simple_rnn_11/ShapeShapesimple_rnn_11_input*
T0*
_output_shapes
:y
/sequential_66/simple_rnn_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_66/simple_rnn_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_66/simple_rnn_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)sequential_66/simple_rnn_11/strided_sliceStridedSlice*sequential_66/simple_rnn_11/Shape:output:08sequential_66/simple_rnn_11/strided_slice/stack:output:0:sequential_66/simple_rnn_11/strided_slice/stack_1:output:0:sequential_66/simple_rnn_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_66/simple_rnn_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ç
(sequential_66/simple_rnn_11/zeros/packedPack2sequential_66/simple_rnn_11/strided_slice:output:03sequential_66/simple_rnn_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_66/simple_rnn_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!sequential_66/simple_rnn_11/zerosFill1sequential_66/simple_rnn_11/zeros/packed:output:00sequential_66/simple_rnn_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_66/simple_rnn_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
%sequential_66/simple_rnn_11/transpose	Transposesimple_rnn_11_input3sequential_66/simple_rnn_11/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
#sequential_66/simple_rnn_11/Shape_1Shape)sequential_66/simple_rnn_11/transpose:y:0*
T0*
_output_shapes
:{
1sequential_66/simple_rnn_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_66/simple_rnn_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_66/simple_rnn_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+sequential_66/simple_rnn_11/strided_slice_1StridedSlice,sequential_66/simple_rnn_11/Shape_1:output:0:sequential_66/simple_rnn_11/strided_slice_1/stack:output:0<sequential_66/simple_rnn_11/strided_slice_1/stack_1:output:0<sequential_66/simple_rnn_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7sequential_66/simple_rnn_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
)sequential_66/simple_rnn_11/TensorArrayV2TensorListReserve@sequential_66/simple_rnn_11/TensorArrayV2/element_shape:output:04sequential_66/simple_rnn_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¢
Qsequential_66/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ´
Csequential_66/simple_rnn_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_66/simple_rnn_11/transpose:y:0Zsequential_66/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
1sequential_66/simple_rnn_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_66/simple_rnn_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_66/simple_rnn_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
+sequential_66/simple_rnn_11/strided_slice_2StridedSlice)sequential_66/simple_rnn_11/transpose:y:0:sequential_66/simple_rnn_11/strided_slice_2/stack:output:0<sequential_66/simple_rnn_11/strided_slice_2/stack_1:output:0<sequential_66/simple_rnn_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÒ
Dsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOpMsequential_66_simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0õ
5sequential_66/simple_rnn_11/simple_rnn_cell_11/MatMulMatMul4sequential_66/simple_rnn_11/strided_slice_2:output:0Lsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
Esequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOpNsequential_66_simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
6sequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAddBiasAdd?sequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul:product:0Msequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
Fsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOpOsequential_66_simple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ï
7sequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1MatMul*sequential_66/simple_rnn_11/zeros:output:0Nsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
2sequential_66/simple_rnn_11/simple_rnn_cell_11/addAddV2?sequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd:output:0Asequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
3sequential_66/simple_rnn_11/simple_rnn_cell_11/TanhTanh6sequential_66/simple_rnn_11/simple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9sequential_66/simple_rnn_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   z
8sequential_66/simple_rnn_11/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
+sequential_66/simple_rnn_11/TensorArrayV2_1TensorListReserveBsequential_66/simple_rnn_11/TensorArrayV2_1/element_shape:output:0Asequential_66/simple_rnn_11/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒb
 sequential_66/simple_rnn_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_66/simple_rnn_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp
.sequential_66/simple_rnn_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ë
!sequential_66/simple_rnn_11/whileWhile7sequential_66/simple_rnn_11/while/loop_counter:output:0=sequential_66/simple_rnn_11/while/maximum_iterations:output:0)sequential_66/simple_rnn_11/time:output:04sequential_66/simple_rnn_11/TensorArrayV2_1:handle:0*sequential_66/simple_rnn_11/zeros:output:04sequential_66/simple_rnn_11/strided_slice_1:output:0Ssequential_66/simple_rnn_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_66_simple_rnn_11_simple_rnn_cell_11_matmul_readvariableop_resourceNsequential_66_simple_rnn_11_simple_rnn_cell_11_biasadd_readvariableop_resourceOsequential_66_simple_rnn_11_simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *;
body3R1
/sequential_66_simple_rnn_11_while_body_11797866*;
cond3R1
/sequential_66_simple_rnn_11_while_cond_11797865*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Lsequential_66/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ª
>sequential_66/simple_rnn_11/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_66/simple_rnn_11/while:output:3Usequential_66/simple_rnn_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elements
1sequential_66/simple_rnn_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3sequential_66/simple_rnn_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_66/simple_rnn_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+sequential_66/simple_rnn_11/strided_slice_3StridedSliceGsequential_66/simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_66/simple_rnn_11/strided_slice_3/stack:output:0<sequential_66/simple_rnn_11/strided_slice_3/stack_1:output:0<sequential_66/simple_rnn_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
,sequential_66/simple_rnn_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
'sequential_66/simple_rnn_11/transpose_1	TransposeGsequential_66/simple_rnn_11/TensorArrayV2Stack/TensorListStack:tensor:05sequential_66/simple_rnn_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
-sequential_66/dense_143/MatMul/ReadVariableOpReadVariableOp6sequential_66_dense_143_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ç
sequential_66/dense_143/MatMulMatMul4sequential_66/simple_rnn_11/strided_slice_3:output:05sequential_66/dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_66/dense_143/BiasAdd/ReadVariableOpReadVariableOp7sequential_66_dense_143_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_66/dense_143/BiasAddBiasAdd(sequential_66/dense_143/MatMul:product:06sequential_66/dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_66/dense_143/ReluRelu(sequential_66/dense_143/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
-sequential_66/dense_144/MatMul/ReadVariableOpReadVariableOp6sequential_66_dense_144_matmul_readvariableop_resource*
_output_shapes

:*
dtype0½
sequential_66/dense_144/MatMulMatMul*sequential_66/dense_143/Relu:activations:05sequential_66/dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_66/dense_144/BiasAdd/ReadVariableOpReadVariableOp7sequential_66_dense_144_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_66/dense_144/BiasAddBiasAdd(sequential_66/dense_144/MatMul:product:06sequential_66/dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(sequential_66/dense_144/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^sequential_66/dense_143/BiasAdd/ReadVariableOp.^sequential_66/dense_143/MatMul/ReadVariableOp/^sequential_66/dense_144/BiasAdd/ReadVariableOp.^sequential_66/dense_144/MatMul/ReadVariableOpF^sequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpE^sequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpG^sequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp"^sequential_66/simple_rnn_11/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_66/dense_143/BiasAdd/ReadVariableOp.sequential_66/dense_143/BiasAdd/ReadVariableOp2^
-sequential_66/dense_143/MatMul/ReadVariableOp-sequential_66/dense_143/MatMul/ReadVariableOp2`
.sequential_66/dense_144/BiasAdd/ReadVariableOp.sequential_66/dense_144/BiasAdd/ReadVariableOp2^
-sequential_66/dense_144/MatMul/ReadVariableOp-sequential_66/dense_144/MatMul/ReadVariableOp2
Esequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOpEsequential_66/simple_rnn_11/simple_rnn_cell_11/BiasAdd/ReadVariableOp2
Dsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOpDsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul/ReadVariableOp2
Fsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOpFsequential_66/simple_rnn_11/simple_rnn_cell_11/MatMul_1/ReadVariableOp2F
!sequential_66/simple_rnn_11/while!sequential_66/simple_rnn_11/while:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_11_input

º
0__inference_simple_rnn_11_layer_call_fn_11799044

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11798560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö>
Æ
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799154
inputs_0C
1simple_rnn_cell_11_matmul_readvariableop_resource:@
2simple_rnn_cell_11_biasadd_readvariableop_resource:E
3simple_rnn_cell_11_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_11/BiasAdd/ReadVariableOp¢(simple_rnn_cell_11/MatMul/ReadVariableOp¢*simple_rnn_cell_11/MatMul_1/ReadVariableOp¢while=
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
value	B :s
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
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(simple_rnn_cell_11/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_11/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_11/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_11/BiasAddBiasAdd#simple_rnn_cell_11/MatMul:product:01simple_rnn_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_11/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_11/MatMul_1MatMulzeros:output:02simple_rnn_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_11/addAddV2#simple_rnn_cell_11/BiasAdd:output:0%simple_rnn_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_11/TanhTanhsimple_rnn_cell_11/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
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
value	B : ß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_11_matmul_readvariableop_resource2simple_rnn_cell_11_biasadd_readvariableop_resource3simple_rnn_cell_11_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11799087*
condR
while_cond_11799086*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp*^simple_rnn_cell_11/BiasAdd/ReadVariableOp)^simple_rnn_cell_11/MatMul/ReadVariableOp+^simple_rnn_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_11/BiasAdd/ReadVariableOp)simple_rnn_cell_11/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_11/MatMul/ReadVariableOp(simple_rnn_cell_11/MatMul/ReadVariableOp2X
*simple_rnn_cell_11/MatMul_1/ReadVariableOp*simple_rnn_cell_11/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

í
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799568

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ä
´
while_cond_11799416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_11799416___redundant_placeholder06
2while_while_cond_11799416___redundant_placeholder16
2while_while_cond_11799416___redundant_placeholder26
2while_while_cond_11799416___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

í
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799585

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*È
serving_default´
W
simple_rnn_11_input@
%serving_default_simple_rnn_11_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1440
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:±
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
Q
%0
&1
'2
3
4
#5
$6"
trackable_list_wrapper
Q
%0
&1
'2
3
4
#5
$6"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ö
-trace_0
.trace_1
/trace_2
0trace_32
0__inference_sequential_66_layer_call_fn_11798417
0__inference_sequential_66_layer_call_fn_11798735
0__inference_sequential_66_layer_call_fn_11798754
0__inference_sequential_66_layer_call_fn_11798647À
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
 z-trace_0z.trace_1z/trace_2z0trace_3
â
1trace_0
2trace_1
3trace_2
4trace_32÷
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798877
K__inference_sequential_66_layer_call_and_return_conditional_losses_11799000
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798668
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798689À
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
 z1trace_0z2trace_1z3trace_2z4trace_3
ÚB×
#__inference__wrapped_model_11797946simple_rnn_11_input"
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
×
5iter

6beta_1

7beta_2
	8decay
9learning_ratemxmy#mz$m{%m|&m}'m~vv#v$v%v&v'v"
	optimizer
,
:serving_default"
signature_map
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

Atrace_0
Btrace_1
Ctrace_2
Dtrace_32 
0__inference_simple_rnn_11_layer_call_fn_11799011
0__inference_simple_rnn_11_layer_call_fn_11799022
0__inference_simple_rnn_11_layer_call_fn_11799033
0__inference_simple_rnn_11_layer_call_fn_11799044Õ
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
 zAtrace_0zBtrace_1zCtrace_2zDtrace_3
÷
Etrace_0
Ftrace_1
Gtrace_2
Htrace_32
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799154
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799264
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799374
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799484Õ
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
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3
è
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator

%kernel
&recurrent_kernel
'bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ð
Utrace_02Ó
,__inference_dense_143_layer_call_fn_11799493¢
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
 zUtrace_0

Vtrace_02î
G__inference_dense_143_layer_call_and_return_conditional_losses_11799504¢
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
 zVtrace_0
": 2dense_143/kernel
:2dense_143/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ð
\trace_02Ó
,__inference_dense_144_layer_call_fn_11799513¢
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
 z\trace_0

]trace_02î
G__inference_dense_144_layer_call_and_return_conditional_losses_11799523¢
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
 z]trace_0
": 2dense_144/kernel
:2dense_144/bias
9:72'simple_rnn_11/simple_rnn_cell_11/kernel
C:A21simple_rnn_11/simple_rnn_cell_11/recurrent_kernel
3:12%simple_rnn_11/simple_rnn_cell_11/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_66_layer_call_fn_11798417simple_rnn_11_input"À
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
0__inference_sequential_66_layer_call_fn_11798735inputs"À
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
0__inference_sequential_66_layer_call_fn_11798754inputs"À
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
B
0__inference_sequential_66_layer_call_fn_11798647simple_rnn_11_input"À
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
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798877inputs"À
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
K__inference_sequential_66_layer_call_and_return_conditional_losses_11799000inputs"À
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
ªB§
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798668simple_rnn_11_input"À
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
ªB§
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798689simple_rnn_11_input"À
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
ÙBÖ
&__inference_signature_wrapper_11798716simple_rnn_11_input"
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
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_simple_rnn_11_layer_call_fn_11799011inputs/0"Õ
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
B
0__inference_simple_rnn_11_layer_call_fn_11799022inputs/0"Õ
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
B
0__inference_simple_rnn_11_layer_call_fn_11799033inputs"Õ
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
B
0__inference_simple_rnn_11_layer_call_fn_11799044inputs"Õ
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
´B±
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799154inputs/0"Õ
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
´B±
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799264inputs/0"Õ
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
²B¯
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799374inputs"Õ
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
²B¯
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799484inputs"Õ
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
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
æ
ftrace_0
gtrace_12¯
5__inference_simple_rnn_cell_11_layer_call_fn_11799537
5__inference_simple_rnn_cell_11_layer_call_fn_11799551¾
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
 zftrace_0zgtrace_1

htrace_0
itrace_12å
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799568
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799585¾
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
 zhtrace_0zitrace_1
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
trackable_dict_wrapper
àBÝ
,__inference_dense_143_layer_call_fn_11799493inputs"¢
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
G__inference_dense_143_layer_call_and_return_conditional_losses_11799504inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_dense_144_layer_call_fn_11799513inputs"¢
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
G__inference_dense_144_layer_call_and_return_conditional_losses_11799523inputs"¢
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
N
j	variables
k	keras_api
	ltotal
	mcount"
_tf_keras_metric
^
n	variables
o	keras_api
	ptotal
	qcount
r
_fn_kwargs"
_tf_keras_metric
^
s	variables
t	keras_api
	utotal
	vcount
w
_fn_kwargs"
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
B
5__inference_simple_rnn_cell_11_layer_call_fn_11799537inputsstates/0"¾
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
B
5__inference_simple_rnn_cell_11_layer_call_fn_11799551inputsstates/0"¾
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
ªB§
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799568inputsstates/0"¾
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
ªB§
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799585inputsstates/0"¾
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
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
.
p0
q1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
u0
v1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
':%2Adam/dense_143/kernel/m
!:2Adam/dense_143/bias/m
':%2Adam/dense_144/kernel/m
!:2Adam/dense_144/bias/m
>:<2.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/m
H:F28Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/m
8:62,Adam/simple_rnn_11/simple_rnn_cell_11/bias/m
':%2Adam/dense_143/kernel/v
!:2Adam/dense_143/bias/v
':%2Adam/dense_144/kernel/v
!:2Adam/dense_144/bias/v
>:<2.Adam/simple_rnn_11/simple_rnn_cell_11/kernel/v
H:F28Adam/simple_rnn_11/simple_rnn_cell_11/recurrent_kernel/v
8:62,Adam/simple_rnn_11/simple_rnn_cell_11/bias/vª
#__inference__wrapped_model_11797946%'&#$@¢=
6¢3
1.
simple_rnn_11_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_144# 
	dense_144ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_143_layer_call_and_return_conditional_losses_11799504\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_143_layer_call_fn_11799493O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_144_layer_call_and_return_conditional_losses_11799523\#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_144_layer_call_fn_11799513O#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÉ
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798668z%'&#$H¢E
>¢;
1.
simple_rnn_11_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798689z%'&#$H¢E
>¢;
1.
simple_rnn_11_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_66_layer_call_and_return_conditional_losses_11798877m%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_66_layer_call_and_return_conditional_losses_11799000m%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
0__inference_sequential_66_layer_call_fn_11798417m%'&#$H¢E
>¢;
1.
simple_rnn_11_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
0__inference_sequential_66_layer_call_fn_11798647m%'&#$H¢E
>¢;
1.
simple_rnn_11_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_66_layer_call_fn_11798735`%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_66_layer_call_fn_11798754`%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
&__inference_signature_wrapper_11798716%'&#$W¢T
¢ 
MªJ
H
simple_rnn_11_input1.
simple_rnn_11_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_144# 
	dense_144ÿÿÿÿÿÿÿÿÿÌ
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799154}%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ì
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799264}%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799374m%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_simple_rnn_11_layer_call_and_return_conditional_losses_11799484m%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
0__inference_simple_rnn_11_layer_call_fn_11799011p%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¤
0__inference_simple_rnn_11_layer_call_fn_11799022p%'&O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_simple_rnn_11_layer_call_fn_11799033`%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_simple_rnn_11_layer_call_fn_11799044`%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799568·%'&\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 
P__inference_simple_rnn_cell_11_layer_call_and_return_conditional_losses_11799585·%'&\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 ã
5__inference_simple_rnn_cell_11_layer_call_fn_11799537©%'&\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿã
5__inference_simple_rnn_cell_11_layer_call_fn_11799551©%'&\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿ