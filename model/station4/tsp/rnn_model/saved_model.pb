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
,Adam/simple_rnn_15/simple_rnn_cell_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v
©
@Adam/simple_rnn_15/simple_rnn_cell_15/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v*
_output_shapes
:*
dtype0
Ì
8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v
Å
LAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v*
_output_shapes

:*
dtype0
¸
.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v
±
BAdam/simple_rnn_15/simple_rnn_cell_15/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_193/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_193/bias/v
{
)Adam/dense_193/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_193/bias/v*
_output_shapes
:*
dtype0

Adam/dense_193/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_193/kernel/v

+Adam/dense_193/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_193/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_192/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_192/bias/v
{
)Adam/dense_192/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_192/bias/v*
_output_shapes
:*
dtype0

Adam/dense_192/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_192/kernel/v

+Adam/dense_192/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_192/kernel/v*
_output_shapes

:*
dtype0
°
,Adam/simple_rnn_15/simple_rnn_cell_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/simple_rnn_15/simple_rnn_cell_15/bias/m
©
@Adam/simple_rnn_15/simple_rnn_cell_15/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_15/simple_rnn_cell_15/bias/m*
_output_shapes
:*
dtype0
Ì
8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m
Å
LAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m*
_output_shapes

:*
dtype0
¸
.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*?
shared_name0.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m
±
BAdam/simple_rnn_15/simple_rnn_cell_15/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_193/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_193/bias/m
{
)Adam/dense_193/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_193/bias/m*
_output_shapes
:*
dtype0

Adam/dense_193/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_193/kernel/m

+Adam/dense_193/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_193/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_192/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_192/bias/m
{
)Adam/dense_192/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_192/bias/m*
_output_shapes
:*
dtype0

Adam/dense_192/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_192/kernel/m

+Adam/dense_192/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_192/kernel/m*
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
%simple_rnn_15/simple_rnn_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%simple_rnn_15/simple_rnn_cell_15/bias

9simple_rnn_15/simple_rnn_cell_15/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_15/simple_rnn_cell_15/bias*
_output_shapes
:*
dtype0
¾
1simple_rnn_15/simple_rnn_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31simple_rnn_15/simple_rnn_cell_15/recurrent_kernel
·
Esimple_rnn_15/simple_rnn_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_15/simple_rnn_cell_15/recurrent_kernel*
_output_shapes

:*
dtype0
ª
'simple_rnn_15/simple_rnn_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'simple_rnn_15/simple_rnn_cell_15/kernel
£
;simple_rnn_15/simple_rnn_cell_15/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_15/simple_rnn_cell_15/kernel*
_output_shapes

:*
dtype0
t
dense_193/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_193/bias
m
"dense_193/bias/Read/ReadVariableOpReadVariableOpdense_193/bias*
_output_shapes
:*
dtype0
|
dense_193/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_193/kernel
u
$dense_193/kernel/Read/ReadVariableOpReadVariableOpdense_193/kernel*
_output_shapes

:*
dtype0
t
dense_192/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_192/bias
m
"dense_192/bias/Read/ReadVariableOpReadVariableOpdense_192/bias*
_output_shapes
:*
dtype0
|
dense_192/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_192/kernel
u
$dense_192/kernel/Read/ReadVariableOpReadVariableOpdense_192/kernel*
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
VARIABLE_VALUEdense_192/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_192/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_193/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_193/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_15/simple_rnn_cell_15/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_15/simple_rnn_cell_15/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_15/simple_rnn_cell_15/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_192/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_192/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_193/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_193/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_15/simple_rnn_cell_15/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_192/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_192/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_193/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_193/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/simple_rnn_15/simple_rnn_cell_15/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

#serving_default_simple_rnn_15_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_15_input'simple_rnn_15/simple_rnn_cell_15/kernel%simple_rnn_15/simple_rnn_cell_15/bias1simple_rnn_15/simple_rnn_cell_15/recurrent_kerneldense_192/kerneldense_192/biasdense_193/kerneldense_193/bias*
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
&__inference_signature_wrapper_14993477
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ë
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_192/kernel/Read/ReadVariableOp"dense_192/bias/Read/ReadVariableOp$dense_193/kernel/Read/ReadVariableOp"dense_193/bias/Read/ReadVariableOp;simple_rnn_15/simple_rnn_cell_15/kernel/Read/ReadVariableOpEsimple_rnn_15/simple_rnn_cell_15/recurrent_kernel/Read/ReadVariableOp9simple_rnn_15/simple_rnn_cell_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_192/kernel/m/Read/ReadVariableOp)Adam/dense_192/bias/m/Read/ReadVariableOp+Adam/dense_193/kernel/m/Read/ReadVariableOp)Adam/dense_193/bias/m/Read/ReadVariableOpBAdam/simple_rnn_15/simple_rnn_cell_15/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_15/simple_rnn_cell_15/bias/m/Read/ReadVariableOp+Adam/dense_192/kernel/v/Read/ReadVariableOp)Adam/dense_192/bias/v/Read/ReadVariableOp+Adam/dense_193/kernel/v/Read/ReadVariableOp)Adam/dense_193/bias/v/Read/ReadVariableOpBAdam/simple_rnn_15/simple_rnn_cell_15/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_15/simple_rnn_cell_15/bias/v/Read/ReadVariableOpConst*-
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
!__inference__traced_save_14994465
æ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_192/kerneldense_192/biasdense_193/kerneldense_193/bias'simple_rnn_15/simple_rnn_cell_15/kernel1simple_rnn_15/simple_rnn_cell_15/recurrent_kernel%simple_rnn_15/simple_rnn_cell_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_2count_2total_1count_1totalcountAdam/dense_192/kernel/mAdam/dense_192/bias/mAdam/dense_193/kernel/mAdam/dense_193/bias/m.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m,Adam/simple_rnn_15/simple_rnn_cell_15/bias/mAdam/dense_192/kernel/vAdam/dense_192/bias/vAdam/dense_193/kernel/vAdam/dense_193/bias/v.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v8Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v,Adam/simple_rnn_15/simple_rnn_cell_15/bias/v*,
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
$__inference__traced_restore_14994571ëö
¿

Ý
5__inference_simple_rnn_cell_15_layer_call_fn_14994312

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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992877o
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
ä
´
while_cond_14993957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14993957___redundant_placeholder06
2while_while_cond_14993957___redundant_placeholder16
2while_while_cond_14993957___redundant_placeholder26
2while_while_cond_14993957___redundant_placeholder3
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
Ó>
Ä
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994245

