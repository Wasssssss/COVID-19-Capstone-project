&
Ë
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
:
Less
x"T
y"T
z
"
Ttype:
2	
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
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ïê$
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:  *
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
: *
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

: *
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
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

lstm_10/lstm_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_10/lstm_cell_10/kernel

/lstm_10/lstm_cell_10/kernel/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_10/kernel*
_output_shapes
:	*
dtype0
§
%lstm_10/lstm_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_10/lstm_cell_10/recurrent_kernel
 
9lstm_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_10/lstm_cell_10/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_10/lstm_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_10/lstm_cell_10/bias

-lstm_10/lstm_cell_10/bias/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_10/bias*
_output_shapes	
:*
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

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
: *
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_10/lstm_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_10/lstm_cell_10/kernel/m

6Adam/lstm_10/lstm_cell_10/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_10/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_10/lstm_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m
®
@Adam/lstm_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_10/lstm_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_10/lstm_cell_10/bias/m

4Adam/lstm_10/lstm_cell_10/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_10/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
: *
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_10/lstm_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_10/lstm_cell_10/kernel/v

6Adam/lstm_10/lstm_cell_10/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_10/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_10/lstm_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v
®
@Adam/lstm_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_10/lstm_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_10/lstm_cell_10/bias/v

4Adam/lstm_10/lstm_cell_10/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_10/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
Õ+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*+
value+B+ Bü*
ó
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
 	keras_api
¾
!iter

"beta_1

#beta_2
	$decay