inputsC
1simple_rnn_cell_15_matmul_readvariableop_resource:@
2simple_rnn_cell_15_biasadd_readvariableop_resource:E
3simple_rnn_cell_15_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_15/BiasAdd/ReadVariableOp¢(simple_rnn_cell_15/MatMul/ReadVariableOp¢*simple_rnn_cell_15/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
while_body_14994178*
condR
while_cond_14994177*8
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
NoOpNoOp*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡	
©
&__inference_signature_wrapper_14993477
simple_rnn_15_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
#__inference__wrapped_model_14992707o
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_15_input

í
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994329

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

í
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994346

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
ö>
Æ
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993915
inputs_0C
1simple_rnn_cell_15_matmul_readvariableop_resource:@
2simple_rnn_cell_15_biasadd_readvariableop_resource:E
3simple_rnn_cell_15_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_15/BiasAdd/ReadVariableOp¢(simple_rnn_cell_15/MatMul/ReadVariableOp¢*simple_rnn_cell_15/MatMul_1/ReadVariableOp¢while=
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
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
while_body_14993848*
condR
while_cond_14993847*8
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
NoOpNoOp*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ç
ñ
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993450
simple_rnn_15_input(
simple_rnn_15_14993432:$
simple_rnn_15_14993434:(
simple_rnn_15_14993436:$
dense_192_14993439: 
dense_192_14993441:$
dense_193_14993444: 
dense_193_14993446:
identity¢!dense_192/StatefulPartitionedCall¢!dense_193/StatefulPartitionedCall¢%simple_rnn_15/StatefulPartitionedCall±
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputsimple_rnn_15_14993432simple_rnn_15_14993434simple_rnn_15_14993436*
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993321¢
!dense_192/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_192_14993439dense_192_14993441*
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
G__inference_dense_192_layer_call_and_return_conditional_losses_14993138
!dense_193/StatefulPartitionedCallStatefulPartitionedCall*dense_192/StatefulPartitionedCall:output:0dense_193_14993444dense_193_14993446*
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
G__inference_dense_193_layer_call_and_return_conditional_losses_14993154y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_192/StatefulPartitionedCall"^dense_193/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_192/StatefulPartitionedCall!dense_192/StatefulPartitionedCall2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_15_input
ö>
Æ
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994025
inputs_0C
1simple_rnn_cell_15_matmul_readvariableop_resource:@
2simple_rnn_cell_15_biasadd_readvariableop_resource:E
3simple_rnn_cell_15_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_15/BiasAdd/ReadVariableOp¢(simple_rnn_cell_15/MatMul/ReadVariableOp¢*simple_rnn_cell_15/MatMul_1/ReadVariableOp¢while=
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
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
while_body_14993958*
condR
while_cond_14993957*8
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
NoOpNoOp*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
\

K__inference_sequential_89_layer_call_and_return_conditional_losses_14993761

inputsQ
?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource:N
@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource:S
Asimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource::
(dense_192_matmul_readvariableop_resource:7
)dense_192_biasadd_readvariableop_resource::
(dense_193_matmul_readvariableop_resource:7
)dense_193_biasadd_readvariableop_resource:
identity¢ dense_192/BiasAdd/ReadVariableOp¢dense_192/MatMul/ReadVariableOp¢ dense_193/BiasAdd/ReadVariableOp¢dense_193/MatMul/ReadVariableOp¢7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp¢8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp¢simple_rnn_15/whileI
simple_rnn_15/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_15/strided_sliceStridedSlicesimple_rnn_15/Shape:output:0*simple_rnn_15/strided_slice/stack:output:0,simple_rnn_15/strided_slice/stack_1:output:0,simple_rnn_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_15/zeros/packedPack$simple_rnn_15/strided_slice:output:0%simple_rnn_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_15/zerosFill#simple_rnn_15/zeros/packed:output:0"simple_rnn_15/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
simple_rnn_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_15/transpose	Transposeinputs%simple_rnn_15/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
simple_rnn_15/Shape_1Shapesimple_rnn_15/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
simple_rnn_15/strided_slice_1StridedSlicesimple_rnn_15/Shape_1:output:0,simple_rnn_15/strided_slice_1/stack:output:0.simple_rnn_15/strided_slice_1/stack_1:output:0.simple_rnn_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
simple_rnn_15/TensorArrayV2TensorListReserve2simple_rnn_15/TensorArrayV2/element_shape:output:0&simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Csimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
5simple_rnn_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_15/transpose:y:0Lsimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#simple_rnn_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
simple_rnn_15/strided_slice_2StridedSlicesimple_rnn_15/transpose:y:0,simple_rnn_15/strided_slice_2/stack:output:0.simple_rnn_15/strided_slice_2/stack_1:output:0.simple_rnn_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¶
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ë
'simple_rnn_15/simple_rnn_cell_15/MatMulMatMul&simple_rnn_15/strided_slice_2:output:0>simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ù
(simple_rnn_15/simple_rnn_cell_15/BiasAddBiasAdd1simple_rnn_15/simple_rnn_cell_15/MatMul:product:0?simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Å
)simple_rnn_15/simple_rnn_cell_15/MatMul_1MatMulsimple_rnn_15/zeros:output:0@simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
$simple_rnn_15/simple_rnn_cell_15/addAddV21simple_rnn_15/simple_rnn_cell_15/BiasAdd:output:03simple_rnn_15/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%simple_rnn_15/simple_rnn_cell_15/TanhTanh(simple_rnn_15/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
+simple_rnn_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   l
*simple_rnn_15/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
simple_rnn_15/TensorArrayV2_1TensorListReserve4simple_rnn_15/TensorArrayV2_1/element_shape:output:03simple_rnn_15/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
simple_rnn_15/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 simple_rnn_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_15/whileWhile)simple_rnn_15/while/loop_counter:output:0/simple_rnn_15/while/maximum_iterations:output:0simple_rnn_15/time:output:0&simple_rnn_15/TensorArrayV2_1:handle:0simple_rnn_15/zeros:output:0&simple_rnn_15/strided_slice_1:output:0Esimple_rnn_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
!simple_rnn_15_while_body_14993681*-
cond%R#
!simple_rnn_15_while_cond_14993680*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
>simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
0simple_rnn_15/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_15/while:output:3Gsimple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsv
#simple_rnn_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%simple_rnn_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
simple_rnn_15/strided_slice_3StridedSlice9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_15/strided_slice_3/stack:output:0.simple_rnn_15/strided_slice_3/stack_1:output:0.simple_rnn_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_masks
simple_rnn_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
simple_rnn_15/transpose_1	Transpose9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_192/MatMul/ReadVariableOpReadVariableOp(dense_192_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_192/MatMulMatMul&simple_rnn_15/strided_slice_3:output:0'dense_192/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_192/BiasAdd/ReadVariableOpReadVariableOp)dense_192_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_192/BiasAddBiasAdddense_192/MatMul:product:0(dense_192/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_192/ReluReludense_192/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_193/MatMul/ReadVariableOpReadVariableOp(dense_193_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_193/MatMulMatMuldense_192/Relu:activations:0'dense_193/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_193/BiasAdd/ReadVariableOpReadVariableOp)dense_193_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_193/BiasAddBiasAdddense_193/MatMul:product:0(dense_193/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_193/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_192/BiasAdd/ReadVariableOp ^dense_192/MatMul/ReadVariableOp!^dense_193/BiasAdd/ReadVariableOp ^dense_193/MatMul/ReadVariableOp8^simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7^simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp9^simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp^simple_rnn_15/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_192/BiasAdd/ReadVariableOp dense_192/BiasAdd/ReadVariableOp2B
dense_192/MatMul/ReadVariableOpdense_192/MatMul/ReadVariableOp2D
 dense_193/BiasAdd/ReadVariableOp dense_193/BiasAdd/ReadVariableOp2B
dense_193/MatMul/ReadVariableOpdense_193/MatMul/ReadVariableOp2r
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp2p
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp2t
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp2*
simple_rnn_15/whilesimple_rnn_15/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
while_cond_14994067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14994067___redundant_placeholder06
2while_while_cond_14994067___redundant_placeholder16
2while_while_cond_14994067___redundant_placeholder26
2while_while_cond_14994067___redundant_placeholder3
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
Ë"
æ
while_body_14992930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
#while_simple_rnn_cell_15_14992952_0:1
#while_simple_rnn_cell_15_14992954_0:5
#while_simple_rnn_cell_15_14992956_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
!while_simple_rnn_cell_15_14992952:/
!while_simple_rnn_cell_15_14992954:3
!while_simple_rnn_cell_15_14992956:¢0while/simple_rnn_cell_15/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
0while/simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2#while_simple_rnn_cell_15_14992952_0#while_simple_rnn_cell_15_14992954_0#while_simple_rnn_cell_15_14992956_0*
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992877r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_15/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity9while/simple_rnn_cell_15/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/NoOpNoOp1^while/simple_rnn_cell_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"H
!while_simple_rnn_cell_15_14992952#while_simple_rnn_cell_15_14992952_0"H
!while_simple_rnn_cell_15_14992954#while_simple_rnn_cell_15_14992954_0"H
!while_simple_rnn_cell_15_14992956#while_simple_rnn_cell_15_14992956_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0while/simple_rnn_cell_15/StatefulPartitionedCall0while/simple_rnn_cell_15/StatefulPartitionedCall: 
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
while_body_14993052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_15_matmul_readvariableop_resource:F
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_15/MatMul/ReadVariableOp¢0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_15/Tanh:y:0*
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
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
while_cond_14992768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14992768___redundant_placeholder06
2while_while_cond_14992768___redundant_placeholder16
2while_while_cond_14992768___redundant_placeholder26
2while_while_cond_14992768___redundant_placeholder3
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
ô-
Ó
while_body_14994178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_15_matmul_readvariableop_resource:F
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_15/MatMul/ReadVariableOp¢0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_15/Tanh:y:0*
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
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
while_body_14993958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_15_matmul_readvariableop_resource:F
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_15/MatMul/ReadVariableOp¢0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_15/Tanh:y:0*
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
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
0__inference_simple_rnn_15_layer_call_fn_14993772
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14992833o
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
;
÷
!simple_rnn_15_while_body_149935588
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_27
3simple_rnn_15_while_simple_rnn_15_strided_slice_1_0s
osimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0:V
Hsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:[
Isimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0: 
simple_rnn_15_while_identity"
simple_rnn_15_while_identity_1"
simple_rnn_15_while_identity_2"
simple_rnn_15_while_identity_3"
simple_rnn_15_while_identity_45
1simple_rnn_15_while_simple_rnn_15_strided_slice_1q
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource:T
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource:Y
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp¢>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
Esimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ì
7simple_rnn_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_15_while_placeholderNsimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ä
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ï
-simple_rnn_15/while/simple_rnn_cell_15/MatMulMatMul>simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0ë
.simple_rnn_15/while/simple_rnn_cell_15/BiasAddBiasAdd7simple_rnn_15/while/simple_rnn_cell_15/MatMul:product:0Esimple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Ö
/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1MatMul!simple_rnn_15_while_placeholder_2Fsimple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
*simple_rnn_15/while/simple_rnn_cell_15/addAddV27simple_rnn_15/while/simple_rnn_cell_15/BiasAdd:output:09simple_rnn_15/while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+simple_rnn_15/while/simple_rnn_cell_15/TanhTanh.simple_rnn_15/while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ª
8simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_15_while_placeholder_1Gsimple_rnn_15/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒ[
simple_rnn_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_15/while/addAddV2simple_rnn_15_while_placeholder"simple_rnn_15/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_15/while/add_1AddV24simple_rnn_15_while_simple_rnn_15_while_loop_counter$simple_rnn_15/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/add_1:z:0^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: ¢
simple_rnn_15/while/Identity_1Identity:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_15/while/Identity_2Identitysimple_rnn_15/while/add:z:0^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: °
simple_rnn_15/while/Identity_3IdentityHsimple_rnn_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: ¨
simple_rnn_15/while/Identity_4Identity/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0^simple_rnn_15/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_15/while/NoOpNoOp>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0"I
simple_rnn_15_while_identity_1'simple_rnn_15/while/Identity_1:output:0"I
simple_rnn_15_while_identity_2'simple_rnn_15/while/Identity_2:output:0"I
simple_rnn_15_while_identity_3'simple_rnn_15/while/Identity_3:output:0"I
simple_rnn_15_while_identity_4'simple_rnn_15/while/Identity_4:output:0"h
1simple_rnn_15_while_simple_rnn_15_strided_slice_13simple_rnn_15_while_simple_rnn_15_strided_slice_1_0"
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resourceIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0"à
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2~
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2|
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp2
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
while_cond_14993253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14993253___redundant_placeholder06
2while_while_cond_14993253___redundant_placeholder16
2while_while_cond_14993253___redundant_placeholder26
2while_while_cond_14993253___redundant_placeholder3
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
;
÷
!simple_rnn_15_while_body_149936818
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_27
3simple_rnn_15_while_simple_rnn_15_strided_slice_1_0s
osimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0:V
Hsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:[
Isimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0: 
simple_rnn_15_while_identity"
simple_rnn_15_while_identity_1"
simple_rnn_15_while_identity_2"
simple_rnn_15_while_identity_3"
simple_rnn_15_while_identity_45
1simple_rnn_15_while_simple_rnn_15_strided_slice_1q
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource:T
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource:Y
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp¢>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
Esimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ì
7simple_rnn_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_15_while_placeholderNsimple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ä
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ï
-simple_rnn_15/while/simple_rnn_cell_15/MatMulMatMul>simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0ë
.simple_rnn_15/while/simple_rnn_cell_15/BiasAddBiasAdd7simple_rnn_15/while/simple_rnn_cell_15/MatMul:product:0Esimple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Ö
/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1MatMul!simple_rnn_15_while_placeholder_2Fsimple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
*simple_rnn_15/while/simple_rnn_cell_15/addAddV27simple_rnn_15/while/simple_rnn_cell_15/BiasAdd:output:09simple_rnn_15/while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+simple_rnn_15/while/simple_rnn_cell_15/TanhTanh.simple_rnn_15/while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ª
8simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_15_while_placeholder_1Gsimple_rnn_15/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒ[
simple_rnn_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_15/while/addAddV2simple_rnn_15_while_placeholder"simple_rnn_15/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_15/while/add_1AddV24simple_rnn_15_while_simple_rnn_15_while_loop_counter$simple_rnn_15/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/add_1:z:0^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: ¢
simple_rnn_15/while/Identity_1Identity:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_15/while/Identity_2Identitysimple_rnn_15/while/add:z:0^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: °
simple_rnn_15/while/Identity_3IdentityHsimple_rnn_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_15/while/NoOp*
T0*
_output_shapes
: ¨
simple_rnn_15/while/Identity_4Identity/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0^simple_rnn_15/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_15/while/NoOpNoOp>^simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=^simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp?^simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0"I
simple_rnn_15_while_identity_1'simple_rnn_15/while/Identity_1:output:0"I
simple_rnn_15_while_identity_2'simple_rnn_15/while/Identity_2:output:0"I
simple_rnn_15_while_identity_3'simple_rnn_15/while/Identity_3:output:0"I
simple_rnn_15_while_identity_4'simple_rnn_15/while/Identity_4:output:0"h
1simple_rnn_15_while_simple_rnn_15_strided_slice_13simple_rnn_15_while_simple_rnn_15_strided_slice_1_0"
Fsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceHsimple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"
Gsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resourceIsimple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"
Esimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceGsimple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0"à
msimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorosimple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2~
=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp=simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2|
<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp<simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp2
>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp>simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
Ë"
æ
while_body_14992769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
#while_simple_rnn_cell_15_14992791_0:1
#while_simple_rnn_cell_15_14992793_0:5
#while_simple_rnn_cell_15_14992795_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
!while_simple_rnn_cell_15_14992791:/
!while_simple_rnn_cell_15_14992793:3
!while_simple_rnn_cell_15_14992795:¢0while/simple_rnn_cell_15/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¯
0while/simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2#while_simple_rnn_cell_15_14992791_0#while_simple_rnn_cell_15_14992793_0#while_simple_rnn_cell_15_14992795_0*
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992755r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_15/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity9while/simple_rnn_cell_15/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/NoOpNoOp1^while/simple_rnn_cell_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"H
!while_simple_rnn_cell_15_14992791#while_simple_rnn_cell_15_14992791_0"H
!while_simple_rnn_cell_15_14992793#while_simple_rnn_cell_15_14992793_0"H
!while_simple_rnn_cell_15_14992795#while_simple_rnn_cell_15_14992795_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0while/simple_rnn_cell_15/StatefulPartitionedCall0while/simple_rnn_cell_15/StatefulPartitionedCall: 
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
¬	
¦
0__inference_sequential_89_layer_call_fn_14993515

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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993372o
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

K__inference_sequential_89_layer_call_and_return_conditional_losses_14993638

inputsQ
?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource:N
@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource:S
Asimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource::
(dense_192_matmul_readvariableop_resource:7
)dense_192_biasadd_readvariableop_resource::
(dense_193_matmul_readvariableop_resource:7
)dense_193_biasadd_readvariableop_resource:
identity¢ dense_192/BiasAdd/ReadVariableOp¢dense_192/MatMul/ReadVariableOp¢ dense_193/BiasAdd/ReadVariableOp¢dense_193/MatMul/ReadVariableOp¢7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp¢8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp¢simple_rnn_15/whileI
simple_rnn_15/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_15/strided_sliceStridedSlicesimple_rnn_15/Shape:output:0*simple_rnn_15/strided_slice/stack:output:0,simple_rnn_15/strided_slice/stack_1:output:0,simple_rnn_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_15/zeros/packedPack$simple_rnn_15/strided_slice:output:0%simple_rnn_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_15/zerosFill#simple_rnn_15/zeros/packed:output:0"simple_rnn_15/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
simple_rnn_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_15/transpose	Transposeinputs%simple_rnn_15/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
simple_rnn_15/Shape_1Shapesimple_rnn_15/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
simple_rnn_15/strided_slice_1StridedSlicesimple_rnn_15/Shape_1:output:0,simple_rnn_15/strided_slice_1/stack:output:0.simple_rnn_15/strided_slice_1/stack_1:output:0.simple_rnn_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
simple_rnn_15/TensorArrayV2TensorListReserve2simple_rnn_15/TensorArrayV2/element_shape:output:0&simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Csimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
5simple_rnn_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_15/transpose:y:0Lsimple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#simple_rnn_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
simple_rnn_15/strided_slice_2StridedSlicesimple_rnn_15/transpose:y:0,simple_rnn_15/strided_slice_2/stack:output:0.simple_rnn_15/strided_slice_2/stack_1:output:0.simple_rnn_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¶
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ë
'simple_rnn_15/simple_rnn_cell_15/MatMulMatMul&simple_rnn_15/strided_slice_2:output:0>simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ù
(simple_rnn_15/simple_rnn_cell_15/BiasAddBiasAdd1simple_rnn_15/simple_rnn_cell_15/MatMul:product:0?simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Å
)simple_rnn_15/simple_rnn_cell_15/MatMul_1MatMulsimple_rnn_15/zeros:output:0@simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
$simple_rnn_15/simple_rnn_cell_15/addAddV21simple_rnn_15/simple_rnn_cell_15/BiasAdd:output:03simple_rnn_15/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%simple_rnn_15/simple_rnn_cell_15/TanhTanh(simple_rnn_15/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
+simple_rnn_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   l
*simple_rnn_15/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
simple_rnn_15/TensorArrayV2_1TensorListReserve4simple_rnn_15/TensorArrayV2_1/element_shape:output:03simple_rnn_15/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
simple_rnn_15/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 simple_rnn_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_15/whileWhile)simple_rnn_15/while/loop_counter:output:0/simple_rnn_15/while/maximum_iterations:output:0simple_rnn_15/time:output:0&simple_rnn_15/TensorArrayV2_1:handle:0simple_rnn_15/zeros:output:0&simple_rnn_15/strided_slice_1:output:0Esimple_rnn_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource@simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceAsimple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
!simple_rnn_15_while_body_14993558*-
cond%R#
!simple_rnn_15_while_cond_14993557*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
>simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
0simple_rnn_15/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_15/while:output:3Gsimple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsv
#simple_rnn_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%simple_rnn_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
simple_rnn_15/strided_slice_3StridedSlice9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_15/strided_slice_3/stack:output:0.simple_rnn_15/strided_slice_3/stack_1:output:0.simple_rnn_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_masks
simple_rnn_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
simple_rnn_15/transpose_1	Transpose9simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_192/MatMul/ReadVariableOpReadVariableOp(dense_192_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_192/MatMulMatMul&simple_rnn_15/strided_slice_3:output:0'dense_192/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_192/BiasAdd/ReadVariableOpReadVariableOp)dense_192_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_192/BiasAddBiasAdddense_192/MatMul:product:0(dense_192/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_192/ReluReludense_192/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_193/MatMul/ReadVariableOpReadVariableOp(dense_193_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_193/MatMulMatMuldense_192/Relu:activations:0'dense_193/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_193/BiasAdd/ReadVariableOpReadVariableOp)dense_193_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_193/BiasAddBiasAdddense_193/MatMul:product:0(dense_193/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_193/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_192/BiasAdd/ReadVariableOp ^dense_192/MatMul/ReadVariableOp!^dense_193/BiasAdd/ReadVariableOp ^dense_193/MatMul/ReadVariableOp8^simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7^simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp9^simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp^simple_rnn_15/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_192/BiasAdd/ReadVariableOp dense_192/BiasAdd/ReadVariableOp2B
dense_192/MatMul/ReadVariableOpdense_192/MatMul/ReadVariableOp2D
 dense_193/BiasAdd/ReadVariableOp dense_193/BiasAdd/ReadVariableOp2B
dense_193/MatMul/ReadVariableOpdense_193/MatMul/ReadVariableOp2r
7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp7simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp2p
6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp6simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp2t
8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp8simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp2*
simple_rnn_15/whilesimple_rnn_15/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
while_cond_14994177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14994177___redundant_placeholder06
2while_while_cond_14994177___redundant_placeholder16
2while_while_cond_14994177___redundant_placeholder26
2while_while_cond_14994177___redundant_placeholder3
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
Ó>
Ä
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993119

inputsC
1simple_rnn_cell_15_matmul_readvariableop_resource:@
2simple_rnn_cell_15_biasadd_readvariableop_resource:E
3simple_rnn_cell_15_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_15/BiasAdd/ReadVariableOp¢(simple_rnn_cell_15/MatMul/ReadVariableOp¢*simple_rnn_cell_15/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
while_body_14993052*
condR
while_cond_14993051*8
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
NoOpNoOp*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¼
0__inference_simple_rnn_15_layer_call_fn_14993783
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14992994o
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
À
ä
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993161

inputs(
simple_rnn_15_14993120:$
simple_rnn_15_14993122:(
simple_rnn_15_14993124:$
dense_192_14993139: 
dense_192_14993141:$
dense_193_14993155: 
dense_193_14993157:
identity¢!dense_192/StatefulPartitionedCall¢!dense_193/StatefulPartitionedCall¢%simple_rnn_15/StatefulPartitionedCall¤
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_15_14993120simple_rnn_15_14993122simple_rnn_15_14993124*
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993119¢
!dense_192/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_192_14993139dense_192_14993141*
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
G__inference_dense_192_layer_call_and_return_conditional_losses_14993138
!dense_193/StatefulPartitionedCallStatefulPartitionedCall*dense_192/StatefulPartitionedCall:output:0dense_193_14993155dense_193_14993157*
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
G__inference_dense_193_layer_call_and_return_conditional_losses_14993154y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_192/StatefulPartitionedCall"^dense_193/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_192/StatefulPartitionedCall!dense_192/StatefulPartitionedCall2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
ø
G__inference_dense_193_layer_call_and_return_conditional_losses_14994284

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
¢5
¨
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14992994

inputs-
simple_rnn_cell_15_14992917:)
simple_rnn_cell_15_14992919:-
simple_rnn_cell_15_14992921:
identity¢*simple_rnn_cell_15/StatefulPartitionedCall¢while;
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
*simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_15_14992917simple_rnn_cell_15_14992919simple_rnn_cell_15_14992921*
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992877n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_15_14992917simple_rnn_cell_15_14992919simple_rnn_cell_15_14992921*
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
while_body_14992930*
condR
while_cond_14992929*8
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
NoOpNoOp+^simple_rnn_cell_15/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2X
*simple_rnn_cell_15/StatefulPartitionedCall*simple_rnn_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
È
/sequential_89_simple_rnn_15_while_cond_14992626T
Psequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_loop_counterZ
Vsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_maximum_iterations1
-sequential_89_simple_rnn_15_while_placeholder3
/sequential_89_simple_rnn_15_while_placeholder_13
/sequential_89_simple_rnn_15_while_placeholder_2V
Rsequential_89_simple_rnn_15_while_less_sequential_89_simple_rnn_15_strided_slice_1n
jsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_cond_14992626___redundant_placeholder0n
jsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_cond_14992626___redundant_placeholder1n
jsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_cond_14992626___redundant_placeholder2n
jsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_cond_14992626___redundant_placeholder3.
*sequential_89_simple_rnn_15_while_identity
Ò
&sequential_89/simple_rnn_15/while/LessLess-sequential_89_simple_rnn_15_while_placeholderRsequential_89_simple_rnn_15_while_less_sequential_89_simple_rnn_15_strided_slice_1*
T0*
_output_shapes
: 
*sequential_89/simple_rnn_15/while/IdentityIdentity*sequential_89/simple_rnn_15/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_89_simple_rnn_15_while_identity3sequential_89/simple_rnn_15/while/Identity:output:0*(
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
½
å
$__inference__traced_restore_14994571
file_prefix3
!assignvariableop_dense_192_kernel:/
!assignvariableop_1_dense_192_bias:5
#assignvariableop_2_dense_193_kernel:/
!assignvariableop_3_dense_193_bias:L
:assignvariableop_4_simple_rnn_15_simple_rnn_cell_15_kernel:V
Dassignvariableop_5_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel:F
8assignvariableop_6_simple_rnn_15_simple_rnn_cell_15_bias:&
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
+assignvariableop_18_adam_dense_192_kernel_m:7
)assignvariableop_19_adam_dense_192_bias_m:=
+assignvariableop_20_adam_dense_193_kernel_m:7
)assignvariableop_21_adam_dense_193_bias_m:T
Bassignvariableop_22_adam_simple_rnn_15_simple_rnn_cell_15_kernel_m:^
Lassignvariableop_23_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_m:N
@assignvariableop_24_adam_simple_rnn_15_simple_rnn_cell_15_bias_m:=
+assignvariableop_25_adam_dense_192_kernel_v:7
)assignvariableop_26_adam_dense_192_bias_v:=
+assignvariableop_27_adam_dense_193_kernel_v:7
)assignvariableop_28_adam_dense_193_bias_v:T
Bassignvariableop_29_adam_simple_rnn_15_simple_rnn_cell_15_kernel_v:^
Lassignvariableop_30_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_v:N
@assignvariableop_31_adam_simple_rnn_15_simple_rnn_cell_15_bias_v:
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_192_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_192_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_193_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_193_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_4AssignVariableOp:assignvariableop_4_simple_rnn_15_simple_rnn_cell_15_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_5AssignVariableOpDassignvariableop_5_simple_rnn_15_simple_rnn_cell_15_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_simple_rnn_15_simple_rnn_cell_15_biasIdentity_6:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_192_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_192_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_dense_193_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_193_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adam_simple_rnn_15_simple_rnn_cell_15_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_23AssignVariableOpLassignvariableop_23_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_15_simple_rnn_cell_15_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_192_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_192_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_193_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_193_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_29AssignVariableOpBassignvariableop_29_adam_simple_rnn_15_simple_rnn_cell_15_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_30AssignVariableOpLassignvariableop_30_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_simple_rnn_15_simple_rnn_cell_15_bias_vIdentity_31:output:0"/device:CPU:0*
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
ÉF
ü
!__inference__traced_save_14994465
file_prefix/
+savev2_dense_192_kernel_read_readvariableop-
)savev2_dense_192_bias_read_readvariableop/
+savev2_dense_193_kernel_read_readvariableop-
)savev2_dense_193_bias_read_readvariableopF
Bsavev2_simple_rnn_15_simple_rnn_cell_15_kernel_read_readvariableopP
Lsavev2_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_15_simple_rnn_cell_15_bias_read_readvariableop(
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
2savev2_adam_dense_192_kernel_m_read_readvariableop4
0savev2_adam_dense_192_bias_m_read_readvariableop6
2savev2_adam_dense_193_kernel_m_read_readvariableop4
0savev2_adam_dense_193_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_m_read_readvariableop6
2savev2_adam_dense_192_kernel_v_read_readvariableop4
0savev2_adam_dense_192_bias_v_read_readvariableop6
2savev2_adam_dense_193_kernel_v_read_readvariableop4
0savev2_adam_dense_193_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_192_kernel_read_readvariableop)savev2_dense_192_bias_read_readvariableop+savev2_dense_193_kernel_read_readvariableop)savev2_dense_193_bias_read_readvariableopBsavev2_simple_rnn_15_simple_rnn_cell_15_kernel_read_readvariableopLsavev2_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_read_readvariableop@savev2_simple_rnn_15_simple_rnn_cell_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_192_kernel_m_read_readvariableop0savev2_adam_dense_192_bias_m_read_readvariableop2savev2_adam_dense_193_kernel_m_read_readvariableop0savev2_adam_dense_193_bias_m_read_readvariableopIsavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_m_read_readvariableop2savev2_adam_dense_192_kernel_v_read_readvariableop0savev2_adam_dense_192_bias_v_read_readvariableop2savev2_adam_dense_193_kernel_v_read_readvariableop0savev2_adam_dense_193_bias_v_read_readvariableopIsavev2_adam_simple_rnn_15_simple_rnn_cell_15_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_15_simple_rnn_cell_15_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_15_simple_rnn_cell_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¬	
¦
0__inference_sequential_89_layer_call_fn_14993496

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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993161o
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô-
Ó
while_body_14993848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_15_matmul_readvariableop_resource:F
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_15/MatMul/ReadVariableOp¢0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_15/Tanh:y:0*
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
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
«n
Ñ
#__inference__wrapped_model_14992707
simple_rnn_15_input_
Msequential_89_simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource:\
Nsequential_89_simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource:a
Osequential_89_simple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource:H
6sequential_89_dense_192_matmul_readvariableop_resource:E
7sequential_89_dense_192_biasadd_readvariableop_resource:H
6sequential_89_dense_193_matmul_readvariableop_resource:E
7sequential_89_dense_193_biasadd_readvariableop_resource:
identity¢.sequential_89/dense_192/BiasAdd/ReadVariableOp¢-sequential_89/dense_192/MatMul/ReadVariableOp¢.sequential_89/dense_193/BiasAdd/ReadVariableOp¢-sequential_89/dense_193/MatMul/ReadVariableOp¢Esequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢Dsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp¢Fsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp¢!sequential_89/simple_rnn_15/whiled
!sequential_89/simple_rnn_15/ShapeShapesimple_rnn_15_input*
T0*
_output_shapes
:y
/sequential_89/simple_rnn_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_89/simple_rnn_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_89/simple_rnn_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)sequential_89/simple_rnn_15/strided_sliceStridedSlice*sequential_89/simple_rnn_15/Shape:output:08sequential_89/simple_rnn_15/strided_slice/stack:output:0:sequential_89/simple_rnn_15/strided_slice/stack_1:output:0:sequential_89/simple_rnn_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_89/simple_rnn_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ç
(sequential_89/simple_rnn_15/zeros/packedPack2sequential_89/simple_rnn_15/strided_slice:output:03sequential_89/simple_rnn_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_89/simple_rnn_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!sequential_89/simple_rnn_15/zerosFill1sequential_89/simple_rnn_15/zeros/packed:output:00sequential_89/simple_rnn_15/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_89/simple_rnn_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
%sequential_89/simple_rnn_15/transpose	Transposesimple_rnn_15_input3sequential_89/simple_rnn_15/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
#sequential_89/simple_rnn_15/Shape_1Shape)sequential_89/simple_rnn_15/transpose:y:0*
T0*
_output_shapes
:{
1sequential_89/simple_rnn_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_89/simple_rnn_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_89/simple_rnn_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+sequential_89/simple_rnn_15/strided_slice_1StridedSlice,sequential_89/simple_rnn_15/Shape_1:output:0:sequential_89/simple_rnn_15/strided_slice_1/stack:output:0<sequential_89/simple_rnn_15/strided_slice_1/stack_1:output:0<sequential_89/simple_rnn_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7sequential_89/simple_rnn_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
)sequential_89/simple_rnn_15/TensorArrayV2TensorListReserve@sequential_89/simple_rnn_15/TensorArrayV2/element_shape:output:04sequential_89/simple_rnn_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¢
Qsequential_89/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ´
Csequential_89/simple_rnn_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_89/simple_rnn_15/transpose:y:0Zsequential_89/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
1sequential_89/simple_rnn_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_89/simple_rnn_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_89/simple_rnn_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
+sequential_89/simple_rnn_15/strided_slice_2StridedSlice)sequential_89/simple_rnn_15/transpose:y:0:sequential_89/simple_rnn_15/strided_slice_2/stack:output:0<sequential_89/simple_rnn_15/strided_slice_2/stack_1:output:0<sequential_89/simple_rnn_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÒ
Dsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpMsequential_89_simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0õ
5sequential_89/simple_rnn_15/simple_rnn_cell_15/MatMulMatMul4sequential_89/simple_rnn_15/strided_slice_2:output:0Lsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
Esequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpNsequential_89_simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
6sequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAddBiasAdd?sequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul:product:0Msequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
Fsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpOsequential_89_simple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ï
7sequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1MatMul*sequential_89/simple_rnn_15/zeros:output:0Nsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
2sequential_89/simple_rnn_15/simple_rnn_cell_15/addAddV2?sequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd:output:0Asequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
3sequential_89/simple_rnn_15/simple_rnn_cell_15/TanhTanh6sequential_89/simple_rnn_15/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9sequential_89/simple_rnn_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   z
8sequential_89/simple_rnn_15/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
+sequential_89/simple_rnn_15/TensorArrayV2_1TensorListReserveBsequential_89/simple_rnn_15/TensorArrayV2_1/element_shape:output:0Asequential_89/simple_rnn_15/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒb
 sequential_89/simple_rnn_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_89/simple_rnn_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp
.sequential_89/simple_rnn_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ë
!sequential_89/simple_rnn_15/whileWhile7sequential_89/simple_rnn_15/while/loop_counter:output:0=sequential_89/simple_rnn_15/while/maximum_iterations:output:0)sequential_89/simple_rnn_15/time:output:04sequential_89/simple_rnn_15/TensorArrayV2_1:handle:0*sequential_89/simple_rnn_15/zeros:output:04sequential_89/simple_rnn_15/strided_slice_1:output:0Ssequential_89/simple_rnn_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_89_simple_rnn_15_simple_rnn_cell_15_matmul_readvariableop_resourceNsequential_89_simple_rnn_15_simple_rnn_cell_15_biasadd_readvariableop_resourceOsequential_89_simple_rnn_15_simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
/sequential_89_simple_rnn_15_while_body_14992627*;
cond3R1
/sequential_89_simple_rnn_15_while_cond_14992626*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Lsequential_89/simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ª
>sequential_89/simple_rnn_15/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_89/simple_rnn_15/while:output:3Usequential_89/simple_rnn_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elements
1sequential_89/simple_rnn_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3sequential_89/simple_rnn_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_89/simple_rnn_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+sequential_89/simple_rnn_15/strided_slice_3StridedSliceGsequential_89/simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_89/simple_rnn_15/strided_slice_3/stack:output:0<sequential_89/simple_rnn_15/strided_slice_3/stack_1:output:0<sequential_89/simple_rnn_15/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
,sequential_89/simple_rnn_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
'sequential_89/simple_rnn_15/transpose_1	TransposeGsequential_89/simple_rnn_15/TensorArrayV2Stack/TensorListStack:tensor:05sequential_89/simple_rnn_15/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
-sequential_89/dense_192/MatMul/ReadVariableOpReadVariableOp6sequential_89_dense_192_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ç
sequential_89/dense_192/MatMulMatMul4sequential_89/simple_rnn_15/strided_slice_3:output:05sequential_89/dense_192/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_89/dense_192/BiasAdd/ReadVariableOpReadVariableOp7sequential_89_dense_192_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_89/dense_192/BiasAddBiasAdd(sequential_89/dense_192/MatMul:product:06sequential_89/dense_192/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_89/dense_192/ReluRelu(sequential_89/dense_192/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
-sequential_89/dense_193/MatMul/ReadVariableOpReadVariableOp6sequential_89_dense_193_matmul_readvariableop_resource*
_output_shapes

:*
dtype0½
sequential_89/dense_193/MatMulMatMul*sequential_89/dense_192/Relu:activations:05sequential_89/dense_193/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_89/dense_193/BiasAdd/ReadVariableOpReadVariableOp7sequential_89_dense_193_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_89/dense_193/BiasAddBiasAdd(sequential_89/dense_193/MatMul:product:06sequential_89/dense_193/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(sequential_89/dense_193/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^sequential_89/dense_192/BiasAdd/ReadVariableOp.^sequential_89/dense_192/MatMul/ReadVariableOp/^sequential_89/dense_193/BiasAdd/ReadVariableOp.^sequential_89/dense_193/MatMul/ReadVariableOpF^sequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpE^sequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpG^sequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp"^sequential_89/simple_rnn_15/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_89/dense_192/BiasAdd/ReadVariableOp.sequential_89/dense_192/BiasAdd/ReadVariableOp2^
-sequential_89/dense_192/MatMul/ReadVariableOp-sequential_89/dense_192/MatMul/ReadVariableOp2`
.sequential_89/dense_193/BiasAdd/ReadVariableOp.sequential_89/dense_193/BiasAdd/ReadVariableOp2^
-sequential_89/dense_193/MatMul/ReadVariableOp-sequential_89/dense_193/MatMul/ReadVariableOp2
Esequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOpEsequential_89/simple_rnn_15/simple_rnn_cell_15/BiasAdd/ReadVariableOp2
Dsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOpDsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul/ReadVariableOp2
Fsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOpFsequential_89/simple_rnn_15/simple_rnn_cell_15/MatMul_1/ReadVariableOp2F
!sequential_89/simple_rnn_15/while!sequential_89/simple_rnn_15/while:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_15_input
ß

¾
!simple_rnn_15_while_cond_149936808
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_2:
6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993680___redundant_placeholder0R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993680___redundant_placeholder1R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993680___redundant_placeholder2R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993680___redundant_placeholder3 
simple_rnn_15_while_identity

simple_rnn_15/while/LessLesssimple_rnn_15_while_placeholder6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0*(
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


ø
G__inference_dense_192_layer_call_and_return_conditional_losses_14993138

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
ç
ñ
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993429
simple_rnn_15_input(
simple_rnn_15_14993411:$
simple_rnn_15_14993413:(
simple_rnn_15_14993415:$
dense_192_14993418: 
dense_192_14993420:$
dense_193_14993423: 
dense_193_14993425:
identity¢!dense_192/StatefulPartitionedCall¢!dense_193/StatefulPartitionedCall¢%simple_rnn_15/StatefulPartitionedCall±
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputsimple_rnn_15_14993411simple_rnn_15_14993413simple_rnn_15_14993415*
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993119¢
!dense_192/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_192_14993418dense_192_14993420*
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
G__inference_dense_192_layer_call_and_return_conditional_losses_14993138
!dense_193/StatefulPartitionedCallStatefulPartitionedCall*dense_192/StatefulPartitionedCall:output:0dense_193_14993423dense_193_14993425*
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
G__inference_dense_193_layer_call_and_return_conditional_losses_14993154y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_192/StatefulPartitionedCall"^dense_193/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_192/StatefulPartitionedCall!dense_192/StatefulPartitionedCall2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_15_input
Ó	
³
0__inference_sequential_89_layer_call_fn_14993408
simple_rnn_15_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993372o
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_15_input
À
ä
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993372

inputs(
simple_rnn_15_14993354:$
simple_rnn_15_14993356:(
simple_rnn_15_14993358:$
dense_192_14993361: 
dense_192_14993363:$
dense_193_14993366: 
dense_193_14993368:
identity¢!dense_192/StatefulPartitionedCall¢!dense_193/StatefulPartitionedCall¢%simple_rnn_15/StatefulPartitionedCall¤
%simple_rnn_15/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_15_14993354simple_rnn_15_14993356simple_rnn_15_14993358*
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993321¢
!dense_192/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_15/StatefulPartitionedCall:output:0dense_192_14993361dense_192_14993363*
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
G__inference_dense_192_layer_call_and_return_conditional_losses_14993138
!dense_193/StatefulPartitionedCallStatefulPartitionedCall*dense_192/StatefulPartitionedCall:output:0dense_193_14993366dense_193_14993368*
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
G__inference_dense_193_layer_call_and_return_conditional_losses_14993154y
IdentityIdentity*dense_193/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp"^dense_192/StatefulPartitionedCall"^dense_193/StatefulPartitionedCall&^simple_rnn_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_192/StatefulPartitionedCall!dense_192/StatefulPartitionedCall2F
!dense_193/StatefulPartitionedCall!dense_193/StatefulPartitionedCall2N
%simple_rnn_15/StatefulPartitionedCall%simple_rnn_15/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢5
¨
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14992833

inputs-
simple_rnn_cell_15_14992756:)
simple_rnn_cell_15_14992758:-
simple_rnn_cell_15_14992760:
identity¢*simple_rnn_cell_15/StatefulPartitionedCall¢while;
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
*simple_rnn_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_15_14992756simple_rnn_cell_15_14992758simple_rnn_cell_15_14992760*
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992755n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_15_14992756simple_rnn_cell_15_14992758simple_rnn_cell_15_14992760*
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
while_body_14992769*
condR
while_cond_14992768*8
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
NoOpNoOp+^simple_rnn_cell_15/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2X
*simple_rnn_cell_15/StatefulPartitionedCall*simple_rnn_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
while_cond_14992929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14992929___redundant_placeholder06
2while_while_cond_14992929___redundant_placeholder16
2while_while_cond_14992929___redundant_placeholder26
2while_while_cond_14992929___redundant_placeholder3
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
,__inference_dense_192_layer_call_fn_14994254

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
G__inference_dense_192_layer_call_and_return_conditional_losses_14993138o
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
ä
´
while_cond_14993051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14993051___redundant_placeholder06
2while_while_cond_14993051___redundant_placeholder16
2while_while_cond_14993051___redundant_placeholder26
2while_while_cond_14993051___redundant_placeholder3
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
ªH

/sequential_89_simple_rnn_15_while_body_14992627T
Psequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_loop_counterZ
Vsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_maximum_iterations1
-sequential_89_simple_rnn_15_while_placeholder3
/sequential_89_simple_rnn_15_while_placeholder_13
/sequential_89_simple_rnn_15_while_placeholder_2S
Osequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_strided_slice_1_0
sequential_89_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_89_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0:d
Vsequential_89_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:i
Wsequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:.
*sequential_89_simple_rnn_15_while_identity0
,sequential_89_simple_rnn_15_while_identity_10
,sequential_89_simple_rnn_15_while_identity_20
,sequential_89_simple_rnn_15_while_identity_30
,sequential_89_simple_rnn_15_while_identity_4Q
Msequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_strided_slice_1
sequential_89_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_89_simple_rnn_15_tensorarrayunstack_tensorlistfromtensore
Ssequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource:b
Tsequential_89_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource:g
Usequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢Ksequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢Jsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp¢Lsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp¤
Ssequential_89/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ³
Esequential_89/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_89_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_89_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0-sequential_89_simple_rnn_15_while_placeholder\sequential_89/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0à
Jsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOpUsequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
;sequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMulMatMulLsequential_89/simple_rnn_15/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
Ksequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOpVsequential_89_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
<sequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAddBiasAddEsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul:product:0Ssequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
Lsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOpWsequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0
=sequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1MatMul/sequential_89_simple_rnn_15_while_placeholder_2Tsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8sequential_89/simple_rnn_15/while/simple_rnn_cell_15/addAddV2Esequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd:output:0Gsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
9sequential_89/simple_rnn_15/while/simple_rnn_cell_15/TanhTanh<sequential_89/simple_rnn_15/while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Lsequential_89/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : â
Fsequential_89/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_89_simple_rnn_15_while_placeholder_1Usequential_89/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem/index:output:0=sequential_89/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒi
'sequential_89/simple_rnn_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :°
%sequential_89/simple_rnn_15/while/addAddV2-sequential_89_simple_rnn_15_while_placeholder0sequential_89/simple_rnn_15/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_89/simple_rnn_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :×
'sequential_89/simple_rnn_15/while/add_1AddV2Psequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_loop_counter2sequential_89/simple_rnn_15/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*sequential_89/simple_rnn_15/while/IdentityIdentity+sequential_89/simple_rnn_15/while/add_1:z:0'^sequential_89/simple_rnn_15/while/NoOp*
T0*
_output_shapes
: Ú
,sequential_89/simple_rnn_15/while/Identity_1IdentityVsequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_while_maximum_iterations'^sequential_89/simple_rnn_15/while/NoOp*
T0*
_output_shapes
: ­
,sequential_89/simple_rnn_15/while/Identity_2Identity)sequential_89/simple_rnn_15/while/add:z:0'^sequential_89/simple_rnn_15/while/NoOp*
T0*
_output_shapes
: Ú
,sequential_89/simple_rnn_15/while/Identity_3IdentityVsequential_89/simple_rnn_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_89/simple_rnn_15/while/NoOp*
T0*
_output_shapes
: Ò
,sequential_89/simple_rnn_15/while/Identity_4Identity=sequential_89/simple_rnn_15/while/simple_rnn_cell_15/Tanh:y:0'^sequential_89/simple_rnn_15/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
&sequential_89/simple_rnn_15/while/NoOpNoOpL^sequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpK^sequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpM^sequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_89_simple_rnn_15_while_identity3sequential_89/simple_rnn_15/while/Identity:output:0"e
,sequential_89_simple_rnn_15_while_identity_15sequential_89/simple_rnn_15/while/Identity_1:output:0"e
,sequential_89_simple_rnn_15_while_identity_25sequential_89/simple_rnn_15/while/Identity_2:output:0"e
,sequential_89_simple_rnn_15_while_identity_35sequential_89/simple_rnn_15/while/Identity_3:output:0"e
,sequential_89_simple_rnn_15_while_identity_45sequential_89/simple_rnn_15/while/Identity_4:output:0" 
Msequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_strided_slice_1Osequential_89_simple_rnn_15_while_sequential_89_simple_rnn_15_strided_slice_1_0"®
Tsequential_89_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resourceVsequential_89_simple_rnn_15_while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"°
Usequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resourceWsequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"¬
Ssequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resourceUsequential_89_simple_rnn_15_while_simple_rnn_cell_15_matmul_readvariableop_resource_0"
sequential_89_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_89_simple_rnn_15_tensorarrayunstack_tensorlistfromtensorsequential_89_simple_rnn_15_while_tensorarrayv2read_tensorlistgetitem_sequential_89_simple_rnn_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Ksequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpKsequential_89/simple_rnn_15/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2
Jsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOpJsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul/ReadVariableOp2
Lsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOpLsequential_89/simple_rnn_15/while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
while_body_14993254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_15_matmul_readvariableop_resource:F
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_15/MatMul/ReadVariableOp¢0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_15/Tanh:y:0*
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
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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


ø
G__inference_dense_192_layer_call_and_return_conditional_losses_14994265

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

ë
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992877

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
ä
´
while_cond_14993847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_14993847___redundant_placeholder06
2while_while_cond_14993847___redundant_placeholder16
2while_while_cond_14993847___redundant_placeholder26
2while_while_cond_14993847___redundant_placeholder3
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

ë
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992755

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

º
0__inference_simple_rnn_15_layer_call_fn_14993805

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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993321o
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó>
Ä
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994135

inputsC
1simple_rnn_cell_15_matmul_readvariableop_resource:@
2simple_rnn_cell_15_biasadd_readvariableop_resource:E
3simple_rnn_cell_15_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_15/BiasAdd/ReadVariableOp¢(simple_rnn_cell_15/MatMul/ReadVariableOp¢*simple_rnn_cell_15/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
while_body_14994068*
condR
while_cond_14994067*8
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
NoOpNoOp*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

º
0__inference_simple_rnn_15_layer_call_fn_14993794

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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993119o
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿

Ý
5__inference_simple_rnn_cell_15_layer_call_fn_14994298

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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14992755o
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
Ó	
³
0__inference_sequential_89_layer_call_fn_14993178
simple_rnn_15_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993161o
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesimple_rnn_15_input
ô-
Ó
while_body_14994068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_15_matmul_readvariableop_resource_0:H
:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0:M
;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_15_matmul_readvariableop_resource:F
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:K
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource:¢/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp¢.while/simple_rnn_cell_15/MatMul/ReadVariableOp¢0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¨
.while/simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Å
while/simple_rnn_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Á
 while/simple_rnn_cell_15/BiasAddBiasAdd)while/simple_rnn_cell_15/MatMul:product:07while/simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¬
!while/simple_rnn_cell_15/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
while/simple_rnn_cell_15/addAddV2)while/simple_rnn_cell_15/BiasAdd:output:0+while/simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/simple_rnn_cell_15/TanhTanh while/simple_rnn_cell_15/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ò
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_15/Tanh:y:0*
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
while/Identity_4Identity!while/simple_rnn_cell_15/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ

while/NoOpNoOp0^while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_15/MatMul/ReadVariableOp1^while/simple_rnn_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_15_biasadd_readvariableop_resource:while_simple_rnn_cell_15_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_15_matmul_1_readvariableop_resource;while_simple_rnn_cell_15_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_15_matmul_readvariableop_resource9while_simple_rnn_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp/while/simple_rnn_cell_15/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_15/MatMul/ReadVariableOp.while/simple_rnn_cell_15/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp0while/simple_rnn_cell_15/MatMul_1/ReadVariableOp: 
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
Ó>
Ä
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993321

inputsC
1simple_rnn_cell_15_matmul_readvariableop_resource:@
2simple_rnn_cell_15_biasadd_readvariableop_resource:E
3simple_rnn_cell_15_matmul_1_readvariableop_resource:
identity¢)simple_rnn_cell_15/BiasAdd/ReadVariableOp¢(simple_rnn_cell_15/MatMul/ReadVariableOp¢*simple_rnn_cell_15/MatMul_1/ReadVariableOp¢while;
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
:ÿÿÿÿÿÿÿÿÿD
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
(simple_rnn_cell_15/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¡
simple_rnn_cell_15/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_15/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
simple_rnn_cell_15/BiasAddBiasAdd#simple_rnn_cell_15/MatMul:product:01simple_rnn_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*simple_rnn_cell_15/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_15/MatMul_1MatMulzeros:output:02simple_rnn_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_15/addAddV2#simple_rnn_cell_15/BiasAdd:output:0%simple_rnn_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
simple_rnn_cell_15/TanhTanhsimple_rnn_cell_15/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_15_matmul_readvariableop_resource2simple_rnn_cell_15_biasadd_readvariableop_resource3simple_rnn_cell_15_matmul_1_readvariableop_resource*
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
while_body_14993254*
condR
while_cond_14993253*8
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
NoOpNoOp*^simple_rnn_cell_15/BiasAdd/ReadVariableOp)^simple_rnn_cell_15/MatMul/ReadVariableOp+^simple_rnn_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_15/BiasAdd/ReadVariableOp)simple_rnn_cell_15/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_15/MatMul/ReadVariableOp(simple_rnn_cell_15/MatMul/ReadVariableOp2X
*simple_rnn_cell_15/MatMul_1/ReadVariableOp*simple_rnn_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

,__inference_dense_193_layer_call_fn_14994274

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
G__inference_dense_193_layer_call_and_return_conditional_losses_14993154o
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
Ê	
ø
G__inference_dense_193_layer_call_and_return_conditional_losses_14993154

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
!simple_rnn_15_while_cond_149935578
4simple_rnn_15_while_simple_rnn_15_while_loop_counter>
:simple_rnn_15_while_simple_rnn_15_while_maximum_iterations#
simple_rnn_15_while_placeholder%
!simple_rnn_15_while_placeholder_1%
!simple_rnn_15_while_placeholder_2:
6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993557___redundant_placeholder0R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993557___redundant_placeholder1R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993557___redundant_placeholder2R
Nsimple_rnn_15_while_simple_rnn_15_while_cond_14993557___redundant_placeholder3 
simple_rnn_15_while_identity

simple_rnn_15/while/LessLesssimple_rnn_15_while_placeholder6simple_rnn_15_while_less_simple_rnn_15_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_15/while/IdentityIdentitysimple_rnn_15/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_15_while_identity%simple_rnn_15/while/Identity:output:0*(
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
:"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*È
serving_default´
W
simple_rnn_15_input@
%serving_default_simple_rnn_15_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1930
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
0__inference_sequential_89_layer_call_fn_14993178
0__inference_sequential_89_layer_call_fn_14993496
0__inference_sequential_89_layer_call_fn_14993515
0__inference_sequential_89_layer_call_fn_14993408À
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993638
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993761
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993429
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993450À
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
#__inference__wrapped_model_14992707simple_rnn_15_input"
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
0__inference_simple_rnn_15_layer_call_fn_14993772
0__inference_simple_rnn_15_layer_call_fn_14993783
0__inference_simple_rnn_15_layer_call_fn_14993794
0__inference_simple_rnn_15_layer_call_fn_14993805Õ
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993915
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994025
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994135
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994245Õ
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
,__inference_dense_192_layer_call_fn_14994254¢
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
G__inference_dense_192_layer_call_and_return_conditional_losses_14994265¢
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
": 2dense_192/kernel
:2dense_192/bias
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
,__inference_dense_193_layer_call_fn_14994274¢
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
G__inference_dense_193_layer_call_and_return_conditional_losses_14994284¢
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
": 2dense_193/kernel
:2dense_193/bias
9:72'simple_rnn_15/simple_rnn_cell_15/kernel
C:A21simple_rnn_15/simple_rnn_cell_15/recurrent_kernel
3:12%simple_rnn_15/simple_rnn_cell_15/bias
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
0__inference_sequential_89_layer_call_fn_14993178simple_rnn_15_input"À
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
0__inference_sequential_89_layer_call_fn_14993496inputs"À
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
0__inference_sequential_89_layer_call_fn_14993515inputs"À
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
0__inference_sequential_89_layer_call_fn_14993408simple_rnn_15_input"À
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993638inputs"À
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993761inputs"À
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993429simple_rnn_15_input"À
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
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993450simple_rnn_15_input"À
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
&__inference_signature_wrapper_14993477simple_rnn_15_input"
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
0__inference_simple_rnn_15_layer_call_fn_14993772inputs/0"Õ
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
0__inference_simple_rnn_15_layer_call_fn_14993783inputs/0"Õ
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
0__inference_simple_rnn_15_layer_call_fn_14993794inputs"Õ
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
0__inference_simple_rnn_15_layer_call_fn_14993805inputs"Õ
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993915inputs/0"Õ
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994025inputs/0"Õ
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994135inputs"Õ
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994245inputs"Õ
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
5__inference_simple_rnn_cell_15_layer_call_fn_14994298
5__inference_simple_rnn_cell_15_layer_call_fn_14994312¾
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994329
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994346¾
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
,__inference_dense_192_layer_call_fn_14994254inputs"¢
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
G__inference_dense_192_layer_call_and_return_conditional_losses_14994265inputs"¢
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
,__inference_dense_193_layer_call_fn_14994274inputs"¢
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
G__inference_dense_193_layer_call_and_return_conditional_losses_14994284inputs"¢
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
5__inference_simple_rnn_cell_15_layer_call_fn_14994298inputsstates/0"¾
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
5__inference_simple_rnn_cell_15_layer_call_fn_14994312inputsstates/0"¾
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994329inputsstates/0"¾
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994346inputsstates/0"¾
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
':%2Adam/dense_192/kernel/m
!:2Adam/dense_192/bias/m
':%2Adam/dense_193/kernel/m
!:2Adam/dense_193/bias/m
>:<2.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/m
H:F28Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/m
8:62,Adam/simple_rnn_15/simple_rnn_cell_15/bias/m
':%2Adam/dense_192/kernel/v
!:2Adam/dense_192/bias/v
':%2Adam/dense_193/kernel/v
!:2Adam/dense_193/bias/v
>:<2.Adam/simple_rnn_15/simple_rnn_cell_15/kernel/v
H:F28Adam/simple_rnn_15/simple_rnn_cell_15/recurrent_kernel/v
8:62,Adam/simple_rnn_15/simple_rnn_cell_15/bias/vª
#__inference__wrapped_model_14992707%'&#$@¢=
6¢3
1.
simple_rnn_15_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_193# 
	dense_193ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_192_layer_call_and_return_conditional_losses_14994265\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_192_layer_call_fn_14994254O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_193_layer_call_and_return_conditional_losses_14994284\#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_193_layer_call_fn_14994274O#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÉ
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993429z%'&#$H¢E
>¢;
1.
simple_rnn_15_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993450z%'&#$H¢E
>¢;
1.
simple_rnn_15_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993638m%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_89_layer_call_and_return_conditional_losses_14993761m%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
0__inference_sequential_89_layer_call_fn_14993178m%'&#$H¢E
>¢;
1.
simple_rnn_15_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
0__inference_sequential_89_layer_call_fn_14993408m%'&#$H¢E
>¢;
1.
simple_rnn_15_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_89_layer_call_fn_14993496`%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_89_layer_call_fn_14993515`%'&#$;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
&__inference_signature_wrapper_14993477%'&#$W¢T
¢ 
MªJ
H
simple_rnn_15_input1.
simple_rnn_15_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_193# 
	dense_193ÿÿÿÿÿÿÿÿÿÌ
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14993915}%'&O¢L
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994025}%'&O¢L
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
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994135m%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_simple_rnn_15_layer_call_and_return_conditional_losses_14994245m%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
0__inference_simple_rnn_15_layer_call_fn_14993772p%'&O¢L
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
0__inference_simple_rnn_15_layer_call_fn_14993783p%'&O¢L
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
0__inference_simple_rnn_15_layer_call_fn_14993794`%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_simple_rnn_15_layer_call_fn_14993805`%'&?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994329·%'&\¢Y
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
P__inference_simple_rnn_cell_15_layer_call_and_return_conditional_losses_14994346·%'&\¢Y
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
5__inference_simple_rnn_cell_15_layer_call_fn_14994298©%'&\¢Y
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
5__inference_simple_rnn_cell_15_layer_call_fn_14994312©%'&\¢Y
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