%learning_ratemRmSmTmU&mV'mW(mXvYvZv[v\&v]'v^(v_
1
&0
'1
(2
3
4
5
6
 
1
&0
'1
(2
3
4
5
6
­
)non_trainable_variables
*metrics
+layer_regularization_losses

,layers
-layer_metrics
	variables
regularization_losses
trainable_variables
 

.
state_size

&kernel
'recurrent_kernel
(bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
 

&0
'1
(2
 

&0
'1
(2
¹
3non_trainable_variables

4states
5metrics
6layer_regularization_losses

7layers
8layer_metrics
	variables
regularization_losses
trainable_variables
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
9non_trainable_variables
:metrics
;layer_regularization_losses

<layers
=layer_metrics
	variables
regularization_losses
trainable_variables
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
>non_trainable_variables
?metrics
@layer_regularization_losses

Alayers
Blayer_metrics
	variables
regularization_losses
trainable_variables
 
 
 
­
Cnon_trainable_variables
Dmetrics
Elayer_regularization_losses

Flayers
Glayer_metrics
	variables
regularization_losses
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_10/lstm_cell_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_10/lstm_cell_10/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_10/lstm_cell_10/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

H0
 

0
1
2
3
 
 

&0
'1
(2
 

&0
'1
(2
­
Inon_trainable_variables
Jmetrics
Klayer_regularization_losses

Llayers
Mlayer_metrics
/	variables
0regularization_losses
1trainable_variables
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ntotal
	Ocount
P	variables
Q	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

P	variables
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_10/lstm_cell_10/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_10/lstm_cell_10/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_10/lstm_cell_10/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_10/lstm_cell_10/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_10/lstm_cell_10/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_10/lstm_cell_10/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_5Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ã
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5lstm_10/lstm_cell_10/kernellstm_10/lstm_cell_10/bias%lstm_10/lstm_cell_10/recurrent_kerneldense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_412999
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ù
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_10/lstm_cell_10/kernel/Read/ReadVariableOp9lstm_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOp-lstm_10/lstm_cell_10/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_10/kernel/m/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_10/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_10/kernel/v/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_10/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_415190
Ä
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_10/lstm_cell_10/kernel%lstm_10/lstm_cell_10/recurrent_kernellstm_10/lstm_cell_10/biastotalcountAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/m"Adam/lstm_10/lstm_cell_10/kernel/m,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m Adam/lstm_10/lstm_cell_10/bias/mAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v"Adam/lstm_10/lstm_cell_10/kernel/v,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v Adam/lstm_10/lstm_cell_10/bias/v*(
Tin!
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_415284³ì#
Æ

ã
lstm_10_while_cond_413443,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1D
@lstm_10_while_lstm_10_while_cond_413443___redundant_placeholder0D
@lstm_10_while_lstm_10_while_cond_413443___redundant_placeholder1D
@lstm_10_while_lstm_10_while_cond_413443___redundant_placeholder2D
@lstm_10_while_lstm_10_while_cond_413443___redundant_placeholder3
lstm_10_while_identity

lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2
lstm_10/while/Lessu
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_10/while/Identity"9
lstm_10_while_identitylstm_10/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Í
ç
&sequential_4_lstm_10_while_cond_411207F
Bsequential_4_lstm_10_while_sequential_4_lstm_10_while_loop_counterL
Hsequential_4_lstm_10_while_sequential_4_lstm_10_while_maximum_iterations*
&sequential_4_lstm_10_while_placeholder,
(sequential_4_lstm_10_while_placeholder_1,
(sequential_4_lstm_10_while_placeholder_2,
(sequential_4_lstm_10_while_placeholder_3H
Dsequential_4_lstm_10_while_less_sequential_4_lstm_10_strided_slice_1^
Zsequential_4_lstm_10_while_sequential_4_lstm_10_while_cond_411207___redundant_placeholder0^
Zsequential_4_lstm_10_while_sequential_4_lstm_10_while_cond_411207___redundant_placeholder1^
Zsequential_4_lstm_10_while_sequential_4_lstm_10_while_cond_411207___redundant_placeholder2^
Zsequential_4_lstm_10_while_sequential_4_lstm_10_while_cond_411207___redundant_placeholder3'
#sequential_4_lstm_10_while_identity
Ù
sequential_4/lstm_10/while/LessLess&sequential_4_lstm_10_while_placeholderDsequential_4_lstm_10_while_less_sequential_4_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_4/lstm_10/while/Less
#sequential_4/lstm_10/while/IdentityIdentity#sequential_4/lstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_4/lstm_10/while/Identity"S
#sequential_4_lstm_10_while_identity,sequential_4/lstm_10/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
à	
¦
-__inference_sequential_4_layer_call_fn_413018

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4124532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
©
C__inference_lstm_10_layer_call_and_return_conditional_losses_414231
inputs_0=
*lstm_cell_10_split_readvariableop_resource:	;
,lstm_cell_10_split_1_readvariableop_resource:	7
$lstm_cell_10_readvariableop_resource:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_10/ReadVariableOp¢lstm_cell_10/ReadVariableOp_1¢lstm_cell_10/ReadVariableOp_2¢lstm_cell_10/ReadVariableOp_3¢!lstm_cell_10/split/ReadVariableOp¢#lstm_cell_10/split_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2z
lstm_cell_10/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/Shape
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_10/ones_like/Const¸
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/ones_like}
lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout/Const³
lstm_cell_10/dropout/MulMullstm_cell_10/ones_like:output:0#lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Mul
lstm_cell_10/dropout/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout/Shapeù
1lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ªáw23
1lstm_cell_10/dropout/random_uniform/RandomUniform
#lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_10/dropout/GreaterEqual/yò
!lstm_cell_10/dropout/GreaterEqualGreaterEqual:lstm_cell_10/dropout/random_uniform/RandomUniform:output:0,lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_10/dropout/GreaterEqual¦
lstm_cell_10/dropout/CastCast%lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Cast®
lstm_cell_10/dropout/Mul_1Mullstm_cell_10/dropout/Mul:z:0lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Mul_1
lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_1/Const¹
lstm_cell_10/dropout_1/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Mul
lstm_cell_10/dropout_1/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_1/Shape
3lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ã25
3lstm_cell_10/dropout_1/random_uniform/RandomUniform
%lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_1/GreaterEqual/yú
#lstm_cell_10/dropout_1/GreaterEqualGreaterEqual<lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_1/GreaterEqual¬
lstm_cell_10/dropout_1/CastCast'lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Cast¶
lstm_cell_10/dropout_1/Mul_1Mullstm_cell_10/dropout_1/Mul:z:0lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Mul_1
lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_2/Const¹
lstm_cell_10/dropout_2/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Mul
lstm_cell_10/dropout_2/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_2/Shape
3lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2÷25
3lstm_cell_10/dropout_2/random_uniform/RandomUniform
%lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_2/GreaterEqual/yú
#lstm_cell_10/dropout_2/GreaterEqualGreaterEqual<lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_2/GreaterEqual¬
lstm_cell_10/dropout_2/CastCast'lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Cast¶
lstm_cell_10/dropout_2/Mul_1Mullstm_cell_10/dropout_2/Mul:z:0lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Mul_1
lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_3/Const¹
lstm_cell_10/dropout_3/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Mul
lstm_cell_10/dropout_3/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_3/Shape
3lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¼Ö¾25
3lstm_cell_10/dropout_3/random_uniform/RandomUniform
%lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_3/GreaterEqual/yú
#lstm_cell_10/dropout_3/GreaterEqualGreaterEqual<lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_3/GreaterEqual¬
lstm_cell_10/dropout_3/CastCast'lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Cast¶
lstm_cell_10/dropout_3/Mul_1Mullstm_cell_10/dropout_3/Mul:z:0lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Mul_1~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim²
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_10/split/ReadVariableOpÛ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_10/split
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul¡
lstm_cell_10/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_1¡
lstm_cell_10/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_2¡
lstm_cell_10/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_3
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dim´
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/split_1/ReadVariableOpÓ
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1§
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd­
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_1­
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_2­
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_3
lstm_cell_10/mulMulzeros:output:0lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul
lstm_cell_10/mul_1Mulzeros:output:0 lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_1
lstm_cell_10/mul_2Mulzeros:output:0 lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_2
lstm_cell_10/mul_3Mulzeros:output:0 lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_3 
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stack
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2Ê
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice¥
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_4
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid¤
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_1
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stack
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2Ö
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_1:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_5¥
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mul_4Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_4¤
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_2
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stack
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2Ö
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_2:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_6¥
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_2x
lstm_cell_10/ReluRelulstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu
lstm_cell_10/mul_5Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_5
lstm_cell_10/add_3AddV2lstm_cell_10/mul_4:z:0lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_3¤
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_3
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stack
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2Ö
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_3:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_7¥
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_4
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_6Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414066*
condR
while_cond_414065*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_414065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414065___redundant_placeholder04
0while_while_cond_414065___redundant_placeholder14
0while_while_cond_414065___redundant_placeholder24
0while_while_cond_414065___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ç{

"__inference__traced_restore_415284
file_prefix2
 assignvariableop_dense_12_kernel:  .
 assignvariableop_1_dense_12_bias: 4
"assignvariableop_2_dense_13_kernel: .
 assignvariableop_3_dense_13_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_10_lstm_cell_10_kernel:	L
9assignvariableop_10_lstm_10_lstm_cell_10_recurrent_kernel:	 <
-assignvariableop_11_lstm_10_lstm_cell_10_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_12_kernel_m:  6
(assignvariableop_15_adam_dense_12_bias_m: <
*assignvariableop_16_adam_dense_13_kernel_m: 6
(assignvariableop_17_adam_dense_13_bias_m:I
6assignvariableop_18_adam_lstm_10_lstm_cell_10_kernel_m:	S
@assignvariableop_19_adam_lstm_10_lstm_cell_10_recurrent_kernel_m:	 C
4assignvariableop_20_adam_lstm_10_lstm_cell_10_bias_m:	<
*assignvariableop_21_adam_dense_12_kernel_v:  6
(assignvariableop_22_adam_dense_12_bias_v: <
*assignvariableop_23_adam_dense_13_kernel_v: 6
(assignvariableop_24_adam_dense_13_bias_v:I
6assignvariableop_25_adam_lstm_10_lstm_cell_10_kernel_v:	S
@assignvariableop_26_adam_lstm_10_lstm_cell_10_recurrent_kernel_v:	 C
4assignvariableop_27_adam_lstm_10_lstm_cell_10_bias_v:	
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ü
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueþBûB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÈ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices½
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4¡
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ª
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_10_lstm_cell_10_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_10_lstm_cell_10_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_10_lstm_cell_10_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14²
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_12_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_12_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_13_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_13_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_10_lstm_cell_10_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_10_lstm_cell_10_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_10_lstm_cell_10_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_12_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_12_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_13_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_13_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_10_lstm_cell_10_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_10_lstm_cell_10_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_10_lstm_cell_10_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÆ
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28f
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_29®
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
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

õ
D__inference_dense_12_layer_call_and_return_conditional_losses_412409

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ø%
ã
while_body_411495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_10_411519_0:	*
while_lstm_cell_10_411521_0:	.
while_lstm_cell_10_411523_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_10_411519:	(
while_lstm_cell_10_411521:	,
while_lstm_cell_10_411523:	 ¢*while/lstm_cell_10/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_411519_0while_lstm_cell_10_411521_0while_lstm_cell_10_411523_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4114812,
*while/lstm_cell_10/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_411519while_lstm_cell_10_411519_0"8
while_lstm_cell_10_411521while_lstm_cell_10_411521_0"8
while_lstm_cell_10_411523while_lstm_cell_10_411523_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¾
·
(__inference_lstm_10_layer_call_fn_413659
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4118672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_414340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414340___redundant_placeholder04
0while_while_cond_414340___redundant_placeholder14
0while_while_cond_414340___redundant_placeholder24
0while_while_cond_414340___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
¢
©
C__inference_lstm_10_layer_call_and_return_conditional_losses_413924
inputs_0=
*lstm_cell_10_split_readvariableop_resource:	;
,lstm_cell_10_split_1_readvariableop_resource:	7
$lstm_cell_10_readvariableop_resource:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_10/ReadVariableOp¢lstm_cell_10/ReadVariableOp_1¢lstm_cell_10/ReadVariableOp_2¢lstm_cell_10/ReadVariableOp_3¢!lstm_cell_10/split/ReadVariableOp¢#lstm_cell_10/split_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2z
lstm_cell_10/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/Shape
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_10/ones_like/Const¸
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/ones_like~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim²
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_10/split/ReadVariableOpÛ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_10/split
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul¡
lstm_cell_10/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_1¡
lstm_cell_10/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_2¡
lstm_cell_10/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_3
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dim´
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/split_1/ReadVariableOpÓ
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1§
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd­
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_1­
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_2­
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_3
lstm_cell_10/mulMulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul
lstm_cell_10/mul_1Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_1
lstm_cell_10/mul_2Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_2
lstm_cell_10/mul_3Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_3 
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stack
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2Ê
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice¥
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_4
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid¤
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_1
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stack
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2Ö
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_1:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_5¥
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mul_4Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_4¤
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_2
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stack
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2Ö
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_2:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_6¥
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_2x
lstm_cell_10/ReluRelulstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu
lstm_cell_10/mul_5Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_5
lstm_cell_10/add_3AddV2lstm_cell_10/mul_4:z:0lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_3¤
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_3
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stack
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2Ö
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_3:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_7¥
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_4
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_6Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_413791*
condR
while_cond_413790*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Þ¡
§
C__inference_lstm_10_layer_call_and_return_conditional_losses_412390

inputs=
*lstm_cell_10_split_readvariableop_resource:	;
,lstm_cell_10_split_1_readvariableop_resource:	7
$lstm_cell_10_readvariableop_resource:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_10/ReadVariableOp¢lstm_cell_10/ReadVariableOp_1¢lstm_cell_10/ReadVariableOp_2¢lstm_cell_10/ReadVariableOp_3¢!lstm_cell_10/split/ReadVariableOp¢#lstm_cell_10/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2z
lstm_cell_10/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/Shape
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_10/ones_like/Const¸
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/ones_like~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim²
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_10/split/ReadVariableOpÛ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_10/split
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul¡
lstm_cell_10/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_1¡
lstm_cell_10/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_2¡
lstm_cell_10/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_3
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dim´
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/split_1/ReadVariableOpÓ
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1§
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd­
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_1­
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_2­
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_3
lstm_cell_10/mulMulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul
lstm_cell_10/mul_1Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_1
lstm_cell_10/mul_2Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_2
lstm_cell_10/mul_3Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_3 
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stack
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2Ê
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice¥
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_4
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid¤
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_1
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stack
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2Ö
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_1:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_5¥
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mul_4Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_4¤
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_2
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stack
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2Ö
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_2:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_6¥
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_2x
lstm_cell_10/ReluRelulstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu
lstm_cell_10/mul_5Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_5
lstm_cell_10/add_3AddV2lstm_cell_10/mul_4:z:0lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_3¤
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_3
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stack
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2Ö
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_3:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_7¥
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_4
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_6Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412257*
condR
while_cond_412256*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_412256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412256___redundant_placeholder04
0while_while_cond_412256___redundant_placeholder14
0while_while_cond_412256___redundant_placeholder24
0while_while_cond_412256___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_413790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413790___redundant_placeholder04
0while_while_cond_413790___redundant_placeholder14
0while_while_cond_413790___redundant_placeholder24
0while_while_cond_413790___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
¶
ö
-__inference_lstm_cell_10_layer_call_fn_414878

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4117142
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
øÍ
¼
lstm_10_while_body_413444,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_10_while_lstm_cell_10_split_readvariableop_resource_0:	K
<lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0:	G
4lstm_10_while_lstm_cell_10_readvariableop_resource_0:	 
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorK
8lstm_10_while_lstm_cell_10_split_readvariableop_resource:	I
:lstm_10_while_lstm_cell_10_split_1_readvariableop_resource:	E
2lstm_10_while_lstm_cell_10_readvariableop_resource:	 ¢)lstm_10/while/lstm_cell_10/ReadVariableOp¢+lstm_10/while/lstm_cell_10/ReadVariableOp_1¢+lstm_10/while/lstm_cell_10/ReadVariableOp_2¢+lstm_10/while/lstm_cell_10/ReadVariableOp_3¢/lstm_10/while/lstm_cell_10/split/ReadVariableOp¢1lstm_10/while/lstm_cell_10/split_1/ReadVariableOpÓ
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_10/while/TensorArrayV2Read/TensorListGetItem£
*lstm_10/while/lstm_cell_10/ones_like/ShapeShapelstm_10_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_10/while/lstm_cell_10/ones_like/Shape
*lstm_10/while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_10/while/lstm_cell_10/ones_like/Constð
$lstm_10/while/lstm_cell_10/ones_likeFill3lstm_10/while/lstm_cell_10/ones_like/Shape:output:03lstm_10/while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/ones_like
(lstm_10/while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2*
(lstm_10/while/lstm_cell_10/dropout/Constë
&lstm_10/while/lstm_cell_10/dropout/MulMul-lstm_10/while/lstm_cell_10/ones_like:output:01lstm_10/while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_10/while/lstm_cell_10/dropout/Mul±
(lstm_10/while/lstm_cell_10/dropout/ShapeShape-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_10/while/lstm_cell_10/dropout/Shape¤
?lstm_10/while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform1lstm_10/while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ßÚ2A
?lstm_10/while/lstm_cell_10/dropout/random_uniform/RandomUniform«
1lstm_10/while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>23
1lstm_10/while/lstm_cell_10/dropout/GreaterEqual/yª
/lstm_10/while/lstm_cell_10/dropout/GreaterEqualGreaterEqualHlstm_10/while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:0:lstm_10/while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_10/while/lstm_cell_10/dropout/GreaterEqualÐ
'lstm_10/while/lstm_cell_10/dropout/CastCast3lstm_10/while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_10/while/lstm_cell_10/dropout/Castæ
(lstm_10/while/lstm_cell_10/dropout/Mul_1Mul*lstm_10/while/lstm_cell_10/dropout/Mul:z:0+lstm_10/while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_10/while/lstm_cell_10/dropout/Mul_1
*lstm_10/while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_10/while/lstm_cell_10/dropout_1/Constñ
(lstm_10/while/lstm_cell_10/dropout_1/MulMul-lstm_10/while/lstm_cell_10/ones_like:output:03lstm_10/while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_10/while/lstm_cell_10/dropout_1/Mulµ
*lstm_10/while/lstm_cell_10/dropout_1/ShapeShape-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_10/while/lstm_cell_10/dropout_1/Shapeª
Alstm_10/while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_10/while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ùø¯2C
Alstm_10/while/lstm_cell_10/dropout_1/random_uniform/RandomUniform¯
3lstm_10/while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_10/while/lstm_cell_10/dropout_1/GreaterEqual/y²
1lstm_10/while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualJlstm_10/while/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0<lstm_10/while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_10/while/lstm_cell_10/dropout_1/GreaterEqualÖ
)lstm_10/while/lstm_cell_10/dropout_1/CastCast5lstm_10/while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_10/while/lstm_cell_10/dropout_1/Castî
*lstm_10/while/lstm_cell_10/dropout_1/Mul_1Mul,lstm_10/while/lstm_cell_10/dropout_1/Mul:z:0-lstm_10/while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_10/while/lstm_cell_10/dropout_1/Mul_1
*lstm_10/while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_10/while/lstm_cell_10/dropout_2/Constñ
(lstm_10/while/lstm_cell_10/dropout_2/MulMul-lstm_10/while/lstm_cell_10/ones_like:output:03lstm_10/while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_10/while/lstm_cell_10/dropout_2/Mulµ
*lstm_10/while/lstm_cell_10/dropout_2/ShapeShape-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_10/while/lstm_cell_10/dropout_2/Shapeª
Alstm_10/while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_10/while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2â2C
Alstm_10/while/lstm_cell_10/dropout_2/random_uniform/RandomUniform¯
3lstm_10/while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_10/while/lstm_cell_10/dropout_2/GreaterEqual/y²
1lstm_10/while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualJlstm_10/while/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0<lstm_10/while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_10/while/lstm_cell_10/dropout_2/GreaterEqualÖ
)lstm_10/while/lstm_cell_10/dropout_2/CastCast5lstm_10/while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_10/while/lstm_cell_10/dropout_2/Castî
*lstm_10/while/lstm_cell_10/dropout_2/Mul_1Mul,lstm_10/while/lstm_cell_10/dropout_2/Mul:z:0-lstm_10/while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_10/while/lstm_cell_10/dropout_2/Mul_1
*lstm_10/while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_10/while/lstm_cell_10/dropout_3/Constñ
(lstm_10/while/lstm_cell_10/dropout_3/MulMul-lstm_10/while/lstm_cell_10/ones_like:output:03lstm_10/while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_10/while/lstm_cell_10/dropout_3/Mulµ
*lstm_10/while/lstm_cell_10/dropout_3/ShapeShape-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_10/while/lstm_cell_10/dropout_3/Shapeª
Alstm_10/while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_10/while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ëêñ2C
Alstm_10/while/lstm_cell_10/dropout_3/random_uniform/RandomUniform¯
3lstm_10/while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_10/while/lstm_cell_10/dropout_3/GreaterEqual/y²
1lstm_10/while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualJlstm_10/while/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0<lstm_10/while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_10/while/lstm_cell_10/dropout_3/GreaterEqualÖ
)lstm_10/while/lstm_cell_10/dropout_3/CastCast5lstm_10/while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_10/while/lstm_cell_10/dropout_3/Castî
*lstm_10/while/lstm_cell_10/dropout_3/Mul_1Mul,lstm_10/while/lstm_cell_10/dropout_3/Mul:z:0-lstm_10/while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_10/while/lstm_cell_10/dropout_3/Mul_1
*lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_10/while/lstm_cell_10/split/split_dimÞ
/lstm_10/while/lstm_cell_10/split/ReadVariableOpReadVariableOp:lstm_10_while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_10/while/lstm_cell_10/split/ReadVariableOp
 lstm_10/while/lstm_cell_10/splitSplit3lstm_10/while/lstm_cell_10/split/split_dim:output:07lstm_10/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_10/while/lstm_cell_10/splitç
!lstm_10/while/lstm_cell_10/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_10/while/lstm_cell_10/MatMulë
#lstm_10/while/lstm_cell_10/MatMul_1MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_1ë
#lstm_10/while/lstm_cell_10/MatMul_2MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_2ë
#lstm_10/while/lstm_cell_10/MatMul_3MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_3
,lstm_10/while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_10/while/lstm_cell_10/split_1/split_dimà
1lstm_10/while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_10/while/lstm_cell_10/split_1/ReadVariableOp
"lstm_10/while/lstm_cell_10/split_1Split5lstm_10/while/lstm_cell_10/split_1/split_dim:output:09lstm_10/while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_10/while/lstm_cell_10/split_1ß
"lstm_10/while/lstm_cell_10/BiasAddBiasAdd+lstm_10/while/lstm_cell_10/MatMul:product:0+lstm_10/while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/while/lstm_cell_10/BiasAddå
$lstm_10/while/lstm_cell_10/BiasAdd_1BiasAdd-lstm_10/while/lstm_cell_10/MatMul_1:product:0+lstm_10/while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/BiasAdd_1å
$lstm_10/while/lstm_cell_10/BiasAdd_2BiasAdd-lstm_10/while/lstm_cell_10/MatMul_2:product:0+lstm_10/while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/BiasAdd_2å
$lstm_10/while/lstm_cell_10/BiasAdd_3BiasAdd-lstm_10/while/lstm_cell_10/MatMul_3:product:0+lstm_10/while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/BiasAdd_3Ä
lstm_10/while/lstm_cell_10/mulMullstm_10_while_placeholder_2,lstm_10/while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/while/lstm_cell_10/mulÊ
 lstm_10/while/lstm_cell_10/mul_1Mullstm_10_while_placeholder_2.lstm_10/while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_1Ê
 lstm_10/while/lstm_cell_10/mul_2Mullstm_10_while_placeholder_2.lstm_10/while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_2Ê
 lstm_10/while/lstm_cell_10/mul_3Mullstm_10_while_placeholder_2.lstm_10/while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_3Ì
)lstm_10/while/lstm_cell_10/ReadVariableOpReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_10/while/lstm_cell_10/ReadVariableOp±
.lstm_10/while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_10/while/lstm_cell_10/strided_slice/stackµ
0lstm_10/while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_10/while/lstm_cell_10/strided_slice/stack_1µ
0lstm_10/while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_10/while/lstm_cell_10/strided_slice/stack_2
(lstm_10/while/lstm_cell_10/strided_sliceStridedSlice1lstm_10/while/lstm_cell_10/ReadVariableOp:value:07lstm_10/while/lstm_cell_10/strided_slice/stack:output:09lstm_10/while/lstm_cell_10/strided_slice/stack_1:output:09lstm_10/while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_10/while/lstm_cell_10/strided_sliceÝ
#lstm_10/while/lstm_cell_10/MatMul_4MatMul"lstm_10/while/lstm_cell_10/mul:z:01lstm_10/while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_4×
lstm_10/while/lstm_cell_10/addAddV2+lstm_10/while/lstm_cell_10/BiasAdd:output:0-lstm_10/while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/while/lstm_cell_10/add©
"lstm_10/while/lstm_cell_10/SigmoidSigmoid"lstm_10/while/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/while/lstm_cell_10/SigmoidÐ
+lstm_10/while/lstm_cell_10/ReadVariableOp_1ReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_10/while/lstm_cell_10/ReadVariableOp_1µ
0lstm_10/while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_10/while/lstm_cell_10/strided_slice_1/stack¹
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_1¹
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_2ª
*lstm_10/while/lstm_cell_10/strided_slice_1StridedSlice3lstm_10/while/lstm_cell_10/ReadVariableOp_1:value:09lstm_10/while/lstm_cell_10/strided_slice_1/stack:output:0;lstm_10/while/lstm_cell_10/strided_slice_1/stack_1:output:0;lstm_10/while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_10/while/lstm_cell_10/strided_slice_1á
#lstm_10/while/lstm_cell_10/MatMul_5MatMul$lstm_10/while/lstm_cell_10/mul_1:z:03lstm_10/while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_5Ý
 lstm_10/while/lstm_cell_10/add_1AddV2-lstm_10/while/lstm_cell_10/BiasAdd_1:output:0-lstm_10/while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_1¯
$lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid$lstm_10/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/Sigmoid_1Ä
 lstm_10/while/lstm_cell_10/mul_4Mul(lstm_10/while/lstm_cell_10/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_4Ð
+lstm_10/while/lstm_cell_10/ReadVariableOp_2ReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_10/while/lstm_cell_10/ReadVariableOp_2µ
0lstm_10/while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_10/while/lstm_cell_10/strided_slice_2/stack¹
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_1¹
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_2ª
*lstm_10/while/lstm_cell_10/strided_slice_2StridedSlice3lstm_10/while/lstm_cell_10/ReadVariableOp_2:value:09lstm_10/while/lstm_cell_10/strided_slice_2/stack:output:0;lstm_10/while/lstm_cell_10/strided_slice_2/stack_1:output:0;lstm_10/while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_10/while/lstm_cell_10/strided_slice_2á
#lstm_10/while/lstm_cell_10/MatMul_6MatMul$lstm_10/while/lstm_cell_10/mul_2:z:03lstm_10/while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_6Ý
 lstm_10/while/lstm_cell_10/add_2AddV2-lstm_10/while/lstm_cell_10/BiasAdd_2:output:0-lstm_10/while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_2¢
lstm_10/while/lstm_cell_10/ReluRelu$lstm_10/while/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_10/while/lstm_cell_10/ReluÔ
 lstm_10/while/lstm_cell_10/mul_5Mul&lstm_10/while/lstm_cell_10/Sigmoid:y:0-lstm_10/while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_5Ë
 lstm_10/while/lstm_cell_10/add_3AddV2$lstm_10/while/lstm_cell_10/mul_4:z:0$lstm_10/while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_3Ð
+lstm_10/while/lstm_cell_10/ReadVariableOp_3ReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_10/while/lstm_cell_10/ReadVariableOp_3µ
0lstm_10/while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_10/while/lstm_cell_10/strided_slice_3/stack¹
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_1¹
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_2ª
*lstm_10/while/lstm_cell_10/strided_slice_3StridedSlice3lstm_10/while/lstm_cell_10/ReadVariableOp_3:value:09lstm_10/while/lstm_cell_10/strided_slice_3/stack:output:0;lstm_10/while/lstm_cell_10/strided_slice_3/stack_1:output:0;lstm_10/while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_10/while/lstm_cell_10/strided_slice_3á
#lstm_10/while/lstm_cell_10/MatMul_7MatMul$lstm_10/while/lstm_cell_10/mul_3:z:03lstm_10/while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_7Ý
 lstm_10/while/lstm_cell_10/add_4AddV2-lstm_10/while/lstm_cell_10/BiasAdd_3:output:0-lstm_10/while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_4¯
$lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid$lstm_10/while/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/Sigmoid_2¦
!lstm_10/while/lstm_cell_10/Relu_1Relu$lstm_10/while/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_10/while/lstm_cell_10/Relu_1Ø
 lstm_10/while/lstm_cell_10/mul_6Mul(lstm_10/while/lstm_cell_10/Sigmoid_2:y:0/lstm_10/while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_6
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_10/while/TensorArrayV2Write/TensorListSetIteml
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add/y
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/addp
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add_1/y
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/add_1
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity¦
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_1
lstm_10/while/Identity_2Identitylstm_10/while/add:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_2º
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_3­
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_10/mul_6:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/while/Identity_4­
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_10/add_3:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/while/Identity_5
lstm_10/while/NoOpNoOp*^lstm_10/while/lstm_cell_10/ReadVariableOp,^lstm_10/while/lstm_cell_10/ReadVariableOp_1,^lstm_10/while/lstm_cell_10/ReadVariableOp_2,^lstm_10/while/lstm_cell_10/ReadVariableOp_30^lstm_10/while/lstm_cell_10/split/ReadVariableOp2^lstm_10/while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_10/while/NoOp"9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"j
2lstm_10_while_lstm_cell_10_readvariableop_resource4lstm_10_while_lstm_cell_10_readvariableop_resource_0"z
:lstm_10_while_lstm_cell_10_split_1_readvariableop_resource<lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0"v
8lstm_10_while_lstm_cell_10_split_readvariableop_resource:lstm_10_while_lstm_cell_10_split_readvariableop_resource_0"È
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_10/while/lstm_cell_10/ReadVariableOp)lstm_10/while/lstm_cell_10/ReadVariableOp2Z
+lstm_10/while/lstm_cell_10/ReadVariableOp_1+lstm_10/while/lstm_cell_10/ReadVariableOp_12Z
+lstm_10/while/lstm_cell_10/ReadVariableOp_2+lstm_10/while/lstm_cell_10/ReadVariableOp_22Z
+lstm_10/while/lstm_cell_10/ReadVariableOp_3+lstm_10/while/lstm_cell_10/ReadVariableOp_32b
/lstm_10/while/lstm_cell_10/split/ReadVariableOp/lstm_10/while/lstm_cell_10/split/ReadVariableOp2f
1lstm_10/while/lstm_cell_10/split_1/ReadVariableOp1lstm_10/while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
ã	
§
-__inference_sequential_4_layer_call_fn_412910
input_5
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4128742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
Õ
Ã
while_cond_412650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412650___redundant_placeholder04
0while_while_cond_412650___redundant_placeholder14
0while_while_cond_412650___redundant_placeholder24
0while_while_cond_412650___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
³
¤	
while_body_414616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_10_split_readvariableop_resource_0:	C
4while_lstm_cell_10_split_1_readvariableop_resource_0:	?
,while_lstm_cell_10_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_10_split_readvariableop_resource:	A
2while_lstm_cell_10_split_1_readvariableop_resource:	=
*while_lstm_cell_10_readvariableop_resource:	 ¢!while/lstm_cell_10/ReadVariableOp¢#while/lstm_cell_10/ReadVariableOp_1¢#while/lstm_cell_10/ReadVariableOp_2¢#while/lstm_cell_10/ReadVariableOp_3¢'while/lstm_cell_10/split/ReadVariableOp¢)while/lstm_cell_10/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_10/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/Shape
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_10/ones_like/ConstÐ
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/ones_like
 while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_10/dropout/ConstË
while/lstm_cell_10/dropout/MulMul%while/lstm_cell_10/ones_like:output:0)while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_10/dropout/Mul
 while/lstm_cell_10/dropout/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_10/dropout/Shape
7while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ö¢29
7while/lstm_cell_10/dropout/random_uniform/RandomUniform
)while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_10/dropout/GreaterEqual/y
'while/lstm_cell_10/dropout/GreaterEqualGreaterEqual@while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_10/dropout/GreaterEqual¸
while/lstm_cell_10/dropout/CastCast+while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_10/dropout/CastÆ
 while/lstm_cell_10/dropout/Mul_1Mul"while/lstm_cell_10/dropout/Mul:z:0#while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout/Mul_1
"while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_1/ConstÑ
 while/lstm_cell_10/dropout_1/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_1/Mul
"while/lstm_cell_10/dropout_1/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_1/Shape
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ùß2;
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_1/GreaterEqual/y
)while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_1/GreaterEqual¾
!while/lstm_cell_10/dropout_1/CastCast-while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_1/CastÎ
"while/lstm_cell_10/dropout_1/Mul_1Mul$while/lstm_cell_10/dropout_1/Mul:z:0%while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_1/Mul_1
"while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_2/ConstÑ
 while/lstm_cell_10/dropout_2/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_2/Mul
"while/lstm_cell_10/dropout_2/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_2/Shape
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¹2;
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_2/GreaterEqual/y
)while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_2/GreaterEqual¾
!while/lstm_cell_10/dropout_2/CastCast-while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_2/CastÎ
"while/lstm_cell_10/dropout_2/Mul_1Mul$while/lstm_cell_10/dropout_2/Mul:z:0%while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_2/Mul_1
"while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_3/ConstÑ
 while/lstm_cell_10/dropout_3/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_3/Mul
"while/lstm_cell_10/dropout_3/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_3/Shape
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2»äð2;
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_3/GreaterEqual/y
)while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_3/GreaterEqual¾
!while/lstm_cell_10/dropout_3/CastCast-while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_3/CastÎ
"while/lstm_cell_10/dropout_3/Mul_1Mul$while/lstm_cell_10/dropout_3/Mul:z:0%while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_3/Mul_1
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dimÆ
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_10/splitÇ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMulË
while/lstm_cell_10/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_1Ë
while/lstm_cell_10/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_2Ë
while/lstm_cell_10/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_3
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dimÈ
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpë
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1¿
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAddÅ
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_1Å
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_2Å
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_3¤
while/lstm_cell_10/mulMulwhile_placeholder_2$while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mulª
while/lstm_cell_10/mul_1Mulwhile_placeholder_2&while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/mul_2Mulwhile_placeholder_2&while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_2ª
while/lstm_cell_10/mul_3Mulwhile_placeholder_2&while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_3´
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_10/ReadVariableOp¡
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack¥
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1¥
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2î
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_slice½
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_4·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid¸
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_1¥
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ú
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Á
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_1:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_5½
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_1¤
while/lstm_cell_10/mul_4Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_4¸
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_2¥
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ú
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Á
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_2:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_6½
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_2
while/lstm_cell_10/ReluReluwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_5Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_5«
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_4:z:0while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_3¸
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_3¥
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ú
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Á
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_3:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_7½
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_4
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_6Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¦
µ
(__inference_lstm_10_layer_call_fn_413670

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4123902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

a
E__inference_reshape_6_layer_call_and_return_conditional_losses_412444

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2 
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£"
ø
H__inference_sequential_4_layer_call_and_return_conditional_losses_412453

inputs!
lstm_10_412391:	
lstm_10_412393:	!
lstm_10_412395:	 !
dense_12_412410:  
dense_12_412412: !
dense_13_412426: 
dense_13_412428:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¡
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinputslstm_10_412391lstm_10_412393lstm_10_412395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4123902!
lstm_10/StatefulPartitionedCall¶
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_12_412410dense_12_412412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_4124092"
 dense_12/StatefulPartitionedCall·
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_412426dense_13_412428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_4124252"
 dense_13/StatefulPartitionedCallþ
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_4124442
reshape_6/PartitionedCallÎ
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_10_412391*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/mul
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø%
ã
while_body_411792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_10_411816_0:	*
while_lstm_cell_10_411818_0:	.
while_lstm_cell_10_411820_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_10_411816:	(
while_lstm_cell_10_411818:	,
while_lstm_cell_10_411820:	 ¢*while/lstm_cell_10/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_411816_0while_lstm_cell_10_411818_0while_lstm_cell_10_411820_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4117142,
*while/lstm_cell_10/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_411816while_lstm_cell_10_411816_0"8
while_lstm_cell_10_411818while_lstm_cell_10_411818_0"8
while_lstm_cell_10_411820while_lstm_cell_10_411820_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
£"
ø
H__inference_sequential_4_layer_call_and_return_conditional_losses_412874

inputs!
lstm_10_412849:	
lstm_10_412851:	!
lstm_10_412853:	 !
dense_12_412856:  
dense_12_412858: !
dense_13_412861: 
dense_13_412863:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¡
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinputslstm_10_412849lstm_10_412851lstm_10_412853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4128162!
lstm_10/StatefulPartitionedCall¶
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_12_412856dense_12_412858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_4124092"
 dense_12/StatefulPartitionedCall·
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_412861dense_13_412863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_4124252"
 dense_13/StatefulPartitionedCallþ
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_4124442
reshape_6/PartitionedCallÎ
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_10_412849*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/mul
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
¤	
while_body_412651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_10_split_readvariableop_resource_0:	C
4while_lstm_cell_10_split_1_readvariableop_resource_0:	?
,while_lstm_cell_10_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_10_split_readvariableop_resource:	A
2while_lstm_cell_10_split_1_readvariableop_resource:	=
*while_lstm_cell_10_readvariableop_resource:	 ¢!while/lstm_cell_10/ReadVariableOp¢#while/lstm_cell_10/ReadVariableOp_1¢#while/lstm_cell_10/ReadVariableOp_2¢#while/lstm_cell_10/ReadVariableOp_3¢'while/lstm_cell_10/split/ReadVariableOp¢)while/lstm_cell_10/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_10/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/Shape
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_10/ones_like/ConstÐ
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/ones_like
 while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_10/dropout/ConstË
while/lstm_cell_10/dropout/MulMul%while/lstm_cell_10/ones_like:output:0)while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_10/dropout/Mul
 while/lstm_cell_10/dropout/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_10/dropout/Shape
7while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ËÐå29
7while/lstm_cell_10/dropout/random_uniform/RandomUniform
)while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_10/dropout/GreaterEqual/y
'while/lstm_cell_10/dropout/GreaterEqualGreaterEqual@while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_10/dropout/GreaterEqual¸
while/lstm_cell_10/dropout/CastCast+while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_10/dropout/CastÆ
 while/lstm_cell_10/dropout/Mul_1Mul"while/lstm_cell_10/dropout/Mul:z:0#while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout/Mul_1
"while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_1/ConstÑ
 while/lstm_cell_10/dropout_1/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_1/Mul
"while/lstm_cell_10/dropout_1/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_1/Shape
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2J2;
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_1/GreaterEqual/y
)while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_1/GreaterEqual¾
!while/lstm_cell_10/dropout_1/CastCast-while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_1/CastÎ
"while/lstm_cell_10/dropout_1/Mul_1Mul$while/lstm_cell_10/dropout_1/Mul:z:0%while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_1/Mul_1
"while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_2/ConstÑ
 while/lstm_cell_10/dropout_2/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_2/Mul
"while/lstm_cell_10/dropout_2/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_2/Shape
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2º 2;
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_2/GreaterEqual/y
)while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_2/GreaterEqual¾
!while/lstm_cell_10/dropout_2/CastCast-while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_2/CastÎ
"while/lstm_cell_10/dropout_2/Mul_1Mul$while/lstm_cell_10/dropout_2/Mul:z:0%while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_2/Mul_1
"while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_3/ConstÑ
 while/lstm_cell_10/dropout_3/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_3/Mul
"while/lstm_cell_10/dropout_3/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_3/Shape
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ãÒÙ2;
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_3/GreaterEqual/y
)while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_3/GreaterEqual¾
!while/lstm_cell_10/dropout_3/CastCast-while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_3/CastÎ
"while/lstm_cell_10/dropout_3/Mul_1Mul$while/lstm_cell_10/dropout_3/Mul:z:0%while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_3/Mul_1
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dimÆ
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_10/splitÇ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMulË
while/lstm_cell_10/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_1Ë
while/lstm_cell_10/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_2Ë
while/lstm_cell_10/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_3
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dimÈ
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpë
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1¿
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAddÅ
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_1Å
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_2Å
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_3¤
while/lstm_cell_10/mulMulwhile_placeholder_2$while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mulª
while/lstm_cell_10/mul_1Mulwhile_placeholder_2&while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/mul_2Mulwhile_placeholder_2&while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_2ª
while/lstm_cell_10/mul_3Mulwhile_placeholder_2&while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_3´
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_10/ReadVariableOp¡
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack¥
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1¥
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2î
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_slice½
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_4·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid¸
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_1¥
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ú
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Á
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_1:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_5½
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_1¤
while/lstm_cell_10/mul_4Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_4¸
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_2¥
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ú
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Á
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_2:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_6½
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_2
while/lstm_cell_10/ReluReluwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_5Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_5«
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_4:z:0while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_3¸
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_3¥
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ú
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Á
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_3:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_7½
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_4
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_6Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
§
¤	
while_body_414341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_10_split_readvariableop_resource_0:	C
4while_lstm_cell_10_split_1_readvariableop_resource_0:	?
,while_lstm_cell_10_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_10_split_readvariableop_resource:	A
2while_lstm_cell_10_split_1_readvariableop_resource:	=
*while_lstm_cell_10_readvariableop_resource:	 ¢!while/lstm_cell_10/ReadVariableOp¢#while/lstm_cell_10/ReadVariableOp_1¢#while/lstm_cell_10/ReadVariableOp_2¢#while/lstm_cell_10/ReadVariableOp_3¢'while/lstm_cell_10/split/ReadVariableOp¢)while/lstm_cell_10/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_10/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/Shape
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_10/ones_like/ConstÐ
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/ones_like
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dimÆ
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_10/splitÇ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMulË
while/lstm_cell_10/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_1Ë
while/lstm_cell_10/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_2Ë
while/lstm_cell_10/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_3
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dimÈ
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpë
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1¿
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAddÅ
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_1Å
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_2Å
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_3¥
while/lstm_cell_10/mulMulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul©
while/lstm_cell_10/mul_1Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/mul_2Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_2©
while/lstm_cell_10/mul_3Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_3´
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_10/ReadVariableOp¡
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack¥
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1¥
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2î
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_slice½
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_4·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid¸
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_1¥
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ú
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Á
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_1:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_5½
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_1¤
while/lstm_cell_10/mul_4Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_4¸
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_2¥
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ú
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Á
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_2:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_6½
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_2
while/lstm_cell_10/ReluReluwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_5Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_5«
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_4:z:0while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_3¸
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_3¥
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ú
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Á
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_3:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_7½
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_4
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_6Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¦"
ù
H__inference_sequential_4_layer_call_and_return_conditional_losses_412966
input_5!
lstm_10_412941:	
lstm_10_412943:	!
lstm_10_412945:	 !
dense_12_412948:  
dense_12_412950: !
dense_13_412953: 
dense_13_412955:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinput_5lstm_10_412941lstm_10_412943lstm_10_412945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4128162!
lstm_10/StatefulPartitionedCall¶
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_12_412948dense_12_412950*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_4124092"
 dense_12/StatefulPartitionedCall·
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_412953dense_13_412955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_4124252"
 dense_13/StatefulPartitionedCallþ
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_4124442
reshape_6/PartitionedCallÎ
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_10_412941*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/mul
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
¦

õ
D__inference_dense_13_layer_call_and_return_conditional_losses_412425

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
³	

$__inference_signature_wrapper_412999
input_5
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_4113572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
¹
è
H__inference_sequential_4_layer_call_and_return_conditional_losses_413631

inputsE
2lstm_10_lstm_cell_10_split_readvariableop_resource:	C
4lstm_10_lstm_cell_10_split_1_readvariableop_resource:	?
,lstm_10_lstm_cell_10_readvariableop_resource:	 9
'dense_12_matmul_readvariableop_resource:  6
(dense_12_biasadd_readvariableop_resource: 9
'dense_13_matmul_readvariableop_resource: 6
(dense_13_biasadd_readvariableop_resource:
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢#lstm_10/lstm_cell_10/ReadVariableOp¢%lstm_10/lstm_cell_10/ReadVariableOp_1¢%lstm_10/lstm_cell_10/ReadVariableOp_2¢%lstm_10/lstm_cell_10/ReadVariableOp_3¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢)lstm_10/lstm_cell_10/split/ReadVariableOp¢+lstm_10/lstm_cell_10/split_1/ReadVariableOp¢lstm_10/whileT
lstm_10/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_10/Shape
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice/stack
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_1
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_2
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slicel
lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros/mul/y
lstm_10/zeros/mulMullstm_10/strided_slice:output:0lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/mulo
lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros/Less/y
lstm_10/zeros/LessLesslstm_10/zeros/mul:z:0lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/Lessr
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros/packed/1£
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros/packedo
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros/Const
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/zerosp
lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros_1/mul/y
lstm_10/zeros_1/mulMullstm_10/strided_slice:output:0lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/muls
lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros_1/Less/y
lstm_10/zeros_1/LessLesslstm_10/zeros_1/mul:z:0lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/Lessv
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros_1/packed/1©
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros_1/packeds
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros_1/Const
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/zeros_1
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose/perm
lstm_10/transpose	Transposeinputslstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/transposeg
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:2
lstm_10/Shape_1
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_1/stack
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_1
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_2
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slice_1
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_10/TensorArrayV2/element_shapeÒ
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2Ï
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_10/TensorArrayUnstack/TensorListFromTensor
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_2/stack
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_1
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_2¬
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_10/strided_slice_2
$lstm_10/lstm_cell_10/ones_like/ShapeShapelstm_10/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_10/lstm_cell_10/ones_like/Shape
$lstm_10/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_10/lstm_cell_10/ones_like/ConstØ
lstm_10/lstm_cell_10/ones_likeFill-lstm_10/lstm_cell_10/ones_like/Shape:output:0-lstm_10/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/ones_like
"lstm_10/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"lstm_10/lstm_cell_10/dropout/ConstÓ
 lstm_10/lstm_cell_10/dropout/MulMul'lstm_10/lstm_cell_10/ones_like:output:0+lstm_10/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/lstm_cell_10/dropout/Mul
"lstm_10/lstm_cell_10/dropout/ShapeShape'lstm_10/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_10/lstm_cell_10/dropout/Shape
9lstm_10/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform+lstm_10/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2áÌs2;
9lstm_10/lstm_cell_10/dropout/random_uniform/RandomUniform
+lstm_10/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+lstm_10/lstm_cell_10/dropout/GreaterEqual/y
)lstm_10/lstm_cell_10/dropout/GreaterEqualGreaterEqualBlstm_10/lstm_cell_10/dropout/random_uniform/RandomUniform:output:04lstm_10/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_10/lstm_cell_10/dropout/GreaterEqual¾
!lstm_10/lstm_cell_10/dropout/CastCast-lstm_10/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_10/lstm_cell_10/dropout/CastÎ
"lstm_10/lstm_cell_10/dropout/Mul_1Mul$lstm_10/lstm_cell_10/dropout/Mul:z:0%lstm_10/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/lstm_cell_10/dropout/Mul_1
$lstm_10/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_10/lstm_cell_10/dropout_1/ConstÙ
"lstm_10/lstm_cell_10/dropout_1/MulMul'lstm_10/lstm_cell_10/ones_like:output:0-lstm_10/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/lstm_cell_10/dropout_1/Mul£
$lstm_10/lstm_cell_10/dropout_1/ShapeShape'lstm_10/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_10/lstm_cell_10/dropout_1/Shape
;lstm_10/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_10/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2îå72=
;lstm_10/lstm_cell_10/dropout_1/random_uniform/RandomUniform£
-lstm_10/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_10/lstm_cell_10/dropout_1/GreaterEqual/y
+lstm_10/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualDlstm_10/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:06lstm_10/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_10/lstm_cell_10/dropout_1/GreaterEqualÄ
#lstm_10/lstm_cell_10/dropout_1/CastCast/lstm_10/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/lstm_cell_10/dropout_1/CastÖ
$lstm_10/lstm_cell_10/dropout_1/Mul_1Mul&lstm_10/lstm_cell_10/dropout_1/Mul:z:0'lstm_10/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/lstm_cell_10/dropout_1/Mul_1
$lstm_10/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_10/lstm_cell_10/dropout_2/ConstÙ
"lstm_10/lstm_cell_10/dropout_2/MulMul'lstm_10/lstm_cell_10/ones_like:output:0-lstm_10/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/lstm_cell_10/dropout_2/Mul£
$lstm_10/lstm_cell_10/dropout_2/ShapeShape'lstm_10/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_10/lstm_cell_10/dropout_2/Shape
;lstm_10/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_10/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¯Ú2=
;lstm_10/lstm_cell_10/dropout_2/random_uniform/RandomUniform£
-lstm_10/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_10/lstm_cell_10/dropout_2/GreaterEqual/y
+lstm_10/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualDlstm_10/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:06lstm_10/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_10/lstm_cell_10/dropout_2/GreaterEqualÄ
#lstm_10/lstm_cell_10/dropout_2/CastCast/lstm_10/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/lstm_cell_10/dropout_2/CastÖ
$lstm_10/lstm_cell_10/dropout_2/Mul_1Mul&lstm_10/lstm_cell_10/dropout_2/Mul:z:0'lstm_10/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/lstm_cell_10/dropout_2/Mul_1
$lstm_10/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_10/lstm_cell_10/dropout_3/ConstÙ
"lstm_10/lstm_cell_10/dropout_3/MulMul'lstm_10/lstm_cell_10/ones_like:output:0-lstm_10/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/lstm_cell_10/dropout_3/Mul£
$lstm_10/lstm_cell_10/dropout_3/ShapeShape'lstm_10/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_10/lstm_cell_10/dropout_3/Shape
;lstm_10/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_10/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2°2=
;lstm_10/lstm_cell_10/dropout_3/random_uniform/RandomUniform£
-lstm_10/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_10/lstm_cell_10/dropout_3/GreaterEqual/y
+lstm_10/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualDlstm_10/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:06lstm_10/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_10/lstm_cell_10/dropout_3/GreaterEqualÄ
#lstm_10/lstm_cell_10/dropout_3/CastCast/lstm_10/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/lstm_cell_10/dropout_3/CastÖ
$lstm_10/lstm_cell_10/dropout_3/Mul_1Mul&lstm_10/lstm_cell_10/dropout_3/Mul:z:0'lstm_10/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/lstm_cell_10/dropout_3/Mul_1
$lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_10/lstm_cell_10/split/split_dimÊ
)lstm_10/lstm_cell_10/split/ReadVariableOpReadVariableOp2lstm_10_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_10/lstm_cell_10/split/ReadVariableOpû
lstm_10/lstm_cell_10/splitSplit-lstm_10/lstm_cell_10/split/split_dim:output:01lstm_10/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_10/lstm_cell_10/split½
lstm_10/lstm_cell_10/MatMulMatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMulÁ
lstm_10/lstm_cell_10/MatMul_1MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_1Á
lstm_10/lstm_cell_10/MatMul_2MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_2Á
lstm_10/lstm_cell_10/MatMul_3MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_3
&lstm_10/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_10/lstm_cell_10/split_1/split_dimÌ
+lstm_10/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_10/lstm_cell_10/split_1/ReadVariableOpó
lstm_10/lstm_cell_10/split_1Split/lstm_10/lstm_cell_10/split_1/split_dim:output:03lstm_10/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_10/lstm_cell_10/split_1Ç
lstm_10/lstm_cell_10/BiasAddBiasAdd%lstm_10/lstm_cell_10/MatMul:product:0%lstm_10/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/BiasAddÍ
lstm_10/lstm_cell_10/BiasAdd_1BiasAdd'lstm_10/lstm_cell_10/MatMul_1:product:0%lstm_10/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/BiasAdd_1Í
lstm_10/lstm_cell_10/BiasAdd_2BiasAdd'lstm_10/lstm_cell_10/MatMul_2:product:0%lstm_10/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/BiasAdd_2Í
lstm_10/lstm_cell_10/BiasAdd_3BiasAdd'lstm_10/lstm_cell_10/MatMul_3:product:0%lstm_10/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/BiasAdd_3­
lstm_10/lstm_cell_10/mulMullstm_10/zeros:output:0&lstm_10/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul³
lstm_10/lstm_cell_10/mul_1Mullstm_10/zeros:output:0(lstm_10/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_1³
lstm_10/lstm_cell_10/mul_2Mullstm_10/zeros:output:0(lstm_10/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_2³
lstm_10/lstm_cell_10/mul_3Mullstm_10/zeros:output:0(lstm_10/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_3¸
#lstm_10/lstm_cell_10/ReadVariableOpReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_10/lstm_cell_10/ReadVariableOp¥
(lstm_10/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_10/lstm_cell_10/strided_slice/stack©
*lstm_10/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_10/lstm_cell_10/strided_slice/stack_1©
*lstm_10/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_10/lstm_cell_10/strided_slice/stack_2ú
"lstm_10/lstm_cell_10/strided_sliceStridedSlice+lstm_10/lstm_cell_10/ReadVariableOp:value:01lstm_10/lstm_cell_10/strided_slice/stack:output:03lstm_10/lstm_cell_10/strided_slice/stack_1:output:03lstm_10/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_10/lstm_cell_10/strided_sliceÅ
lstm_10/lstm_cell_10/MatMul_4MatMullstm_10/lstm_cell_10/mul:z:0+lstm_10/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_4¿
lstm_10/lstm_cell_10/addAddV2%lstm_10/lstm_cell_10/BiasAdd:output:0'lstm_10/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add
lstm_10/lstm_cell_10/SigmoidSigmoidlstm_10/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/Sigmoid¼
%lstm_10/lstm_cell_10/ReadVariableOp_1ReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_10/lstm_cell_10/ReadVariableOp_1©
*lstm_10/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_10/lstm_cell_10/strided_slice_1/stack­
,lstm_10/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_10/lstm_cell_10/strided_slice_1/stack_1­
,lstm_10/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_10/lstm_cell_10/strided_slice_1/stack_2
$lstm_10/lstm_cell_10/strided_slice_1StridedSlice-lstm_10/lstm_cell_10/ReadVariableOp_1:value:03lstm_10/lstm_cell_10/strided_slice_1/stack:output:05lstm_10/lstm_cell_10/strided_slice_1/stack_1:output:05lstm_10/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_10/lstm_cell_10/strided_slice_1É
lstm_10/lstm_cell_10/MatMul_5MatMullstm_10/lstm_cell_10/mul_1:z:0-lstm_10/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_5Å
lstm_10/lstm_cell_10/add_1AddV2'lstm_10/lstm_cell_10/BiasAdd_1:output:0'lstm_10/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_1
lstm_10/lstm_cell_10/Sigmoid_1Sigmoidlstm_10/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/Sigmoid_1¯
lstm_10/lstm_cell_10/mul_4Mul"lstm_10/lstm_cell_10/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_4¼
%lstm_10/lstm_cell_10/ReadVariableOp_2ReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_10/lstm_cell_10/ReadVariableOp_2©
*lstm_10/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_10/lstm_cell_10/strided_slice_2/stack­
,lstm_10/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_10/lstm_cell_10/strided_slice_2/stack_1­
,lstm_10/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_10/lstm_cell_10/strided_slice_2/stack_2
$lstm_10/lstm_cell_10/strided_slice_2StridedSlice-lstm_10/lstm_cell_10/ReadVariableOp_2:value:03lstm_10/lstm_cell_10/strided_slice_2/stack:output:05lstm_10/lstm_cell_10/strided_slice_2/stack_1:output:05lstm_10/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_10/lstm_cell_10/strided_slice_2É
lstm_10/lstm_cell_10/MatMul_6MatMullstm_10/lstm_cell_10/mul_2:z:0-lstm_10/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_6Å
lstm_10/lstm_cell_10/add_2AddV2'lstm_10/lstm_cell_10/BiasAdd_2:output:0'lstm_10/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_2
lstm_10/lstm_cell_10/ReluRelulstm_10/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/Relu¼
lstm_10/lstm_cell_10/mul_5Mul lstm_10/lstm_cell_10/Sigmoid:y:0'lstm_10/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_5³
lstm_10/lstm_cell_10/add_3AddV2lstm_10/lstm_cell_10/mul_4:z:0lstm_10/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_3¼
%lstm_10/lstm_cell_10/ReadVariableOp_3ReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_10/lstm_cell_10/ReadVariableOp_3©
*lstm_10/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_10/lstm_cell_10/strided_slice_3/stack­
,lstm_10/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_10/lstm_cell_10/strided_slice_3/stack_1­
,lstm_10/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_10/lstm_cell_10/strided_slice_3/stack_2
$lstm_10/lstm_cell_10/strided_slice_3StridedSlice-lstm_10/lstm_cell_10/ReadVariableOp_3:value:03lstm_10/lstm_cell_10/strided_slice_3/stack:output:05lstm_10/lstm_cell_10/strided_slice_3/stack_1:output:05lstm_10/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_10/lstm_cell_10/strided_slice_3É
lstm_10/lstm_cell_10/MatMul_7MatMullstm_10/lstm_cell_10/mul_3:z:0-lstm_10/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_7Å
lstm_10/lstm_cell_10/add_4AddV2'lstm_10/lstm_cell_10/BiasAdd_3:output:0'lstm_10/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_4
lstm_10/lstm_cell_10/Sigmoid_2Sigmoidlstm_10/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/Sigmoid_2
lstm_10/lstm_cell_10/Relu_1Relulstm_10/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/Relu_1À
lstm_10/lstm_cell_10/mul_6Mul"lstm_10/lstm_cell_10/Sigmoid_2:y:0)lstm_10/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_6
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_10/TensorArrayV2_1/element_shapeØ
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2_1^
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/time
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/maximum_iterationsz
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/while/loop_counterù
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_10_lstm_cell_10_split_readvariableop_resource4lstm_10_lstm_cell_10_split_1_readvariableop_resource,lstm_10_lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_10_while_body_413444*%
condR
lstm_10_while_cond_413443*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_10/whileÅ
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_10/TensorArrayV2Stack/TensorListStack
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_10/strided_slice_3/stack
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_10/strided_slice_3/stack_1
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_3/stack_2Ê
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_10/strided_slice_3
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose_1/permÅ
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/transpose_1v
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/runtime¨
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_12/MatMul/ReadVariableOp¨
dense_12/MatMulMatMul lstm_10/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_12/Relu¨
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_13/MatMul/ReadVariableOp£
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/MatMul§
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp¥
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/BiasAddk
reshape_6/ShapeShapedense_13/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_6/Shape
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2Ò
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape¤
reshape_6/ReshapeReshapedense_13/BiasAdd:output:0 reshape_6/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_6/Reshapeò
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_10_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muly
IdentityIdentityreshape_6/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp$^lstm_10/lstm_cell_10/ReadVariableOp&^lstm_10/lstm_cell_10/ReadVariableOp_1&^lstm_10/lstm_cell_10/ReadVariableOp_2&^lstm_10/lstm_cell_10/ReadVariableOp_3>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*^lstm_10/lstm_cell_10/split/ReadVariableOp,^lstm_10/lstm_cell_10/split_1/ReadVariableOp^lstm_10/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2J
#lstm_10/lstm_cell_10/ReadVariableOp#lstm_10/lstm_cell_10/ReadVariableOp2N
%lstm_10/lstm_cell_10/ReadVariableOp_1%lstm_10/lstm_cell_10/ReadVariableOp_12N
%lstm_10/lstm_cell_10/ReadVariableOp_2%lstm_10/lstm_cell_10/ReadVariableOp_22N
%lstm_10/lstm_cell_10/ReadVariableOp_3%lstm_10/lstm_cell_10/ReadVariableOp_32~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_10/lstm_cell_10/split/ReadVariableOp)lstm_10/lstm_cell_10/split/ReadVariableOp2Z
+lstm_10/lstm_cell_10/split_1/ReadVariableOp+lstm_10/lstm_cell_10/split_1/ReadVariableOp2
lstm_10/whilelstm_10/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

)__inference_dense_13_layer_call_fn_414810

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_4124252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÞR
ë
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_414959

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_liked
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_3a
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mule
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1e
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2e
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_6Ý
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
¶
ö
-__inference_lstm_cell_10_layer_call_fn_414861

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4114812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1

õ
D__inference_dense_12_layer_call_and_return_conditional_losses_414801

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ü
¼
lstm_10_while_body_413147,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_10_while_lstm_cell_10_split_readvariableop_resource_0:	K
<lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0:	G
4lstm_10_while_lstm_cell_10_readvariableop_resource_0:	 
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorK
8lstm_10_while_lstm_cell_10_split_readvariableop_resource:	I
:lstm_10_while_lstm_cell_10_split_1_readvariableop_resource:	E
2lstm_10_while_lstm_cell_10_readvariableop_resource:	 ¢)lstm_10/while/lstm_cell_10/ReadVariableOp¢+lstm_10/while/lstm_cell_10/ReadVariableOp_1¢+lstm_10/while/lstm_cell_10/ReadVariableOp_2¢+lstm_10/while/lstm_cell_10/ReadVariableOp_3¢/lstm_10/while/lstm_cell_10/split/ReadVariableOp¢1lstm_10/while/lstm_cell_10/split_1/ReadVariableOpÓ
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_10/while/TensorArrayV2Read/TensorListGetItem£
*lstm_10/while/lstm_cell_10/ones_like/ShapeShapelstm_10_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_10/while/lstm_cell_10/ones_like/Shape
*lstm_10/while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_10/while/lstm_cell_10/ones_like/Constð
$lstm_10/while/lstm_cell_10/ones_likeFill3lstm_10/while/lstm_cell_10/ones_like/Shape:output:03lstm_10/while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/ones_like
*lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_10/while/lstm_cell_10/split/split_dimÞ
/lstm_10/while/lstm_cell_10/split/ReadVariableOpReadVariableOp:lstm_10_while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_10/while/lstm_cell_10/split/ReadVariableOp
 lstm_10/while/lstm_cell_10/splitSplit3lstm_10/while/lstm_cell_10/split/split_dim:output:07lstm_10/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_10/while/lstm_cell_10/splitç
!lstm_10/while/lstm_cell_10/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_10/while/lstm_cell_10/MatMulë
#lstm_10/while/lstm_cell_10/MatMul_1MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_1ë
#lstm_10/while/lstm_cell_10/MatMul_2MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_2ë
#lstm_10/while/lstm_cell_10/MatMul_3MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_3
,lstm_10/while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_10/while/lstm_cell_10/split_1/split_dimà
1lstm_10/while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_10/while/lstm_cell_10/split_1/ReadVariableOp
"lstm_10/while/lstm_cell_10/split_1Split5lstm_10/while/lstm_cell_10/split_1/split_dim:output:09lstm_10/while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_10/while/lstm_cell_10/split_1ß
"lstm_10/while/lstm_cell_10/BiasAddBiasAdd+lstm_10/while/lstm_cell_10/MatMul:product:0+lstm_10/while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/while/lstm_cell_10/BiasAddå
$lstm_10/while/lstm_cell_10/BiasAdd_1BiasAdd-lstm_10/while/lstm_cell_10/MatMul_1:product:0+lstm_10/while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/BiasAdd_1å
$lstm_10/while/lstm_cell_10/BiasAdd_2BiasAdd-lstm_10/while/lstm_cell_10/MatMul_2:product:0+lstm_10/while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/BiasAdd_2å
$lstm_10/while/lstm_cell_10/BiasAdd_3BiasAdd-lstm_10/while/lstm_cell_10/MatMul_3:product:0+lstm_10/while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/BiasAdd_3Å
lstm_10/while/lstm_cell_10/mulMullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/while/lstm_cell_10/mulÉ
 lstm_10/while/lstm_cell_10/mul_1Mullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_1É
 lstm_10/while/lstm_cell_10/mul_2Mullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_2É
 lstm_10/while/lstm_cell_10/mul_3Mullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_3Ì
)lstm_10/while/lstm_cell_10/ReadVariableOpReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_10/while/lstm_cell_10/ReadVariableOp±
.lstm_10/while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_10/while/lstm_cell_10/strided_slice/stackµ
0lstm_10/while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_10/while/lstm_cell_10/strided_slice/stack_1µ
0lstm_10/while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_10/while/lstm_cell_10/strided_slice/stack_2
(lstm_10/while/lstm_cell_10/strided_sliceStridedSlice1lstm_10/while/lstm_cell_10/ReadVariableOp:value:07lstm_10/while/lstm_cell_10/strided_slice/stack:output:09lstm_10/while/lstm_cell_10/strided_slice/stack_1:output:09lstm_10/while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_10/while/lstm_cell_10/strided_sliceÝ
#lstm_10/while/lstm_cell_10/MatMul_4MatMul"lstm_10/while/lstm_cell_10/mul:z:01lstm_10/while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_4×
lstm_10/while/lstm_cell_10/addAddV2+lstm_10/while/lstm_cell_10/BiasAdd:output:0-lstm_10/while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/while/lstm_cell_10/add©
"lstm_10/while/lstm_cell_10/SigmoidSigmoid"lstm_10/while/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_10/while/lstm_cell_10/SigmoidÐ
+lstm_10/while/lstm_cell_10/ReadVariableOp_1ReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_10/while/lstm_cell_10/ReadVariableOp_1µ
0lstm_10/while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_10/while/lstm_cell_10/strided_slice_1/stack¹
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_1¹
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_10/while/lstm_cell_10/strided_slice_1/stack_2ª
*lstm_10/while/lstm_cell_10/strided_slice_1StridedSlice3lstm_10/while/lstm_cell_10/ReadVariableOp_1:value:09lstm_10/while/lstm_cell_10/strided_slice_1/stack:output:0;lstm_10/while/lstm_cell_10/strided_slice_1/stack_1:output:0;lstm_10/while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_10/while/lstm_cell_10/strided_slice_1á
#lstm_10/while/lstm_cell_10/MatMul_5MatMul$lstm_10/while/lstm_cell_10/mul_1:z:03lstm_10/while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_5Ý
 lstm_10/while/lstm_cell_10/add_1AddV2-lstm_10/while/lstm_cell_10/BiasAdd_1:output:0-lstm_10/while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_1¯
$lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid$lstm_10/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/Sigmoid_1Ä
 lstm_10/while/lstm_cell_10/mul_4Mul(lstm_10/while/lstm_cell_10/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_4Ð
+lstm_10/while/lstm_cell_10/ReadVariableOp_2ReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_10/while/lstm_cell_10/ReadVariableOp_2µ
0lstm_10/while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_10/while/lstm_cell_10/strided_slice_2/stack¹
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_1¹
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_10/while/lstm_cell_10/strided_slice_2/stack_2ª
*lstm_10/while/lstm_cell_10/strided_slice_2StridedSlice3lstm_10/while/lstm_cell_10/ReadVariableOp_2:value:09lstm_10/while/lstm_cell_10/strided_slice_2/stack:output:0;lstm_10/while/lstm_cell_10/strided_slice_2/stack_1:output:0;lstm_10/while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_10/while/lstm_cell_10/strided_slice_2á
#lstm_10/while/lstm_cell_10/MatMul_6MatMul$lstm_10/while/lstm_cell_10/mul_2:z:03lstm_10/while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_6Ý
 lstm_10/while/lstm_cell_10/add_2AddV2-lstm_10/while/lstm_cell_10/BiasAdd_2:output:0-lstm_10/while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_2¢
lstm_10/while/lstm_cell_10/ReluRelu$lstm_10/while/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_10/while/lstm_cell_10/ReluÔ
 lstm_10/while/lstm_cell_10/mul_5Mul&lstm_10/while/lstm_cell_10/Sigmoid:y:0-lstm_10/while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_5Ë
 lstm_10/while/lstm_cell_10/add_3AddV2$lstm_10/while/lstm_cell_10/mul_4:z:0$lstm_10/while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_3Ð
+lstm_10/while/lstm_cell_10/ReadVariableOp_3ReadVariableOp4lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_10/while/lstm_cell_10/ReadVariableOp_3µ
0lstm_10/while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_10/while/lstm_cell_10/strided_slice_3/stack¹
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_1¹
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_10/while/lstm_cell_10/strided_slice_3/stack_2ª
*lstm_10/while/lstm_cell_10/strided_slice_3StridedSlice3lstm_10/while/lstm_cell_10/ReadVariableOp_3:value:09lstm_10/while/lstm_cell_10/strided_slice_3/stack:output:0;lstm_10/while/lstm_cell_10/strided_slice_3/stack_1:output:0;lstm_10/while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_10/while/lstm_cell_10/strided_slice_3á
#lstm_10/while/lstm_cell_10/MatMul_7MatMul$lstm_10/while/lstm_cell_10/mul_3:z:03lstm_10/while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_10/while/lstm_cell_10/MatMul_7Ý
 lstm_10/while/lstm_cell_10/add_4AddV2-lstm_10/while/lstm_cell_10/BiasAdd_3:output:0-lstm_10/while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/add_4¯
$lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid$lstm_10/while/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_10/while/lstm_cell_10/Sigmoid_2¦
!lstm_10/while/lstm_cell_10/Relu_1Relu$lstm_10/while/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_10/while/lstm_cell_10/Relu_1Ø
 lstm_10/while/lstm_cell_10/mul_6Mul(lstm_10/while/lstm_cell_10/Sigmoid_2:y:0/lstm_10/while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_10/while/lstm_cell_10/mul_6
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_10/while/TensorArrayV2Write/TensorListSetIteml
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add/y
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/addp
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add_1/y
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/add_1
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity¦
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_1
lstm_10/while/Identity_2Identitylstm_10/while/add:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_2º
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_3­
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_10/mul_6:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/while/Identity_4­
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_10/add_3:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/while/Identity_5
lstm_10/while/NoOpNoOp*^lstm_10/while/lstm_cell_10/ReadVariableOp,^lstm_10/while/lstm_cell_10/ReadVariableOp_1,^lstm_10/while/lstm_cell_10/ReadVariableOp_2,^lstm_10/while/lstm_cell_10/ReadVariableOp_30^lstm_10/while/lstm_cell_10/split/ReadVariableOp2^lstm_10/while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_10/while/NoOp"9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"j
2lstm_10_while_lstm_cell_10_readvariableop_resource4lstm_10_while_lstm_cell_10_readvariableop_resource_0"z
:lstm_10_while_lstm_cell_10_split_1_readvariableop_resource<lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0"v
8lstm_10_while_lstm_cell_10_split_readvariableop_resource:lstm_10_while_lstm_cell_10_split_readvariableop_resource_0"È
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_10/while/lstm_cell_10/ReadVariableOp)lstm_10/while/lstm_cell_10/ReadVariableOp2Z
+lstm_10/while/lstm_cell_10/ReadVariableOp_1+lstm_10/while/lstm_cell_10/ReadVariableOp_12Z
+lstm_10/while/lstm_cell_10/ReadVariableOp_2+lstm_10/while/lstm_cell_10/ReadVariableOp_22Z
+lstm_10/while/lstm_cell_10/ReadVariableOp_3+lstm_10/while/lstm_cell_10/ReadVariableOp_32b
/lstm_10/while/lstm_cell_10/split/ReadVariableOp/lstm_10/while/lstm_cell_10/split/ReadVariableOp2f
1lstm_10/while/lstm_cell_10/split_1/ReadVariableOp1lstm_10/while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Æ
F
*__inference_reshape_6_layer_call_fn_414825

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_4124442
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

ã
lstm_10_while_cond_413146,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1D
@lstm_10_while_lstm_10_while_cond_413146___redundant_placeholder0D
@lstm_10_while_lstm_10_while_cond_413146___redundant_placeholder1D
@lstm_10_while_lstm_10_while_cond_413146___redundant_placeholder2D
@lstm_10_while_lstm_10_while_cond_413146___redundant_placeholder3
lstm_10_while_identity

lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2
lstm_10/while/Lessu
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_10/while/Identity"9
lstm_10_while_identitylstm_10/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:

a
E__inference_reshape_6_layer_call_and_return_conditional_losses_414838

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2 
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
òA
â
__inference__traced_save_415190
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_10_lstm_cell_10_kernel_read_readvariableopD
@savev2_lstm_10_lstm_cell_10_recurrent_kernel_read_readvariableop8
4savev2_lstm_10_lstm_cell_10_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_10_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_10_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_10_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_10_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameö
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueþBûB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÜ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_10_lstm_cell_10_kernel_read_readvariableop@savev2_lstm_10_lstm_cell_10_recurrent_kernel_read_readvariableop4savev2_lstm_10_lstm_cell_10_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop=savev2_adam_lstm_10_lstm_cell_10_kernel_m_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_10_lstm_cell_10_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop=savev2_adam_lstm_10_lstm_cell_10_kernel_v_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_10_lstm_cell_10_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Þ
_input_shapesÌ
É: :  : : :: : : : : :	:	 :: : :  : : ::	:	 ::  : : ::	:	 :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	:%!

_output_shapes
:	 :!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	 :!

_output_shapes	
::$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	 :!

_output_shapes	
::

_output_shapes
: 
Õ
Ã
while_cond_414615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414615___redundant_placeholder04
0while_while_cond_414615___redundant_placeholder14
0while_while_cond_414615___redundant_placeholder24
0while_while_cond_414615___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
§
¤	
while_body_413791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_10_split_readvariableop_resource_0:	C
4while_lstm_cell_10_split_1_readvariableop_resource_0:	?
,while_lstm_cell_10_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_10_split_readvariableop_resource:	A
2while_lstm_cell_10_split_1_readvariableop_resource:	=
*while_lstm_cell_10_readvariableop_resource:	 ¢!while/lstm_cell_10/ReadVariableOp¢#while/lstm_cell_10/ReadVariableOp_1¢#while/lstm_cell_10/ReadVariableOp_2¢#while/lstm_cell_10/ReadVariableOp_3¢'while/lstm_cell_10/split/ReadVariableOp¢)while/lstm_cell_10/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_10/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/Shape
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_10/ones_like/ConstÐ
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/ones_like
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dimÆ
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_10/splitÇ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMulË
while/lstm_cell_10/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_1Ë
while/lstm_cell_10/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_2Ë
while/lstm_cell_10/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_3
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dimÈ
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpë
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1¿
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAddÅ
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_1Å
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_2Å
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_3¥
while/lstm_cell_10/mulMulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul©
while/lstm_cell_10/mul_1Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/mul_2Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_2©
while/lstm_cell_10/mul_3Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_3´
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_10/ReadVariableOp¡
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack¥
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1¥
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2î
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_slice½
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_4·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid¸
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_1¥
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ú
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Á
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_1:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_5½
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_1¤
while/lstm_cell_10/mul_4Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_4¸
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_2¥
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ú
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Á
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_2:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_6½
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_2
while/lstm_cell_10/ReluReluwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_5Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_5«
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_4:z:0while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_3¸
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_3¥
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ú
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Á
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_3:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_7½
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_4
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_6Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_411791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411791___redundant_placeholder04
0while_while_cond_411791___redundant_placeholder14
0while_while_cond_411791___redundant_placeholder24
0while_while_cond_411791___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
×
è
H__inference_sequential_4_layer_call_and_return_conditional_losses_413302

inputsE
2lstm_10_lstm_cell_10_split_readvariableop_resource:	C
4lstm_10_lstm_cell_10_split_1_readvariableop_resource:	?
,lstm_10_lstm_cell_10_readvariableop_resource:	 9
'dense_12_matmul_readvariableop_resource:  6
(dense_12_biasadd_readvariableop_resource: 9
'dense_13_matmul_readvariableop_resource: 6
(dense_13_biasadd_readvariableop_resource:
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢#lstm_10/lstm_cell_10/ReadVariableOp¢%lstm_10/lstm_cell_10/ReadVariableOp_1¢%lstm_10/lstm_cell_10/ReadVariableOp_2¢%lstm_10/lstm_cell_10/ReadVariableOp_3¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢)lstm_10/lstm_cell_10/split/ReadVariableOp¢+lstm_10/lstm_cell_10/split_1/ReadVariableOp¢lstm_10/whileT
lstm_10/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_10/Shape
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice/stack
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_1
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_2
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slicel
lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros/mul/y
lstm_10/zeros/mulMullstm_10/strided_slice:output:0lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/mulo
lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros/Less/y
lstm_10/zeros/LessLesslstm_10/zeros/mul:z:0lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/Lessr
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros/packed/1£
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros/packedo
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros/Const
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/zerosp
lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros_1/mul/y
lstm_10/zeros_1/mulMullstm_10/strided_slice:output:0lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/muls
lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros_1/Less/y
lstm_10/zeros_1/LessLesslstm_10/zeros_1/mul:z:0lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/Lessv
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/zeros_1/packed/1©
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros_1/packeds
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros_1/Const
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/zeros_1
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose/perm
lstm_10/transpose	Transposeinputslstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/transposeg
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:2
lstm_10/Shape_1
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_1/stack
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_1
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_2
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slice_1
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_10/TensorArrayV2/element_shapeÒ
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2Ï
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_10/TensorArrayUnstack/TensorListFromTensor
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_2/stack
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_1
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_2¬
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_10/strided_slice_2
$lstm_10/lstm_cell_10/ones_like/ShapeShapelstm_10/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_10/lstm_cell_10/ones_like/Shape
$lstm_10/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_10/lstm_cell_10/ones_like/ConstØ
lstm_10/lstm_cell_10/ones_likeFill-lstm_10/lstm_cell_10/ones_like/Shape:output:0-lstm_10/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/ones_like
$lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_10/lstm_cell_10/split/split_dimÊ
)lstm_10/lstm_cell_10/split/ReadVariableOpReadVariableOp2lstm_10_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_10/lstm_cell_10/split/ReadVariableOpû
lstm_10/lstm_cell_10/splitSplit-lstm_10/lstm_cell_10/split/split_dim:output:01lstm_10/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_10/lstm_cell_10/split½
lstm_10/lstm_cell_10/MatMulMatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMulÁ
lstm_10/lstm_cell_10/MatMul_1MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_1Á
lstm_10/lstm_cell_10/MatMul_2MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_2Á
lstm_10/lstm_cell_10/MatMul_3MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_3
&lstm_10/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_10/lstm_cell_10/split_1/split_dimÌ
+lstm_10/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_10/lstm_cell_10/split_1/ReadVariableOpó
lstm_10/lstm_cell_10/split_1Split/lstm_10/lstm_cell_10/split_1/split_dim:output:03lstm_10/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_10/lstm_cell_10/split_1Ç
lstm_10/lstm_cell_10/BiasAddBiasAdd%lstm_10/lstm_cell_10/MatMul:product:0%lstm_10/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/BiasAddÍ
lstm_10/lstm_cell_10/BiasAdd_1BiasAdd'lstm_10/lstm_cell_10/MatMul_1:product:0%lstm_10/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/BiasAdd_1Í
lstm_10/lstm_cell_10/BiasAdd_2BiasAdd'lstm_10/lstm_cell_10/MatMul_2:product:0%lstm_10/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/BiasAdd_2Í
lstm_10/lstm_cell_10/BiasAdd_3BiasAdd'lstm_10/lstm_cell_10/MatMul_3:product:0%lstm_10/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/BiasAdd_3®
lstm_10/lstm_cell_10/mulMullstm_10/zeros:output:0'lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul²
lstm_10/lstm_cell_10/mul_1Mullstm_10/zeros:output:0'lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_1²
lstm_10/lstm_cell_10/mul_2Mullstm_10/zeros:output:0'lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_2²
lstm_10/lstm_cell_10/mul_3Mullstm_10/zeros:output:0'lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_3¸
#lstm_10/lstm_cell_10/ReadVariableOpReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_10/lstm_cell_10/ReadVariableOp¥
(lstm_10/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_10/lstm_cell_10/strided_slice/stack©
*lstm_10/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_10/lstm_cell_10/strided_slice/stack_1©
*lstm_10/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_10/lstm_cell_10/strided_slice/stack_2ú
"lstm_10/lstm_cell_10/strided_sliceStridedSlice+lstm_10/lstm_cell_10/ReadVariableOp:value:01lstm_10/lstm_cell_10/strided_slice/stack:output:03lstm_10/lstm_cell_10/strided_slice/stack_1:output:03lstm_10/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_10/lstm_cell_10/strided_sliceÅ
lstm_10/lstm_cell_10/MatMul_4MatMullstm_10/lstm_cell_10/mul:z:0+lstm_10/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_4¿
lstm_10/lstm_cell_10/addAddV2%lstm_10/lstm_cell_10/BiasAdd:output:0'lstm_10/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add
lstm_10/lstm_cell_10/SigmoidSigmoidlstm_10/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/Sigmoid¼
%lstm_10/lstm_cell_10/ReadVariableOp_1ReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_10/lstm_cell_10/ReadVariableOp_1©
*lstm_10/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_10/lstm_cell_10/strided_slice_1/stack­
,lstm_10/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_10/lstm_cell_10/strided_slice_1/stack_1­
,lstm_10/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_10/lstm_cell_10/strided_slice_1/stack_2
$lstm_10/lstm_cell_10/strided_slice_1StridedSlice-lstm_10/lstm_cell_10/ReadVariableOp_1:value:03lstm_10/lstm_cell_10/strided_slice_1/stack:output:05lstm_10/lstm_cell_10/strided_slice_1/stack_1:output:05lstm_10/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_10/lstm_cell_10/strided_slice_1É
lstm_10/lstm_cell_10/MatMul_5MatMullstm_10/lstm_cell_10/mul_1:z:0-lstm_10/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_5Å
lstm_10/lstm_cell_10/add_1AddV2'lstm_10/lstm_cell_10/BiasAdd_1:output:0'lstm_10/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_1
lstm_10/lstm_cell_10/Sigmoid_1Sigmoidlstm_10/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/Sigmoid_1¯
lstm_10/lstm_cell_10/mul_4Mul"lstm_10/lstm_cell_10/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_4¼
%lstm_10/lstm_cell_10/ReadVariableOp_2ReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_10/lstm_cell_10/ReadVariableOp_2©
*lstm_10/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_10/lstm_cell_10/strided_slice_2/stack­
,lstm_10/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_10/lstm_cell_10/strided_slice_2/stack_1­
,lstm_10/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_10/lstm_cell_10/strided_slice_2/stack_2
$lstm_10/lstm_cell_10/strided_slice_2StridedSlice-lstm_10/lstm_cell_10/ReadVariableOp_2:value:03lstm_10/lstm_cell_10/strided_slice_2/stack:output:05lstm_10/lstm_cell_10/strided_slice_2/stack_1:output:05lstm_10/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_10/lstm_cell_10/strided_slice_2É
lstm_10/lstm_cell_10/MatMul_6MatMullstm_10/lstm_cell_10/mul_2:z:0-lstm_10/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_6Å
lstm_10/lstm_cell_10/add_2AddV2'lstm_10/lstm_cell_10/BiasAdd_2:output:0'lstm_10/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_2
lstm_10/lstm_cell_10/ReluRelulstm_10/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/Relu¼
lstm_10/lstm_cell_10/mul_5Mul lstm_10/lstm_cell_10/Sigmoid:y:0'lstm_10/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_5³
lstm_10/lstm_cell_10/add_3AddV2lstm_10/lstm_cell_10/mul_4:z:0lstm_10/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_3¼
%lstm_10/lstm_cell_10/ReadVariableOp_3ReadVariableOp,lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_10/lstm_cell_10/ReadVariableOp_3©
*lstm_10/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_10/lstm_cell_10/strided_slice_3/stack­
,lstm_10/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_10/lstm_cell_10/strided_slice_3/stack_1­
,lstm_10/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_10/lstm_cell_10/strided_slice_3/stack_2
$lstm_10/lstm_cell_10/strided_slice_3StridedSlice-lstm_10/lstm_cell_10/ReadVariableOp_3:value:03lstm_10/lstm_cell_10/strided_slice_3/stack:output:05lstm_10/lstm_cell_10/strided_slice_3/stack_1:output:05lstm_10/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_10/lstm_cell_10/strided_slice_3É
lstm_10/lstm_cell_10/MatMul_7MatMullstm_10/lstm_cell_10/mul_3:z:0-lstm_10/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/MatMul_7Å
lstm_10/lstm_cell_10/add_4AddV2'lstm_10/lstm_cell_10/BiasAdd_3:output:0'lstm_10/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/add_4
lstm_10/lstm_cell_10/Sigmoid_2Sigmoidlstm_10/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_10/lstm_cell_10/Sigmoid_2
lstm_10/lstm_cell_10/Relu_1Relulstm_10/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/Relu_1À
lstm_10/lstm_cell_10/mul_6Mul"lstm_10/lstm_cell_10/Sigmoid_2:y:0)lstm_10/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/lstm_cell_10/mul_6
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_10/TensorArrayV2_1/element_shapeØ
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2_1^
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/time
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/maximum_iterationsz
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/while/loop_counterù
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_10_lstm_cell_10_split_readvariableop_resource4lstm_10_lstm_cell_10_split_1_readvariableop_resource,lstm_10_lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_10_while_body_413147*%
condR
lstm_10_while_cond_413146*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_10/whileÅ
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_10/TensorArrayV2Stack/TensorListStack
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_10/strided_slice_3/stack
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_10/strided_slice_3/stack_1
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_3/stack_2Ê
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_10/strided_slice_3
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose_1/permÅ
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_10/transpose_1v
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/runtime¨
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_12/MatMul/ReadVariableOp¨
dense_12/MatMulMatMul lstm_10/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_12/MatMul§
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_12/BiasAdd/ReadVariableOp¥
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_12/Relu¨
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_13/MatMul/ReadVariableOp£
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/MatMul§
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp¥
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_13/BiasAddk
reshape_6/ShapeShapedense_13/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_6/Shape
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2Ò
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape¤
reshape_6/ReshapeReshapedense_13/BiasAdd:output:0 reshape_6/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_6/Reshapeò
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_10_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muly
IdentityIdentityreshape_6/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp$^lstm_10/lstm_cell_10/ReadVariableOp&^lstm_10/lstm_cell_10/ReadVariableOp_1&^lstm_10/lstm_cell_10/ReadVariableOp_2&^lstm_10/lstm_cell_10/ReadVariableOp_3>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*^lstm_10/lstm_cell_10/split/ReadVariableOp,^lstm_10/lstm_cell_10/split_1/ReadVariableOp^lstm_10/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2J
#lstm_10/lstm_cell_10/ReadVariableOp#lstm_10/lstm_cell_10/ReadVariableOp2N
%lstm_10/lstm_cell_10/ReadVariableOp_1%lstm_10/lstm_cell_10/ReadVariableOp_12N
%lstm_10/lstm_cell_10/ReadVariableOp_2%lstm_10/lstm_cell_10/ReadVariableOp_22N
%lstm_10/lstm_cell_10/ReadVariableOp_3%lstm_10/lstm_cell_10/ReadVariableOp_32~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_10/lstm_cell_10/split/ReadVariableOp)lstm_10/lstm_cell_10/split/ReadVariableOp2Z
+lstm_10/lstm_cell_10/split_1/ReadVariableOp+lstm_10/lstm_cell_10/split_1/ReadVariableOp2
lstm_10/whilelstm_10/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_411494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411494___redundant_placeholder04
0while_while_cond_411494___redundant_placeholder14
0while_while_cond_411494___redundant_placeholder24
0while_while_cond_411494___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ºú
ì
!__inference__wrapped_model_411357
input_5R
?sequential_4_lstm_10_lstm_cell_10_split_readvariableop_resource:	P
Asequential_4_lstm_10_lstm_cell_10_split_1_readvariableop_resource:	L
9sequential_4_lstm_10_lstm_cell_10_readvariableop_resource:	 F
4sequential_4_dense_12_matmul_readvariableop_resource:  C
5sequential_4_dense_12_biasadd_readvariableop_resource: F
4sequential_4_dense_13_matmul_readvariableop_resource: C
5sequential_4_dense_13_biasadd_readvariableop_resource:
identity¢,sequential_4/dense_12/BiasAdd/ReadVariableOp¢+sequential_4/dense_12/MatMul/ReadVariableOp¢,sequential_4/dense_13/BiasAdd/ReadVariableOp¢+sequential_4/dense_13/MatMul/ReadVariableOp¢0sequential_4/lstm_10/lstm_cell_10/ReadVariableOp¢2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_1¢2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_2¢2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_3¢6sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOp¢8sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOp¢sequential_4/lstm_10/whileo
sequential_4/lstm_10/ShapeShapeinput_5*
T0*
_output_shapes
:2
sequential_4/lstm_10/Shape
(sequential_4/lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_4/lstm_10/strided_slice/stack¢
*sequential_4/lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/lstm_10/strided_slice/stack_1¢
*sequential_4/lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/lstm_10/strided_slice/stack_2à
"sequential_4/lstm_10/strided_sliceStridedSlice#sequential_4/lstm_10/Shape:output:01sequential_4/lstm_10/strided_slice/stack:output:03sequential_4/lstm_10/strided_slice/stack_1:output:03sequential_4/lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_4/lstm_10/strided_slice
 sequential_4/lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential_4/lstm_10/zeros/mul/yÀ
sequential_4/lstm_10/zeros/mulMul+sequential_4/lstm_10/strided_slice:output:0)sequential_4/lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_4/lstm_10/zeros/mul
!sequential_4/lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_4/lstm_10/zeros/Less/y»
sequential_4/lstm_10/zeros/LessLess"sequential_4/lstm_10/zeros/mul:z:0*sequential_4/lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_10/zeros/Less
#sequential_4/lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_4/lstm_10/zeros/packed/1×
!sequential_4/lstm_10/zeros/packedPack+sequential_4/lstm_10/strided_slice:output:0,sequential_4/lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_4/lstm_10/zeros/packed
 sequential_4/lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_4/lstm_10/zeros/ConstÉ
sequential_4/lstm_10/zerosFill*sequential_4/lstm_10/zeros/packed:output:0)sequential_4/lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_4/lstm_10/zeros
"sequential_4/lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_4/lstm_10/zeros_1/mul/yÆ
 sequential_4/lstm_10/zeros_1/mulMul+sequential_4/lstm_10/strided_slice:output:0+sequential_4/lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_4/lstm_10/zeros_1/mul
#sequential_4/lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_4/lstm_10/zeros_1/Less/yÃ
!sequential_4/lstm_10/zeros_1/LessLess$sequential_4/lstm_10/zeros_1/mul:z:0,sequential_4/lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_4/lstm_10/zeros_1/Less
%sequential_4/lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_4/lstm_10/zeros_1/packed/1Ý
#sequential_4/lstm_10/zeros_1/packedPack+sequential_4/lstm_10/strided_slice:output:0.sequential_4/lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_4/lstm_10/zeros_1/packed
"sequential_4/lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_4/lstm_10/zeros_1/ConstÑ
sequential_4/lstm_10/zeros_1Fill,sequential_4/lstm_10/zeros_1/packed:output:0+sequential_4/lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_4/lstm_10/zeros_1
#sequential_4/lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_4/lstm_10/transpose/permº
sequential_4/lstm_10/transpose	Transposeinput_5,sequential_4/lstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_4/lstm_10/transpose
sequential_4/lstm_10/Shape_1Shape"sequential_4/lstm_10/transpose:y:0*
T0*
_output_shapes
:2
sequential_4/lstm_10/Shape_1¢
*sequential_4/lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/lstm_10/strided_slice_1/stack¦
,sequential_4/lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/lstm_10/strided_slice_1/stack_1¦
,sequential_4/lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/lstm_10/strided_slice_1/stack_2ì
$sequential_4/lstm_10/strided_slice_1StridedSlice%sequential_4/lstm_10/Shape_1:output:03sequential_4/lstm_10/strided_slice_1/stack:output:05sequential_4/lstm_10/strided_slice_1/stack_1:output:05sequential_4/lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_4/lstm_10/strided_slice_1¯
0sequential_4/lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_4/lstm_10/TensorArrayV2/element_shape
"sequential_4/lstm_10/TensorArrayV2TensorListReserve9sequential_4/lstm_10/TensorArrayV2/element_shape:output:0-sequential_4/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_4/lstm_10/TensorArrayV2é
Jsequential_4/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_4/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_4/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_4/lstm_10/transpose:y:0Ssequential_4/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_4/lstm_10/TensorArrayUnstack/TensorListFromTensor¢
*sequential_4/lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/lstm_10/strided_slice_2/stack¦
,sequential_4/lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/lstm_10/strided_slice_2/stack_1¦
,sequential_4/lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/lstm_10/strided_slice_2/stack_2ú
$sequential_4/lstm_10/strided_slice_2StridedSlice"sequential_4/lstm_10/transpose:y:03sequential_4/lstm_10/strided_slice_2/stack:output:05sequential_4/lstm_10/strided_slice_2/stack_1:output:05sequential_4/lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_4/lstm_10/strided_slice_2¹
1sequential_4/lstm_10/lstm_cell_10/ones_like/ShapeShape#sequential_4/lstm_10/zeros:output:0*
T0*
_output_shapes
:23
1sequential_4/lstm_10/lstm_cell_10/ones_like/Shape«
1sequential_4/lstm_10/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_4/lstm_10/lstm_cell_10/ones_like/Const
+sequential_4/lstm_10/lstm_cell_10/ones_likeFill:sequential_4/lstm_10/lstm_cell_10/ones_like/Shape:output:0:sequential_4/lstm_10/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/lstm_cell_10/ones_like¨
1sequential_4/lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_4/lstm_10/lstm_cell_10/split/split_dimñ
6sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOpReadVariableOp?sequential_4_lstm_10_lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype028
6sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOp¯
'sequential_4/lstm_10/lstm_cell_10/splitSplit:sequential_4/lstm_10/lstm_cell_10/split/split_dim:output:0>sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2)
'sequential_4/lstm_10/lstm_cell_10/splitñ
(sequential_4/lstm_10/lstm_cell_10/MatMulMatMul-sequential_4/lstm_10/strided_slice_2:output:00sequential_4/lstm_10/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_4/lstm_10/lstm_cell_10/MatMulõ
*sequential_4/lstm_10/lstm_cell_10/MatMul_1MatMul-sequential_4/lstm_10/strided_slice_2:output:00sequential_4/lstm_10/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_1õ
*sequential_4/lstm_10/lstm_cell_10/MatMul_2MatMul-sequential_4/lstm_10/strided_slice_2:output:00sequential_4/lstm_10/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_2õ
*sequential_4/lstm_10/lstm_cell_10/MatMul_3MatMul-sequential_4/lstm_10/strided_slice_2:output:00sequential_4/lstm_10/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_3¬
3sequential_4/lstm_10/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3sequential_4/lstm_10/lstm_cell_10/split_1/split_dimó
8sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOpReadVariableOpAsequential_4_lstm_10_lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02:
8sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOp§
)sequential_4/lstm_10/lstm_cell_10/split_1Split<sequential_4/lstm_10/lstm_cell_10/split_1/split_dim:output:0@sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2+
)sequential_4/lstm_10/lstm_cell_10/split_1û
)sequential_4/lstm_10/lstm_cell_10/BiasAddBiasAdd2sequential_4/lstm_10/lstm_cell_10/MatMul:product:02sequential_4/lstm_10/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_4/lstm_10/lstm_cell_10/BiasAdd
+sequential_4/lstm_10/lstm_cell_10/BiasAdd_1BiasAdd4sequential_4/lstm_10/lstm_cell_10/MatMul_1:product:02sequential_4/lstm_10/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/lstm_cell_10/BiasAdd_1
+sequential_4/lstm_10/lstm_cell_10/BiasAdd_2BiasAdd4sequential_4/lstm_10/lstm_cell_10/MatMul_2:product:02sequential_4/lstm_10/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/lstm_cell_10/BiasAdd_2
+sequential_4/lstm_10/lstm_cell_10/BiasAdd_3BiasAdd4sequential_4/lstm_10/lstm_cell_10/MatMul_3:product:02sequential_4/lstm_10/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/lstm_cell_10/BiasAdd_3â
%sequential_4/lstm_10/lstm_cell_10/mulMul#sequential_4/lstm_10/zeros:output:04sequential_4/lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_10/lstm_cell_10/mulæ
'sequential_4/lstm_10/lstm_cell_10/mul_1Mul#sequential_4/lstm_10/zeros:output:04sequential_4/lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/mul_1æ
'sequential_4/lstm_10/lstm_cell_10/mul_2Mul#sequential_4/lstm_10/zeros:output:04sequential_4/lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/mul_2æ
'sequential_4/lstm_10/lstm_cell_10/mul_3Mul#sequential_4/lstm_10/zeros:output:04sequential_4/lstm_10/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/mul_3ß
0sequential_4/lstm_10/lstm_cell_10/ReadVariableOpReadVariableOp9sequential_4_lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype022
0sequential_4/lstm_10/lstm_cell_10/ReadVariableOp¿
5sequential_4/lstm_10/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_4/lstm_10/lstm_cell_10/strided_slice/stackÃ
7sequential_4/lstm_10/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_4/lstm_10/lstm_cell_10/strided_slice/stack_1Ã
7sequential_4/lstm_10/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_10/lstm_cell_10/strided_slice/stack_2È
/sequential_4/lstm_10/lstm_cell_10/strided_sliceStridedSlice8sequential_4/lstm_10/lstm_cell_10/ReadVariableOp:value:0>sequential_4/lstm_10/lstm_cell_10/strided_slice/stack:output:0@sequential_4/lstm_10/lstm_cell_10/strided_slice/stack_1:output:0@sequential_4/lstm_10/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_4/lstm_10/lstm_cell_10/strided_sliceù
*sequential_4/lstm_10/lstm_cell_10/MatMul_4MatMul)sequential_4/lstm_10/lstm_cell_10/mul:z:08sequential_4/lstm_10/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_4ó
%sequential_4/lstm_10/lstm_cell_10/addAddV22sequential_4/lstm_10/lstm_cell_10/BiasAdd:output:04sequential_4/lstm_10/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_10/lstm_cell_10/add¾
)sequential_4/lstm_10/lstm_cell_10/SigmoidSigmoid)sequential_4/lstm_10/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_4/lstm_10/lstm_cell_10/Sigmoidã
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_1ReadVariableOp9sequential_4_lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype024
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_1Ã
7sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stackÇ
9sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2;
9sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack_1Ç
9sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack_2Ô
1sequential_4/lstm_10/lstm_cell_10/strided_slice_1StridedSlice:sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_1:value:0@sequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack:output:0Bsequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack_1:output:0Bsequential_4/lstm_10/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential_4/lstm_10/lstm_cell_10/strided_slice_1ý
*sequential_4/lstm_10/lstm_cell_10/MatMul_5MatMul+sequential_4/lstm_10/lstm_cell_10/mul_1:z:0:sequential_4/lstm_10/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_5ù
'sequential_4/lstm_10/lstm_cell_10/add_1AddV24sequential_4/lstm_10/lstm_cell_10/BiasAdd_1:output:04sequential_4/lstm_10/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/add_1Ä
+sequential_4/lstm_10/lstm_cell_10/Sigmoid_1Sigmoid+sequential_4/lstm_10/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/lstm_cell_10/Sigmoid_1ã
'sequential_4/lstm_10/lstm_cell_10/mul_4Mul/sequential_4/lstm_10/lstm_cell_10/Sigmoid_1:y:0%sequential_4/lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/mul_4ã
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_2ReadVariableOp9sequential_4_lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype024
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_2Ã
7sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stackÇ
9sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2;
9sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack_1Ç
9sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack_2Ô
1sequential_4/lstm_10/lstm_cell_10/strided_slice_2StridedSlice:sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_2:value:0@sequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack:output:0Bsequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack_1:output:0Bsequential_4/lstm_10/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential_4/lstm_10/lstm_cell_10/strided_slice_2ý
*sequential_4/lstm_10/lstm_cell_10/MatMul_6MatMul+sequential_4/lstm_10/lstm_cell_10/mul_2:z:0:sequential_4/lstm_10/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_6ù
'sequential_4/lstm_10/lstm_cell_10/add_2AddV24sequential_4/lstm_10/lstm_cell_10/BiasAdd_2:output:04sequential_4/lstm_10/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/add_2·
&sequential_4/lstm_10/lstm_cell_10/ReluRelu+sequential_4/lstm_10/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_4/lstm_10/lstm_cell_10/Reluð
'sequential_4/lstm_10/lstm_cell_10/mul_5Mul-sequential_4/lstm_10/lstm_cell_10/Sigmoid:y:04sequential_4/lstm_10/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/mul_5ç
'sequential_4/lstm_10/lstm_cell_10/add_3AddV2+sequential_4/lstm_10/lstm_cell_10/mul_4:z:0+sequential_4/lstm_10/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/add_3ã
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_3ReadVariableOp9sequential_4_lstm_10_lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype024
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_3Ã
7sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   29
7sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stackÇ
9sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack_1Ç
9sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack_2Ô
1sequential_4/lstm_10/lstm_cell_10/strided_slice_3StridedSlice:sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_3:value:0@sequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack:output:0Bsequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack_1:output:0Bsequential_4/lstm_10/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential_4/lstm_10/lstm_cell_10/strided_slice_3ý
*sequential_4/lstm_10/lstm_cell_10/MatMul_7MatMul+sequential_4/lstm_10/lstm_cell_10/mul_3:z:0:sequential_4/lstm_10/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_4/lstm_10/lstm_cell_10/MatMul_7ù
'sequential_4/lstm_10/lstm_cell_10/add_4AddV24sequential_4/lstm_10/lstm_cell_10/BiasAdd_3:output:04sequential_4/lstm_10/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/add_4Ä
+sequential_4/lstm_10/lstm_cell_10/Sigmoid_2Sigmoid+sequential_4/lstm_10/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/lstm_cell_10/Sigmoid_2»
(sequential_4/lstm_10/lstm_cell_10/Relu_1Relu+sequential_4/lstm_10/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_4/lstm_10/lstm_cell_10/Relu_1ô
'sequential_4/lstm_10/lstm_cell_10/mul_6Mul/sequential_4/lstm_10/lstm_cell_10/Sigmoid_2:y:06sequential_4/lstm_10/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_4/lstm_10/lstm_cell_10/mul_6¹
2sequential_4/lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    24
2sequential_4/lstm_10/TensorArrayV2_1/element_shape
$sequential_4/lstm_10/TensorArrayV2_1TensorListReserve;sequential_4/lstm_10/TensorArrayV2_1/element_shape:output:0-sequential_4/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_4/lstm_10/TensorArrayV2_1x
sequential_4/lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_4/lstm_10/time©
-sequential_4/lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_4/lstm_10/while/maximum_iterations
'sequential_4/lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_4/lstm_10/while/loop_counter¼
sequential_4/lstm_10/whileWhile0sequential_4/lstm_10/while/loop_counter:output:06sequential_4/lstm_10/while/maximum_iterations:output:0"sequential_4/lstm_10/time:output:0-sequential_4/lstm_10/TensorArrayV2_1:handle:0#sequential_4/lstm_10/zeros:output:0%sequential_4/lstm_10/zeros_1:output:0-sequential_4/lstm_10/strided_slice_1:output:0Lsequential_4/lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_4_lstm_10_lstm_cell_10_split_readvariableop_resourceAsequential_4_lstm_10_lstm_cell_10_split_1_readvariableop_resource9sequential_4_lstm_10_lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_4_lstm_10_while_body_411208*2
cond*R(
&sequential_4_lstm_10_while_cond_411207*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_4/lstm_10/whileß
Esequential_4/lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2G
Esequential_4/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_4/lstm_10/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_4/lstm_10/while:output:3Nsequential_4/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype029
7sequential_4/lstm_10/TensorArrayV2Stack/TensorListStack«
*sequential_4/lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_4/lstm_10/strided_slice_3/stack¦
,sequential_4/lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_4/lstm_10/strided_slice_3/stack_1¦
,sequential_4/lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/lstm_10/strided_slice_3/stack_2
$sequential_4/lstm_10/strided_slice_3StridedSlice@sequential_4/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/lstm_10/strided_slice_3/stack:output:05sequential_4/lstm_10/strided_slice_3/stack_1:output:05sequential_4/lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2&
$sequential_4/lstm_10/strided_slice_3£
%sequential_4/lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_4/lstm_10/transpose_1/permù
 sequential_4/lstm_10/transpose_1	Transpose@sequential_4/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_4/lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_4/lstm_10/transpose_1
sequential_4/lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_4/lstm_10/runtimeÏ
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential_4/dense_12/MatMul/ReadVariableOpÜ
sequential_4/dense_12/MatMulMatMul-sequential_4/lstm_10/strided_slice_3:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_4/dense_12/MatMulÎ
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_4/dense_12/BiasAdd/ReadVariableOpÙ
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_4/dense_12/BiasAdd
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_4/dense_12/ReluÏ
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_4/dense_13/MatMul/ReadVariableOp×
sequential_4/dense_13/MatMulMatMul(sequential_4/dense_12/Relu:activations:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_13/MatMulÎ
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_4/dense_13/BiasAdd/ReadVariableOpÙ
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_13/BiasAdd
sequential_4/reshape_6/ShapeShape&sequential_4/dense_13/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential_4/reshape_6/Shape¢
*sequential_4/reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/reshape_6/strided_slice/stack¦
,sequential_4/reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_6/strided_slice/stack_1¦
,sequential_4/reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_6/strided_slice/stack_2ì
$sequential_4/reshape_6/strided_sliceStridedSlice%sequential_4/reshape_6/Shape:output:03sequential_4/reshape_6/strided_slice/stack:output:05sequential_4/reshape_6/strided_slice/stack_1:output:05sequential_4/reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_4/reshape_6/strided_slice
&sequential_4/reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_6/Reshape/shape/1
&sequential_4/reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_6/Reshape/shape/2
$sequential_4/reshape_6/Reshape/shapePack-sequential_4/reshape_6/strided_slice:output:0/sequential_4/reshape_6/Reshape/shape/1:output:0/sequential_4/reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_4/reshape_6/Reshape/shapeØ
sequential_4/reshape_6/ReshapeReshape&sequential_4/dense_13/BiasAdd:output:0-sequential_4/reshape_6/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_4/reshape_6/Reshape
IdentityIdentity'sequential_4/reshape_6/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityë
NoOpNoOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp1^sequential_4/lstm_10/lstm_cell_10/ReadVariableOp3^sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_13^sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_23^sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_37^sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOp9^sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOp^sequential_4/lstm_10/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2d
0sequential_4/lstm_10/lstm_cell_10/ReadVariableOp0sequential_4/lstm_10/lstm_cell_10/ReadVariableOp2h
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_12sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_12h
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_22sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_22h
2sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_32sequential_4/lstm_10/lstm_cell_10/ReadVariableOp_32p
6sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOp6sequential_4/lstm_10/lstm_cell_10/split/ReadVariableOp2t
8sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOp8sequential_4/lstm_10/lstm_cell_10/split_1/ReadVariableOp28
sequential_4/lstm_10/whilesequential_4/lstm_10/while:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
ñ

)__inference_dense_12_layer_call_fn_414790

inputs
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_4124092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾
·
(__inference_lstm_10_layer_call_fn_413648
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4115702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Þ¡
§
C__inference_lstm_10_layer_call_and_return_conditional_losses_414474

inputs=
*lstm_cell_10_split_readvariableop_resource:	;
,lstm_cell_10_split_1_readvariableop_resource:	7
$lstm_cell_10_readvariableop_resource:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_10/ReadVariableOp¢lstm_cell_10/ReadVariableOp_1¢lstm_cell_10/ReadVariableOp_2¢lstm_cell_10/ReadVariableOp_3¢!lstm_cell_10/split/ReadVariableOp¢#lstm_cell_10/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2z
lstm_cell_10/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/Shape
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_10/ones_like/Const¸
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/ones_like~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim²
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_10/split/ReadVariableOpÛ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_10/split
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul¡
lstm_cell_10/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_1¡
lstm_cell_10/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_2¡
lstm_cell_10/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_3
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dim´
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/split_1/ReadVariableOpÓ
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1§
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd­
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_1­
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_2­
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_3
lstm_cell_10/mulMulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul
lstm_cell_10/mul_1Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_1
lstm_cell_10/mul_2Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_2
lstm_cell_10/mul_3Mulzeros:output:0lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_3 
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stack
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2Ê
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice¥
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_4
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid¤
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_1
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stack
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2Ö
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_1:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_5¥
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mul_4Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_4¤
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_2
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stack
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2Ö
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_2:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_6¥
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_2x
lstm_cell_10/ReluRelulstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu
lstm_cell_10/mul_5Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_5
lstm_cell_10/add_3AddV2lstm_cell_10/mul_4:z:0lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_3¤
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_3
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stack
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2Ö
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_3:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_7¥
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_4
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_6Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414341*
condR
while_cond_414340*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à	
¦
-__inference_sequential_4_layer_call_fn_413037

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4128742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
¤	
while_body_412257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_10_split_readvariableop_resource_0:	C
4while_lstm_cell_10_split_1_readvariableop_resource_0:	?
,while_lstm_cell_10_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_10_split_readvariableop_resource:	A
2while_lstm_cell_10_split_1_readvariableop_resource:	=
*while_lstm_cell_10_readvariableop_resource:	 ¢!while/lstm_cell_10/ReadVariableOp¢#while/lstm_cell_10/ReadVariableOp_1¢#while/lstm_cell_10/ReadVariableOp_2¢#while/lstm_cell_10/ReadVariableOp_3¢'while/lstm_cell_10/split/ReadVariableOp¢)while/lstm_cell_10/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_10/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/Shape
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_10/ones_like/ConstÐ
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/ones_like
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dimÆ
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_10/splitÇ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMulË
while/lstm_cell_10/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_1Ë
while/lstm_cell_10/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_2Ë
while/lstm_cell_10/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_3
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dimÈ
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpë
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1¿
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAddÅ
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_1Å
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_2Å
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_3¥
while/lstm_cell_10/mulMulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul©
while/lstm_cell_10/mul_1Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/mul_2Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_2©
while/lstm_cell_10/mul_3Mulwhile_placeholder_2%while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_3´
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_10/ReadVariableOp¡
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack¥
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1¥
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2î
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_slice½
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_4·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid¸
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_1¥
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ú
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Á
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_1:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_5½
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_1¤
while/lstm_cell_10/mul_4Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_4¸
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_2¥
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ú
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Á
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_2:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_6½
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_2
while/lstm_cell_10/ReluReluwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_5Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_5«
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_4:z:0while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_3¸
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_3¥
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ú
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Á
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_3:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_7½
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_4
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_6Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
R
Å
C__inference_lstm_10_layer_call_and_return_conditional_losses_411867

inputs&
lstm_cell_10_411779:	"
lstm_cell_10_411781:	&
lstm_cell_10_411783:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_10/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_411779lstm_cell_10_411781lstm_cell_10_411783*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4117142&
$lstm_cell_10/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_411779lstm_cell_10_411781lstm_cell_10_411783*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411792*
condR
while_cond_411791*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÓ
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_10_411779*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®v
é
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_411714

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapestates*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÒ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ð¤2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÆÌ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ûó2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÃÌª2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Mul_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_3^
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
muld
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1d
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_6Ý
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
ã	
§
-__inference_sequential_4_layer_call_fn_412470
input_5
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_4124532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
³
¤	
while_body_414066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_10_split_readvariableop_resource_0:	C
4while_lstm_cell_10_split_1_readvariableop_resource_0:	?
,while_lstm_cell_10_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_10_split_readvariableop_resource:	A
2while_lstm_cell_10_split_1_readvariableop_resource:	=
*while_lstm_cell_10_readvariableop_resource:	 ¢!while/lstm_cell_10/ReadVariableOp¢#while/lstm_cell_10/ReadVariableOp_1¢#while/lstm_cell_10/ReadVariableOp_2¢#while/lstm_cell_10/ReadVariableOp_3¢'while/lstm_cell_10/split/ReadVariableOp¢)while/lstm_cell_10/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_10/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_10/ones_like/Shape
"while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_10/ones_like/ConstÐ
while/lstm_cell_10/ones_likeFill+while/lstm_cell_10/ones_like/Shape:output:0+while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/ones_like
 while/lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_10/dropout/ConstË
while/lstm_cell_10/dropout/MulMul%while/lstm_cell_10/ones_like:output:0)while/lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_10/dropout/Mul
 while/lstm_cell_10/dropout/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_10/dropout/Shape
7while/lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Êä¨29
7while/lstm_cell_10/dropout/random_uniform/RandomUniform
)while/lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_10/dropout/GreaterEqual/y
'while/lstm_cell_10/dropout/GreaterEqualGreaterEqual@while/lstm_cell_10/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_10/dropout/GreaterEqual¸
while/lstm_cell_10/dropout/CastCast+while/lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_10/dropout/CastÆ
 while/lstm_cell_10/dropout/Mul_1Mul"while/lstm_cell_10/dropout/Mul:z:0#while/lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout/Mul_1
"while/lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_1/ConstÑ
 while/lstm_cell_10/dropout_1/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_1/Mul
"while/lstm_cell_10/dropout_1/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_1/Shape
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Í^2;
9while/lstm_cell_10/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_1/GreaterEqual/y
)while/lstm_cell_10/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_1/GreaterEqual¾
!while/lstm_cell_10/dropout_1/CastCast-while/lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_1/CastÎ
"while/lstm_cell_10/dropout_1/Mul_1Mul$while/lstm_cell_10/dropout_1/Mul:z:0%while/lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_1/Mul_1
"while/lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_2/ConstÑ
 while/lstm_cell_10/dropout_2/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_2/Mul
"while/lstm_cell_10/dropout_2/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_2/Shape
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2å2;
9while/lstm_cell_10/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_2/GreaterEqual/y
)while/lstm_cell_10/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_2/GreaterEqual¾
!while/lstm_cell_10/dropout_2/CastCast-while/lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_2/CastÎ
"while/lstm_cell_10/dropout_2/Mul_1Mul$while/lstm_cell_10/dropout_2/Mul:z:0%while/lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_2/Mul_1
"while/lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_10/dropout_3/ConstÑ
 while/lstm_cell_10/dropout_3/MulMul%while/lstm_cell_10/ones_like:output:0+while/lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_10/dropout_3/Mul
"while/lstm_cell_10/dropout_3/ShapeShape%while/lstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_10/dropout_3/Shape
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¨¨Ö2;
9while/lstm_cell_10/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_10/dropout_3/GreaterEqual/y
)while/lstm_cell_10/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_10/dropout_3/GreaterEqual¾
!while/lstm_cell_10/dropout_3/CastCast-while/lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_10/dropout_3/CastÎ
"while/lstm_cell_10/dropout_3/Mul_1Mul$while/lstm_cell_10/dropout_3/Mul:z:0%while/lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_10/dropout_3/Mul_1
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dimÆ
'while/lstm_cell_10/split/ReadVariableOpReadVariableOp2while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_10/split/ReadVariableOpó
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_10/splitÇ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMulË
while/lstm_cell_10/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_1Ë
while/lstm_cell_10/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_2Ë
while/lstm_cell_10/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_3
$while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_10/split_1/split_dimÈ
)while/lstm_cell_10/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/split_1/ReadVariableOpë
while/lstm_cell_10/split_1Split-while/lstm_cell_10/split_1/split_dim:output:01while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_10/split_1¿
while/lstm_cell_10/BiasAddBiasAdd#while/lstm_cell_10/MatMul:product:0#while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAddÅ
while/lstm_cell_10/BiasAdd_1BiasAdd%while/lstm_cell_10/MatMul_1:product:0#while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_1Å
while/lstm_cell_10/BiasAdd_2BiasAdd%while/lstm_cell_10/MatMul_2:product:0#while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_2Å
while/lstm_cell_10/BiasAdd_3BiasAdd%while/lstm_cell_10/MatMul_3:product:0#while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/BiasAdd_3¤
while/lstm_cell_10/mulMulwhile_placeholder_2$while/lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mulª
while/lstm_cell_10/mul_1Mulwhile_placeholder_2&while/lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/mul_2Mulwhile_placeholder_2&while/lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_2ª
while/lstm_cell_10/mul_3Mulwhile_placeholder_2&while/lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_3´
!while/lstm_cell_10/ReadVariableOpReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_10/ReadVariableOp¡
&while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_10/strided_slice/stack¥
(while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice/stack_1¥
(while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_10/strided_slice/stack_2î
 while/lstm_cell_10/strided_sliceStridedSlice)while/lstm_cell_10/ReadVariableOp:value:0/while/lstm_cell_10/strided_slice/stack:output:01while/lstm_cell_10/strided_slice/stack_1:output:01while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_10/strided_slice½
while/lstm_cell_10/MatMul_4MatMulwhile/lstm_cell_10/mul:z:0)while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_4·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/BiasAdd:output:0%while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add
while/lstm_cell_10/SigmoidSigmoidwhile/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid¸
#while/lstm_cell_10/ReadVariableOp_1ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_1¥
(while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_10/strided_slice_1/stack©
*while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_10/strided_slice_1/stack_1©
*while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_1/stack_2ú
"while/lstm_cell_10/strided_slice_1StridedSlice+while/lstm_cell_10/ReadVariableOp_1:value:01while/lstm_cell_10/strided_slice_1/stack:output:03while/lstm_cell_10/strided_slice_1/stack_1:output:03while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_1Á
while/lstm_cell_10/MatMul_5MatMulwhile/lstm_cell_10/mul_1:z:0+while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_5½
while/lstm_cell_10/add_1AddV2%while/lstm_cell_10/BiasAdd_1:output:0%while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_1Sigmoidwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_1¤
while/lstm_cell_10/mul_4Mul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_4¸
#while/lstm_cell_10/ReadVariableOp_2ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_2¥
(while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_10/strided_slice_2/stack©
*while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_10/strided_slice_2/stack_1©
*while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_2/stack_2ú
"while/lstm_cell_10/strided_slice_2StridedSlice+while/lstm_cell_10/ReadVariableOp_2:value:01while/lstm_cell_10/strided_slice_2/stack:output:03while/lstm_cell_10/strided_slice_2/stack_1:output:03while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_2Á
while/lstm_cell_10/MatMul_6MatMulwhile/lstm_cell_10/mul_2:z:0+while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_6½
while/lstm_cell_10/add_2AddV2%while/lstm_cell_10/BiasAdd_2:output:0%while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_2
while/lstm_cell_10/ReluReluwhile/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_5Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_5«
while/lstm_cell_10/add_3AddV2while/lstm_cell_10/mul_4:z:0while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_3¸
#while/lstm_cell_10/ReadVariableOp_3ReadVariableOp,while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_10/ReadVariableOp_3¥
(while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_10/strided_slice_3/stack©
*while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_10/strided_slice_3/stack_1©
*while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_10/strided_slice_3/stack_2ú
"while/lstm_cell_10/strided_slice_3StridedSlice+while/lstm_cell_10/ReadVariableOp_3:value:01while/lstm_cell_10/strided_slice_3/stack:output:03while/lstm_cell_10/strided_slice_3/stack_1:output:03while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_10/strided_slice_3Á
while/lstm_cell_10/MatMul_7MatMulwhile/lstm_cell_10/mul_3:z:0+while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/MatMul_7½
while/lstm_cell_10/add_4AddV2%while/lstm_cell_10/BiasAdd_3:output:0%while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/add_4
while/lstm_cell_10/Sigmoid_2Sigmoidwhile/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_6Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_10/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_10/ReadVariableOp$^while/lstm_cell_10/ReadVariableOp_1$^while/lstm_cell_10/ReadVariableOp_2$^while/lstm_cell_10/ReadVariableOp_3(^while/lstm_cell_10/split/ReadVariableOp*^while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_10_readvariableop_resource,while_lstm_cell_10_readvariableop_resource_0"j
2while_lstm_cell_10_split_1_readvariableop_resource4while_lstm_cell_10_split_1_readvariableop_resource_0"f
0while_lstm_cell_10_split_readvariableop_resource2while_lstm_cell_10_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_10/ReadVariableOp!while/lstm_cell_10/ReadVariableOp2J
#while/lstm_cell_10/ReadVariableOp_1#while/lstm_cell_10/ReadVariableOp_12J
#while/lstm_cell_10/ReadVariableOp_2#while/lstm_cell_10/ReadVariableOp_22J
#while/lstm_cell_10/ReadVariableOp_3#while/lstm_cell_10/ReadVariableOp_32R
'while/lstm_cell_10/split/ReadVariableOp'while/lstm_cell_10/split/ReadVariableOp2V
)while/lstm_cell_10/split_1/ReadVariableOp)while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¦
µ
(__inference_lstm_10_layer_call_fn_413681

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4128162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÎR
é
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_411481

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapestates*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_liked
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_3_
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulc
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1c
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2c
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_6Ý
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
¿v
ë
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_415072

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Å«2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2²2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2®Ë´2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ô¹2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Mul_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	BiasAdd_3`
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1f
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 *
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_6Ý
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
R
Å
C__inference_lstm_10_layer_call_and_return_conditional_losses_411570

inputs&
lstm_cell_10_411482:	"
lstm_cell_10_411484:	&
lstm_cell_10_411486:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_10/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_411482lstm_cell_10_411484lstm_cell_10_411486*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4114812&
$lstm_cell_10/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_411482lstm_cell_10_411484lstm_cell_10_411486*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_411495*
condR
while_cond_411494*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÓ
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_10_411482*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦"
ù
H__inference_sequential_4_layer_call_and_return_conditional_losses_412938
input_5!
lstm_10_412913:	
lstm_10_412915:	!
lstm_10_412917:	 !
dense_12_412920:  
dense_12_412922: !
dense_13_412925: 
dense_13_412927:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinput_5lstm_10_412913lstm_10_412915lstm_10_412917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_4123902!
lstm_10/StatefulPartitionedCall¶
 dense_12/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_12_412920dense_12_412922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_4124092"
 dense_12/StatefulPartitionedCall·
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_412925dense_13_412927*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_4124252"
 dense_13/StatefulPartitionedCallþ
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_4124442
reshape_6/PartitionedCallÎ
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_10_412913*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/mul
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_5
ßÏ
§
C__inference_lstm_10_layer_call_and_return_conditional_losses_412816

inputs=
*lstm_cell_10_split_readvariableop_resource:	;
,lstm_cell_10_split_1_readvariableop_resource:	7
$lstm_cell_10_readvariableop_resource:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_10/ReadVariableOp¢lstm_cell_10/ReadVariableOp_1¢lstm_cell_10/ReadVariableOp_2¢lstm_cell_10/ReadVariableOp_3¢!lstm_cell_10/split/ReadVariableOp¢#lstm_cell_10/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2z
lstm_cell_10/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/Shape
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_10/ones_like/Const¸
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/ones_like}
lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout/Const³
lstm_cell_10/dropout/MulMullstm_cell_10/ones_like:output:0#lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Mul
lstm_cell_10/dropout/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout/Shapeú
1lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÄâÙ23
1lstm_cell_10/dropout/random_uniform/RandomUniform
#lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_10/dropout/GreaterEqual/yò
!lstm_cell_10/dropout/GreaterEqualGreaterEqual:lstm_cell_10/dropout/random_uniform/RandomUniform:output:0,lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_10/dropout/GreaterEqual¦
lstm_cell_10/dropout/CastCast%lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Cast®
lstm_cell_10/dropout/Mul_1Mullstm_cell_10/dropout/Mul:z:0lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Mul_1
lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_1/Const¹
lstm_cell_10/dropout_1/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Mul
lstm_cell_10/dropout_1/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_1/Shapeÿ
3lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÃX25
3lstm_cell_10/dropout_1/random_uniform/RandomUniform
%lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_1/GreaterEqual/yú
#lstm_cell_10/dropout_1/GreaterEqualGreaterEqual<lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_1/GreaterEqual¬
lstm_cell_10/dropout_1/CastCast'lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Cast¶
lstm_cell_10/dropout_1/Mul_1Mullstm_cell_10/dropout_1/Mul:z:0lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Mul_1
lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_2/Const¹
lstm_cell_10/dropout_2/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Mul
lstm_cell_10/dropout_2/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_2/Shapeÿ
3lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¸]25
3lstm_cell_10/dropout_2/random_uniform/RandomUniform
%lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_2/GreaterEqual/yú
#lstm_cell_10/dropout_2/GreaterEqualGreaterEqual<lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_2/GreaterEqual¬
lstm_cell_10/dropout_2/CastCast'lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Cast¶
lstm_cell_10/dropout_2/Mul_1Mullstm_cell_10/dropout_2/Mul:z:0lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Mul_1
lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_3/Const¹
lstm_cell_10/dropout_3/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Mul
lstm_cell_10/dropout_3/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_3/Shape
3lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2íâ25
3lstm_cell_10/dropout_3/random_uniform/RandomUniform
%lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_3/GreaterEqual/yú
#lstm_cell_10/dropout_3/GreaterEqualGreaterEqual<lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_3/GreaterEqual¬
lstm_cell_10/dropout_3/CastCast'lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Cast¶
lstm_cell_10/dropout_3/Mul_1Mullstm_cell_10/dropout_3/Mul:z:0lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Mul_1~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim²
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_10/split/ReadVariableOpÛ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_10/split
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul¡
lstm_cell_10/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_1¡
lstm_cell_10/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_2¡
lstm_cell_10/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_3
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dim´
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/split_1/ReadVariableOpÓ
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1§
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd­
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_1­
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_2­
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_3
lstm_cell_10/mulMulzeros:output:0lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul
lstm_cell_10/mul_1Mulzeros:output:0 lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_1
lstm_cell_10/mul_2Mulzeros:output:0 lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_2
lstm_cell_10/mul_3Mulzeros:output:0 lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_3 
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stack
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2Ê
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice¥
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_4
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid¤
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_1
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stack
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2Ö
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_1:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_5¥
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mul_4Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_4¤
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_2
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stack
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2Ö
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_2:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_6¥
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_2x
lstm_cell_10/ReluRelulstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu
lstm_cell_10/mul_5Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_5
lstm_cell_10/add_3AddV2lstm_cell_10/mul_4:z:0lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_3¤
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_3
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stack
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2Ö
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_3:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_7¥
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_4
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_6Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_412651*
condR
while_cond_412650*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
Ê
__inference_loss_fn_0_415083Y
Flstm_10_lstm_cell_10_kernel_regularizer_square_readvariableop_resource:	
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_10_lstm_cell_10_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muly
IdentityIdentity/lstm_10/lstm_cell_10/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp
àÏ
§
C__inference_lstm_10_layer_call_and_return_conditional_losses_414781

inputs=
*lstm_cell_10_split_readvariableop_resource:	;
,lstm_cell_10_split_1_readvariableop_resource:	7
$lstm_cell_10_readvariableop_resource:	 
identity¢=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_10/ReadVariableOp¢lstm_cell_10/ReadVariableOp_1¢lstm_cell_10/ReadVariableOp_2¢lstm_cell_10/ReadVariableOp_3¢!lstm_cell_10/split/ReadVariableOp¢#lstm_cell_10/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2z
lstm_cell_10/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_10/ones_like/Shape
lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_10/ones_like/Const¸
lstm_cell_10/ones_likeFill%lstm_cell_10/ones_like/Shape:output:0%lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/ones_like}
lstm_cell_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout/Const³
lstm_cell_10/dropout/MulMullstm_cell_10/ones_like:output:0#lstm_cell_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Mul
lstm_cell_10/dropout/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout/Shapeú
1lstm_cell_10/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2÷°23
1lstm_cell_10/dropout/random_uniform/RandomUniform
#lstm_cell_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_10/dropout/GreaterEqual/yò
!lstm_cell_10/dropout/GreaterEqualGreaterEqual:lstm_cell_10/dropout/random_uniform/RandomUniform:output:0,lstm_cell_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_10/dropout/GreaterEqual¦
lstm_cell_10/dropout/CastCast%lstm_cell_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Cast®
lstm_cell_10/dropout/Mul_1Mullstm_cell_10/dropout/Mul:z:0lstm_cell_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout/Mul_1
lstm_cell_10/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_1/Const¹
lstm_cell_10/dropout_1/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Mul
lstm_cell_10/dropout_1/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_1/Shape
3lstm_cell_10/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ë25
3lstm_cell_10/dropout_1/random_uniform/RandomUniform
%lstm_cell_10/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_1/GreaterEqual/yú
#lstm_cell_10/dropout_1/GreaterEqualGreaterEqual<lstm_cell_10/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_1/GreaterEqual¬
lstm_cell_10/dropout_1/CastCast'lstm_cell_10/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Cast¶
lstm_cell_10/dropout_1/Mul_1Mullstm_cell_10/dropout_1/Mul:z:0lstm_cell_10/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_1/Mul_1
lstm_cell_10/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_2/Const¹
lstm_cell_10/dropout_2/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Mul
lstm_cell_10/dropout_2/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_2/Shape
3lstm_cell_10/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2üáî25
3lstm_cell_10/dropout_2/random_uniform/RandomUniform
%lstm_cell_10/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_2/GreaterEqual/yú
#lstm_cell_10/dropout_2/GreaterEqualGreaterEqual<lstm_cell_10/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_2/GreaterEqual¬
lstm_cell_10/dropout_2/CastCast'lstm_cell_10/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Cast¶
lstm_cell_10/dropout_2/Mul_1Mullstm_cell_10/dropout_2/Mul:z:0lstm_cell_10/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_2/Mul_1
lstm_cell_10/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_10/dropout_3/Const¹
lstm_cell_10/dropout_3/MulMullstm_cell_10/ones_like:output:0%lstm_cell_10/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Mul
lstm_cell_10/dropout_3/ShapeShapelstm_cell_10/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_10/dropout_3/Shapeÿ
3lstm_cell_10/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_10/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2äýl25
3lstm_cell_10/dropout_3/random_uniform/RandomUniform
%lstm_cell_10/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_10/dropout_3/GreaterEqual/yú
#lstm_cell_10/dropout_3/GreaterEqualGreaterEqual<lstm_cell_10/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_10/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_10/dropout_3/GreaterEqual¬
lstm_cell_10/dropout_3/CastCast'lstm_cell_10/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Cast¶
lstm_cell_10/dropout_3/Mul_1Mullstm_cell_10/dropout_3/Mul:z:0lstm_cell_10/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/dropout_3/Mul_1~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim²
!lstm_cell_10/split/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_10/split/ReadVariableOpÛ
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0)lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_10/split
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul¡
lstm_cell_10/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_1¡
lstm_cell_10/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_2¡
lstm_cell_10/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_3
lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_10/split_1/split_dim´
#lstm_cell_10/split_1/ReadVariableOpReadVariableOp,lstm_cell_10_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/split_1/ReadVariableOpÓ
lstm_cell_10/split_1Split'lstm_cell_10/split_1/split_dim:output:0+lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_10/split_1§
lstm_cell_10/BiasAddBiasAddlstm_cell_10/MatMul:product:0lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd­
lstm_cell_10/BiasAdd_1BiasAddlstm_cell_10/MatMul_1:product:0lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_1­
lstm_cell_10/BiasAdd_2BiasAddlstm_cell_10/MatMul_2:product:0lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_2­
lstm_cell_10/BiasAdd_3BiasAddlstm_cell_10/MatMul_3:product:0lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/BiasAdd_3
lstm_cell_10/mulMulzeros:output:0lstm_cell_10/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul
lstm_cell_10/mul_1Mulzeros:output:0 lstm_cell_10/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_1
lstm_cell_10/mul_2Mulzeros:output:0 lstm_cell_10/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_2
lstm_cell_10/mul_3Mulzeros:output:0 lstm_cell_10/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_3 
lstm_cell_10/ReadVariableOpReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp
 lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_10/strided_slice/stack
"lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice/stack_1
"lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_10/strided_slice/stack_2Ê
lstm_cell_10/strided_sliceStridedSlice#lstm_cell_10/ReadVariableOp:value:0)lstm_cell_10/strided_slice/stack:output:0+lstm_cell_10/strided_slice/stack_1:output:0+lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice¥
lstm_cell_10/MatMul_4MatMullstm_cell_10/mul:z:0#lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_4
lstm_cell_10/addAddV2lstm_cell_10/BiasAdd:output:0lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add
lstm_cell_10/SigmoidSigmoidlstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid¤
lstm_cell_10/ReadVariableOp_1ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_1
"lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_10/strided_slice_1/stack
$lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_10/strided_slice_1/stack_1
$lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_1/stack_2Ö
lstm_cell_10/strided_slice_1StridedSlice%lstm_cell_10/ReadVariableOp_1:value:0+lstm_cell_10/strided_slice_1/stack:output:0-lstm_cell_10/strided_slice_1/stack_1:output:0-lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_1©
lstm_cell_10/MatMul_5MatMullstm_cell_10/mul_1:z:0%lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_5¥
lstm_cell_10/add_1AddV2lstm_cell_10/BiasAdd_1:output:0lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mul_4Mullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_4¤
lstm_cell_10/ReadVariableOp_2ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_2
"lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_10/strided_slice_2/stack
$lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_10/strided_slice_2/stack_1
$lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_2/stack_2Ö
lstm_cell_10/strided_slice_2StridedSlice%lstm_cell_10/ReadVariableOp_2:value:0+lstm_cell_10/strided_slice_2/stack:output:0-lstm_cell_10/strided_slice_2/stack_1:output:0-lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_2©
lstm_cell_10/MatMul_6MatMullstm_cell_10/mul_2:z:0%lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_6¥
lstm_cell_10/add_2AddV2lstm_cell_10/BiasAdd_2:output:0lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_2x
lstm_cell_10/ReluRelulstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu
lstm_cell_10/mul_5Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_5
lstm_cell_10/add_3AddV2lstm_cell_10/mul_4:z:0lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_3¤
lstm_cell_10/ReadVariableOp_3ReadVariableOp$lstm_cell_10_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_10/ReadVariableOp_3
"lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_10/strided_slice_3/stack
$lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_10/strided_slice_3/stack_1
$lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_10/strided_slice_3/stack_2Ö
lstm_cell_10/strided_slice_3StridedSlice%lstm_cell_10/ReadVariableOp_3:value:0+lstm_cell_10/strided_slice_3/stack:output:0-lstm_cell_10/strided_slice_3/stack_1:output:0-lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_10/strided_slice_3©
lstm_cell_10/MatMul_7MatMullstm_cell_10/mul_3:z:0%lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/MatMul_7¥
lstm_cell_10/add_4AddV2lstm_cell_10/BiasAdd_3:output:0lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/add_4
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_6Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_10/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_10_split_readvariableop_resource,lstm_cell_10_split_1_readvariableop_resource$lstm_cell_10_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_414616*
condR
while_cond_414615*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¥
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_10_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_10/lstm_cell_10/kernel/Regularizer/SquareSquareElstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_10/lstm_cell_10/kernel/Regularizer/Square¯
-lstm_10/lstm_cell_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_10/lstm_cell_10/kernel/Regularizer/Constî
+lstm_10/lstm_cell_10/kernel/Regularizer/SumSum2lstm_10/lstm_cell_10/kernel/Regularizer/Square:y:06lstm_10/lstm_cell_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/Sum£
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_10/lstm_cell_10/kernel/Regularizer/mul/xð
+lstm_10/lstm_cell_10/kernel/Regularizer/mulMul6lstm_10/lstm_cell_10/kernel/Regularizer/mul/x:output:04lstm_10/lstm_cell_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_10/lstm_cell_10/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_10/ReadVariableOp^lstm_cell_10/ReadVariableOp_1^lstm_cell_10/ReadVariableOp_2^lstm_cell_10/ReadVariableOp_3"^lstm_cell_10/split/ReadVariableOp$^lstm_cell_10/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp=lstm_10/lstm_cell_10/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_10/ReadVariableOplstm_cell_10/ReadVariableOp2>
lstm_cell_10/ReadVariableOp_1lstm_cell_10/ReadVariableOp_12>
lstm_cell_10/ReadVariableOp_2lstm_cell_10/ReadVariableOp_22>
lstm_cell_10/ReadVariableOp_3lstm_cell_10/ReadVariableOp_32F
!lstm_cell_10/split/ReadVariableOp!lstm_cell_10/split/ReadVariableOp2J
#lstm_cell_10/split_1/ReadVariableOp#lstm_cell_10/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

õ
D__inference_dense_13_layer_call_and_return_conditional_losses_414820

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Æ¶

&sequential_4_lstm_10_while_body_411208F
Bsequential_4_lstm_10_while_sequential_4_lstm_10_while_loop_counterL
Hsequential_4_lstm_10_while_sequential_4_lstm_10_while_maximum_iterations*
&sequential_4_lstm_10_while_placeholder,
(sequential_4_lstm_10_while_placeholder_1,
(sequential_4_lstm_10_while_placeholder_2,
(sequential_4_lstm_10_while_placeholder_3E
Asequential_4_lstm_10_while_sequential_4_lstm_10_strided_slice_1_0
}sequential_4_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_10_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_4_lstm_10_while_lstm_cell_10_split_readvariableop_resource_0:	X
Isequential_4_lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0:	T
Asequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource_0:	 '
#sequential_4_lstm_10_while_identity)
%sequential_4_lstm_10_while_identity_1)
%sequential_4_lstm_10_while_identity_2)
%sequential_4_lstm_10_while_identity_3)
%sequential_4_lstm_10_while_identity_4)
%sequential_4_lstm_10_while_identity_5C
?sequential_4_lstm_10_while_sequential_4_lstm_10_strided_slice_1
{sequential_4_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_10_tensorarrayunstack_tensorlistfromtensorX
Esequential_4_lstm_10_while_lstm_cell_10_split_readvariableop_resource:	V
Gsequential_4_lstm_10_while_lstm_cell_10_split_1_readvariableop_resource:	R
?sequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource:	 ¢6sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp¢8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_1¢8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_2¢8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_3¢<sequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOp¢>sequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOpí
Lsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_4_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_10_tensorarrayunstack_tensorlistfromtensor_0&sequential_4_lstm_10_while_placeholderUsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItemÊ
7sequential_4/lstm_10/while/lstm_cell_10/ones_like/ShapeShape(sequential_4_lstm_10_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_4/lstm_10/while/lstm_cell_10/ones_like/Shape·
7sequential_4/lstm_10/while/lstm_cell_10/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_4/lstm_10/while/lstm_cell_10/ones_like/Const¤
1sequential_4/lstm_10/while/lstm_cell_10/ones_likeFill@sequential_4/lstm_10/while/lstm_cell_10/ones_like/Shape:output:0@sequential_4/lstm_10/while/lstm_cell_10/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_4/lstm_10/while/lstm_cell_10/ones_like´
7sequential_4/lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_4/lstm_10/while/lstm_cell_10/split/split_dim
<sequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOpReadVariableOpGsequential_4_lstm_10_while_lstm_cell_10_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02>
<sequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOpÇ
-sequential_4/lstm_10/while/lstm_cell_10/splitSplit@sequential_4/lstm_10/while/lstm_cell_10/split/split_dim:output:0Dsequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2/
-sequential_4/lstm_10/while/lstm_cell_10/split
.sequential_4/lstm_10/while/lstm_cell_10/MatMulMatMulEsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_4/lstm_10/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_4/lstm_10/while/lstm_cell_10/MatMul
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_1MatMulEsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_4/lstm_10/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_1
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_2MatMulEsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_4/lstm_10/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_2
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_3MatMulEsequential_4/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_4/lstm_10/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_3¸
9sequential_4/lstm_10/while/lstm_cell_10/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2;
9sequential_4/lstm_10/while/lstm_cell_10/split_1/split_dim
>sequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOpReadVariableOpIsequential_4_lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02@
>sequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOp¿
/sequential_4/lstm_10/while/lstm_cell_10/split_1SplitBsequential_4/lstm_10/while/lstm_cell_10/split_1/split_dim:output:0Fsequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split21
/sequential_4/lstm_10/while/lstm_cell_10/split_1
/sequential_4/lstm_10/while/lstm_cell_10/BiasAddBiasAdd8sequential_4/lstm_10/while/lstm_cell_10/MatMul:product:08sequential_4/lstm_10/while/lstm_cell_10/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_4/lstm_10/while/lstm_cell_10/BiasAdd
1sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_1BiasAdd:sequential_4/lstm_10/while/lstm_cell_10/MatMul_1:product:08sequential_4/lstm_10/while/lstm_cell_10/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_1
1sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_2BiasAdd:sequential_4/lstm_10/while/lstm_cell_10/MatMul_2:product:08sequential_4/lstm_10/while/lstm_cell_10/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_2
1sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_3BiasAdd:sequential_4/lstm_10/while/lstm_cell_10/MatMul_3:product:08sequential_4/lstm_10/while/lstm_cell_10/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_3ù
+sequential_4/lstm_10/while/lstm_cell_10/mulMul(sequential_4_lstm_10_while_placeholder_2:sequential_4/lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/while/lstm_cell_10/mulý
-sequential_4/lstm_10/while/lstm_cell_10/mul_1Mul(sequential_4_lstm_10_while_placeholder_2:sequential_4/lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/mul_1ý
-sequential_4/lstm_10/while/lstm_cell_10/mul_2Mul(sequential_4_lstm_10_while_placeholder_2:sequential_4/lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/mul_2ý
-sequential_4/lstm_10/while/lstm_cell_10/mul_3Mul(sequential_4_lstm_10_while_placeholder_2:sequential_4/lstm_10/while/lstm_cell_10/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/mul_3ó
6sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOpReadVariableOpAsequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype028
6sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOpË
;sequential_4/lstm_10/while/lstm_cell_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_4/lstm_10/while/lstm_cell_10/strided_slice/stackÏ
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack_1Ï
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack_2ì
5sequential_4/lstm_10/while/lstm_cell_10/strided_sliceStridedSlice>sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp:value:0Dsequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack:output:0Fsequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack_1:output:0Fsequential_4/lstm_10/while/lstm_cell_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_4/lstm_10/while/lstm_cell_10/strided_slice
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_4MatMul/sequential_4/lstm_10/while/lstm_cell_10/mul:z:0>sequential_4/lstm_10/while/lstm_cell_10/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_4
+sequential_4/lstm_10/while/lstm_cell_10/addAddV28sequential_4/lstm_10/while/lstm_cell_10/BiasAdd:output:0:sequential_4/lstm_10/while/lstm_cell_10/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_10/while/lstm_cell_10/addÐ
/sequential_4/lstm_10/while/lstm_cell_10/SigmoidSigmoid/sequential_4/lstm_10/while/lstm_cell_10/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_4/lstm_10/while/lstm_cell_10/Sigmoid÷
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_1ReadVariableOpAsequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02:
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_1Ï
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stackÓ
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2A
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack_1Ó
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack_2ø
7sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1StridedSlice@sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_1:value:0Fsequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack:output:0Hsequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack_1:output:0Hsequential_4/lstm_10/while/lstm_cell_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask29
7sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_5MatMul1sequential_4/lstm_10/while/lstm_cell_10/mul_1:z:0@sequential_4/lstm_10/while/lstm_cell_10/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_5
-sequential_4/lstm_10/while/lstm_cell_10/add_1AddV2:sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_1:output:0:sequential_4/lstm_10/while/lstm_cell_10/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/add_1Ö
1sequential_4/lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid1sequential_4/lstm_10/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_4/lstm_10/while/lstm_cell_10/Sigmoid_1ø
-sequential_4/lstm_10/while/lstm_cell_10/mul_4Mul5sequential_4/lstm_10/while/lstm_cell_10/Sigmoid_1:y:0(sequential_4_lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/mul_4÷
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_2ReadVariableOpAsequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02:
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_2Ï
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2?
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stackÓ
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2A
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack_1Ó
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack_2ø
7sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2StridedSlice@sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_2:value:0Fsequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack:output:0Hsequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack_1:output:0Hsequential_4/lstm_10/while/lstm_cell_10/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask29
7sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_6MatMul1sequential_4/lstm_10/while/lstm_cell_10/mul_2:z:0@sequential_4/lstm_10/while/lstm_cell_10/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_6
-sequential_4/lstm_10/while/lstm_cell_10/add_2AddV2:sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_2:output:0:sequential_4/lstm_10/while/lstm_cell_10/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/add_2É
,sequential_4/lstm_10/while/lstm_cell_10/ReluRelu1sequential_4/lstm_10/while/lstm_cell_10/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_4/lstm_10/while/lstm_cell_10/Relu
-sequential_4/lstm_10/while/lstm_cell_10/mul_5Mul3sequential_4/lstm_10/while/lstm_cell_10/Sigmoid:y:0:sequential_4/lstm_10/while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/mul_5ÿ
-sequential_4/lstm_10/while/lstm_cell_10/add_3AddV21sequential_4/lstm_10/while/lstm_cell_10/mul_4:z:01sequential_4/lstm_10/while/lstm_cell_10/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/add_3÷
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_3ReadVariableOpAsequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource_0*
_output_shapes
:	 *
dtype02:
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_3Ï
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2?
=sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stackÓ
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2A
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack_1Ó
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack_2ø
7sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3StridedSlice@sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_3:value:0Fsequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack:output:0Hsequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack_1:output:0Hsequential_4/lstm_10/while/lstm_cell_10/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask29
7sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_7MatMul1sequential_4/lstm_10/while/lstm_cell_10/mul_3:z:0@sequential_4/lstm_10/while/lstm_cell_10/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_4/lstm_10/while/lstm_cell_10/MatMul_7
-sequential_4/lstm_10/while/lstm_cell_10/add_4AddV2:sequential_4/lstm_10/while/lstm_cell_10/BiasAdd_3:output:0:sequential_4/lstm_10/while/lstm_cell_10/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/add_4Ö
1sequential_4/lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid1sequential_4/lstm_10/while/lstm_cell_10/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_4/lstm_10/while/lstm_cell_10/Sigmoid_2Í
.sequential_4/lstm_10/while/lstm_cell_10/Relu_1Relu1sequential_4/lstm_10/while/lstm_cell_10/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_4/lstm_10/while/lstm_cell_10/Relu_1
-sequential_4/lstm_10/while/lstm_cell_10/mul_6Mul5sequential_4/lstm_10/while/lstm_cell_10/Sigmoid_2:y:0<sequential_4/lstm_10/while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_4/lstm_10/while/lstm_cell_10/mul_6É
?sequential_4/lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_4_lstm_10_while_placeholder_1&sequential_4_lstm_10_while_placeholder1sequential_4/lstm_10/while/lstm_cell_10/mul_6:z:0*
_output_shapes
: *
element_dtype02A
?sequential_4/lstm_10/while/TensorArrayV2Write/TensorListSetItem
 sequential_4/lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_4/lstm_10/while/add/y½
sequential_4/lstm_10/while/addAddV2&sequential_4_lstm_10_while_placeholder)sequential_4/lstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_4/lstm_10/while/add
"sequential_4/lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_4/lstm_10/while/add_1/yß
 sequential_4/lstm_10/while/add_1AddV2Bsequential_4_lstm_10_while_sequential_4_lstm_10_while_loop_counter+sequential_4/lstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_4/lstm_10/while/add_1¿
#sequential_4/lstm_10/while/IdentityIdentity$sequential_4/lstm_10/while/add_1:z:0 ^sequential_4/lstm_10/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_4/lstm_10/while/Identityç
%sequential_4/lstm_10/while/Identity_1IdentityHsequential_4_lstm_10_while_sequential_4_lstm_10_while_maximum_iterations ^sequential_4/lstm_10/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_4/lstm_10/while/Identity_1Á
%sequential_4/lstm_10/while/Identity_2Identity"sequential_4/lstm_10/while/add:z:0 ^sequential_4/lstm_10/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_4/lstm_10/while/Identity_2î
%sequential_4/lstm_10/while/Identity_3IdentityOsequential_4/lstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_4/lstm_10/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_4/lstm_10/while/Identity_3á
%sequential_4/lstm_10/while/Identity_4Identity1sequential_4/lstm_10/while/lstm_cell_10/mul_6:z:0 ^sequential_4/lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_10/while/Identity_4á
%sequential_4/lstm_10/while/Identity_5Identity1sequential_4/lstm_10/while/lstm_cell_10/add_3:z:0 ^sequential_4/lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_10/while/Identity_5î
sequential_4/lstm_10/while/NoOpNoOp7^sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp9^sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_19^sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_29^sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_3=^sequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOp?^sequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_4/lstm_10/while/NoOp"S
#sequential_4_lstm_10_while_identity,sequential_4/lstm_10/while/Identity:output:0"W
%sequential_4_lstm_10_while_identity_1.sequential_4/lstm_10/while/Identity_1:output:0"W
%sequential_4_lstm_10_while_identity_2.sequential_4/lstm_10/while/Identity_2:output:0"W
%sequential_4_lstm_10_while_identity_3.sequential_4/lstm_10/while/Identity_3:output:0"W
%sequential_4_lstm_10_while_identity_4.sequential_4/lstm_10/while/Identity_4:output:0"W
%sequential_4_lstm_10_while_identity_5.sequential_4/lstm_10/while/Identity_5:output:0"
?sequential_4_lstm_10_while_lstm_cell_10_readvariableop_resourceAsequential_4_lstm_10_while_lstm_cell_10_readvariableop_resource_0"
Gsequential_4_lstm_10_while_lstm_cell_10_split_1_readvariableop_resourceIsequential_4_lstm_10_while_lstm_cell_10_split_1_readvariableop_resource_0"
Esequential_4_lstm_10_while_lstm_cell_10_split_readvariableop_resourceGsequential_4_lstm_10_while_lstm_cell_10_split_readvariableop_resource_0"
?sequential_4_lstm_10_while_sequential_4_lstm_10_strided_slice_1Asequential_4_lstm_10_while_sequential_4_lstm_10_strided_slice_1_0"ü
{sequential_4_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_10_tensorarrayunstack_tensorlistfromtensor}sequential_4_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2p
6sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp6sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp2t
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_18sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_12t
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_28sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_22t
8sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_38sequential_4/lstm_10/while/lstm_cell_10/ReadVariableOp_32|
<sequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOp<sequential_4/lstm_10/while/lstm_cell_10/split/ReadVariableOp2
>sequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOp>sequential_4/lstm_10/while/lstm_cell_10/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: "¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
?
input_54
serving_default_input_5:0ÿÿÿÿÿÿÿÿÿA
	reshape_64
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ø
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
`_default_save_signature
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ã
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
regularization_losses
trainable_variables
 	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
!iter

"beta_1

#beta_2
	$decay
%learning_ratemRmSmTmU&mV'mW(mXvYvZv[v\&v]'v^(v_"
	optimizer
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
Ê
)non_trainable_variables
*metrics
+layer_regularization_losses

,layers
-layer_metrics
	variables
regularization_losses
trainable_variables
a__call__
`_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
kserving_default"
signature_map
á
.
state_size

&kernel
'recurrent_kernel
(bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
¹
3non_trainable_variables

4states
5metrics
6layer_regularization_losses

7layers
8layer_metrics
	variables
regularization_losses
trainable_variables
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
!:  2dense_12/kernel
: 2dense_12/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
9non_trainable_variables
:metrics
;layer_regularization_losses

<layers
=layer_metrics
	variables
regularization_losses
trainable_variables
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_13/kernel
:2dense_13/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
>non_trainable_variables
?metrics
@layer_regularization_losses

Alayers
Blayer_metrics
	variables
regularization_losses
trainable_variables
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Cnon_trainable_variables
Dmetrics
Elayer_regularization_losses

Flayers
Glayer_metrics
	variables
regularization_losses
trainable_variables
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	2lstm_10/lstm_cell_10/kernel
8:6	 2%lstm_10/lstm_cell_10/recurrent_kernel
(:&2lstm_10/lstm_cell_10/bias
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
­
Inon_trainable_variables
Jmetrics
Klayer_regularization_losses

Llayers
Mlayer_metrics
/	variables
0regularization_losses
1trainable_variables
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
&:$  2Adam/dense_12/kernel/m
 : 2Adam/dense_12/bias/m
&:$ 2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
3:1	2"Adam/lstm_10/lstm_cell_10/kernel/m
=:;	 2,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m
-:+2 Adam/lstm_10/lstm_cell_10/bias/m
&:$  2Adam/dense_12/kernel/v
 : 2Adam/dense_12/bias/v
&:$ 2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/v
3:1	2"Adam/lstm_10/lstm_cell_10/kernel/v
=:;	 2,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v
-:+2 Adam/lstm_10/lstm_cell_10/bias/v
ÌBÉ
!__inference__wrapped_model_411357input_5"
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
2ÿ
-__inference_sequential_4_layer_call_fn_412470
-__inference_sequential_4_layer_call_fn_413018
-__inference_sequential_4_layer_call_fn_413037
-__inference_sequential_4_layer_call_fn_412910À
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
î2ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_413302
H__inference_sequential_4_layer_call_and_return_conditional_losses_413631
H__inference_sequential_4_layer_call_and_return_conditional_losses_412938
H__inference_sequential_4_layer_call_and_return_conditional_losses_412966À
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
2
(__inference_lstm_10_layer_call_fn_413648
(__inference_lstm_10_layer_call_fn_413659
(__inference_lstm_10_layer_call_fn_413670
(__inference_lstm_10_layer_call_fn_413681Õ
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
ï2ì
C__inference_lstm_10_layer_call_and_return_conditional_losses_413924
C__inference_lstm_10_layer_call_and_return_conditional_losses_414231
C__inference_lstm_10_layer_call_and_return_conditional_losses_414474
C__inference_lstm_10_layer_call_and_return_conditional_losses_414781Õ
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
Ó2Ð
)__inference_dense_12_layer_call_fn_414790¢
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
î2ë
D__inference_dense_12_layer_call_and_return_conditional_losses_414801¢
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
Ó2Ð
)__inference_dense_13_layer_call_fn_414810¢
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
î2ë
D__inference_dense_13_layer_call_and_return_conditional_losses_414820¢
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
Ô2Ñ
*__inference_reshape_6_layer_call_fn_414825¢
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
ï2ì
E__inference_reshape_6_layer_call_and_return_conditional_losses_414838¢
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
ËBÈ
$__inference_signature_wrapper_412999input_5"
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
¢2
-__inference_lstm_cell_10_layer_call_fn_414861
-__inference_lstm_cell_10_layer_call_fn_414878¾
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
Ø2Õ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_414959
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_415072¾
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
³2°
__inference_loss_fn_0_415083
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
!__inference__wrapped_model_411357z&('4¢1
*¢'
%"
input_5ÿÿÿÿÿÿÿÿÿ
ª "9ª6
4
	reshape_6'$
	reshape_6ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_12_layer_call_and_return_conditional_losses_414801\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
)__inference_dense_12_layer_call_fn_414790O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¤
D__inference_dense_13_layer_call_and_return_conditional_losses_414820\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_13_layer_call_fn_414810O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ;
__inference_loss_fn_0_415083&¢

¢ 
ª " Ä
C__inference_lstm_10_layer_call_and_return_conditional_losses_413924}&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 Ä
C__inference_lstm_10_layer_call_and_return_conditional_losses_414231}&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
C__inference_lstm_10_layer_call_and_return_conditional_losses_414474m&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
C__inference_lstm_10_layer_call_and_return_conditional_losses_414781m&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
(__inference_lstm_10_layer_call_fn_413648p&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_10_layer_call_fn_413659p&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_10_layer_call_fn_413670`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_10_layer_call_fn_413681`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ê
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_414959ý&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 Ê
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_415072ý&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 
-__inference_lstm_cell_10_layer_call_fn_414861í&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ 
-__inference_lstm_cell_10_layer_call_fn_414878í&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ ¥
E__inference_reshape_6_layer_call_and_return_conditional_losses_414838\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_reshape_6_layer_call_fn_414825O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
H__inference_sequential_4_layer_call_and_return_conditional_losses_412938r&('<¢9
2¢/
%"
input_5ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¾
H__inference_sequential_4_layer_call_and_return_conditional_losses_412966r&('<¢9
2¢/
%"
input_5ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ½
H__inference_sequential_4_layer_call_and_return_conditional_losses_413302q&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ½
H__inference_sequential_4_layer_call_and_return_conditional_losses_413631q&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_412470e&('<¢9
2¢/
%"
input_5ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_412910e&('<¢9
2¢/
%"
input_5ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_413018d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_413037d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ®
$__inference_signature_wrapper_412999&('?¢<
¢ 
5ª2
0
input_5%"
input_5ÿÿÿÿÿÿÿÿÿ"9ª6
4
	reshape_6'$
	reshape_6ÿÿÿÿÿÿÿÿÿ