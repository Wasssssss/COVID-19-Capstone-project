³'
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Á&
|
dense_126/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_126/kernel
u
$dense_126/kernel/Read/ReadVariableOpReadVariableOpdense_126/kernel*
_output_shapes

:  *
dtype0
t
dense_126/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_126/bias
m
"dense_126/bias/Read/ReadVariableOpReadVariableOpdense_126/bias*
_output_shapes
: *
dtype0
|
dense_127/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_127/kernel
u
$dense_127/kernel/Read/ReadVariableOpReadVariableOpdense_127/kernel*
_output_shapes

: *
dtype0
t
dense_127/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_127/bias
m
"dense_127/bias/Read/ReadVariableOpReadVariableOpdense_127/bias*
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

lstm_105/lstm_cell_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_105/lstm_cell_105/kernel

1lstm_105/lstm_cell_105/kernel/Read/ReadVariableOpReadVariableOplstm_105/lstm_cell_105/kernel*
_output_shapes
:	*
dtype0
«
'lstm_105/lstm_cell_105/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *8
shared_name)'lstm_105/lstm_cell_105/recurrent_kernel
¤
;lstm_105/lstm_cell_105/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_105/lstm_cell_105/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_105/lstm_cell_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_105/lstm_cell_105/bias

/lstm_105/lstm_cell_105/bias/Read/ReadVariableOpReadVariableOplstm_105/lstm_cell_105/bias*
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

Adam/dense_126/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_126/kernel/m

+Adam/dense_126/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_126/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_126/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_126/bias/m
{
)Adam/dense_126/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_126/bias/m*
_output_shapes
: *
dtype0

Adam/dense_127/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_127/kernel/m

+Adam/dense_127/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_127/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_127/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_127/bias/m
{
)Adam/dense_127/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_127/bias/m*
_output_shapes
:*
dtype0
¥
$Adam/lstm_105/lstm_cell_105/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_105/lstm_cell_105/kernel/m

8Adam/lstm_105/lstm_cell_105/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_105/lstm_cell_105/kernel/m*
_output_shapes
:	*
dtype0
¹
.Adam/lstm_105/lstm_cell_105/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *?
shared_name0.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m
²
BAdam/lstm_105/lstm_cell_105/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

"Adam/lstm_105/lstm_cell_105/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_105/lstm_cell_105/bias/m

6Adam/lstm_105/lstm_cell_105/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_105/lstm_cell_105/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_126/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_126/kernel/v

+Adam/dense_126/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_126/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_126/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_126/bias/v
{
)Adam/dense_126/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_126/bias/v*
_output_shapes
: *
dtype0

Adam/dense_127/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_127/kernel/v

+Adam/dense_127/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_127/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_127/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_127/bias/v
{
)Adam/dense_127/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_127/bias/v*
_output_shapes
:*
dtype0
¥
$Adam/lstm_105/lstm_cell_105/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_105/lstm_cell_105/kernel/v

8Adam/lstm_105/lstm_cell_105/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_105/lstm_cell_105/kernel/v*
_output_shapes
:	*
dtype0
¹
.Adam/lstm_105/lstm_cell_105/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *?
shared_name0.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v
²
BAdam/lstm_105/lstm_cell_105/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

"Adam/lstm_105/lstm_cell_105/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_105/lstm_cell_105/bias/v

6Adam/lstm_105/lstm_cell_105/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_105/lstm_cell_105/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ó+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*®+
value¤+B¡+ B+
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
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
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
1
&0
'1
(2
3
4
5
6
 
­

)layers
*layer_regularization_losses
	variables
trainable_variables
+layer_metrics
,metrics
regularization_losses
-non_trainable_variables
 

.
state_size

&kernel
'recurrent_kernel
(bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
 

&0
'1
(2

&0
'1
(2
 
¹

3layers
4layer_regularization_losses

5states
	variables
trainable_variables
6layer_metrics
7metrics
regularization_losses
8non_trainable_variables
\Z
VARIABLE_VALUEdense_126/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_126/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

9layers
	variables
:non_trainable_variables
trainable_variables
;layer_metrics
<metrics
regularization_losses
=layer_regularization_losses
\Z
VARIABLE_VALUEdense_127/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_127/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

>layers
	variables
?non_trainable_variables
trainable_variables
@layer_metrics
Ametrics
regularization_losses
Blayer_regularization_losses
 
 
 
­

Clayers
	variables
Dnon_trainable_variables
trainable_variables
Elayer_metrics
Fmetrics
regularization_losses
Glayer_regularization_losses
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
YW
VARIABLE_VALUElstm_105/lstm_cell_105/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_105/lstm_cell_105/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_105/lstm_cell_105/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
 

H0
 
 

&0
'1
(2

&0
'1
(2
 
­

Ilayers
/	variables
Jnon_trainable_variables
0trainable_variables
Klayer_metrics
Lmetrics
1regularization_losses
Mlayer_regularization_losses
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
}
VARIABLE_VALUEAdam/dense_126/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_126/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_127/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_127/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_105/lstm_cell_105/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_105/lstm_cell_105/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_105/lstm_cell_105/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_126/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_126/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_127/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_127/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_105/lstm_cell_105/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_105/lstm_cell_105/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_105/lstm_cell_105/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_43Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ï
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_43lstm_105/lstm_cell_105/kernellstm_105/lstm_cell_105/bias'lstm_105/lstm_cell_105/recurrent_kerneldense_126/kerneldense_126/biasdense_127/kerneldense_127/bias*
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
GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_3429368
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_126/kernel/Read/ReadVariableOp"dense_126/bias/Read/ReadVariableOp$dense_127/kernel/Read/ReadVariableOp"dense_127/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_105/lstm_cell_105/kernel/Read/ReadVariableOp;lstm_105/lstm_cell_105/recurrent_kernel/Read/ReadVariableOp/lstm_105/lstm_cell_105/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_126/kernel/m/Read/ReadVariableOp)Adam/dense_126/bias/m/Read/ReadVariableOp+Adam/dense_127/kernel/m/Read/ReadVariableOp)Adam/dense_127/bias/m/Read/ReadVariableOp8Adam/lstm_105/lstm_cell_105/kernel/m/Read/ReadVariableOpBAdam/lstm_105/lstm_cell_105/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_105/lstm_cell_105/bias/m/Read/ReadVariableOp+Adam/dense_126/kernel/v/Read/ReadVariableOp)Adam/dense_126/bias/v/Read/ReadVariableOp+Adam/dense_127/kernel/v/Read/ReadVariableOp)Adam/dense_127/bias/v/Read/ReadVariableOp8Adam/lstm_105/lstm_cell_105/kernel/v/Read/ReadVariableOpBAdam/lstm_105/lstm_cell_105/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_105/lstm_cell_105/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_3431594
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_126/kerneldense_126/biasdense_127/kerneldense_127/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_105/lstm_cell_105/kernel'lstm_105/lstm_cell_105/recurrent_kernellstm_105/lstm_cell_105/biastotalcountAdam/dense_126/kernel/mAdam/dense_126/bias/mAdam/dense_127/kernel/mAdam/dense_127/bias/m$Adam/lstm_105/lstm_cell_105/kernel/m.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m"Adam/lstm_105/lstm_cell_105/bias/mAdam/dense_126/kernel/vAdam/dense_126/bias/vAdam/dense_127/kernel/vAdam/dense_127/bias/v$Adam/lstm_105/lstm_cell_105/kernel/v.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v"Adam/lstm_105/lstm_cell_105/bias/v*(
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_3431688Ä%
åÓ
ì
lstm_105_while_body_3429819.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_3-
)lstm_105_while_lstm_105_strided_slice_1_0i
elstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_105_while_lstm_cell_105_split_readvariableop_resource_0:	M
>lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0:	I
6lstm_105_while_lstm_cell_105_readvariableop_resource_0:	 
lstm_105_while_identity
lstm_105_while_identity_1
lstm_105_while_identity_2
lstm_105_while_identity_3
lstm_105_while_identity_4
lstm_105_while_identity_5+
'lstm_105_while_lstm_105_strided_slice_1g
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorM
:lstm_105_while_lstm_cell_105_split_readvariableop_resource:	K
<lstm_105_while_lstm_cell_105_split_1_readvariableop_resource:	G
4lstm_105_while_lstm_cell_105_readvariableop_resource:	 ¢+lstm_105/while/lstm_cell_105/ReadVariableOp¢-lstm_105/while/lstm_cell_105/ReadVariableOp_1¢-lstm_105/while/lstm_cell_105/ReadVariableOp_2¢-lstm_105/while/lstm_cell_105/ReadVariableOp_3¢1lstm_105/while/lstm_cell_105/split/ReadVariableOp¢3lstm_105/while/lstm_cell_105/split_1/ReadVariableOpÕ
@lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_105/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0lstm_105_while_placeholderIlstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype024
2lstm_105/while/TensorArrayV2Read/TensorListGetItem¨
,lstm_105/while/lstm_cell_105/ones_like/ShapeShapelstm_105_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_105/while/lstm_cell_105/ones_like/Shape¡
,lstm_105/while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_105/while/lstm_cell_105/ones_like/Constø
&lstm_105/while/lstm_cell_105/ones_likeFill5lstm_105/while/lstm_cell_105/ones_like/Shape:output:05lstm_105/while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/ones_like
*lstm_105/while/lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_105/while/lstm_cell_105/dropout/Constó
(lstm_105/while/lstm_cell_105/dropout/MulMul/lstm_105/while/lstm_cell_105/ones_like:output:03lstm_105/while/lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_105/while/lstm_cell_105/dropout/Mul·
*lstm_105/while/lstm_cell_105/dropout/ShapeShape/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_105/while/lstm_cell_105/dropout/Shape§
Alstm_105/while/lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform3lstm_105/while/lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Áº2C
Alstm_105/while/lstm_cell_105/dropout/random_uniform/RandomUniform¯
3lstm_105/while/lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_105/while/lstm_cell_105/dropout/GreaterEqual/y²
1lstm_105/while/lstm_cell_105/dropout/GreaterEqualGreaterEqualJlstm_105/while/lstm_cell_105/dropout/random_uniform/RandomUniform:output:0<lstm_105/while/lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_105/while/lstm_cell_105/dropout/GreaterEqualÖ
)lstm_105/while/lstm_cell_105/dropout/CastCast5lstm_105/while/lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_105/while/lstm_cell_105/dropout/Castî
*lstm_105/while/lstm_cell_105/dropout/Mul_1Mul,lstm_105/while/lstm_cell_105/dropout/Mul:z:0-lstm_105/while/lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_105/while/lstm_cell_105/dropout/Mul_1¡
,lstm_105/while/lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2.
,lstm_105/while/lstm_cell_105/dropout_1/Constù
*lstm_105/while/lstm_cell_105/dropout_1/MulMul/lstm_105/while/lstm_cell_105/ones_like:output:05lstm_105/while/lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_105/while/lstm_cell_105/dropout_1/Mul»
,lstm_105/while/lstm_cell_105/dropout_1/ShapeShape/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_105/while/lstm_cell_105/dropout_1/Shape®
Clstm_105/while/lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform5lstm_105/while/lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ª¿2E
Clstm_105/while/lstm_cell_105/dropout_1/random_uniform/RandomUniform³
5lstm_105/while/lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_105/while/lstm_cell_105/dropout_1/GreaterEqual/yº
3lstm_105/while/lstm_cell_105/dropout_1/GreaterEqualGreaterEqualLlstm_105/while/lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:0>lstm_105/while/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3lstm_105/while/lstm_cell_105/dropout_1/GreaterEqualÜ
+lstm_105/while/lstm_cell_105/dropout_1/CastCast7lstm_105/while/lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_105/while/lstm_cell_105/dropout_1/Castö
,lstm_105/while/lstm_cell_105/dropout_1/Mul_1Mul.lstm_105/while/lstm_cell_105/dropout_1/Mul:z:0/lstm_105/while/lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,lstm_105/while/lstm_cell_105/dropout_1/Mul_1¡
,lstm_105/while/lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2.
,lstm_105/while/lstm_cell_105/dropout_2/Constù
*lstm_105/while/lstm_cell_105/dropout_2/MulMul/lstm_105/while/lstm_cell_105/ones_like:output:05lstm_105/while/lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_105/while/lstm_cell_105/dropout_2/Mul»
,lstm_105/while/lstm_cell_105/dropout_2/ShapeShape/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_105/while/lstm_cell_105/dropout_2/Shape®
Clstm_105/while/lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform5lstm_105/while/lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ºÒ2E
Clstm_105/while/lstm_cell_105/dropout_2/random_uniform/RandomUniform³
5lstm_105/while/lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_105/while/lstm_cell_105/dropout_2/GreaterEqual/yº
3lstm_105/while/lstm_cell_105/dropout_2/GreaterEqualGreaterEqualLlstm_105/while/lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:0>lstm_105/while/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3lstm_105/while/lstm_cell_105/dropout_2/GreaterEqualÜ
+lstm_105/while/lstm_cell_105/dropout_2/CastCast7lstm_105/while/lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_105/while/lstm_cell_105/dropout_2/Castö
,lstm_105/while/lstm_cell_105/dropout_2/Mul_1Mul.lstm_105/while/lstm_cell_105/dropout_2/Mul:z:0/lstm_105/while/lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,lstm_105/while/lstm_cell_105/dropout_2/Mul_1¡
,lstm_105/while/lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2.
,lstm_105/while/lstm_cell_105/dropout_3/Constù
*lstm_105/while/lstm_cell_105/dropout_3/MulMul/lstm_105/while/lstm_cell_105/ones_like:output:05lstm_105/while/lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_105/while/lstm_cell_105/dropout_3/Mul»
,lstm_105/while/lstm_cell_105/dropout_3/ShapeShape/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_105/while/lstm_cell_105/dropout_3/Shape®
Clstm_105/while/lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform5lstm_105/while/lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2 2E
Clstm_105/while/lstm_cell_105/dropout_3/random_uniform/RandomUniform³
5lstm_105/while/lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_105/while/lstm_cell_105/dropout_3/GreaterEqual/yº
3lstm_105/while/lstm_cell_105/dropout_3/GreaterEqualGreaterEqualLlstm_105/while/lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:0>lstm_105/while/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3lstm_105/while/lstm_cell_105/dropout_3/GreaterEqualÜ
+lstm_105/while/lstm_cell_105/dropout_3/CastCast7lstm_105/while/lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_105/while/lstm_cell_105/dropout_3/Castö
,lstm_105/while/lstm_cell_105/dropout_3/Mul_1Mul.lstm_105/while/lstm_cell_105/dropout_3/Mul:z:0/lstm_105/while/lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,lstm_105/while/lstm_cell_105/dropout_3/Mul_1
,lstm_105/while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_105/while/lstm_cell_105/split/split_dimä
1lstm_105/while/lstm_cell_105/split/ReadVariableOpReadVariableOp<lstm_105_while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_105/while/lstm_cell_105/split/ReadVariableOp
"lstm_105/while/lstm_cell_105/splitSplit5lstm_105/while/lstm_cell_105/split/split_dim:output:09lstm_105/while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2$
"lstm_105/while/lstm_cell_105/splitî
#lstm_105/while/lstm_cell_105/MatMulMatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_105/while/lstm_cell_105/MatMulò
%lstm_105/while/lstm_cell_105/MatMul_1MatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_1ò
%lstm_105/while/lstm_cell_105/MatMul_2MatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_2ò
%lstm_105/while/lstm_cell_105/MatMul_3MatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_3¢
.lstm_105/while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.lstm_105/while/lstm_cell_105/split_1/split_dimæ
3lstm_105/while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp>lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype025
3lstm_105/while/lstm_cell_105/split_1/ReadVariableOp
$lstm_105/while/lstm_cell_105/split_1Split7lstm_105/while/lstm_cell_105/split_1/split_dim:output:0;lstm_105/while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2&
$lstm_105/while/lstm_cell_105/split_1ç
$lstm_105/while/lstm_cell_105/BiasAddBiasAdd-lstm_105/while/lstm_cell_105/MatMul:product:0-lstm_105/while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/while/lstm_cell_105/BiasAddí
&lstm_105/while/lstm_cell_105/BiasAdd_1BiasAdd/lstm_105/while/lstm_cell_105/MatMul_1:product:0-lstm_105/while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/BiasAdd_1í
&lstm_105/while/lstm_cell_105/BiasAdd_2BiasAdd/lstm_105/while/lstm_cell_105/MatMul_2:product:0-lstm_105/while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/BiasAdd_2í
&lstm_105/while/lstm_cell_105/BiasAdd_3BiasAdd/lstm_105/while/lstm_cell_105/MatMul_3:product:0-lstm_105/while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/BiasAdd_3Ë
 lstm_105/while/lstm_cell_105/mulMullstm_105_while_placeholder_2.lstm_105/while/lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/while/lstm_cell_105/mulÑ
"lstm_105/while/lstm_cell_105/mul_1Mullstm_105_while_placeholder_20lstm_105/while/lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_1Ñ
"lstm_105/while/lstm_cell_105/mul_2Mullstm_105_while_placeholder_20lstm_105/while/lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_2Ñ
"lstm_105/while/lstm_cell_105/mul_3Mullstm_105_while_placeholder_20lstm_105/while/lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_3Ò
+lstm_105/while/lstm_cell_105/ReadVariableOpReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_105/while/lstm_cell_105/ReadVariableOpµ
0lstm_105/while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_105/while/lstm_cell_105/strided_slice/stack¹
2lstm_105/while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_105/while/lstm_cell_105/strided_slice/stack_1¹
2lstm_105/while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_105/while/lstm_cell_105/strided_slice/stack_2ª
*lstm_105/while/lstm_cell_105/strided_sliceStridedSlice3lstm_105/while/lstm_cell_105/ReadVariableOp:value:09lstm_105/while/lstm_cell_105/strided_slice/stack:output:0;lstm_105/while/lstm_cell_105/strided_slice/stack_1:output:0;lstm_105/while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_105/while/lstm_cell_105/strided_sliceå
%lstm_105/while/lstm_cell_105/MatMul_4MatMul$lstm_105/while/lstm_cell_105/mul:z:03lstm_105/while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_4ß
 lstm_105/while/lstm_cell_105/addAddV2-lstm_105/while/lstm_cell_105/BiasAdd:output:0/lstm_105/while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/while/lstm_cell_105/add¯
$lstm_105/while/lstm_cell_105/SigmoidSigmoid$lstm_105/while/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/while/lstm_cell_105/SigmoidÖ
-lstm_105/while/lstm_cell_105/ReadVariableOp_1ReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_105/while/lstm_cell_105/ReadVariableOp_1¹
2lstm_105/while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_105/while/lstm_cell_105/strided_slice_1/stack½
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   26
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_1½
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_2¶
,lstm_105/while/lstm_cell_105/strided_slice_1StridedSlice5lstm_105/while/lstm_cell_105/ReadVariableOp_1:value:0;lstm_105/while/lstm_cell_105/strided_slice_1/stack:output:0=lstm_105/while/lstm_cell_105/strided_slice_1/stack_1:output:0=lstm_105/while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_105/while/lstm_cell_105/strided_slice_1é
%lstm_105/while/lstm_cell_105/MatMul_5MatMul&lstm_105/while/lstm_cell_105/mul_1:z:05lstm_105/while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_5å
"lstm_105/while/lstm_cell_105/add_1AddV2/lstm_105/while/lstm_cell_105/BiasAdd_1:output:0/lstm_105/while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_1µ
&lstm_105/while/lstm_cell_105/Sigmoid_1Sigmoid&lstm_105/while/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/Sigmoid_1Ë
"lstm_105/while/lstm_cell_105/mul_4Mul*lstm_105/while/lstm_cell_105/Sigmoid_1:y:0lstm_105_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_4Ö
-lstm_105/while/lstm_cell_105/ReadVariableOp_2ReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_105/while/lstm_cell_105/ReadVariableOp_2¹
2lstm_105/while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_105/while/lstm_cell_105/strided_slice_2/stack½
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   26
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_1½
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_2¶
,lstm_105/while/lstm_cell_105/strided_slice_2StridedSlice5lstm_105/while/lstm_cell_105/ReadVariableOp_2:value:0;lstm_105/while/lstm_cell_105/strided_slice_2/stack:output:0=lstm_105/while/lstm_cell_105/strided_slice_2/stack_1:output:0=lstm_105/while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_105/while/lstm_cell_105/strided_slice_2é
%lstm_105/while/lstm_cell_105/MatMul_6MatMul&lstm_105/while/lstm_cell_105/mul_2:z:05lstm_105/while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_6å
"lstm_105/while/lstm_cell_105/add_2AddV2/lstm_105/while/lstm_cell_105/BiasAdd_2:output:0/lstm_105/while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_2¨
!lstm_105/while/lstm_cell_105/ReluRelu&lstm_105/while/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_105/while/lstm_cell_105/ReluÜ
"lstm_105/while/lstm_cell_105/mul_5Mul(lstm_105/while/lstm_cell_105/Sigmoid:y:0/lstm_105/while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_5Ó
"lstm_105/while/lstm_cell_105/add_3AddV2&lstm_105/while/lstm_cell_105/mul_4:z:0&lstm_105/while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_3Ö
-lstm_105/while/lstm_cell_105/ReadVariableOp_3ReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_105/while/lstm_cell_105/ReadVariableOp_3¹
2lstm_105/while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_105/while/lstm_cell_105/strided_slice_3/stack½
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_1½
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_2¶
,lstm_105/while/lstm_cell_105/strided_slice_3StridedSlice5lstm_105/while/lstm_cell_105/ReadVariableOp_3:value:0;lstm_105/while/lstm_cell_105/strided_slice_3/stack:output:0=lstm_105/while/lstm_cell_105/strided_slice_3/stack_1:output:0=lstm_105/while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_105/while/lstm_cell_105/strided_slice_3é
%lstm_105/while/lstm_cell_105/MatMul_7MatMul&lstm_105/while/lstm_cell_105/mul_3:z:05lstm_105/while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_7å
"lstm_105/while/lstm_cell_105/add_4AddV2/lstm_105/while/lstm_cell_105/BiasAdd_3:output:0/lstm_105/while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_4µ
&lstm_105/while/lstm_cell_105/Sigmoid_2Sigmoid&lstm_105/while/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/Sigmoid_2¬
#lstm_105/while/lstm_cell_105/Relu_1Relu&lstm_105/while/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_105/while/lstm_cell_105/Relu_1à
"lstm_105/while/lstm_cell_105/mul_6Mul*lstm_105/while/lstm_cell_105/Sigmoid_2:y:01lstm_105/while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_6
3lstm_105/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_105_while_placeholder_1lstm_105_while_placeholder&lstm_105/while/lstm_cell_105/mul_6:z:0*
_output_shapes
: *
element_dtype025
3lstm_105/while/TensorArrayV2Write/TensorListSetItemn
lstm_105/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_105/while/add/y
lstm_105/while/addAddV2lstm_105_while_placeholderlstm_105/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_105/while/addr
lstm_105/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_105/while/add_1/y£
lstm_105/while/add_1AddV2*lstm_105_while_lstm_105_while_loop_counterlstm_105/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_105/while/add_1
lstm_105/while/IdentityIdentitylstm_105/while/add_1:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity«
lstm_105/while/Identity_1Identity0lstm_105_while_lstm_105_while_maximum_iterations^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity_1
lstm_105/while/Identity_2Identitylstm_105/while/add:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity_2¾
lstm_105/while/Identity_3IdentityClstm_105/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity_3²
lstm_105/while/Identity_4Identity&lstm_105/while/lstm_cell_105/mul_6:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/while/Identity_4²
lstm_105/while/Identity_5Identity&lstm_105/while/lstm_cell_105/add_3:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/while/Identity_5
lstm_105/while/NoOpNoOp,^lstm_105/while/lstm_cell_105/ReadVariableOp.^lstm_105/while/lstm_cell_105/ReadVariableOp_1.^lstm_105/while/lstm_cell_105/ReadVariableOp_2.^lstm_105/while/lstm_cell_105/ReadVariableOp_32^lstm_105/while/lstm_cell_105/split/ReadVariableOp4^lstm_105/while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_105/while/NoOp";
lstm_105_while_identity lstm_105/while/Identity:output:0"?
lstm_105_while_identity_1"lstm_105/while/Identity_1:output:0"?
lstm_105_while_identity_2"lstm_105/while/Identity_2:output:0"?
lstm_105_while_identity_3"lstm_105/while/Identity_3:output:0"?
lstm_105_while_identity_4"lstm_105/while/Identity_4:output:0"?
lstm_105_while_identity_5"lstm_105/while/Identity_5:output:0"T
'lstm_105_while_lstm_105_strided_slice_1)lstm_105_while_lstm_105_strided_slice_1_0"n
4lstm_105_while_lstm_cell_105_readvariableop_resource6lstm_105_while_lstm_cell_105_readvariableop_resource_0"~
<lstm_105_while_lstm_cell_105_split_1_readvariableop_resource>lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0"z
:lstm_105_while_lstm_cell_105_split_readvariableop_resource<lstm_105_while_lstm_cell_105_split_readvariableop_resource_0"Ì
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+lstm_105/while/lstm_cell_105/ReadVariableOp+lstm_105/while/lstm_cell_105/ReadVariableOp2^
-lstm_105/while/lstm_cell_105/ReadVariableOp_1-lstm_105/while/lstm_cell_105/ReadVariableOp_12^
-lstm_105/while/lstm_cell_105/ReadVariableOp_2-lstm_105/while/lstm_cell_105/ReadVariableOp_22^
-lstm_105/while/lstm_cell_105/ReadVariableOp_3-lstm_105/while/lstm_cell_105/ReadVariableOp_32f
1lstm_105/while/lstm_cell_105/split/ReadVariableOp1lstm_105/while/lstm_cell_105/split/ReadVariableOp2j
3lstm_105/while/lstm_cell_105/split_1/ReadVariableOp3lstm_105/while/lstm_cell_105/split_1/ReadVariableOp: 
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
ª
·
*__inference_lstm_105_layer_call_fn_3430062

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34291612
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê£
´
E__inference_lstm_105_layer_call_and_return_conditional_losses_3428723

inputs>
+lstm_cell_105_split_readvariableop_resource:	<
-lstm_cell_105_split_1_readvariableop_resource:	8
%lstm_cell_105_readvariableop_resource:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_105/ReadVariableOp¢lstm_cell_105/ReadVariableOp_1¢lstm_cell_105/ReadVariableOp_2¢lstm_cell_105/ReadVariableOp_3¢"lstm_cell_105/split/ReadVariableOp¢$lstm_cell_105/split_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2|
lstm_cell_105/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_105/ones_like/Shape
lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_105/ones_like/Const¼
lstm_cell_105/ones_likeFill&lstm_cell_105/ones_like/Shape:output:0&lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/ones_like
lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_105/split/split_dimµ
"lstm_cell_105/split/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_105/split/ReadVariableOpß
lstm_cell_105/splitSplit&lstm_cell_105/split/split_dim:output:0*lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_105/split 
lstm_cell_105/MatMulMatMulstrided_slice_2:output:0lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul¤
lstm_cell_105/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_1¤
lstm_cell_105/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_2¤
lstm_cell_105/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_3
lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_105/split_1/split_dim·
$lstm_cell_105/split_1/ReadVariableOpReadVariableOp-lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_105/split_1/ReadVariableOp×
lstm_cell_105/split_1Split(lstm_cell_105/split_1/split_dim:output:0,lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_105/split_1«
lstm_cell_105/BiasAddBiasAddlstm_cell_105/MatMul:product:0lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd±
lstm_cell_105/BiasAdd_1BiasAdd lstm_cell_105/MatMul_1:product:0lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_1±
lstm_cell_105/BiasAdd_2BiasAdd lstm_cell_105/MatMul_2:product:0lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_2±
lstm_cell_105/BiasAdd_3BiasAdd lstm_cell_105/MatMul_3:product:0lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_3
lstm_cell_105/mulMulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul
lstm_cell_105/mul_1Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_1
lstm_cell_105/mul_2Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_2
lstm_cell_105/mul_3Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_3£
lstm_cell_105/ReadVariableOpReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_105/ReadVariableOp
!lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_105/strided_slice/stack
#lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice/stack_1
#lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_105/strided_slice/stack_2Ð
lstm_cell_105/strided_sliceStridedSlice$lstm_cell_105/ReadVariableOp:value:0*lstm_cell_105/strided_slice/stack:output:0,lstm_cell_105/strided_slice/stack_1:output:0,lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice©
lstm_cell_105/MatMul_4MatMullstm_cell_105/mul:z:0$lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_4£
lstm_cell_105/addAddV2lstm_cell_105/BiasAdd:output:0 lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add
lstm_cell_105/SigmoidSigmoidlstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid§
lstm_cell_105/ReadVariableOp_1ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_1
#lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice_1/stack
%lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_105/strided_slice_1/stack_1
%lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_1/stack_2Ü
lstm_cell_105/strided_slice_1StridedSlice&lstm_cell_105/ReadVariableOp_1:value:0,lstm_cell_105/strided_slice_1/stack:output:0.lstm_cell_105/strided_slice_1/stack_1:output:0.lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_1­
lstm_cell_105/MatMul_5MatMullstm_cell_105/mul_1:z:0&lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_5©
lstm_cell_105/add_1AddV2 lstm_cell_105/BiasAdd_1:output:0 lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_1
lstm_cell_105/Sigmoid_1Sigmoidlstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_1
lstm_cell_105/mul_4Mullstm_cell_105/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_4§
lstm_cell_105/ReadVariableOp_2ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_2
#lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_105/strided_slice_2/stack
%lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_105/strided_slice_2/stack_1
%lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_2/stack_2Ü
lstm_cell_105/strided_slice_2StridedSlice&lstm_cell_105/ReadVariableOp_2:value:0,lstm_cell_105/strided_slice_2/stack:output:0.lstm_cell_105/strided_slice_2/stack_1:output:0.lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_2­
lstm_cell_105/MatMul_6MatMullstm_cell_105/mul_2:z:0&lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_6©
lstm_cell_105/add_2AddV2 lstm_cell_105/BiasAdd_2:output:0 lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_2{
lstm_cell_105/ReluRelulstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu 
lstm_cell_105/mul_5Mullstm_cell_105/Sigmoid:y:0 lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_5
lstm_cell_105/add_3AddV2lstm_cell_105/mul_4:z:0lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_3§
lstm_cell_105/ReadVariableOp_3ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_3
#lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_105/strided_slice_3/stack
%lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_105/strided_slice_3/stack_1
%lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_3/stack_2Ü
lstm_cell_105/strided_slice_3StridedSlice&lstm_cell_105/ReadVariableOp_3:value:0,lstm_cell_105/strided_slice_3/stack:output:0.lstm_cell_105/strided_slice_3/stack_1:output:0.lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_3­
lstm_cell_105/MatMul_7MatMullstm_cell_105/mul_3:z:0&lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_7©
lstm_cell_105/add_4AddV2 lstm_cell_105/BiasAdd_3:output:0 lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_4
lstm_cell_105/Sigmoid_2Sigmoidlstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_2
lstm_cell_105/Relu_1Relulstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu_1¤
lstm_cell_105/mul_6Mullstm_cell_105/Sigmoid_2:y:0"lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_105_split_readvariableop_resource-lstm_cell_105_split_1_readvariableop_resource%lstm_cell_105_readvariableop_resource*
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
bodyR
while_body_3428590*
condR
while_cond_3428589*K
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
runtimeï
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_105/ReadVariableOp^lstm_cell_105/ReadVariableOp_1^lstm_cell_105/ReadVariableOp_2^lstm_cell_105/ReadVariableOp_3#^lstm_cell_105/split/ReadVariableOp%^lstm_cell_105/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_105/ReadVariableOplstm_cell_105/ReadVariableOp2@
lstm_cell_105/ReadVariableOp_1lstm_cell_105/ReadVariableOp_12@
lstm_cell_105/ReadVariableOp_2lstm_cell_105/ReadVariableOp_22@
lstm_cell_105/ReadVariableOp_3lstm_cell_105/ReadVariableOp_32H
"lstm_cell_105/split/ReadVariableOp"lstm_cell_105/split/ReadVariableOp2L
$lstm_cell_105/split_1/ReadVariableOp$lstm_cell_105/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ûR
í
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3427814

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
mul_6á
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muld
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

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
Ãµ
±	
while_body_3430997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_105_split_readvariableop_resource_0:	D
5while_lstm_cell_105_split_1_readvariableop_resource_0:	@
-while_lstm_cell_105_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_105_split_readvariableop_resource:	B
3while_lstm_cell_105_split_1_readvariableop_resource:	>
+while_lstm_cell_105_readvariableop_resource:	 ¢"while/lstm_cell_105/ReadVariableOp¢$while/lstm_cell_105/ReadVariableOp_1¢$while/lstm_cell_105/ReadVariableOp_2¢$while/lstm_cell_105/ReadVariableOp_3¢(while/lstm_cell_105/split/ReadVariableOp¢*while/lstm_cell_105/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_105/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_105/ones_like/Shape
#while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_105/ones_like/ConstÔ
while/lstm_cell_105/ones_likeFill,while/lstm_cell_105/ones_like/Shape:output:0,while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/ones_like
!while/lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2#
!while/lstm_cell_105/dropout/ConstÏ
while/lstm_cell_105/dropout/MulMul&while/lstm_cell_105/ones_like:output:0*while/lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_105/dropout/Mul
!while/lstm_cell_105/dropout/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_105/dropout/Shape
8while/lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2èÍ2:
8while/lstm_cell_105/dropout/random_uniform/RandomUniform
*while/lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_105/dropout/GreaterEqual/y
(while/lstm_cell_105/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_105/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_105/dropout/GreaterEqual»
 while/lstm_cell_105/dropout/CastCast,while/lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_105/dropout/CastÊ
!while/lstm_cell_105/dropout/Mul_1Mul#while/lstm_cell_105/dropout/Mul:z:0$while/lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout/Mul_1
#while/lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_1/ConstÕ
!while/lstm_cell_105/dropout_1/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_1/Mul 
#while/lstm_cell_105/dropout_1/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_1/Shape
:while/lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2µß2<
:while/lstm_cell_105/dropout_1/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_1/GreaterEqual/y
*while/lstm_cell_105/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_1/GreaterEqualÁ
"while/lstm_cell_105/dropout_1/CastCast.while/lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_1/CastÒ
#while/lstm_cell_105/dropout_1/Mul_1Mul%while/lstm_cell_105/dropout_1/Mul:z:0&while/lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_1/Mul_1
#while/lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_2/ConstÕ
!while/lstm_cell_105/dropout_2/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_2/Mul 
#while/lstm_cell_105/dropout_2/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_2/Shape
:while/lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ú¢2<
:while/lstm_cell_105/dropout_2/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_2/GreaterEqual/y
*while/lstm_cell_105/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_2/GreaterEqualÁ
"while/lstm_cell_105/dropout_2/CastCast.while/lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_2/CastÒ
#while/lstm_cell_105/dropout_2/Mul_1Mul%while/lstm_cell_105/dropout_2/Mul:z:0&while/lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_2/Mul_1
#while/lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_3/ConstÕ
!while/lstm_cell_105/dropout_3/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_3/Mul 
#while/lstm_cell_105/dropout_3/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_3/Shape
:while/lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2·í2<
:while/lstm_cell_105/dropout_3/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_3/GreaterEqual/y
*while/lstm_cell_105/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_3/GreaterEqualÁ
"while/lstm_cell_105/dropout_3/CastCast.while/lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_3/CastÒ
#while/lstm_cell_105/dropout_3/Mul_1Mul%while/lstm_cell_105/dropout_3/Mul:z:0&while/lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_3/Mul_1
#while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_105/split/split_dimÉ
(while/lstm_cell_105/split/ReadVariableOpReadVariableOp3while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_105/split/ReadVariableOp÷
while/lstm_cell_105/splitSplit,while/lstm_cell_105/split/split_dim:output:00while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_105/splitÊ
while/lstm_cell_105/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMulÎ
while/lstm_cell_105/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_1Î
while/lstm_cell_105/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_2Î
while/lstm_cell_105/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_3
%while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_105/split_1/split_dimË
*while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_105/split_1/ReadVariableOpï
while/lstm_cell_105/split_1Split.while/lstm_cell_105/split_1/split_dim:output:02while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_105/split_1Ã
while/lstm_cell_105/BiasAddBiasAdd$while/lstm_cell_105/MatMul:product:0$while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAddÉ
while/lstm_cell_105/BiasAdd_1BiasAdd&while/lstm_cell_105/MatMul_1:product:0$while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_1É
while/lstm_cell_105/BiasAdd_2BiasAdd&while/lstm_cell_105/MatMul_2:product:0$while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_2É
while/lstm_cell_105/BiasAdd_3BiasAdd&while/lstm_cell_105/MatMul_3:product:0$while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_3§
while/lstm_cell_105/mulMulwhile_placeholder_2%while/lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul­
while/lstm_cell_105/mul_1Mulwhile_placeholder_2'while/lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_1­
while/lstm_cell_105/mul_2Mulwhile_placeholder_2'while/lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_2­
while/lstm_cell_105/mul_3Mulwhile_placeholder_2'while/lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_3·
"while/lstm_cell_105/ReadVariableOpReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_105/ReadVariableOp£
'while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_105/strided_slice/stack§
)while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice/stack_1§
)while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_105/strided_slice/stack_2ô
!while/lstm_cell_105/strided_sliceStridedSlice*while/lstm_cell_105/ReadVariableOp:value:00while/lstm_cell_105/strided_slice/stack:output:02while/lstm_cell_105/strided_slice/stack_1:output:02while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_105/strided_sliceÁ
while/lstm_cell_105/MatMul_4MatMulwhile/lstm_cell_105/mul:z:0*while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_4»
while/lstm_cell_105/addAddV2$while/lstm_cell_105/BiasAdd:output:0&while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add
while/lstm_cell_105/SigmoidSigmoidwhile/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid»
$while/lstm_cell_105/ReadVariableOp_1ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_1§
)while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice_1/stack«
+while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_105/strided_slice_1/stack_1«
+while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_1/stack_2
#while/lstm_cell_105/strided_slice_1StridedSlice,while/lstm_cell_105/ReadVariableOp_1:value:02while/lstm_cell_105/strided_slice_1/stack:output:04while/lstm_cell_105/strided_slice_1/stack_1:output:04while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_1Å
while/lstm_cell_105/MatMul_5MatMulwhile/lstm_cell_105/mul_1:z:0,while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_5Á
while/lstm_cell_105/add_1AddV2&while/lstm_cell_105/BiasAdd_1:output:0&while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_1
while/lstm_cell_105/Sigmoid_1Sigmoidwhile/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_1§
while/lstm_cell_105/mul_4Mul!while/lstm_cell_105/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_4»
$while/lstm_cell_105/ReadVariableOp_2ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_2§
)while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_105/strided_slice_2/stack«
+while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_105/strided_slice_2/stack_1«
+while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_2/stack_2
#while/lstm_cell_105/strided_slice_2StridedSlice,while/lstm_cell_105/ReadVariableOp_2:value:02while/lstm_cell_105/strided_slice_2/stack:output:04while/lstm_cell_105/strided_slice_2/stack_1:output:04while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_2Å
while/lstm_cell_105/MatMul_6MatMulwhile/lstm_cell_105/mul_2:z:0,while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_6Á
while/lstm_cell_105/add_2AddV2&while/lstm_cell_105/BiasAdd_2:output:0&while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_2
while/lstm_cell_105/ReluReluwhile/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu¸
while/lstm_cell_105/mul_5Mulwhile/lstm_cell_105/Sigmoid:y:0&while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_5¯
while/lstm_cell_105/add_3AddV2while/lstm_cell_105/mul_4:z:0while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_3»
$while/lstm_cell_105/ReadVariableOp_3ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_3§
)while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_105/strided_slice_3/stack«
+while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_105/strided_slice_3/stack_1«
+while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_3/stack_2
#while/lstm_cell_105/strided_slice_3StridedSlice,while/lstm_cell_105/ReadVariableOp_3:value:02while/lstm_cell_105/strided_slice_3/stack:output:04while/lstm_cell_105/strided_slice_3/stack_1:output:04while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_3Å
while/lstm_cell_105/MatMul_7MatMulwhile/lstm_cell_105/mul_3:z:0,while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_7Á
while/lstm_cell_105/add_4AddV2&while/lstm_cell_105/BiasAdd_3:output:0&while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_4
while/lstm_cell_105/Sigmoid_2Sigmoidwhile/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_2
while/lstm_cell_105/Relu_1Reluwhile/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu_1¼
while/lstm_cell_105/mul_6Mul!while/lstm_cell_105/Sigmoid_2:y:0(while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_105/mul_6:z:0*
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
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_105/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_105/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_105/ReadVariableOp%^while/lstm_cell_105/ReadVariableOp_1%^while/lstm_cell_105/ReadVariableOp_2%^while/lstm_cell_105/ReadVariableOp_3)^while/lstm_cell_105/split/ReadVariableOp+^while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"\
+while_lstm_cell_105_readvariableop_resource-while_lstm_cell_105_readvariableop_resource_0"l
3while_lstm_cell_105_split_1_readvariableop_resource5while_lstm_cell_105_split_1_readvariableop_resource_0"h
1while_lstm_cell_105_split_readvariableop_resource3while_lstm_cell_105_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_105/ReadVariableOp"while/lstm_cell_105/ReadVariableOp2L
$while/lstm_cell_105/ReadVariableOp_1$while/lstm_cell_105/ReadVariableOp_12L
$while/lstm_cell_105/ReadVariableOp_2$while/lstm_cell_105/ReadVariableOp_22L
$while/lstm_cell_105/ReadVariableOp_3$while/lstm_cell_105/ReadVariableOp_32T
(while/lstm_cell_105/split/ReadVariableOp(while/lstm_cell_105/split/ReadVariableOp2X
*while/lstm_cell_105/split_1/ReadVariableOp*while/lstm_cell_105/split_1/ReadVariableOp: 
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

÷
F__inference_dense_126_layer_call_and_return_conditional_losses_3431173

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
Ú
È
while_cond_3430171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3430171___redundant_placeholder05
1while_while_cond_3430171___redundant_placeholder15
1while_while_cond_3430171___redundant_placeholder25
1while_while_cond_3430171___redundant_placeholder3
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
Ú,
À
J__inference_sequential_42_layer_call_and_return_conditional_losses_3428798

inputs#
lstm_105_3428724:	
lstm_105_3428726:	#
lstm_105_3428728:	 #
dense_126_3428743:  
dense_126_3428745: #
dense_127_3428765: 
dense_127_3428767:
identity¢!dense_126/StatefulPartitionedCall¢!dense_127/StatefulPartitionedCall¢0dense_127/bias/Regularizer/Square/ReadVariableOp¢ lstm_105/StatefulPartitionedCall¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp«
 lstm_105/StatefulPartitionedCallStatefulPartitionedCallinputslstm_105_3428724lstm_105_3428726lstm_105_3428728*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34287232"
 lstm_105/StatefulPartitionedCall¿
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0dense_126_3428743dense_126_3428745*
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
GPU 2J 8 *O
fJRH
F__inference_dense_126_layer_call_and_return_conditional_losses_34287422#
!dense_126/StatefulPartitionedCallÀ
!dense_127/StatefulPartitionedCallStatefulPartitionedCall*dense_126/StatefulPartitionedCall:output:0dense_127_3428765dense_127_3428767*
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
GPU 2J 8 *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_34287642#
!dense_127/StatefulPartitionedCall
reshape_63/PartitionedCallPartitionedCall*dense_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *P
fKRI
G__inference_reshape_63_layer_call_and_return_conditional_losses_34287832
reshape_63/PartitionedCallÔ
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_105_3428724*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mul²
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_127_3428767*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mul
IdentityIdentity#reshape_63/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_126/StatefulPartitionedCall"^dense_127/StatefulPartitionedCall1^dense_127/bias/Regularizer/Square/ReadVariableOp!^lstm_105/StatefulPartitionedCall@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÉÒ
´
E__inference_lstm_105_layer_call_and_return_conditional_losses_3429161

inputs>
+lstm_cell_105_split_readvariableop_resource:	<
-lstm_cell_105_split_1_readvariableop_resource:	8
%lstm_cell_105_readvariableop_resource:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_105/ReadVariableOp¢lstm_cell_105/ReadVariableOp_1¢lstm_cell_105/ReadVariableOp_2¢lstm_cell_105/ReadVariableOp_3¢"lstm_cell_105/split/ReadVariableOp¢$lstm_cell_105/split_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2|
lstm_cell_105/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_105/ones_like/Shape
lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_105/ones_like/Const¼
lstm_cell_105/ones_likeFill&lstm_cell_105/ones_like/Shape:output:0&lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/ones_like
lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout/Const·
lstm_cell_105/dropout/MulMul lstm_cell_105/ones_like:output:0$lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Mul
lstm_cell_105/dropout/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout/Shapeû
2lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2©24
2lstm_cell_105/dropout/random_uniform/RandomUniform
$lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_105/dropout/GreaterEqual/yö
"lstm_cell_105/dropout/GreaterEqualGreaterEqual;lstm_cell_105/dropout/random_uniform/RandomUniform:output:0-lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_105/dropout/GreaterEqual©
lstm_cell_105/dropout/CastCast&lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Cast²
lstm_cell_105/dropout/Mul_1Mullstm_cell_105/dropout/Mul:z:0lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Mul_1
lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_1/Const½
lstm_cell_105/dropout_1/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Mul
lstm_cell_105/dropout_1/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_1/Shape
4lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ëó26
4lstm_cell_105/dropout_1/random_uniform/RandomUniform
&lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_1/GreaterEqual/yþ
$lstm_cell_105/dropout_1/GreaterEqualGreaterEqual=lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_1/GreaterEqual¯
lstm_cell_105/dropout_1/CastCast(lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Castº
lstm_cell_105/dropout_1/Mul_1Mullstm_cell_105/dropout_1/Mul:z:0 lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Mul_1
lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_2/Const½
lstm_cell_105/dropout_2/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Mul
lstm_cell_105/dropout_2/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_2/Shape
4lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¶Ñ26
4lstm_cell_105/dropout_2/random_uniform/RandomUniform
&lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_2/GreaterEqual/yþ
$lstm_cell_105/dropout_2/GreaterEqualGreaterEqual=lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_2/GreaterEqual¯
lstm_cell_105/dropout_2/CastCast(lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Castº
lstm_cell_105/dropout_2/Mul_1Mullstm_cell_105/dropout_2/Mul:z:0 lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Mul_1
lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_3/Const½
lstm_cell_105/dropout_3/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Mul
lstm_cell_105/dropout_3/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_3/Shape
4lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ºÂ¤26
4lstm_cell_105/dropout_3/random_uniform/RandomUniform
&lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_3/GreaterEqual/yþ
$lstm_cell_105/dropout_3/GreaterEqualGreaterEqual=lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_3/GreaterEqual¯
lstm_cell_105/dropout_3/CastCast(lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Castº
lstm_cell_105/dropout_3/Mul_1Mullstm_cell_105/dropout_3/Mul:z:0 lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Mul_1
lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_105/split/split_dimµ
"lstm_cell_105/split/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_105/split/ReadVariableOpß
lstm_cell_105/splitSplit&lstm_cell_105/split/split_dim:output:0*lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_105/split 
lstm_cell_105/MatMulMatMulstrided_slice_2:output:0lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul¤
lstm_cell_105/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_1¤
lstm_cell_105/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_2¤
lstm_cell_105/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_3
lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_105/split_1/split_dim·
$lstm_cell_105/split_1/ReadVariableOpReadVariableOp-lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_105/split_1/ReadVariableOp×
lstm_cell_105/split_1Split(lstm_cell_105/split_1/split_dim:output:0,lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_105/split_1«
lstm_cell_105/BiasAddBiasAddlstm_cell_105/MatMul:product:0lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd±
lstm_cell_105/BiasAdd_1BiasAdd lstm_cell_105/MatMul_1:product:0lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_1±
lstm_cell_105/BiasAdd_2BiasAdd lstm_cell_105/MatMul_2:product:0lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_2±
lstm_cell_105/BiasAdd_3BiasAdd lstm_cell_105/MatMul_3:product:0lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_3
lstm_cell_105/mulMulzeros:output:0lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul
lstm_cell_105/mul_1Mulzeros:output:0!lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_1
lstm_cell_105/mul_2Mulzeros:output:0!lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_2
lstm_cell_105/mul_3Mulzeros:output:0!lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_3£
lstm_cell_105/ReadVariableOpReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_105/ReadVariableOp
!lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_105/strided_slice/stack
#lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice/stack_1
#lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_105/strided_slice/stack_2Ð
lstm_cell_105/strided_sliceStridedSlice$lstm_cell_105/ReadVariableOp:value:0*lstm_cell_105/strided_slice/stack:output:0,lstm_cell_105/strided_slice/stack_1:output:0,lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice©
lstm_cell_105/MatMul_4MatMullstm_cell_105/mul:z:0$lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_4£
lstm_cell_105/addAddV2lstm_cell_105/BiasAdd:output:0 lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add
lstm_cell_105/SigmoidSigmoidlstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid§
lstm_cell_105/ReadVariableOp_1ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_1
#lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice_1/stack
%lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_105/strided_slice_1/stack_1
%lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_1/stack_2Ü
lstm_cell_105/strided_slice_1StridedSlice&lstm_cell_105/ReadVariableOp_1:value:0,lstm_cell_105/strided_slice_1/stack:output:0.lstm_cell_105/strided_slice_1/stack_1:output:0.lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_1­
lstm_cell_105/MatMul_5MatMullstm_cell_105/mul_1:z:0&lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_5©
lstm_cell_105/add_1AddV2 lstm_cell_105/BiasAdd_1:output:0 lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_1
lstm_cell_105/Sigmoid_1Sigmoidlstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_1
lstm_cell_105/mul_4Mullstm_cell_105/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_4§
lstm_cell_105/ReadVariableOp_2ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_2
#lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_105/strided_slice_2/stack
%lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_105/strided_slice_2/stack_1
%lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_2/stack_2Ü
lstm_cell_105/strided_slice_2StridedSlice&lstm_cell_105/ReadVariableOp_2:value:0,lstm_cell_105/strided_slice_2/stack:output:0.lstm_cell_105/strided_slice_2/stack_1:output:0.lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_2­
lstm_cell_105/MatMul_6MatMullstm_cell_105/mul_2:z:0&lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_6©
lstm_cell_105/add_2AddV2 lstm_cell_105/BiasAdd_2:output:0 lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_2{
lstm_cell_105/ReluRelulstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu 
lstm_cell_105/mul_5Mullstm_cell_105/Sigmoid:y:0 lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_5
lstm_cell_105/add_3AddV2lstm_cell_105/mul_4:z:0lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_3§
lstm_cell_105/ReadVariableOp_3ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_3
#lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_105/strided_slice_3/stack
%lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_105/strided_slice_3/stack_1
%lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_3/stack_2Ü
lstm_cell_105/strided_slice_3StridedSlice&lstm_cell_105/ReadVariableOp_3:value:0,lstm_cell_105/strided_slice_3/stack:output:0.lstm_cell_105/strided_slice_3/stack_1:output:0.lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_3­
lstm_cell_105/MatMul_7MatMullstm_cell_105/mul_3:z:0&lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_7©
lstm_cell_105/add_4AddV2 lstm_cell_105/BiasAdd_3:output:0 lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_4
lstm_cell_105/Sigmoid_2Sigmoidlstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_2
lstm_cell_105/Relu_1Relulstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu_1¤
lstm_cell_105/mul_6Mullstm_cell_105/Sigmoid_2:y:0"lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_105_split_readvariableop_resource-lstm_cell_105_split_1_readvariableop_resource%lstm_cell_105_readvariableop_resource*
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
bodyR
while_body_3428996*
condR
while_cond_3428995*K
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
runtimeï
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_105/ReadVariableOp^lstm_cell_105/ReadVariableOp_1^lstm_cell_105/ReadVariableOp_2^lstm_cell_105/ReadVariableOp_3#^lstm_cell_105/split/ReadVariableOp%^lstm_cell_105/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_105/ReadVariableOplstm_cell_105/ReadVariableOp2@
lstm_cell_105/ReadVariableOp_1lstm_cell_105/ReadVariableOp_12@
lstm_cell_105/ReadVariableOp_2lstm_cell_105/ReadVariableOp_22@
lstm_cell_105/ReadVariableOp_3lstm_cell_105/ReadVariableOp_32H
"lstm_cell_105/split/ReadVariableOp"lstm_cell_105/split/ReadVariableOp2L
$lstm_cell_105/split_1/ReadVariableOp$lstm_cell_105/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 ¤
¶
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430305
inputs_0>
+lstm_cell_105_split_readvariableop_resource:	<
-lstm_cell_105_split_1_readvariableop_resource:	8
%lstm_cell_105_readvariableop_resource:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_105/ReadVariableOp¢lstm_cell_105/ReadVariableOp_1¢lstm_cell_105/ReadVariableOp_2¢lstm_cell_105/ReadVariableOp_3¢"lstm_cell_105/split/ReadVariableOp¢$lstm_cell_105/split_1/ReadVariableOp¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2|
lstm_cell_105/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_105/ones_like/Shape
lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_105/ones_like/Const¼
lstm_cell_105/ones_likeFill&lstm_cell_105/ones_like/Shape:output:0&lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/ones_like
lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_105/split/split_dimµ
"lstm_cell_105/split/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_105/split/ReadVariableOpß
lstm_cell_105/splitSplit&lstm_cell_105/split/split_dim:output:0*lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_105/split 
lstm_cell_105/MatMulMatMulstrided_slice_2:output:0lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul¤
lstm_cell_105/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_1¤
lstm_cell_105/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_2¤
lstm_cell_105/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_3
lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_105/split_1/split_dim·
$lstm_cell_105/split_1/ReadVariableOpReadVariableOp-lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_105/split_1/ReadVariableOp×
lstm_cell_105/split_1Split(lstm_cell_105/split_1/split_dim:output:0,lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_105/split_1«
lstm_cell_105/BiasAddBiasAddlstm_cell_105/MatMul:product:0lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd±
lstm_cell_105/BiasAdd_1BiasAdd lstm_cell_105/MatMul_1:product:0lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_1±
lstm_cell_105/BiasAdd_2BiasAdd lstm_cell_105/MatMul_2:product:0lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_2±
lstm_cell_105/BiasAdd_3BiasAdd lstm_cell_105/MatMul_3:product:0lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_3
lstm_cell_105/mulMulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul
lstm_cell_105/mul_1Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_1
lstm_cell_105/mul_2Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_2
lstm_cell_105/mul_3Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_3£
lstm_cell_105/ReadVariableOpReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_105/ReadVariableOp
!lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_105/strided_slice/stack
#lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice/stack_1
#lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_105/strided_slice/stack_2Ð
lstm_cell_105/strided_sliceStridedSlice$lstm_cell_105/ReadVariableOp:value:0*lstm_cell_105/strided_slice/stack:output:0,lstm_cell_105/strided_slice/stack_1:output:0,lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice©
lstm_cell_105/MatMul_4MatMullstm_cell_105/mul:z:0$lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_4£
lstm_cell_105/addAddV2lstm_cell_105/BiasAdd:output:0 lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add
lstm_cell_105/SigmoidSigmoidlstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid§
lstm_cell_105/ReadVariableOp_1ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_1
#lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice_1/stack
%lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_105/strided_slice_1/stack_1
%lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_1/stack_2Ü
lstm_cell_105/strided_slice_1StridedSlice&lstm_cell_105/ReadVariableOp_1:value:0,lstm_cell_105/strided_slice_1/stack:output:0.lstm_cell_105/strided_slice_1/stack_1:output:0.lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_1­
lstm_cell_105/MatMul_5MatMullstm_cell_105/mul_1:z:0&lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_5©
lstm_cell_105/add_1AddV2 lstm_cell_105/BiasAdd_1:output:0 lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_1
lstm_cell_105/Sigmoid_1Sigmoidlstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_1
lstm_cell_105/mul_4Mullstm_cell_105/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_4§
lstm_cell_105/ReadVariableOp_2ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_2
#lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_105/strided_slice_2/stack
%lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_105/strided_slice_2/stack_1
%lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_2/stack_2Ü
lstm_cell_105/strided_slice_2StridedSlice&lstm_cell_105/ReadVariableOp_2:value:0,lstm_cell_105/strided_slice_2/stack:output:0.lstm_cell_105/strided_slice_2/stack_1:output:0.lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_2­
lstm_cell_105/MatMul_6MatMullstm_cell_105/mul_2:z:0&lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_6©
lstm_cell_105/add_2AddV2 lstm_cell_105/BiasAdd_2:output:0 lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_2{
lstm_cell_105/ReluRelulstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu 
lstm_cell_105/mul_5Mullstm_cell_105/Sigmoid:y:0 lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_5
lstm_cell_105/add_3AddV2lstm_cell_105/mul_4:z:0lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_3§
lstm_cell_105/ReadVariableOp_3ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_3
#lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_105/strided_slice_3/stack
%lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_105/strided_slice_3/stack_1
%lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_3/stack_2Ü
lstm_cell_105/strided_slice_3StridedSlice&lstm_cell_105/ReadVariableOp_3:value:0,lstm_cell_105/strided_slice_3/stack:output:0.lstm_cell_105/strided_slice_3/stack_1:output:0.lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_3­
lstm_cell_105/MatMul_7MatMullstm_cell_105/mul_3:z:0&lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_7©
lstm_cell_105/add_4AddV2 lstm_cell_105/BiasAdd_3:output:0 lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_4
lstm_cell_105/Sigmoid_2Sigmoidlstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_2
lstm_cell_105/Relu_1Relulstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu_1¤
lstm_cell_105/mul_6Mullstm_cell_105/Sigmoid_2:y:0"lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_105_split_readvariableop_resource-lstm_cell_105_split_1_readvariableop_resource%lstm_cell_105_readvariableop_resource*
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
bodyR
while_body_3430172*
condR
while_cond_3430171*K
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
runtimeï
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_105/ReadVariableOp^lstm_cell_105/ReadVariableOp_1^lstm_cell_105/ReadVariableOp_2^lstm_cell_105/ReadVariableOp_3#^lstm_cell_105/split/ReadVariableOp%^lstm_cell_105/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_105/ReadVariableOplstm_cell_105/ReadVariableOp2@
lstm_cell_105/ReadVariableOp_1lstm_cell_105/ReadVariableOp_12@
lstm_cell_105/ReadVariableOp_2lstm_cell_105/ReadVariableOp_22@
lstm_cell_105/ReadVariableOp_3lstm_cell_105/ReadVariableOp_32H
"lstm_cell_105/split/ReadVariableOp"lstm_cell_105/split/ReadVariableOp2L
$lstm_cell_105/split_1/ReadVariableOp$lstm_cell_105/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ãv
ï
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3431442

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
dropout/ShapeÐ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÕÖ2&
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
dropout_1/Shape×
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ý°2(
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
dropout_2/Shape×
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2üÐ2(
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
dropout_3/Shape×
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÈÛ2(
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
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
mul_6á
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muld
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

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Ú
È
while_cond_3430996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3430996___redundant_placeholder05
1while_while_cond_3430996___redundant_placeholder15
1while_while_cond_3430996___redundant_placeholder25
1while_while_cond_3430996___redundant_placeholder3
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

c
G__inference_reshape_63_layer_call_and_return_conditional_losses_3428783

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
à,
Â
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429295
input_43#
lstm_105_3429264:	
lstm_105_3429266:	#
lstm_105_3429268:	 #
dense_126_3429271:  
dense_126_3429273: #
dense_127_3429276: 
dense_127_3429278:
identity¢!dense_126/StatefulPartitionedCall¢!dense_127/StatefulPartitionedCall¢0dense_127/bias/Regularizer/Square/ReadVariableOp¢ lstm_105/StatefulPartitionedCall¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp­
 lstm_105/StatefulPartitionedCallStatefulPartitionedCallinput_43lstm_105_3429264lstm_105_3429266lstm_105_3429268*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34287232"
 lstm_105/StatefulPartitionedCall¿
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0dense_126_3429271dense_126_3429273*
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
GPU 2J 8 *O
fJRH
F__inference_dense_126_layer_call_and_return_conditional_losses_34287422#
!dense_126/StatefulPartitionedCallÀ
!dense_127/StatefulPartitionedCallStatefulPartitionedCall*dense_126/StatefulPartitionedCall:output:0dense_127_3429276dense_127_3429278*
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
GPU 2J 8 *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_34287642#
!dense_127/StatefulPartitionedCall
reshape_63/PartitionedCallPartitionedCall*dense_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *P
fKRI
G__inference_reshape_63_layer_call_and_return_conditional_losses_34287832
reshape_63/PartitionedCallÔ
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_105_3429264*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mul²
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_127_3429278*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mul
IdentityIdentity#reshape_63/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_126/StatefulPartitionedCall"^dense_127/StatefulPartitionedCall1^dense_127/bias/Regularizer/Square/ReadVariableOp!^lstm_105/StatefulPartitionedCall@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_43
Ú
È
while_cond_3428124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428124___redundant_placeholder05
1while_while_cond_3428124___redundant_placeholder15
1while_while_cond_3428124___redundant_placeholder25
1while_while_cond_3428124___redundant_placeholder3
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
¯B

 __inference__traced_save_3431594
file_prefix/
+savev2_dense_126_kernel_read_readvariableop-
)savev2_dense_126_bias_read_readvariableop/
+savev2_dense_127_kernel_read_readvariableop-
)savev2_dense_127_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_105_lstm_cell_105_kernel_read_readvariableopF
Bsavev2_lstm_105_lstm_cell_105_recurrent_kernel_read_readvariableop:
6savev2_lstm_105_lstm_cell_105_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_126_kernel_m_read_readvariableop4
0savev2_adam_dense_126_bias_m_read_readvariableop6
2savev2_adam_dense_127_kernel_m_read_readvariableop4
0savev2_adam_dense_127_bias_m_read_readvariableopC
?savev2_adam_lstm_105_lstm_cell_105_kernel_m_read_readvariableopM
Isavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_105_lstm_cell_105_bias_m_read_readvariableop6
2savev2_adam_dense_126_kernel_v_read_readvariableop4
0savev2_adam_dense_126_bias_v_read_readvariableop6
2savev2_adam_dense_127_kernel_v_read_readvariableop4
0savev2_adam_dense_127_bias_v_read_readvariableopC
?savev2_adam_lstm_105_lstm_cell_105_kernel_v_read_readvariableopM
Isavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_105_lstm_cell_105_bias_v_read_readvariableop
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
SaveV2/shape_and_slicesú
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_126_kernel_read_readvariableop)savev2_dense_126_bias_read_readvariableop+savev2_dense_127_kernel_read_readvariableop)savev2_dense_127_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_105_lstm_cell_105_kernel_read_readvariableopBsavev2_lstm_105_lstm_cell_105_recurrent_kernel_read_readvariableop6savev2_lstm_105_lstm_cell_105_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_126_kernel_m_read_readvariableop0savev2_adam_dense_126_bias_m_read_readvariableop2savev2_adam_dense_127_kernel_m_read_readvariableop0savev2_adam_dense_127_bias_m_read_readvariableop?savev2_adam_lstm_105_lstm_cell_105_kernel_m_read_readvariableopIsavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_105_lstm_cell_105_bias_m_read_readvariableop2savev2_adam_dense_126_kernel_v_read_readvariableop0savev2_adam_dense_126_bias_v_read_readvariableop2savev2_adam_dense_127_kernel_v_read_readvariableop0savev2_adam_dense_127_bias_v_read_readvariableop?savev2_adam_lstm_105_lstm_cell_105_kernel_v_read_readvariableopIsavev2_adam_lstm_105_lstm_cell_105_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_105_lstm_cell_105_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
É: :  : : :: : : : : :	:	 :: : :  : : ::	:	 ::  : : ::	:	 :: 2(
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
:	:%!

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
:	:%!

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
:	:%!

_output_shapes
:	 :!

_output_shapes	
::

_output_shapes
: 

c
G__inference_reshape_63_layer_call_and_return_conditional_losses_3431226

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
ê	
ª
/__inference_sequential_42_layer_call_fn_3429261
input_43
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_43unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_42_layer_call_and_return_conditional_losses_34292252
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_43

¬
__inference_loss_fn_0_3431242G
9dense_127_bias_regularizer_square_readvariableop_resource:
identity¢0dense_127/bias/Regularizer/Square/ReadVariableOpÚ
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOp9dense_127_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mull
IdentityIdentity"dense_127/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp1^dense_127/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp
Ú
È
while_cond_3427827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3427827___redundant_placeholder05
1while_while_cond_3427827___redundant_placeholder15
1while_while_cond_3427827___redundant_placeholder25
1while_while_cond_3427827___redundant_placeholder3
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
é

ü
lstm_105_while_cond_3429515.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_30
,lstm_105_while_less_lstm_105_strided_slice_1G
Clstm_105_while_lstm_105_while_cond_3429515___redundant_placeholder0G
Clstm_105_while_lstm_105_while_cond_3429515___redundant_placeholder1G
Clstm_105_while_lstm_105_while_cond_3429515___redundant_placeholder2G
Clstm_105_while_lstm_105_while_cond_3429515___redundant_placeholder3
lstm_105_while_identity

lstm_105/while/LessLesslstm_105_while_placeholder,lstm_105_while_less_lstm_105_strided_slice_1*
T0*
_output_shapes
: 2
lstm_105/while/Lessx
lstm_105/while/IdentityIdentitylstm_105/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_105/while/Identity";
lstm_105_while_identity lstm_105/while/Identity:output:0*(
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
Áµ
±	
while_body_3428996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_105_split_readvariableop_resource_0:	D
5while_lstm_cell_105_split_1_readvariableop_resource_0:	@
-while_lstm_cell_105_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_105_split_readvariableop_resource:	B
3while_lstm_cell_105_split_1_readvariableop_resource:	>
+while_lstm_cell_105_readvariableop_resource:	 ¢"while/lstm_cell_105/ReadVariableOp¢$while/lstm_cell_105/ReadVariableOp_1¢$while/lstm_cell_105/ReadVariableOp_2¢$while/lstm_cell_105/ReadVariableOp_3¢(while/lstm_cell_105/split/ReadVariableOp¢*while/lstm_cell_105/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_105/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_105/ones_like/Shape
#while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_105/ones_like/ConstÔ
while/lstm_cell_105/ones_likeFill,while/lstm_cell_105/ones_like/Shape:output:0,while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/ones_like
!while/lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2#
!while/lstm_cell_105/dropout/ConstÏ
while/lstm_cell_105/dropout/MulMul&while/lstm_cell_105/ones_like:output:0*while/lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_105/dropout/Mul
!while/lstm_cell_105/dropout/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_105/dropout/Shape
8while/lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ìà42:
8while/lstm_cell_105/dropout/random_uniform/RandomUniform
*while/lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_105/dropout/GreaterEqual/y
(while/lstm_cell_105/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_105/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_105/dropout/GreaterEqual»
 while/lstm_cell_105/dropout/CastCast,while/lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_105/dropout/CastÊ
!while/lstm_cell_105/dropout/Mul_1Mul#while/lstm_cell_105/dropout/Mul:z:0$while/lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout/Mul_1
#while/lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_1/ConstÕ
!while/lstm_cell_105/dropout_1/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_1/Mul 
#while/lstm_cell_105/dropout_1/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_1/Shape
:while/lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2âéP2<
:while/lstm_cell_105/dropout_1/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_1/GreaterEqual/y
*while/lstm_cell_105/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_1/GreaterEqualÁ
"while/lstm_cell_105/dropout_1/CastCast.while/lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_1/CastÒ
#while/lstm_cell_105/dropout_1/Mul_1Mul%while/lstm_cell_105/dropout_1/Mul:z:0&while/lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_1/Mul_1
#while/lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_2/ConstÕ
!while/lstm_cell_105/dropout_2/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_2/Mul 
#while/lstm_cell_105/dropout_2/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_2/Shape
:while/lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2 ÔÛ2<
:while/lstm_cell_105/dropout_2/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_2/GreaterEqual/y
*while/lstm_cell_105/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_2/GreaterEqualÁ
"while/lstm_cell_105/dropout_2/CastCast.while/lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_2/CastÒ
#while/lstm_cell_105/dropout_2/Mul_1Mul%while/lstm_cell_105/dropout_2/Mul:z:0&while/lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_2/Mul_1
#while/lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_3/ConstÕ
!while/lstm_cell_105/dropout_3/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_3/Mul 
#while/lstm_cell_105/dropout_3/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_3/Shape
:while/lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¥»2<
:while/lstm_cell_105/dropout_3/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_3/GreaterEqual/y
*while/lstm_cell_105/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_3/GreaterEqualÁ
"while/lstm_cell_105/dropout_3/CastCast.while/lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_3/CastÒ
#while/lstm_cell_105/dropout_3/Mul_1Mul%while/lstm_cell_105/dropout_3/Mul:z:0&while/lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_3/Mul_1
#while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_105/split/split_dimÉ
(while/lstm_cell_105/split/ReadVariableOpReadVariableOp3while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_105/split/ReadVariableOp÷
while/lstm_cell_105/splitSplit,while/lstm_cell_105/split/split_dim:output:00while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_105/splitÊ
while/lstm_cell_105/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMulÎ
while/lstm_cell_105/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_1Î
while/lstm_cell_105/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_2Î
while/lstm_cell_105/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_3
%while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_105/split_1/split_dimË
*while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_105/split_1/ReadVariableOpï
while/lstm_cell_105/split_1Split.while/lstm_cell_105/split_1/split_dim:output:02while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_105/split_1Ã
while/lstm_cell_105/BiasAddBiasAdd$while/lstm_cell_105/MatMul:product:0$while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAddÉ
while/lstm_cell_105/BiasAdd_1BiasAdd&while/lstm_cell_105/MatMul_1:product:0$while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_1É
while/lstm_cell_105/BiasAdd_2BiasAdd&while/lstm_cell_105/MatMul_2:product:0$while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_2É
while/lstm_cell_105/BiasAdd_3BiasAdd&while/lstm_cell_105/MatMul_3:product:0$while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_3§
while/lstm_cell_105/mulMulwhile_placeholder_2%while/lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul­
while/lstm_cell_105/mul_1Mulwhile_placeholder_2'while/lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_1­
while/lstm_cell_105/mul_2Mulwhile_placeholder_2'while/lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_2­
while/lstm_cell_105/mul_3Mulwhile_placeholder_2'while/lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_3·
"while/lstm_cell_105/ReadVariableOpReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_105/ReadVariableOp£
'while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_105/strided_slice/stack§
)while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice/stack_1§
)while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_105/strided_slice/stack_2ô
!while/lstm_cell_105/strided_sliceStridedSlice*while/lstm_cell_105/ReadVariableOp:value:00while/lstm_cell_105/strided_slice/stack:output:02while/lstm_cell_105/strided_slice/stack_1:output:02while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_105/strided_sliceÁ
while/lstm_cell_105/MatMul_4MatMulwhile/lstm_cell_105/mul:z:0*while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_4»
while/lstm_cell_105/addAddV2$while/lstm_cell_105/BiasAdd:output:0&while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add
while/lstm_cell_105/SigmoidSigmoidwhile/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid»
$while/lstm_cell_105/ReadVariableOp_1ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_1§
)while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice_1/stack«
+while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_105/strided_slice_1/stack_1«
+while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_1/stack_2
#while/lstm_cell_105/strided_slice_1StridedSlice,while/lstm_cell_105/ReadVariableOp_1:value:02while/lstm_cell_105/strided_slice_1/stack:output:04while/lstm_cell_105/strided_slice_1/stack_1:output:04while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_1Å
while/lstm_cell_105/MatMul_5MatMulwhile/lstm_cell_105/mul_1:z:0,while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_5Á
while/lstm_cell_105/add_1AddV2&while/lstm_cell_105/BiasAdd_1:output:0&while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_1
while/lstm_cell_105/Sigmoid_1Sigmoidwhile/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_1§
while/lstm_cell_105/mul_4Mul!while/lstm_cell_105/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_4»
$while/lstm_cell_105/ReadVariableOp_2ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_2§
)while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_105/strided_slice_2/stack«
+while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_105/strided_slice_2/stack_1«
+while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_2/stack_2
#while/lstm_cell_105/strided_slice_2StridedSlice,while/lstm_cell_105/ReadVariableOp_2:value:02while/lstm_cell_105/strided_slice_2/stack:output:04while/lstm_cell_105/strided_slice_2/stack_1:output:04while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_2Å
while/lstm_cell_105/MatMul_6MatMulwhile/lstm_cell_105/mul_2:z:0,while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_6Á
while/lstm_cell_105/add_2AddV2&while/lstm_cell_105/BiasAdd_2:output:0&while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_2
while/lstm_cell_105/ReluReluwhile/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu¸
while/lstm_cell_105/mul_5Mulwhile/lstm_cell_105/Sigmoid:y:0&while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_5¯
while/lstm_cell_105/add_3AddV2while/lstm_cell_105/mul_4:z:0while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_3»
$while/lstm_cell_105/ReadVariableOp_3ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_3§
)while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_105/strided_slice_3/stack«
+while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_105/strided_slice_3/stack_1«
+while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_3/stack_2
#while/lstm_cell_105/strided_slice_3StridedSlice,while/lstm_cell_105/ReadVariableOp_3:value:02while/lstm_cell_105/strided_slice_3/stack:output:04while/lstm_cell_105/strided_slice_3/stack_1:output:04while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_3Å
while/lstm_cell_105/MatMul_7MatMulwhile/lstm_cell_105/mul_3:z:0,while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_7Á
while/lstm_cell_105/add_4AddV2&while/lstm_cell_105/BiasAdd_3:output:0&while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_4
while/lstm_cell_105/Sigmoid_2Sigmoidwhile/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_2
while/lstm_cell_105/Relu_1Reluwhile/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu_1¼
while/lstm_cell_105/mul_6Mul!while/lstm_cell_105/Sigmoid_2:y:0(while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_105/mul_6:z:0*
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
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_105/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_105/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_105/ReadVariableOp%^while/lstm_cell_105/ReadVariableOp_1%^while/lstm_cell_105/ReadVariableOp_2%^while/lstm_cell_105/ReadVariableOp_3)^while/lstm_cell_105/split/ReadVariableOp+^while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"\
+while_lstm_cell_105_readvariableop_resource-while_lstm_cell_105_readvariableop_resource_0"l
3while_lstm_cell_105_split_1_readvariableop_resource5while_lstm_cell_105_split_1_readvariableop_resource_0"h
1while_lstm_cell_105_split_readvariableop_resource3while_lstm_cell_105_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_105/ReadVariableOp"while/lstm_cell_105/ReadVariableOp2L
$while/lstm_cell_105/ReadVariableOp_1$while/lstm_cell_105/ReadVariableOp_12L
$while/lstm_cell_105/ReadVariableOp_2$while/lstm_cell_105/ReadVariableOp_22L
$while/lstm_cell_105/ReadVariableOp_3$while/lstm_cell_105/ReadVariableOp_32T
(while/lstm_cell_105/split/ReadVariableOp(while/lstm_cell_105/split/ReadVariableOp2X
*while/lstm_cell_105/split_1/ReadVariableOp*while/lstm_cell_105/split_1/ReadVariableOp: 
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
Ú
È
while_cond_3430446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3430446___redundant_placeholder05
1while_while_cond_3430446___redundant_placeholder15
1while_while_cond_3430446___redundant_placeholder25
1while_while_cond_3430446___redundant_placeholder3
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
×R
Ð
E__inference_lstm_105_layer_call_and_return_conditional_losses_3427903

inputs(
lstm_cell_105_3427815:	$
lstm_cell_105_3427817:	(
lstm_cell_105_3427819:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢%lstm_cell_105/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2§
%lstm_cell_105/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_105_3427815lstm_cell_105_3427817lstm_cell_105_3427819*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_34278142'
%lstm_cell_105/StatefulPartitionedCall
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
while/loop_counterÈ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_105_3427815lstm_cell_105_3427817lstm_cell_105_3427819*
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
bodyR
while_body_3427828*
condR
while_cond_3427827*K
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
runtimeÙ
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_105_3427815*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÀ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp&^lstm_cell_105/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2N
%lstm_cell_105/StatefulPartitionedCall%lstm_cell_105/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
ñ
while_body_3427828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_105_3427852_0:	,
while_lstm_cell_105_3427854_0:	0
while_lstm_cell_105_3427856_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_105_3427852:	*
while_lstm_cell_105_3427854:	.
while_lstm_cell_105_3427856:	 ¢+while/lstm_cell_105/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemë
+while/lstm_cell_105/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_105_3427852_0while_lstm_cell_105_3427854_0while_lstm_cell_105_3427856_0*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_34278142-
+while/lstm_cell_105/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_105/StatefulPartitionedCall:output:0*
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
while/Identity_3¥
while/Identity_4Identity4while/lstm_cell_105/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¥
while/Identity_5Identity4while/lstm_cell_105/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp,^while/lstm_cell_105/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_105_3427852while_lstm_cell_105_3427852_0"<
while_lstm_cell_105_3427854while_lstm_cell_105_3427854_0"<
while_lstm_cell_105_3427856while_lstm_cell_105_3427856_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+while/lstm_cell_105/StatefulPartitionedCall+while/lstm_cell_105/StatefulPartitionedCall: 
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
Â
¹
*__inference_lstm_105_layer_call_fn_3430040
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34282002
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

±	
while_body_3430722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_105_split_readvariableop_resource_0:	D
5while_lstm_cell_105_split_1_readvariableop_resource_0:	@
-while_lstm_cell_105_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_105_split_readvariableop_resource:	B
3while_lstm_cell_105_split_1_readvariableop_resource:	>
+while_lstm_cell_105_readvariableop_resource:	 ¢"while/lstm_cell_105/ReadVariableOp¢$while/lstm_cell_105/ReadVariableOp_1¢$while/lstm_cell_105/ReadVariableOp_2¢$while/lstm_cell_105/ReadVariableOp_3¢(while/lstm_cell_105/split/ReadVariableOp¢*while/lstm_cell_105/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_105/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_105/ones_like/Shape
#while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_105/ones_like/ConstÔ
while/lstm_cell_105/ones_likeFill,while/lstm_cell_105/ones_like/Shape:output:0,while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/ones_like
#while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_105/split/split_dimÉ
(while/lstm_cell_105/split/ReadVariableOpReadVariableOp3while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_105/split/ReadVariableOp÷
while/lstm_cell_105/splitSplit,while/lstm_cell_105/split/split_dim:output:00while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_105/splitÊ
while/lstm_cell_105/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMulÎ
while/lstm_cell_105/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_1Î
while/lstm_cell_105/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_2Î
while/lstm_cell_105/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_3
%while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_105/split_1/split_dimË
*while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_105/split_1/ReadVariableOpï
while/lstm_cell_105/split_1Split.while/lstm_cell_105/split_1/split_dim:output:02while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_105/split_1Ã
while/lstm_cell_105/BiasAddBiasAdd$while/lstm_cell_105/MatMul:product:0$while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAddÉ
while/lstm_cell_105/BiasAdd_1BiasAdd&while/lstm_cell_105/MatMul_1:product:0$while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_1É
while/lstm_cell_105/BiasAdd_2BiasAdd&while/lstm_cell_105/MatMul_2:product:0$while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_2É
while/lstm_cell_105/BiasAdd_3BiasAdd&while/lstm_cell_105/MatMul_3:product:0$while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_3¨
while/lstm_cell_105/mulMulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul¬
while/lstm_cell_105/mul_1Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_1¬
while/lstm_cell_105/mul_2Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_2¬
while/lstm_cell_105/mul_3Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_3·
"while/lstm_cell_105/ReadVariableOpReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_105/ReadVariableOp£
'while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_105/strided_slice/stack§
)while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice/stack_1§
)while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_105/strided_slice/stack_2ô
!while/lstm_cell_105/strided_sliceStridedSlice*while/lstm_cell_105/ReadVariableOp:value:00while/lstm_cell_105/strided_slice/stack:output:02while/lstm_cell_105/strided_slice/stack_1:output:02while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_105/strided_sliceÁ
while/lstm_cell_105/MatMul_4MatMulwhile/lstm_cell_105/mul:z:0*while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_4»
while/lstm_cell_105/addAddV2$while/lstm_cell_105/BiasAdd:output:0&while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add
while/lstm_cell_105/SigmoidSigmoidwhile/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid»
$while/lstm_cell_105/ReadVariableOp_1ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_1§
)while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice_1/stack«
+while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_105/strided_slice_1/stack_1«
+while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_1/stack_2
#while/lstm_cell_105/strided_slice_1StridedSlice,while/lstm_cell_105/ReadVariableOp_1:value:02while/lstm_cell_105/strided_slice_1/stack:output:04while/lstm_cell_105/strided_slice_1/stack_1:output:04while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_1Å
while/lstm_cell_105/MatMul_5MatMulwhile/lstm_cell_105/mul_1:z:0,while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_5Á
while/lstm_cell_105/add_1AddV2&while/lstm_cell_105/BiasAdd_1:output:0&while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_1
while/lstm_cell_105/Sigmoid_1Sigmoidwhile/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_1§
while/lstm_cell_105/mul_4Mul!while/lstm_cell_105/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_4»
$while/lstm_cell_105/ReadVariableOp_2ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_2§
)while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_105/strided_slice_2/stack«
+while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_105/strided_slice_2/stack_1«
+while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_2/stack_2
#while/lstm_cell_105/strided_slice_2StridedSlice,while/lstm_cell_105/ReadVariableOp_2:value:02while/lstm_cell_105/strided_slice_2/stack:output:04while/lstm_cell_105/strided_slice_2/stack_1:output:04while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_2Å
while/lstm_cell_105/MatMul_6MatMulwhile/lstm_cell_105/mul_2:z:0,while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_6Á
while/lstm_cell_105/add_2AddV2&while/lstm_cell_105/BiasAdd_2:output:0&while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_2
while/lstm_cell_105/ReluReluwhile/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu¸
while/lstm_cell_105/mul_5Mulwhile/lstm_cell_105/Sigmoid:y:0&while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_5¯
while/lstm_cell_105/add_3AddV2while/lstm_cell_105/mul_4:z:0while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_3»
$while/lstm_cell_105/ReadVariableOp_3ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_3§
)while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_105/strided_slice_3/stack«
+while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_105/strided_slice_3/stack_1«
+while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_3/stack_2
#while/lstm_cell_105/strided_slice_3StridedSlice,while/lstm_cell_105/ReadVariableOp_3:value:02while/lstm_cell_105/strided_slice_3/stack:output:04while/lstm_cell_105/strided_slice_3/stack_1:output:04while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_3Å
while/lstm_cell_105/MatMul_7MatMulwhile/lstm_cell_105/mul_3:z:0,while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_7Á
while/lstm_cell_105/add_4AddV2&while/lstm_cell_105/BiasAdd_3:output:0&while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_4
while/lstm_cell_105/Sigmoid_2Sigmoidwhile/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_2
while/lstm_cell_105/Relu_1Reluwhile/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu_1¼
while/lstm_cell_105/mul_6Mul!while/lstm_cell_105/Sigmoid_2:y:0(while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_105/mul_6:z:0*
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
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_105/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_105/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_105/ReadVariableOp%^while/lstm_cell_105/ReadVariableOp_1%^while/lstm_cell_105/ReadVariableOp_2%^while/lstm_cell_105/ReadVariableOp_3)^while/lstm_cell_105/split/ReadVariableOp+^while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"\
+while_lstm_cell_105_readvariableop_resource-while_lstm_cell_105_readvariableop_resource_0"l
3while_lstm_cell_105_split_1_readvariableop_resource5while_lstm_cell_105_split_1_readvariableop_resource_0"h
1while_lstm_cell_105_split_readvariableop_resource3while_lstm_cell_105_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_105/ReadVariableOp"while/lstm_cell_105/ReadVariableOp2L
$while/lstm_cell_105/ReadVariableOp_1$while/lstm_cell_105/ReadVariableOp_12L
$while/lstm_cell_105/ReadVariableOp_2$while/lstm_cell_105/ReadVariableOp_22L
$while/lstm_cell_105/ReadVariableOp_3$while/lstm_cell_105/ReadVariableOp_32T
(while/lstm_cell_105/split/ReadVariableOp(while/lstm_cell_105/split/ReadVariableOp2X
*while/lstm_cell_105/split_1/ReadVariableOp*while/lstm_cell_105/split_1/ReadVariableOp: 
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

÷
F__inference_dense_126_layer_call_and_return_conditional_losses_3428742

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
Ú,
À
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429225

inputs#
lstm_105_3429194:	
lstm_105_3429196:	#
lstm_105_3429198:	 #
dense_126_3429201:  
dense_126_3429203: #
dense_127_3429206: 
dense_127_3429208:
identity¢!dense_126/StatefulPartitionedCall¢!dense_127/StatefulPartitionedCall¢0dense_127/bias/Regularizer/Square/ReadVariableOp¢ lstm_105/StatefulPartitionedCall¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp«
 lstm_105/StatefulPartitionedCallStatefulPartitionedCallinputslstm_105_3429194lstm_105_3429196lstm_105_3429198*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34291612"
 lstm_105/StatefulPartitionedCall¿
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0dense_126_3429201dense_126_3429203*
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
GPU 2J 8 *O
fJRH
F__inference_dense_126_layer_call_and_return_conditional_losses_34287422#
!dense_126/StatefulPartitionedCallÀ
!dense_127/StatefulPartitionedCallStatefulPartitionedCall*dense_126/StatefulPartitionedCall:output:0dense_127_3429206dense_127_3429208*
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
GPU 2J 8 *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_34287642#
!dense_127/StatefulPartitionedCall
reshape_63/PartitionedCallPartitionedCall*dense_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *P
fKRI
G__inference_reshape_63_layer_call_and_return_conditional_losses_34287832
reshape_63/PartitionedCallÔ
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_105_3429194*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mul²
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_127_3429208*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mul
IdentityIdentity#reshape_63/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_126/StatefulPartitionedCall"^dense_127/StatefulPartitionedCall1^dense_127/bias/Regularizer/Square/ReadVariableOp!^lstm_105/StatefulPartitionedCall@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
È
while_cond_3428995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428995___redundant_placeholder05
1while_while_cond_3428995___redundant_placeholder15
1while_while_cond_3428995___redundant_placeholder25
1while_while_cond_3428995___redundant_placeholder3
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
ª
ì
lstm_105_while_body_3429516.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_3-
)lstm_105_while_lstm_105_strided_slice_1_0i
elstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_105_while_lstm_cell_105_split_readvariableop_resource_0:	M
>lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0:	I
6lstm_105_while_lstm_cell_105_readvariableop_resource_0:	 
lstm_105_while_identity
lstm_105_while_identity_1
lstm_105_while_identity_2
lstm_105_while_identity_3
lstm_105_while_identity_4
lstm_105_while_identity_5+
'lstm_105_while_lstm_105_strided_slice_1g
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorM
:lstm_105_while_lstm_cell_105_split_readvariableop_resource:	K
<lstm_105_while_lstm_cell_105_split_1_readvariableop_resource:	G
4lstm_105_while_lstm_cell_105_readvariableop_resource:	 ¢+lstm_105/while/lstm_cell_105/ReadVariableOp¢-lstm_105/while/lstm_cell_105/ReadVariableOp_1¢-lstm_105/while/lstm_cell_105/ReadVariableOp_2¢-lstm_105/while/lstm_cell_105/ReadVariableOp_3¢1lstm_105/while/lstm_cell_105/split/ReadVariableOp¢3lstm_105/while/lstm_cell_105/split_1/ReadVariableOpÕ
@lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_105/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0lstm_105_while_placeholderIlstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype024
2lstm_105/while/TensorArrayV2Read/TensorListGetItem¨
,lstm_105/while/lstm_cell_105/ones_like/ShapeShapelstm_105_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_105/while/lstm_cell_105/ones_like/Shape¡
,lstm_105/while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_105/while/lstm_cell_105/ones_like/Constø
&lstm_105/while/lstm_cell_105/ones_likeFill5lstm_105/while/lstm_cell_105/ones_like/Shape:output:05lstm_105/while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/ones_like
,lstm_105/while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_105/while/lstm_cell_105/split/split_dimä
1lstm_105/while/lstm_cell_105/split/ReadVariableOpReadVariableOp<lstm_105_while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_105/while/lstm_cell_105/split/ReadVariableOp
"lstm_105/while/lstm_cell_105/splitSplit5lstm_105/while/lstm_cell_105/split/split_dim:output:09lstm_105/while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2$
"lstm_105/while/lstm_cell_105/splitî
#lstm_105/while/lstm_cell_105/MatMulMatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_105/while/lstm_cell_105/MatMulò
%lstm_105/while/lstm_cell_105/MatMul_1MatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_1ò
%lstm_105/while/lstm_cell_105/MatMul_2MatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_2ò
%lstm_105/while/lstm_cell_105/MatMul_3MatMul9lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_105/while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_3¢
.lstm_105/while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.lstm_105/while/lstm_cell_105/split_1/split_dimæ
3lstm_105/while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp>lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype025
3lstm_105/while/lstm_cell_105/split_1/ReadVariableOp
$lstm_105/while/lstm_cell_105/split_1Split7lstm_105/while/lstm_cell_105/split_1/split_dim:output:0;lstm_105/while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2&
$lstm_105/while/lstm_cell_105/split_1ç
$lstm_105/while/lstm_cell_105/BiasAddBiasAdd-lstm_105/while/lstm_cell_105/MatMul:product:0-lstm_105/while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/while/lstm_cell_105/BiasAddí
&lstm_105/while/lstm_cell_105/BiasAdd_1BiasAdd/lstm_105/while/lstm_cell_105/MatMul_1:product:0-lstm_105/while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/BiasAdd_1í
&lstm_105/while/lstm_cell_105/BiasAdd_2BiasAdd/lstm_105/while/lstm_cell_105/MatMul_2:product:0-lstm_105/while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/BiasAdd_2í
&lstm_105/while/lstm_cell_105/BiasAdd_3BiasAdd/lstm_105/while/lstm_cell_105/MatMul_3:product:0-lstm_105/while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/BiasAdd_3Ì
 lstm_105/while/lstm_cell_105/mulMullstm_105_while_placeholder_2/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/while/lstm_cell_105/mulÐ
"lstm_105/while/lstm_cell_105/mul_1Mullstm_105_while_placeholder_2/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_1Ð
"lstm_105/while/lstm_cell_105/mul_2Mullstm_105_while_placeholder_2/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_2Ð
"lstm_105/while/lstm_cell_105/mul_3Mullstm_105_while_placeholder_2/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_3Ò
+lstm_105/while/lstm_cell_105/ReadVariableOpReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_105/while/lstm_cell_105/ReadVariableOpµ
0lstm_105/while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_105/while/lstm_cell_105/strided_slice/stack¹
2lstm_105/while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_105/while/lstm_cell_105/strided_slice/stack_1¹
2lstm_105/while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_105/while/lstm_cell_105/strided_slice/stack_2ª
*lstm_105/while/lstm_cell_105/strided_sliceStridedSlice3lstm_105/while/lstm_cell_105/ReadVariableOp:value:09lstm_105/while/lstm_cell_105/strided_slice/stack:output:0;lstm_105/while/lstm_cell_105/strided_slice/stack_1:output:0;lstm_105/while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_105/while/lstm_cell_105/strided_sliceå
%lstm_105/while/lstm_cell_105/MatMul_4MatMul$lstm_105/while/lstm_cell_105/mul:z:03lstm_105/while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_4ß
 lstm_105/while/lstm_cell_105/addAddV2-lstm_105/while/lstm_cell_105/BiasAdd:output:0/lstm_105/while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/while/lstm_cell_105/add¯
$lstm_105/while/lstm_cell_105/SigmoidSigmoid$lstm_105/while/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/while/lstm_cell_105/SigmoidÖ
-lstm_105/while/lstm_cell_105/ReadVariableOp_1ReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_105/while/lstm_cell_105/ReadVariableOp_1¹
2lstm_105/while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_105/while/lstm_cell_105/strided_slice_1/stack½
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   26
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_1½
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_105/while/lstm_cell_105/strided_slice_1/stack_2¶
,lstm_105/while/lstm_cell_105/strided_slice_1StridedSlice5lstm_105/while/lstm_cell_105/ReadVariableOp_1:value:0;lstm_105/while/lstm_cell_105/strided_slice_1/stack:output:0=lstm_105/while/lstm_cell_105/strided_slice_1/stack_1:output:0=lstm_105/while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_105/while/lstm_cell_105/strided_slice_1é
%lstm_105/while/lstm_cell_105/MatMul_5MatMul&lstm_105/while/lstm_cell_105/mul_1:z:05lstm_105/while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_5å
"lstm_105/while/lstm_cell_105/add_1AddV2/lstm_105/while/lstm_cell_105/BiasAdd_1:output:0/lstm_105/while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_1µ
&lstm_105/while/lstm_cell_105/Sigmoid_1Sigmoid&lstm_105/while/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/Sigmoid_1Ë
"lstm_105/while/lstm_cell_105/mul_4Mul*lstm_105/while/lstm_cell_105/Sigmoid_1:y:0lstm_105_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_4Ö
-lstm_105/while/lstm_cell_105/ReadVariableOp_2ReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_105/while/lstm_cell_105/ReadVariableOp_2¹
2lstm_105/while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_105/while/lstm_cell_105/strided_slice_2/stack½
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   26
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_1½
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_105/while/lstm_cell_105/strided_slice_2/stack_2¶
,lstm_105/while/lstm_cell_105/strided_slice_2StridedSlice5lstm_105/while/lstm_cell_105/ReadVariableOp_2:value:0;lstm_105/while/lstm_cell_105/strided_slice_2/stack:output:0=lstm_105/while/lstm_cell_105/strided_slice_2/stack_1:output:0=lstm_105/while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_105/while/lstm_cell_105/strided_slice_2é
%lstm_105/while/lstm_cell_105/MatMul_6MatMul&lstm_105/while/lstm_cell_105/mul_2:z:05lstm_105/while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_6å
"lstm_105/while/lstm_cell_105/add_2AddV2/lstm_105/while/lstm_cell_105/BiasAdd_2:output:0/lstm_105/while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_2¨
!lstm_105/while/lstm_cell_105/ReluRelu&lstm_105/while/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_105/while/lstm_cell_105/ReluÜ
"lstm_105/while/lstm_cell_105/mul_5Mul(lstm_105/while/lstm_cell_105/Sigmoid:y:0/lstm_105/while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_5Ó
"lstm_105/while/lstm_cell_105/add_3AddV2&lstm_105/while/lstm_cell_105/mul_4:z:0&lstm_105/while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_3Ö
-lstm_105/while/lstm_cell_105/ReadVariableOp_3ReadVariableOp6lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_105/while/lstm_cell_105/ReadVariableOp_3¹
2lstm_105/while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_105/while/lstm_cell_105/strided_slice_3/stack½
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_1½
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_105/while/lstm_cell_105/strided_slice_3/stack_2¶
,lstm_105/while/lstm_cell_105/strided_slice_3StridedSlice5lstm_105/while/lstm_cell_105/ReadVariableOp_3:value:0;lstm_105/while/lstm_cell_105/strided_slice_3/stack:output:0=lstm_105/while/lstm_cell_105/strided_slice_3/stack_1:output:0=lstm_105/while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_105/while/lstm_cell_105/strided_slice_3é
%lstm_105/while/lstm_cell_105/MatMul_7MatMul&lstm_105/while/lstm_cell_105/mul_3:z:05lstm_105/while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/while/lstm_cell_105/MatMul_7å
"lstm_105/while/lstm_cell_105/add_4AddV2/lstm_105/while/lstm_cell_105/BiasAdd_3:output:0/lstm_105/while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/add_4µ
&lstm_105/while/lstm_cell_105/Sigmoid_2Sigmoid&lstm_105/while/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/while/lstm_cell_105/Sigmoid_2¬
#lstm_105/while/lstm_cell_105/Relu_1Relu&lstm_105/while/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_105/while/lstm_cell_105/Relu_1à
"lstm_105/while/lstm_cell_105/mul_6Mul*lstm_105/while/lstm_cell_105/Sigmoid_2:y:01lstm_105/while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/while/lstm_cell_105/mul_6
3lstm_105/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_105_while_placeholder_1lstm_105_while_placeholder&lstm_105/while/lstm_cell_105/mul_6:z:0*
_output_shapes
: *
element_dtype025
3lstm_105/while/TensorArrayV2Write/TensorListSetItemn
lstm_105/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_105/while/add/y
lstm_105/while/addAddV2lstm_105_while_placeholderlstm_105/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_105/while/addr
lstm_105/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_105/while/add_1/y£
lstm_105/while/add_1AddV2*lstm_105_while_lstm_105_while_loop_counterlstm_105/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_105/while/add_1
lstm_105/while/IdentityIdentitylstm_105/while/add_1:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity«
lstm_105/while/Identity_1Identity0lstm_105_while_lstm_105_while_maximum_iterations^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity_1
lstm_105/while/Identity_2Identitylstm_105/while/add:z:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity_2¾
lstm_105/while/Identity_3IdentityClstm_105/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_105/while/NoOp*
T0*
_output_shapes
: 2
lstm_105/while/Identity_3²
lstm_105/while/Identity_4Identity&lstm_105/while/lstm_cell_105/mul_6:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/while/Identity_4²
lstm_105/while/Identity_5Identity&lstm_105/while/lstm_cell_105/add_3:z:0^lstm_105/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/while/Identity_5
lstm_105/while/NoOpNoOp,^lstm_105/while/lstm_cell_105/ReadVariableOp.^lstm_105/while/lstm_cell_105/ReadVariableOp_1.^lstm_105/while/lstm_cell_105/ReadVariableOp_2.^lstm_105/while/lstm_cell_105/ReadVariableOp_32^lstm_105/while/lstm_cell_105/split/ReadVariableOp4^lstm_105/while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_105/while/NoOp";
lstm_105_while_identity lstm_105/while/Identity:output:0"?
lstm_105_while_identity_1"lstm_105/while/Identity_1:output:0"?
lstm_105_while_identity_2"lstm_105/while/Identity_2:output:0"?
lstm_105_while_identity_3"lstm_105/while/Identity_3:output:0"?
lstm_105_while_identity_4"lstm_105/while/Identity_4:output:0"?
lstm_105_while_identity_5"lstm_105/while/Identity_5:output:0"T
'lstm_105_while_lstm_105_strided_slice_1)lstm_105_while_lstm_105_strided_slice_1_0"n
4lstm_105_while_lstm_cell_105_readvariableop_resource6lstm_105_while_lstm_cell_105_readvariableop_resource_0"~
<lstm_105_while_lstm_cell_105_split_1_readvariableop_resource>lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0"z
:lstm_105_while_lstm_cell_105_split_readvariableop_resource<lstm_105_while_lstm_cell_105_split_readvariableop_resource_0"Ì
clstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensorelstm_105_while_tensorarrayv2read_tensorlistgetitem_lstm_105_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+lstm_105/while/lstm_cell_105/ReadVariableOp+lstm_105/while/lstm_cell_105/ReadVariableOp2^
-lstm_105/while/lstm_cell_105/ReadVariableOp_1-lstm_105/while/lstm_cell_105/ReadVariableOp_12^
-lstm_105/while/lstm_cell_105/ReadVariableOp_2-lstm_105/while/lstm_cell_105/ReadVariableOp_22^
-lstm_105/while/lstm_cell_105/ReadVariableOp_3-lstm_105/while/lstm_cell_105/ReadVariableOp_32f
1lstm_105/while/lstm_cell_105/split/ReadVariableOp1lstm_105/while/lstm_cell_105/split/ReadVariableOp2j
3lstm_105/while/lstm_cell_105/split_1/ReadVariableOp3lstm_105/while/lstm_cell_105/split_1/ReadVariableOp: 
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
ª
·
*__inference_lstm_105_layer_call_fn_3430051

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34287232
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
|

#__inference__traced_restore_3431688
file_prefix3
!assignvariableop_dense_126_kernel:  /
!assignvariableop_1_dense_126_bias: 5
#assignvariableop_2_dense_127_kernel: /
!assignvariableop_3_dense_127_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
0assignvariableop_9_lstm_105_lstm_cell_105_kernel:	N
;assignvariableop_10_lstm_105_lstm_cell_105_recurrent_kernel:	 >
/assignvariableop_11_lstm_105_lstm_cell_105_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: =
+assignvariableop_14_adam_dense_126_kernel_m:  7
)assignvariableop_15_adam_dense_126_bias_m: =
+assignvariableop_16_adam_dense_127_kernel_m: 7
)assignvariableop_17_adam_dense_127_bias_m:K
8assignvariableop_18_adam_lstm_105_lstm_cell_105_kernel_m:	U
Bassignvariableop_19_adam_lstm_105_lstm_cell_105_recurrent_kernel_m:	 E
6assignvariableop_20_adam_lstm_105_lstm_cell_105_bias_m:	=
+assignvariableop_21_adam_dense_126_kernel_v:  7
)assignvariableop_22_adam_dense_126_bias_v: =
+assignvariableop_23_adam_dense_127_kernel_v: 7
)assignvariableop_24_adam_dense_127_bias_v:K
8assignvariableop_25_adam_lstm_105_lstm_cell_105_kernel_v:	U
Bassignvariableop_26_adam_lstm_105_lstm_cell_105_recurrent_kernel_v:	 E
6assignvariableop_27_adam_lstm_105_lstm_cell_105_bias_v:	
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

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_126_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_126_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_127_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_127_biasIdentity_3:output:0"/device:CPU:0*
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

Identity_9µ
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_105_lstm_cell_105_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ã
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_105_lstm_cell_105_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11·
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_105_lstm_cell_105_biasIdentity_11:output:0"/device:CPU:0*
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
Identity_14³
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_126_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_126_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_127_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_127_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18À
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_lstm_105_lstm_cell_105_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ê
AssignVariableOp_19AssignVariableOpBassignvariableop_19_adam_lstm_105_lstm_cell_105_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¾
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_105_lstm_cell_105_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_126_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_126_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_127_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_127_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25À
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_lstm_105_lstm_cell_105_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ê
AssignVariableOp_26AssignVariableOpBassignvariableop_26_adam_lstm_105_lstm_cell_105_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_105_lstm_cell_105_bias_vIdentity_27:output:0"/device:CPU:0*
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
ä	
¨
/__inference_sequential_42_layer_call_fn_3429406

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall¿
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
GPU 2J 8 *S
fNRL
J__inference_sequential_42_layer_call_and_return_conditional_losses_34292252
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

+__inference_dense_126_layer_call_fn_3431182

inputs
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallö
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
GPU 2J 8 *O
fJRH
F__inference_dense_126_layer_call_and_return_conditional_losses_34287422
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
º
ø
/__inference_lstm_cell_105_layer_call_fn_3431459

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÅ
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_34278142
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

ª
F__inference_dense_127_layer_call_and_return_conditional_losses_3431204

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢0dense_127/bias/Regularizer/Square/ReadVariableOp
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
BiasAddÀ
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_127/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

±	
while_body_3430172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_105_split_readvariableop_resource_0:	D
5while_lstm_cell_105_split_1_readvariableop_resource_0:	@
-while_lstm_cell_105_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_105_split_readvariableop_resource:	B
3while_lstm_cell_105_split_1_readvariableop_resource:	>
+while_lstm_cell_105_readvariableop_resource:	 ¢"while/lstm_cell_105/ReadVariableOp¢$while/lstm_cell_105/ReadVariableOp_1¢$while/lstm_cell_105/ReadVariableOp_2¢$while/lstm_cell_105/ReadVariableOp_3¢(while/lstm_cell_105/split/ReadVariableOp¢*while/lstm_cell_105/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_105/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_105/ones_like/Shape
#while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_105/ones_like/ConstÔ
while/lstm_cell_105/ones_likeFill,while/lstm_cell_105/ones_like/Shape:output:0,while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/ones_like
#while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_105/split/split_dimÉ
(while/lstm_cell_105/split/ReadVariableOpReadVariableOp3while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_105/split/ReadVariableOp÷
while/lstm_cell_105/splitSplit,while/lstm_cell_105/split/split_dim:output:00while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_105/splitÊ
while/lstm_cell_105/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMulÎ
while/lstm_cell_105/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_1Î
while/lstm_cell_105/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_2Î
while/lstm_cell_105/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_3
%while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_105/split_1/split_dimË
*while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_105/split_1/ReadVariableOpï
while/lstm_cell_105/split_1Split.while/lstm_cell_105/split_1/split_dim:output:02while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_105/split_1Ã
while/lstm_cell_105/BiasAddBiasAdd$while/lstm_cell_105/MatMul:product:0$while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAddÉ
while/lstm_cell_105/BiasAdd_1BiasAdd&while/lstm_cell_105/MatMul_1:product:0$while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_1É
while/lstm_cell_105/BiasAdd_2BiasAdd&while/lstm_cell_105/MatMul_2:product:0$while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_2É
while/lstm_cell_105/BiasAdd_3BiasAdd&while/lstm_cell_105/MatMul_3:product:0$while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_3¨
while/lstm_cell_105/mulMulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul¬
while/lstm_cell_105/mul_1Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_1¬
while/lstm_cell_105/mul_2Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_2¬
while/lstm_cell_105/mul_3Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_3·
"while/lstm_cell_105/ReadVariableOpReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_105/ReadVariableOp£
'while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_105/strided_slice/stack§
)while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice/stack_1§
)while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_105/strided_slice/stack_2ô
!while/lstm_cell_105/strided_sliceStridedSlice*while/lstm_cell_105/ReadVariableOp:value:00while/lstm_cell_105/strided_slice/stack:output:02while/lstm_cell_105/strided_slice/stack_1:output:02while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_105/strided_sliceÁ
while/lstm_cell_105/MatMul_4MatMulwhile/lstm_cell_105/mul:z:0*while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_4»
while/lstm_cell_105/addAddV2$while/lstm_cell_105/BiasAdd:output:0&while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add
while/lstm_cell_105/SigmoidSigmoidwhile/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid»
$while/lstm_cell_105/ReadVariableOp_1ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_1§
)while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice_1/stack«
+while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_105/strided_slice_1/stack_1«
+while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_1/stack_2
#while/lstm_cell_105/strided_slice_1StridedSlice,while/lstm_cell_105/ReadVariableOp_1:value:02while/lstm_cell_105/strided_slice_1/stack:output:04while/lstm_cell_105/strided_slice_1/stack_1:output:04while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_1Å
while/lstm_cell_105/MatMul_5MatMulwhile/lstm_cell_105/mul_1:z:0,while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_5Á
while/lstm_cell_105/add_1AddV2&while/lstm_cell_105/BiasAdd_1:output:0&while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_1
while/lstm_cell_105/Sigmoid_1Sigmoidwhile/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_1§
while/lstm_cell_105/mul_4Mul!while/lstm_cell_105/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_4»
$while/lstm_cell_105/ReadVariableOp_2ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_2§
)while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_105/strided_slice_2/stack«
+while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_105/strided_slice_2/stack_1«
+while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_2/stack_2
#while/lstm_cell_105/strided_slice_2StridedSlice,while/lstm_cell_105/ReadVariableOp_2:value:02while/lstm_cell_105/strided_slice_2/stack:output:04while/lstm_cell_105/strided_slice_2/stack_1:output:04while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_2Å
while/lstm_cell_105/MatMul_6MatMulwhile/lstm_cell_105/mul_2:z:0,while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_6Á
while/lstm_cell_105/add_2AddV2&while/lstm_cell_105/BiasAdd_2:output:0&while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_2
while/lstm_cell_105/ReluReluwhile/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu¸
while/lstm_cell_105/mul_5Mulwhile/lstm_cell_105/Sigmoid:y:0&while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_5¯
while/lstm_cell_105/add_3AddV2while/lstm_cell_105/mul_4:z:0while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_3»
$while/lstm_cell_105/ReadVariableOp_3ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_3§
)while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_105/strided_slice_3/stack«
+while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_105/strided_slice_3/stack_1«
+while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_3/stack_2
#while/lstm_cell_105/strided_slice_3StridedSlice,while/lstm_cell_105/ReadVariableOp_3:value:02while/lstm_cell_105/strided_slice_3/stack:output:04while/lstm_cell_105/strided_slice_3/stack_1:output:04while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_3Å
while/lstm_cell_105/MatMul_7MatMulwhile/lstm_cell_105/mul_3:z:0,while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_7Á
while/lstm_cell_105/add_4AddV2&while/lstm_cell_105/BiasAdd_3:output:0&while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_4
while/lstm_cell_105/Sigmoid_2Sigmoidwhile/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_2
while/lstm_cell_105/Relu_1Reluwhile/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu_1¼
while/lstm_cell_105/mul_6Mul!while/lstm_cell_105/Sigmoid_2:y:0(while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_105/mul_6:z:0*
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
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_105/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_105/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_105/ReadVariableOp%^while/lstm_cell_105/ReadVariableOp_1%^while/lstm_cell_105/ReadVariableOp_2%^while/lstm_cell_105/ReadVariableOp_3)^while/lstm_cell_105/split/ReadVariableOp+^while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"\
+while_lstm_cell_105_readvariableop_resource-while_lstm_cell_105_readvariableop_resource_0"l
3while_lstm_cell_105_split_1_readvariableop_resource5while_lstm_cell_105_split_1_readvariableop_resource_0"h
1while_lstm_cell_105_split_readvariableop_resource3while_lstm_cell_105_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_105/ReadVariableOp"while/lstm_cell_105/ReadVariableOp2L
$while/lstm_cell_105/ReadVariableOp_1$while/lstm_cell_105/ReadVariableOp_12L
$while/lstm_cell_105/ReadVariableOp_2$while/lstm_cell_105/ReadVariableOp_22L
$while/lstm_cell_105/ReadVariableOp_3$while/lstm_cell_105/ReadVariableOp_32T
(while/lstm_cell_105/split/ReadVariableOp(while/lstm_cell_105/split/ReadVariableOp2X
*while/lstm_cell_105/split_1/ReadVariableOp*while/lstm_cell_105/split_1/ReadVariableOp: 
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

ª
F__inference_dense_127_layer_call_and_return_conditional_losses_3428764

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢0dense_127/bias/Regularizer/Square/ReadVariableOp
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
BiasAddÀ
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_127/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¸	
 
%__inference_signature_wrapper_3429368
input_43
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_43unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *+
f&R$
"__inference__wrapped_model_34276902
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_43
Óv
í
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3428047

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
dropout/ShapeÐ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÅÌE2&
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
dropout_1/Shape×
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¿³2(
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
dropout_2/Shape×
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2©á­2(
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
dropout_3/Shape×
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Û2(
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
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
mul_6á
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muld
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

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
Áµ
±	
while_body_3430447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_105_split_readvariableop_resource_0:	D
5while_lstm_cell_105_split_1_readvariableop_resource_0:	@
-while_lstm_cell_105_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_105_split_readvariableop_resource:	B
3while_lstm_cell_105_split_1_readvariableop_resource:	>
+while_lstm_cell_105_readvariableop_resource:	 ¢"while/lstm_cell_105/ReadVariableOp¢$while/lstm_cell_105/ReadVariableOp_1¢$while/lstm_cell_105/ReadVariableOp_2¢$while/lstm_cell_105/ReadVariableOp_3¢(while/lstm_cell_105/split/ReadVariableOp¢*while/lstm_cell_105/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_105/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_105/ones_like/Shape
#while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_105/ones_like/ConstÔ
while/lstm_cell_105/ones_likeFill,while/lstm_cell_105/ones_like/Shape:output:0,while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/ones_like
!while/lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2#
!while/lstm_cell_105/dropout/ConstÏ
while/lstm_cell_105/dropout/MulMul&while/lstm_cell_105/ones_like:output:0*while/lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_105/dropout/Mul
!while/lstm_cell_105/dropout/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_105/dropout/Shape
8while/lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ý2:
8while/lstm_cell_105/dropout/random_uniform/RandomUniform
*while/lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_105/dropout/GreaterEqual/y
(while/lstm_cell_105/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_105/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_105/dropout/GreaterEqual»
 while/lstm_cell_105/dropout/CastCast,while/lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_105/dropout/CastÊ
!while/lstm_cell_105/dropout/Mul_1Mul#while/lstm_cell_105/dropout/Mul:z:0$while/lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout/Mul_1
#while/lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_1/ConstÕ
!while/lstm_cell_105/dropout_1/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_1/Mul 
#while/lstm_cell_105/dropout_1/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_1/Shape
:while/lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2êÛL2<
:while/lstm_cell_105/dropout_1/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_1/GreaterEqual/y
*while/lstm_cell_105/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_1/GreaterEqualÁ
"while/lstm_cell_105/dropout_1/CastCast.while/lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_1/CastÒ
#while/lstm_cell_105/dropout_1/Mul_1Mul%while/lstm_cell_105/dropout_1/Mul:z:0&while/lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_1/Mul_1
#while/lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_2/ConstÕ
!while/lstm_cell_105/dropout_2/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_2/Mul 
#while/lstm_cell_105/dropout_2/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_2/Shape
:while/lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2½¼O2<
:while/lstm_cell_105/dropout_2/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_2/GreaterEqual/y
*while/lstm_cell_105/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_2/GreaterEqualÁ
"while/lstm_cell_105/dropout_2/CastCast.while/lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_2/CastÒ
#while/lstm_cell_105/dropout_2/Mul_1Mul%while/lstm_cell_105/dropout_2/Mul:z:0&while/lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_2/Mul_1
#while/lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_105/dropout_3/ConstÕ
!while/lstm_cell_105/dropout_3/MulMul&while/lstm_cell_105/ones_like:output:0,while/lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_105/dropout_3/Mul 
#while/lstm_cell_105/dropout_3/ShapeShape&while/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_105/dropout_3/Shape
:while/lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Úùè2<
:while/lstm_cell_105/dropout_3/random_uniform/RandomUniform¡
,while/lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_105/dropout_3/GreaterEqual/y
*while/lstm_cell_105/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_105/dropout_3/GreaterEqualÁ
"while/lstm_cell_105/dropout_3/CastCast.while/lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_105/dropout_3/CastÒ
#while/lstm_cell_105/dropout_3/Mul_1Mul%while/lstm_cell_105/dropout_3/Mul:z:0&while/lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_105/dropout_3/Mul_1
#while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_105/split/split_dimÉ
(while/lstm_cell_105/split/ReadVariableOpReadVariableOp3while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_105/split/ReadVariableOp÷
while/lstm_cell_105/splitSplit,while/lstm_cell_105/split/split_dim:output:00while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_105/splitÊ
while/lstm_cell_105/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMulÎ
while/lstm_cell_105/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_1Î
while/lstm_cell_105/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_2Î
while/lstm_cell_105/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_3
%while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_105/split_1/split_dimË
*while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_105/split_1/ReadVariableOpï
while/lstm_cell_105/split_1Split.while/lstm_cell_105/split_1/split_dim:output:02while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_105/split_1Ã
while/lstm_cell_105/BiasAddBiasAdd$while/lstm_cell_105/MatMul:product:0$while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAddÉ
while/lstm_cell_105/BiasAdd_1BiasAdd&while/lstm_cell_105/MatMul_1:product:0$while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_1É
while/lstm_cell_105/BiasAdd_2BiasAdd&while/lstm_cell_105/MatMul_2:product:0$while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_2É
while/lstm_cell_105/BiasAdd_3BiasAdd&while/lstm_cell_105/MatMul_3:product:0$while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_3§
while/lstm_cell_105/mulMulwhile_placeholder_2%while/lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul­
while/lstm_cell_105/mul_1Mulwhile_placeholder_2'while/lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_1­
while/lstm_cell_105/mul_2Mulwhile_placeholder_2'while/lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_2­
while/lstm_cell_105/mul_3Mulwhile_placeholder_2'while/lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_3·
"while/lstm_cell_105/ReadVariableOpReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_105/ReadVariableOp£
'while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_105/strided_slice/stack§
)while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice/stack_1§
)while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_105/strided_slice/stack_2ô
!while/lstm_cell_105/strided_sliceStridedSlice*while/lstm_cell_105/ReadVariableOp:value:00while/lstm_cell_105/strided_slice/stack:output:02while/lstm_cell_105/strided_slice/stack_1:output:02while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_105/strided_sliceÁ
while/lstm_cell_105/MatMul_4MatMulwhile/lstm_cell_105/mul:z:0*while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_4»
while/lstm_cell_105/addAddV2$while/lstm_cell_105/BiasAdd:output:0&while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add
while/lstm_cell_105/SigmoidSigmoidwhile/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid»
$while/lstm_cell_105/ReadVariableOp_1ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_1§
)while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice_1/stack«
+while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_105/strided_slice_1/stack_1«
+while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_1/stack_2
#while/lstm_cell_105/strided_slice_1StridedSlice,while/lstm_cell_105/ReadVariableOp_1:value:02while/lstm_cell_105/strided_slice_1/stack:output:04while/lstm_cell_105/strided_slice_1/stack_1:output:04while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_1Å
while/lstm_cell_105/MatMul_5MatMulwhile/lstm_cell_105/mul_1:z:0,while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_5Á
while/lstm_cell_105/add_1AddV2&while/lstm_cell_105/BiasAdd_1:output:0&while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_1
while/lstm_cell_105/Sigmoid_1Sigmoidwhile/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_1§
while/lstm_cell_105/mul_4Mul!while/lstm_cell_105/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_4»
$while/lstm_cell_105/ReadVariableOp_2ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_2§
)while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_105/strided_slice_2/stack«
+while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_105/strided_slice_2/stack_1«
+while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_2/stack_2
#while/lstm_cell_105/strided_slice_2StridedSlice,while/lstm_cell_105/ReadVariableOp_2:value:02while/lstm_cell_105/strided_slice_2/stack:output:04while/lstm_cell_105/strided_slice_2/stack_1:output:04while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_2Å
while/lstm_cell_105/MatMul_6MatMulwhile/lstm_cell_105/mul_2:z:0,while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_6Á
while/lstm_cell_105/add_2AddV2&while/lstm_cell_105/BiasAdd_2:output:0&while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_2
while/lstm_cell_105/ReluReluwhile/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu¸
while/lstm_cell_105/mul_5Mulwhile/lstm_cell_105/Sigmoid:y:0&while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_5¯
while/lstm_cell_105/add_3AddV2while/lstm_cell_105/mul_4:z:0while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_3»
$while/lstm_cell_105/ReadVariableOp_3ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_3§
)while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_105/strided_slice_3/stack«
+while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_105/strided_slice_3/stack_1«
+while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_3/stack_2
#while/lstm_cell_105/strided_slice_3StridedSlice,while/lstm_cell_105/ReadVariableOp_3:value:02while/lstm_cell_105/strided_slice_3/stack:output:04while/lstm_cell_105/strided_slice_3/stack_1:output:04while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_3Å
while/lstm_cell_105/MatMul_7MatMulwhile/lstm_cell_105/mul_3:z:0,while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_7Á
while/lstm_cell_105/add_4AddV2&while/lstm_cell_105/BiasAdd_3:output:0&while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_4
while/lstm_cell_105/Sigmoid_2Sigmoidwhile/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_2
while/lstm_cell_105/Relu_1Reluwhile/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu_1¼
while/lstm_cell_105/mul_6Mul!while/lstm_cell_105/Sigmoid_2:y:0(while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_105/mul_6:z:0*
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
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_105/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_105/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_105/ReadVariableOp%^while/lstm_cell_105/ReadVariableOp_1%^while/lstm_cell_105/ReadVariableOp_2%^while/lstm_cell_105/ReadVariableOp_3)^while/lstm_cell_105/split/ReadVariableOp+^while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"\
+while_lstm_cell_105_readvariableop_resource-while_lstm_cell_105_readvariableop_resource_0"l
3while_lstm_cell_105_split_1_readvariableop_resource5while_lstm_cell_105_split_1_readvariableop_resource_0"h
1while_lstm_cell_105_split_readvariableop_resource3while_lstm_cell_105_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_105/ReadVariableOp"while/lstm_cell_105/ReadVariableOp2L
$while/lstm_cell_105/ReadVariableOp_1$while/lstm_cell_105/ReadVariableOp_12L
$while/lstm_cell_105/ReadVariableOp_2$while/lstm_cell_105/ReadVariableOp_22L
$while/lstm_cell_105/ReadVariableOp_3$while/lstm_cell_105/ReadVariableOp_32T
(while/lstm_cell_105/split/ReadVariableOp(while/lstm_cell_105/split/ReadVariableOp2X
*while/lstm_cell_105/split_1/ReadVariableOp*while/lstm_cell_105/split_1/ReadVariableOp: 
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
Â
¹
*__inference_lstm_105_layer_call_fn_3430029
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34279032
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ê
H
,__inference_reshape_63_layer_call_fn_3431231

inputs
identityÉ
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
GPU 2J 8 *P
fKRI
G__inference_reshape_63_layer_call_and_return_conditional_losses_34287832
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
Ú
È
while_cond_3428589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3428589___redundant_placeholder05
1while_while_cond_3428589___redundant_placeholder15
1while_while_cond_3428589___redundant_placeholder25
1while_while_cond_3428589___redundant_placeholder3
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
×R
Ð
E__inference_lstm_105_layer_call_and_return_conditional_losses_3428200

inputs(
lstm_cell_105_3428112:	$
lstm_cell_105_3428114:	(
lstm_cell_105_3428116:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢%lstm_cell_105/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2§
%lstm_cell_105/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_105_3428112lstm_cell_105_3428114lstm_cell_105_3428116*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_34280472'
%lstm_cell_105/StatefulPartitionedCall
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
while/loop_counterÈ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_105_3428112lstm_cell_105_3428114lstm_cell_105_3428116*
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
bodyR
while_body_3428125*
condR
while_cond_3428124*K
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
runtimeÙ
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_105_3428112*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÀ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp&^lstm_cell_105/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2N
%lstm_cell_105/StatefulPartitionedCall%lstm_cell_105/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

+__inference_dense_127_layer_call_fn_3431213

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallö
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
GPU 2J 8 *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_34287642
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
½
º
J__inference_sequential_42_layer_call_and_return_conditional_losses_3430012

inputsG
4lstm_105_lstm_cell_105_split_readvariableop_resource:	E
6lstm_105_lstm_cell_105_split_1_readvariableop_resource:	A
.lstm_105_lstm_cell_105_readvariableop_resource:	 :
(dense_126_matmul_readvariableop_resource:  7
)dense_126_biasadd_readvariableop_resource: :
(dense_127_matmul_readvariableop_resource: 7
)dense_127_biasadd_readvariableop_resource:
identity¢ dense_126/BiasAdd/ReadVariableOp¢dense_126/MatMul/ReadVariableOp¢ dense_127/BiasAdd/ReadVariableOp¢dense_127/MatMul/ReadVariableOp¢0dense_127/bias/Regularizer/Square/ReadVariableOp¢%lstm_105/lstm_cell_105/ReadVariableOp¢'lstm_105/lstm_cell_105/ReadVariableOp_1¢'lstm_105/lstm_cell_105/ReadVariableOp_2¢'lstm_105/lstm_cell_105/ReadVariableOp_3¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢+lstm_105/lstm_cell_105/split/ReadVariableOp¢-lstm_105/lstm_cell_105/split_1/ReadVariableOp¢lstm_105/whileV
lstm_105/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_105/Shape
lstm_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_105/strided_slice/stack
lstm_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_105/strided_slice/stack_1
lstm_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_105/strided_slice/stack_2
lstm_105/strided_sliceStridedSlicelstm_105/Shape:output:0%lstm_105/strided_slice/stack:output:0'lstm_105/strided_slice/stack_1:output:0'lstm_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_105/strided_slicen
lstm_105/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros/mul/y
lstm_105/zeros/mulMullstm_105/strided_slice:output:0lstm_105/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros/mulq
lstm_105/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_105/zeros/Less/y
lstm_105/zeros/LessLesslstm_105/zeros/mul:z:0lstm_105/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros/Lesst
lstm_105/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros/packed/1§
lstm_105/zeros/packedPacklstm_105/strided_slice:output:0 lstm_105/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_105/zeros/packedq
lstm_105/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_105/zeros/Const
lstm_105/zerosFilllstm_105/zeros/packed:output:0lstm_105/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/zerosr
lstm_105/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros_1/mul/y
lstm_105/zeros_1/mulMullstm_105/strided_slice:output:0lstm_105/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros_1/mulu
lstm_105/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_105/zeros_1/Less/y
lstm_105/zeros_1/LessLesslstm_105/zeros_1/mul:z:0 lstm_105/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros_1/Lessx
lstm_105/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros_1/packed/1­
lstm_105/zeros_1/packedPacklstm_105/strided_slice:output:0"lstm_105/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_105/zeros_1/packedu
lstm_105/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_105/zeros_1/Const¡
lstm_105/zeros_1Fill lstm_105/zeros_1/packed:output:0lstm_105/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/zeros_1
lstm_105/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_105/transpose/perm
lstm_105/transpose	Transposeinputs lstm_105/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_105/transposej
lstm_105/Shape_1Shapelstm_105/transpose:y:0*
T0*
_output_shapes
:2
lstm_105/Shape_1
lstm_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_105/strided_slice_1/stack
 lstm_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_1/stack_1
 lstm_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_1/stack_2¤
lstm_105/strided_slice_1StridedSlicelstm_105/Shape_1:output:0'lstm_105/strided_slice_1/stack:output:0)lstm_105/strided_slice_1/stack_1:output:0)lstm_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_105/strided_slice_1
$lstm_105/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$lstm_105/TensorArrayV2/element_shapeÖ
lstm_105/TensorArrayV2TensorListReserve-lstm_105/TensorArrayV2/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_105/TensorArrayV2Ñ
>lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_105/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_105/transpose:y:0Glstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_105/TensorArrayUnstack/TensorListFromTensor
lstm_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_105/strided_slice_2/stack
 lstm_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_2/stack_1
 lstm_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_2/stack_2²
lstm_105/strided_slice_2StridedSlicelstm_105/transpose:y:0'lstm_105/strided_slice_2/stack:output:0)lstm_105/strided_slice_2/stack_1:output:0)lstm_105/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_105/strided_slice_2
&lstm_105/lstm_cell_105/ones_like/ShapeShapelstm_105/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_105/lstm_cell_105/ones_like/Shape
&lstm_105/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_105/lstm_cell_105/ones_like/Constà
 lstm_105/lstm_cell_105/ones_likeFill/lstm_105/lstm_cell_105/ones_like/Shape:output:0/lstm_105/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/ones_like
$lstm_105/lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_105/lstm_cell_105/dropout/ConstÛ
"lstm_105/lstm_cell_105/dropout/MulMul)lstm_105/lstm_cell_105/ones_like:output:0-lstm_105/lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_105/lstm_cell_105/dropout/Mul¥
$lstm_105/lstm_cell_105/dropout/ShapeShape)lstm_105/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_105/lstm_cell_105/dropout/Shape
;lstm_105/lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform-lstm_105/lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÌæE2=
;lstm_105/lstm_cell_105/dropout/random_uniform/RandomUniform£
-lstm_105/lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_105/lstm_cell_105/dropout/GreaterEqual/y
+lstm_105/lstm_cell_105/dropout/GreaterEqualGreaterEqualDlstm_105/lstm_cell_105/dropout/random_uniform/RandomUniform:output:06lstm_105/lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_105/lstm_cell_105/dropout/GreaterEqualÄ
#lstm_105/lstm_cell_105/dropout/CastCast/lstm_105/lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_105/lstm_cell_105/dropout/CastÖ
$lstm_105/lstm_cell_105/dropout/Mul_1Mul&lstm_105/lstm_cell_105/dropout/Mul:z:0'lstm_105/lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/lstm_cell_105/dropout/Mul_1
&lstm_105/lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2(
&lstm_105/lstm_cell_105/dropout_1/Constá
$lstm_105/lstm_cell_105/dropout_1/MulMul)lstm_105/lstm_cell_105/ones_like:output:0/lstm_105/lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/lstm_cell_105/dropout_1/Mul©
&lstm_105/lstm_cell_105/dropout_1/ShapeShape)lstm_105/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_105/lstm_cell_105/dropout_1/Shape
=lstm_105/lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform/lstm_105/lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¸ö2?
=lstm_105/lstm_cell_105/dropout_1/random_uniform/RandomUniform§
/lstm_105/lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_105/lstm_cell_105/dropout_1/GreaterEqual/y¢
-lstm_105/lstm_cell_105/dropout_1/GreaterEqualGreaterEqualFlstm_105/lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:08lstm_105/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_105/lstm_cell_105/dropout_1/GreaterEqualÊ
%lstm_105/lstm_cell_105/dropout_1/CastCast1lstm_105/lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/lstm_cell_105/dropout_1/CastÞ
&lstm_105/lstm_cell_105/dropout_1/Mul_1Mul(lstm_105/lstm_cell_105/dropout_1/Mul:z:0)lstm_105/lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/lstm_cell_105/dropout_1/Mul_1
&lstm_105/lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2(
&lstm_105/lstm_cell_105/dropout_2/Constá
$lstm_105/lstm_cell_105/dropout_2/MulMul)lstm_105/lstm_cell_105/ones_like:output:0/lstm_105/lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/lstm_cell_105/dropout_2/Mul©
&lstm_105/lstm_cell_105/dropout_2/ShapeShape)lstm_105/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_105/lstm_cell_105/dropout_2/Shape
=lstm_105/lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform/lstm_105/lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2üóv2?
=lstm_105/lstm_cell_105/dropout_2/random_uniform/RandomUniform§
/lstm_105/lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_105/lstm_cell_105/dropout_2/GreaterEqual/y¢
-lstm_105/lstm_cell_105/dropout_2/GreaterEqualGreaterEqualFlstm_105/lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:08lstm_105/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_105/lstm_cell_105/dropout_2/GreaterEqualÊ
%lstm_105/lstm_cell_105/dropout_2/CastCast1lstm_105/lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/lstm_cell_105/dropout_2/CastÞ
&lstm_105/lstm_cell_105/dropout_2/Mul_1Mul(lstm_105/lstm_cell_105/dropout_2/Mul:z:0)lstm_105/lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/lstm_cell_105/dropout_2/Mul_1
&lstm_105/lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2(
&lstm_105/lstm_cell_105/dropout_3/Constá
$lstm_105/lstm_cell_105/dropout_3/MulMul)lstm_105/lstm_cell_105/ones_like:output:0/lstm_105/lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_105/lstm_cell_105/dropout_3/Mul©
&lstm_105/lstm_cell_105/dropout_3/ShapeShape)lstm_105/lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_105/lstm_cell_105/dropout_3/Shape
=lstm_105/lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform/lstm_105/lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÏîÝ2?
=lstm_105/lstm_cell_105/dropout_3/random_uniform/RandomUniform§
/lstm_105/lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_105/lstm_cell_105/dropout_3/GreaterEqual/y¢
-lstm_105/lstm_cell_105/dropout_3/GreaterEqualGreaterEqualFlstm_105/lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:08lstm_105/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_105/lstm_cell_105/dropout_3/GreaterEqualÊ
%lstm_105/lstm_cell_105/dropout_3/CastCast1lstm_105/lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_105/lstm_cell_105/dropout_3/CastÞ
&lstm_105/lstm_cell_105/dropout_3/Mul_1Mul(lstm_105/lstm_cell_105/dropout_3/Mul:z:0)lstm_105/lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_105/lstm_cell_105/dropout_3/Mul_1
&lstm_105/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_105/lstm_cell_105/split/split_dimÐ
+lstm_105/lstm_cell_105/split/ReadVariableOpReadVariableOp4lstm_105_lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_105/lstm_cell_105/split/ReadVariableOp
lstm_105/lstm_cell_105/splitSplit/lstm_105/lstm_cell_105/split/split_dim:output:03lstm_105/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_105/lstm_cell_105/splitÄ
lstm_105/lstm_cell_105/MatMulMatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/MatMulÈ
lstm_105/lstm_cell_105/MatMul_1MatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_1È
lstm_105/lstm_cell_105/MatMul_2MatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_2È
lstm_105/lstm_cell_105/MatMul_3MatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_3
(lstm_105/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm_105/lstm_cell_105/split_1/split_dimÒ
-lstm_105/lstm_cell_105/split_1/ReadVariableOpReadVariableOp6lstm_105_lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02/
-lstm_105/lstm_cell_105/split_1/ReadVariableOpû
lstm_105/lstm_cell_105/split_1Split1lstm_105/lstm_cell_105/split_1/split_dim:output:05lstm_105/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm_105/lstm_cell_105/split_1Ï
lstm_105/lstm_cell_105/BiasAddBiasAdd'lstm_105/lstm_cell_105/MatMul:product:0'lstm_105/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_105/lstm_cell_105/BiasAddÕ
 lstm_105/lstm_cell_105/BiasAdd_1BiasAdd)lstm_105/lstm_cell_105/MatMul_1:product:0'lstm_105/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/BiasAdd_1Õ
 lstm_105/lstm_cell_105/BiasAdd_2BiasAdd)lstm_105/lstm_cell_105/MatMul_2:product:0'lstm_105/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/BiasAdd_2Õ
 lstm_105/lstm_cell_105/BiasAdd_3BiasAdd)lstm_105/lstm_cell_105/MatMul_3:product:0'lstm_105/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/BiasAdd_3´
lstm_105/lstm_cell_105/mulMullstm_105/zeros:output:0(lstm_105/lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mulº
lstm_105/lstm_cell_105/mul_1Mullstm_105/zeros:output:0*lstm_105/lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_1º
lstm_105/lstm_cell_105/mul_2Mullstm_105/zeros:output:0*lstm_105/lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_2º
lstm_105/lstm_cell_105/mul_3Mullstm_105/zeros:output:0*lstm_105/lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_3¾
%lstm_105/lstm_cell_105/ReadVariableOpReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_105/lstm_cell_105/ReadVariableOp©
*lstm_105/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_105/lstm_cell_105/strided_slice/stack­
,lstm_105/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_105/lstm_cell_105/strided_slice/stack_1­
,lstm_105/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_105/lstm_cell_105/strided_slice/stack_2
$lstm_105/lstm_cell_105/strided_sliceStridedSlice-lstm_105/lstm_cell_105/ReadVariableOp:value:03lstm_105/lstm_cell_105/strided_slice/stack:output:05lstm_105/lstm_cell_105/strided_slice/stack_1:output:05lstm_105/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_105/lstm_cell_105/strided_sliceÍ
lstm_105/lstm_cell_105/MatMul_4MatMullstm_105/lstm_cell_105/mul:z:0-lstm_105/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_4Ç
lstm_105/lstm_cell_105/addAddV2'lstm_105/lstm_cell_105/BiasAdd:output:0)lstm_105/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add
lstm_105/lstm_cell_105/SigmoidSigmoidlstm_105/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_105/lstm_cell_105/SigmoidÂ
'lstm_105/lstm_cell_105/ReadVariableOp_1ReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_105/lstm_cell_105/ReadVariableOp_1­
,lstm_105/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_105/lstm_cell_105/strided_slice_1/stack±
.lstm_105/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_105/lstm_cell_105/strided_slice_1/stack_1±
.lstm_105/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_105/lstm_cell_105/strided_slice_1/stack_2
&lstm_105/lstm_cell_105/strided_slice_1StridedSlice/lstm_105/lstm_cell_105/ReadVariableOp_1:value:05lstm_105/lstm_cell_105/strided_slice_1/stack:output:07lstm_105/lstm_cell_105/strided_slice_1/stack_1:output:07lstm_105/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_105/lstm_cell_105/strided_slice_1Ñ
lstm_105/lstm_cell_105/MatMul_5MatMul lstm_105/lstm_cell_105/mul_1:z:0/lstm_105/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_5Í
lstm_105/lstm_cell_105/add_1AddV2)lstm_105/lstm_cell_105/BiasAdd_1:output:0)lstm_105/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_1£
 lstm_105/lstm_cell_105/Sigmoid_1Sigmoid lstm_105/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/Sigmoid_1¶
lstm_105/lstm_cell_105/mul_4Mul$lstm_105/lstm_cell_105/Sigmoid_1:y:0lstm_105/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_4Â
'lstm_105/lstm_cell_105/ReadVariableOp_2ReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_105/lstm_cell_105/ReadVariableOp_2­
,lstm_105/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_105/lstm_cell_105/strided_slice_2/stack±
.lstm_105/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_105/lstm_cell_105/strided_slice_2/stack_1±
.lstm_105/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_105/lstm_cell_105/strided_slice_2/stack_2
&lstm_105/lstm_cell_105/strided_slice_2StridedSlice/lstm_105/lstm_cell_105/ReadVariableOp_2:value:05lstm_105/lstm_cell_105/strided_slice_2/stack:output:07lstm_105/lstm_cell_105/strided_slice_2/stack_1:output:07lstm_105/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_105/lstm_cell_105/strided_slice_2Ñ
lstm_105/lstm_cell_105/MatMul_6MatMul lstm_105/lstm_cell_105/mul_2:z:0/lstm_105/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_6Í
lstm_105/lstm_cell_105/add_2AddV2)lstm_105/lstm_cell_105/BiasAdd_2:output:0)lstm_105/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_2
lstm_105/lstm_cell_105/ReluRelu lstm_105/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/ReluÄ
lstm_105/lstm_cell_105/mul_5Mul"lstm_105/lstm_cell_105/Sigmoid:y:0)lstm_105/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_5»
lstm_105/lstm_cell_105/add_3AddV2 lstm_105/lstm_cell_105/mul_4:z:0 lstm_105/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_3Â
'lstm_105/lstm_cell_105/ReadVariableOp_3ReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_105/lstm_cell_105/ReadVariableOp_3­
,lstm_105/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_105/lstm_cell_105/strided_slice_3/stack±
.lstm_105/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_105/lstm_cell_105/strided_slice_3/stack_1±
.lstm_105/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_105/lstm_cell_105/strided_slice_3/stack_2
&lstm_105/lstm_cell_105/strided_slice_3StridedSlice/lstm_105/lstm_cell_105/ReadVariableOp_3:value:05lstm_105/lstm_cell_105/strided_slice_3/stack:output:07lstm_105/lstm_cell_105/strided_slice_3/stack_1:output:07lstm_105/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_105/lstm_cell_105/strided_slice_3Ñ
lstm_105/lstm_cell_105/MatMul_7MatMul lstm_105/lstm_cell_105/mul_3:z:0/lstm_105/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_7Í
lstm_105/lstm_cell_105/add_4AddV2)lstm_105/lstm_cell_105/BiasAdd_3:output:0)lstm_105/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_4£
 lstm_105/lstm_cell_105/Sigmoid_2Sigmoid lstm_105/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/Sigmoid_2
lstm_105/lstm_cell_105/Relu_1Relu lstm_105/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/Relu_1È
lstm_105/lstm_cell_105/mul_6Mul$lstm_105/lstm_cell_105/Sigmoid_2:y:0+lstm_105/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_6¡
&lstm_105/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2(
&lstm_105/TensorArrayV2_1/element_shapeÜ
lstm_105/TensorArrayV2_1TensorListReserve/lstm_105/TensorArrayV2_1/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_105/TensorArrayV2_1`
lstm_105/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/time
!lstm_105/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!lstm_105/while/maximum_iterations|
lstm_105/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/while/loop_counter
lstm_105/whileWhile$lstm_105/while/loop_counter:output:0*lstm_105/while/maximum_iterations:output:0lstm_105/time:output:0!lstm_105/TensorArrayV2_1:handle:0lstm_105/zeros:output:0lstm_105/zeros_1:output:0!lstm_105/strided_slice_1:output:0@lstm_105/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_105_lstm_cell_105_split_readvariableop_resource6lstm_105_lstm_cell_105_split_1_readvariableop_resource.lstm_105_lstm_cell_105_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_105_while_body_3429819*'
condR
lstm_105_while_cond_3429818*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_105/whileÇ
9lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2;
9lstm_105/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_105/TensorArrayV2Stack/TensorListStackTensorListStacklstm_105/while:output:3Blstm_105/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02-
+lstm_105/TensorArrayV2Stack/TensorListStack
lstm_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2 
lstm_105/strided_slice_3/stack
 lstm_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_105/strided_slice_3/stack_1
 lstm_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_3/stack_2Ð
lstm_105/strided_slice_3StridedSlice4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_105/strided_slice_3/stack:output:0)lstm_105/strided_slice_3/stack_1:output:0)lstm_105/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_105/strided_slice_3
lstm_105/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_105/transpose_1/permÉ
lstm_105/transpose_1	Transpose4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_105/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/transpose_1x
lstm_105/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_105/runtime«
dense_126/MatMul/ReadVariableOpReadVariableOp(dense_126_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_126/MatMul/ReadVariableOp¬
dense_126/MatMulMatMul!lstm_105/strided_slice_3:output:0'dense_126/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_126/MatMulª
 dense_126/BiasAdd/ReadVariableOpReadVariableOp)dense_126_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_126/BiasAdd/ReadVariableOp©
dense_126/BiasAddBiasAdddense_126/MatMul:product:0(dense_126/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_126/BiasAddv
dense_126/ReluReludense_126/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_126/Relu«
dense_127/MatMul/ReadVariableOpReadVariableOp(dense_127_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_127/MatMul/ReadVariableOp§
dense_127/MatMulMatMuldense_126/Relu:activations:0'dense_127/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_127/MatMulª
 dense_127/BiasAdd/ReadVariableOpReadVariableOp)dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_127/BiasAdd/ReadVariableOp©
dense_127/BiasAddBiasAdddense_127/MatMul:product:0(dense_127/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_127/BiasAddn
reshape_63/ShapeShapedense_127/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_63/Shape
reshape_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_63/strided_slice/stack
 reshape_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_63/strided_slice/stack_1
 reshape_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_63/strided_slice/stack_2¤
reshape_63/strided_sliceStridedSlicereshape_63/Shape:output:0'reshape_63/strided_slice/stack:output:0)reshape_63/strided_slice/stack_1:output:0)reshape_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_63/strided_slicez
reshape_63/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_63/Reshape/shape/1z
reshape_63/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_63/Reshape/shape/2×
reshape_63/Reshape/shapePack!reshape_63/strided_slice:output:0#reshape_63/Reshape/shape/1:output:0#reshape_63/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_63/Reshape/shape¨
reshape_63/ReshapeReshapedense_127/BiasAdd:output:0!reshape_63/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_63/Reshapeø
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4lstm_105_lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mulÊ
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mulz
IdentityIdentityreshape_63/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityâ
NoOpNoOp!^dense_126/BiasAdd/ReadVariableOp ^dense_126/MatMul/ReadVariableOp!^dense_127/BiasAdd/ReadVariableOp ^dense_127/MatMul/ReadVariableOp1^dense_127/bias/Regularizer/Square/ReadVariableOp&^lstm_105/lstm_cell_105/ReadVariableOp(^lstm_105/lstm_cell_105/ReadVariableOp_1(^lstm_105/lstm_cell_105/ReadVariableOp_2(^lstm_105/lstm_cell_105/ReadVariableOp_3@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp,^lstm_105/lstm_cell_105/split/ReadVariableOp.^lstm_105/lstm_cell_105/split_1/ReadVariableOp^lstm_105/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_126/BiasAdd/ReadVariableOp dense_126/BiasAdd/ReadVariableOp2B
dense_126/MatMul/ReadVariableOpdense_126/MatMul/ReadVariableOp2D
 dense_127/BiasAdd/ReadVariableOp dense_127/BiasAdd/ReadVariableOp2B
dense_127/MatMul/ReadVariableOpdense_127/MatMul/ReadVariableOp2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp2N
%lstm_105/lstm_cell_105/ReadVariableOp%lstm_105/lstm_cell_105/ReadVariableOp2R
'lstm_105/lstm_cell_105/ReadVariableOp_1'lstm_105/lstm_cell_105/ReadVariableOp_12R
'lstm_105/lstm_cell_105/ReadVariableOp_2'lstm_105/lstm_cell_105/ReadVariableOp_22R
'lstm_105/lstm_cell_105/ReadVariableOp_3'lstm_105/lstm_cell_105/ReadVariableOp_32
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2Z
+lstm_105/lstm_cell_105/split/ReadVariableOp+lstm_105/lstm_cell_105/split/ReadVariableOp2^
-lstm_105/lstm_cell_105/split_1/ReadVariableOp-lstm_105/lstm_cell_105/split_1/ReadVariableOp2 
lstm_105/whilelstm_105/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿÒ
¶
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430612
inputs_0>
+lstm_cell_105_split_readvariableop_resource:	<
-lstm_cell_105_split_1_readvariableop_resource:	8
%lstm_cell_105_readvariableop_resource:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_105/ReadVariableOp¢lstm_cell_105/ReadVariableOp_1¢lstm_cell_105/ReadVariableOp_2¢lstm_cell_105/ReadVariableOp_3¢"lstm_cell_105/split/ReadVariableOp¢$lstm_cell_105/split_1/ReadVariableOp¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2|
lstm_cell_105/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_105/ones_like/Shape
lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_105/ones_like/Const¼
lstm_cell_105/ones_likeFill&lstm_cell_105/ones_like/Shape:output:0&lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/ones_like
lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout/Const·
lstm_cell_105/dropout/MulMul lstm_cell_105/ones_like:output:0$lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Mul
lstm_cell_105/dropout/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout/Shapeû
2lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÄÜ24
2lstm_cell_105/dropout/random_uniform/RandomUniform
$lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_105/dropout/GreaterEqual/yö
"lstm_cell_105/dropout/GreaterEqualGreaterEqual;lstm_cell_105/dropout/random_uniform/RandomUniform:output:0-lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_105/dropout/GreaterEqual©
lstm_cell_105/dropout/CastCast&lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Cast²
lstm_cell_105/dropout/Mul_1Mullstm_cell_105/dropout/Mul:z:0lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Mul_1
lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_1/Const½
lstm_cell_105/dropout_1/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Mul
lstm_cell_105/dropout_1/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_1/Shape
4lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÓÝ²26
4lstm_cell_105/dropout_1/random_uniform/RandomUniform
&lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_1/GreaterEqual/yþ
$lstm_cell_105/dropout_1/GreaterEqualGreaterEqual=lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_1/GreaterEqual¯
lstm_cell_105/dropout_1/CastCast(lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Castº
lstm_cell_105/dropout_1/Mul_1Mullstm_cell_105/dropout_1/Mul:z:0 lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Mul_1
lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_2/Const½
lstm_cell_105/dropout_2/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Mul
lstm_cell_105/dropout_2/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_2/Shape
4lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2âÔ26
4lstm_cell_105/dropout_2/random_uniform/RandomUniform
&lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_2/GreaterEqual/yþ
$lstm_cell_105/dropout_2/GreaterEqualGreaterEqual=lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_2/GreaterEqual¯
lstm_cell_105/dropout_2/CastCast(lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Castº
lstm_cell_105/dropout_2/Mul_1Mullstm_cell_105/dropout_2/Mul:z:0 lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Mul_1
lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_3/Const½
lstm_cell_105/dropout_3/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Mul
lstm_cell_105/dropout_3/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_3/Shape
4lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ã¶õ26
4lstm_cell_105/dropout_3/random_uniform/RandomUniform
&lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_3/GreaterEqual/yþ
$lstm_cell_105/dropout_3/GreaterEqualGreaterEqual=lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_3/GreaterEqual¯
lstm_cell_105/dropout_3/CastCast(lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Castº
lstm_cell_105/dropout_3/Mul_1Mullstm_cell_105/dropout_3/Mul:z:0 lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Mul_1
lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_105/split/split_dimµ
"lstm_cell_105/split/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_105/split/ReadVariableOpß
lstm_cell_105/splitSplit&lstm_cell_105/split/split_dim:output:0*lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_105/split 
lstm_cell_105/MatMulMatMulstrided_slice_2:output:0lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul¤
lstm_cell_105/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_1¤
lstm_cell_105/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_2¤
lstm_cell_105/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_3
lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_105/split_1/split_dim·
$lstm_cell_105/split_1/ReadVariableOpReadVariableOp-lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_105/split_1/ReadVariableOp×
lstm_cell_105/split_1Split(lstm_cell_105/split_1/split_dim:output:0,lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_105/split_1«
lstm_cell_105/BiasAddBiasAddlstm_cell_105/MatMul:product:0lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd±
lstm_cell_105/BiasAdd_1BiasAdd lstm_cell_105/MatMul_1:product:0lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_1±
lstm_cell_105/BiasAdd_2BiasAdd lstm_cell_105/MatMul_2:product:0lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_2±
lstm_cell_105/BiasAdd_3BiasAdd lstm_cell_105/MatMul_3:product:0lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_3
lstm_cell_105/mulMulzeros:output:0lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul
lstm_cell_105/mul_1Mulzeros:output:0!lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_1
lstm_cell_105/mul_2Mulzeros:output:0!lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_2
lstm_cell_105/mul_3Mulzeros:output:0!lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_3£
lstm_cell_105/ReadVariableOpReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_105/ReadVariableOp
!lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_105/strided_slice/stack
#lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice/stack_1
#lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_105/strided_slice/stack_2Ð
lstm_cell_105/strided_sliceStridedSlice$lstm_cell_105/ReadVariableOp:value:0*lstm_cell_105/strided_slice/stack:output:0,lstm_cell_105/strided_slice/stack_1:output:0,lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice©
lstm_cell_105/MatMul_4MatMullstm_cell_105/mul:z:0$lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_4£
lstm_cell_105/addAddV2lstm_cell_105/BiasAdd:output:0 lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add
lstm_cell_105/SigmoidSigmoidlstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid§
lstm_cell_105/ReadVariableOp_1ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_1
#lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice_1/stack
%lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_105/strided_slice_1/stack_1
%lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_1/stack_2Ü
lstm_cell_105/strided_slice_1StridedSlice&lstm_cell_105/ReadVariableOp_1:value:0,lstm_cell_105/strided_slice_1/stack:output:0.lstm_cell_105/strided_slice_1/stack_1:output:0.lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_1­
lstm_cell_105/MatMul_5MatMullstm_cell_105/mul_1:z:0&lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_5©
lstm_cell_105/add_1AddV2 lstm_cell_105/BiasAdd_1:output:0 lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_1
lstm_cell_105/Sigmoid_1Sigmoidlstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_1
lstm_cell_105/mul_4Mullstm_cell_105/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_4§
lstm_cell_105/ReadVariableOp_2ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_2
#lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_105/strided_slice_2/stack
%lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_105/strided_slice_2/stack_1
%lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_2/stack_2Ü
lstm_cell_105/strided_slice_2StridedSlice&lstm_cell_105/ReadVariableOp_2:value:0,lstm_cell_105/strided_slice_2/stack:output:0.lstm_cell_105/strided_slice_2/stack_1:output:0.lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_2­
lstm_cell_105/MatMul_6MatMullstm_cell_105/mul_2:z:0&lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_6©
lstm_cell_105/add_2AddV2 lstm_cell_105/BiasAdd_2:output:0 lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_2{
lstm_cell_105/ReluRelulstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu 
lstm_cell_105/mul_5Mullstm_cell_105/Sigmoid:y:0 lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_5
lstm_cell_105/add_3AddV2lstm_cell_105/mul_4:z:0lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_3§
lstm_cell_105/ReadVariableOp_3ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_3
#lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_105/strided_slice_3/stack
%lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_105/strided_slice_3/stack_1
%lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_3/stack_2Ü
lstm_cell_105/strided_slice_3StridedSlice&lstm_cell_105/ReadVariableOp_3:value:0,lstm_cell_105/strided_slice_3/stack:output:0.lstm_cell_105/strided_slice_3/stack_1:output:0.lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_3­
lstm_cell_105/MatMul_7MatMullstm_cell_105/mul_3:z:0&lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_7©
lstm_cell_105/add_4AddV2 lstm_cell_105/BiasAdd_3:output:0 lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_4
lstm_cell_105/Sigmoid_2Sigmoidlstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_2
lstm_cell_105/Relu_1Relulstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu_1¤
lstm_cell_105/mul_6Mullstm_cell_105/Sigmoid_2:y:0"lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_105_split_readvariableop_resource-lstm_cell_105_split_1_readvariableop_resource%lstm_cell_105_readvariableop_resource*
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
bodyR
while_body_3430447*
condR
while_cond_3430446*K
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
runtimeï
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_105/ReadVariableOp^lstm_cell_105/ReadVariableOp_1^lstm_cell_105/ReadVariableOp_2^lstm_cell_105/ReadVariableOp_3#^lstm_cell_105/split/ReadVariableOp%^lstm_cell_105/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_105/ReadVariableOplstm_cell_105/ReadVariableOp2@
lstm_cell_105/ReadVariableOp_1lstm_cell_105/ReadVariableOp_12@
lstm_cell_105/ReadVariableOp_2lstm_cell_105/ReadVariableOp_22@
lstm_cell_105/ReadVariableOp_3lstm_cell_105/ReadVariableOp_32H
"lstm_cell_105/split/ReadVariableOp"lstm_cell_105/split/ReadVariableOp2L
$lstm_cell_105/split_1/ReadVariableOp$lstm_cell_105/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
º
ø
/__inference_lstm_cell_105_layer_call_fn_3431476

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÅ
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_34280472
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
ÈÒ
´
E__inference_lstm_105_layer_call_and_return_conditional_losses_3431162

inputs>
+lstm_cell_105_split_readvariableop_resource:	<
-lstm_cell_105_split_1_readvariableop_resource:	8
%lstm_cell_105_readvariableop_resource:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_105/ReadVariableOp¢lstm_cell_105/ReadVariableOp_1¢lstm_cell_105/ReadVariableOp_2¢lstm_cell_105/ReadVariableOp_3¢"lstm_cell_105/split/ReadVariableOp¢$lstm_cell_105/split_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2|
lstm_cell_105/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_105/ones_like/Shape
lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_105/ones_like/Const¼
lstm_cell_105/ones_likeFill&lstm_cell_105/ones_like/Shape:output:0&lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/ones_like
lstm_cell_105/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout/Const·
lstm_cell_105/dropout/MulMul lstm_cell_105/ones_like:output:0$lstm_cell_105/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Mul
lstm_cell_105/dropout/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout/Shapeû
2lstm_cell_105/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_105/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¾¿Õ24
2lstm_cell_105/dropout/random_uniform/RandomUniform
$lstm_cell_105/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_105/dropout/GreaterEqual/yö
"lstm_cell_105/dropout/GreaterEqualGreaterEqual;lstm_cell_105/dropout/random_uniform/RandomUniform:output:0-lstm_cell_105/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_105/dropout/GreaterEqual©
lstm_cell_105/dropout/CastCast&lstm_cell_105/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Cast²
lstm_cell_105/dropout/Mul_1Mullstm_cell_105/dropout/Mul:z:0lstm_cell_105/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout/Mul_1
lstm_cell_105/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_1/Const½
lstm_cell_105/dropout_1/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Mul
lstm_cell_105/dropout_1/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_1/Shape
4lstm_cell_105/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¬Ñ26
4lstm_cell_105/dropout_1/random_uniform/RandomUniform
&lstm_cell_105/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_1/GreaterEqual/yþ
$lstm_cell_105/dropout_1/GreaterEqualGreaterEqual=lstm_cell_105/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_1/GreaterEqual¯
lstm_cell_105/dropout_1/CastCast(lstm_cell_105/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Castº
lstm_cell_105/dropout_1/Mul_1Mullstm_cell_105/dropout_1/Mul:z:0 lstm_cell_105/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_1/Mul_1
lstm_cell_105/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_2/Const½
lstm_cell_105/dropout_2/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Mul
lstm_cell_105/dropout_2/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_2/Shape
4lstm_cell_105/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2É%26
4lstm_cell_105/dropout_2/random_uniform/RandomUniform
&lstm_cell_105/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_2/GreaterEqual/yþ
$lstm_cell_105/dropout_2/GreaterEqualGreaterEqual=lstm_cell_105/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_2/GreaterEqual¯
lstm_cell_105/dropout_2/CastCast(lstm_cell_105/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Castº
lstm_cell_105/dropout_2/Mul_1Mullstm_cell_105/dropout_2/Mul:z:0 lstm_cell_105/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_2/Mul_1
lstm_cell_105/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_105/dropout_3/Const½
lstm_cell_105/dropout_3/MulMul lstm_cell_105/ones_like:output:0&lstm_cell_105/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Mul
lstm_cell_105/dropout_3/ShapeShape lstm_cell_105/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_105/dropout_3/Shape
4lstm_cell_105/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_105/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2³Á÷26
4lstm_cell_105/dropout_3/random_uniform/RandomUniform
&lstm_cell_105/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_105/dropout_3/GreaterEqual/yþ
$lstm_cell_105/dropout_3/GreaterEqualGreaterEqual=lstm_cell_105/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_105/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_105/dropout_3/GreaterEqual¯
lstm_cell_105/dropout_3/CastCast(lstm_cell_105/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Castº
lstm_cell_105/dropout_3/Mul_1Mullstm_cell_105/dropout_3/Mul:z:0 lstm_cell_105/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/dropout_3/Mul_1
lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_105/split/split_dimµ
"lstm_cell_105/split/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_105/split/ReadVariableOpß
lstm_cell_105/splitSplit&lstm_cell_105/split/split_dim:output:0*lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_105/split 
lstm_cell_105/MatMulMatMulstrided_slice_2:output:0lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul¤
lstm_cell_105/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_1¤
lstm_cell_105/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_2¤
lstm_cell_105/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_3
lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_105/split_1/split_dim·
$lstm_cell_105/split_1/ReadVariableOpReadVariableOp-lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_105/split_1/ReadVariableOp×
lstm_cell_105/split_1Split(lstm_cell_105/split_1/split_dim:output:0,lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_105/split_1«
lstm_cell_105/BiasAddBiasAddlstm_cell_105/MatMul:product:0lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd±
lstm_cell_105/BiasAdd_1BiasAdd lstm_cell_105/MatMul_1:product:0lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_1±
lstm_cell_105/BiasAdd_2BiasAdd lstm_cell_105/MatMul_2:product:0lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_2±
lstm_cell_105/BiasAdd_3BiasAdd lstm_cell_105/MatMul_3:product:0lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_3
lstm_cell_105/mulMulzeros:output:0lstm_cell_105/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul
lstm_cell_105/mul_1Mulzeros:output:0!lstm_cell_105/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_1
lstm_cell_105/mul_2Mulzeros:output:0!lstm_cell_105/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_2
lstm_cell_105/mul_3Mulzeros:output:0!lstm_cell_105/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_3£
lstm_cell_105/ReadVariableOpReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_105/ReadVariableOp
!lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_105/strided_slice/stack
#lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice/stack_1
#lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_105/strided_slice/stack_2Ð
lstm_cell_105/strided_sliceStridedSlice$lstm_cell_105/ReadVariableOp:value:0*lstm_cell_105/strided_slice/stack:output:0,lstm_cell_105/strided_slice/stack_1:output:0,lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice©
lstm_cell_105/MatMul_4MatMullstm_cell_105/mul:z:0$lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_4£
lstm_cell_105/addAddV2lstm_cell_105/BiasAdd:output:0 lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add
lstm_cell_105/SigmoidSigmoidlstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid§
lstm_cell_105/ReadVariableOp_1ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_1
#lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice_1/stack
%lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_105/strided_slice_1/stack_1
%lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_1/stack_2Ü
lstm_cell_105/strided_slice_1StridedSlice&lstm_cell_105/ReadVariableOp_1:value:0,lstm_cell_105/strided_slice_1/stack:output:0.lstm_cell_105/strided_slice_1/stack_1:output:0.lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_1­
lstm_cell_105/MatMul_5MatMullstm_cell_105/mul_1:z:0&lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_5©
lstm_cell_105/add_1AddV2 lstm_cell_105/BiasAdd_1:output:0 lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_1
lstm_cell_105/Sigmoid_1Sigmoidlstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_1
lstm_cell_105/mul_4Mullstm_cell_105/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_4§
lstm_cell_105/ReadVariableOp_2ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_2
#lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_105/strided_slice_2/stack
%lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_105/strided_slice_2/stack_1
%lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_2/stack_2Ü
lstm_cell_105/strided_slice_2StridedSlice&lstm_cell_105/ReadVariableOp_2:value:0,lstm_cell_105/strided_slice_2/stack:output:0.lstm_cell_105/strided_slice_2/stack_1:output:0.lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_2­
lstm_cell_105/MatMul_6MatMullstm_cell_105/mul_2:z:0&lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_6©
lstm_cell_105/add_2AddV2 lstm_cell_105/BiasAdd_2:output:0 lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_2{
lstm_cell_105/ReluRelulstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu 
lstm_cell_105/mul_5Mullstm_cell_105/Sigmoid:y:0 lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_5
lstm_cell_105/add_3AddV2lstm_cell_105/mul_4:z:0lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_3§
lstm_cell_105/ReadVariableOp_3ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_3
#lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_105/strided_slice_3/stack
%lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_105/strided_slice_3/stack_1
%lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_3/stack_2Ü
lstm_cell_105/strided_slice_3StridedSlice&lstm_cell_105/ReadVariableOp_3:value:0,lstm_cell_105/strided_slice_3/stack:output:0.lstm_cell_105/strided_slice_3/stack_1:output:0.lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_3­
lstm_cell_105/MatMul_7MatMullstm_cell_105/mul_3:z:0&lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_7©
lstm_cell_105/add_4AddV2 lstm_cell_105/BiasAdd_3:output:0 lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_4
lstm_cell_105/Sigmoid_2Sigmoidlstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_2
lstm_cell_105/Relu_1Relulstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu_1¤
lstm_cell_105/mul_6Mullstm_cell_105/Sigmoid_2:y:0"lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_105_split_readvariableop_resource-lstm_cell_105_split_1_readvariableop_resource%lstm_cell_105_readvariableop_resource*
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
bodyR
while_body_3430997*
condR
while_cond_3430996*K
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
runtimeï
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_105/ReadVariableOp^lstm_cell_105/ReadVariableOp_1^lstm_cell_105/ReadVariableOp_2^lstm_cell_105/ReadVariableOp_3#^lstm_cell_105/split/ReadVariableOp%^lstm_cell_105/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_105/ReadVariableOplstm_cell_105/ReadVariableOp2@
lstm_cell_105/ReadVariableOp_1lstm_cell_105/ReadVariableOp_12@
lstm_cell_105/ReadVariableOp_2lstm_cell_105/ReadVariableOp_22@
lstm_cell_105/ReadVariableOp_3lstm_cell_105/ReadVariableOp_32H
"lstm_cell_105/split/ReadVariableOp"lstm_cell_105/split/ReadVariableOp2L
$lstm_cell_105/split_1/ReadVariableOp$lstm_cell_105/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
S
ï
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3431329

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
:	*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
mul_6á
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muld
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

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

Ï
__inference_loss_fn_1_3431487[
Hlstm_105_lstm_cell_105_kernel_regularizer_square_readvariableop_resource:	
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlstm_105_lstm_cell_105_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mul{
IdentityIdentity1lstm_105/lstm_cell_105/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp
Ã½
Ù
)sequential_42_lstm_105_while_body_3427541J
Fsequential_42_lstm_105_while_sequential_42_lstm_105_while_loop_counterP
Lsequential_42_lstm_105_while_sequential_42_lstm_105_while_maximum_iterations,
(sequential_42_lstm_105_while_placeholder.
*sequential_42_lstm_105_while_placeholder_1.
*sequential_42_lstm_105_while_placeholder_2.
*sequential_42_lstm_105_while_placeholder_3I
Esequential_42_lstm_105_while_sequential_42_lstm_105_strided_slice_1_0
sequential_42_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_105_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_42_lstm_105_while_lstm_cell_105_split_readvariableop_resource_0:	[
Lsequential_42_lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0:	W
Dsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource_0:	 )
%sequential_42_lstm_105_while_identity+
'sequential_42_lstm_105_while_identity_1+
'sequential_42_lstm_105_while_identity_2+
'sequential_42_lstm_105_while_identity_3+
'sequential_42_lstm_105_while_identity_4+
'sequential_42_lstm_105_while_identity_5G
Csequential_42_lstm_105_while_sequential_42_lstm_105_strided_slice_1
sequential_42_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_105_tensorarrayunstack_tensorlistfromtensor[
Hsequential_42_lstm_105_while_lstm_cell_105_split_readvariableop_resource:	Y
Jsequential_42_lstm_105_while_lstm_cell_105_split_1_readvariableop_resource:	U
Bsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource:	 ¢9sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp¢;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_1¢;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_2¢;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_3¢?sequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOp¢Asequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOpñ
Nsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2P
Nsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shapeÞ
@sequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_42_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_105_tensorarrayunstack_tensorlistfromtensor_0(sequential_42_lstm_105_while_placeholderWsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02B
@sequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItemÒ
:sequential_42/lstm_105/while/lstm_cell_105/ones_like/ShapeShape*sequential_42_lstm_105_while_placeholder_2*
T0*
_output_shapes
:2<
:sequential_42/lstm_105/while/lstm_cell_105/ones_like/Shape½
:sequential_42/lstm_105/while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2<
:sequential_42/lstm_105/while/lstm_cell_105/ones_like/Const°
4sequential_42/lstm_105/while/lstm_cell_105/ones_likeFillCsequential_42/lstm_105/while/lstm_cell_105/ones_like/Shape:output:0Csequential_42/lstm_105/while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_42/lstm_105/while/lstm_cell_105/ones_likeº
:sequential_42/lstm_105/while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_42/lstm_105/while/lstm_cell_105/split/split_dim
?sequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOpReadVariableOpJsequential_42_lstm_105_while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02A
?sequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOpÓ
0sequential_42/lstm_105/while/lstm_cell_105/splitSplitCsequential_42/lstm_105/while/lstm_cell_105/split/split_dim:output:0Gsequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split22
0sequential_42/lstm_105/while/lstm_cell_105/split¦
1sequential_42/lstm_105/while/lstm_cell_105/MatMulMatMulGsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_42/lstm_105/while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_42/lstm_105/while/lstm_cell_105/MatMulª
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_1MatMulGsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_42/lstm_105/while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_1ª
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_2MatMulGsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_42/lstm_105/while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_2ª
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_3MatMulGsequential_42/lstm_105/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_42/lstm_105/while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_3¾
<sequential_42/lstm_105/while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2>
<sequential_42/lstm_105/while/lstm_cell_105/split_1/split_dim
Asequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOpReadVariableOpLsequential_42_lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02C
Asequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOpË
2sequential_42/lstm_105/while/lstm_cell_105/split_1SplitEsequential_42/lstm_105/while/lstm_cell_105/split_1/split_dim:output:0Isequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split24
2sequential_42/lstm_105/while/lstm_cell_105/split_1
2sequential_42/lstm_105/while/lstm_cell_105/BiasAddBiasAdd;sequential_42/lstm_105/while/lstm_cell_105/MatMul:product:0;sequential_42/lstm_105/while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_42/lstm_105/while/lstm_cell_105/BiasAdd¥
4sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_1BiasAdd=sequential_42/lstm_105/while/lstm_cell_105/MatMul_1:product:0;sequential_42/lstm_105/while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_1¥
4sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_2BiasAdd=sequential_42/lstm_105/while/lstm_cell_105/MatMul_2:product:0;sequential_42/lstm_105/while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_2¥
4sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_3BiasAdd=sequential_42/lstm_105/while/lstm_cell_105/MatMul_3:product:0;sequential_42/lstm_105/while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_3
.sequential_42/lstm_105/while/lstm_cell_105/mulMul*sequential_42_lstm_105_while_placeholder_2=sequential_42/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/while/lstm_cell_105/mul
0sequential_42/lstm_105/while/lstm_cell_105/mul_1Mul*sequential_42_lstm_105_while_placeholder_2=sequential_42/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/mul_1
0sequential_42/lstm_105/while/lstm_cell_105/mul_2Mul*sequential_42_lstm_105_while_placeholder_2=sequential_42/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/mul_2
0sequential_42/lstm_105/while/lstm_cell_105/mul_3Mul*sequential_42_lstm_105_while_placeholder_2=sequential_42/lstm_105/while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/mul_3ü
9sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOpReadVariableOpDsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOpÑ
>sequential_42/lstm_105/while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_42/lstm_105/while/lstm_cell_105/strided_slice/stackÕ
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack_1Õ
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack_2þ
8sequential_42/lstm_105/while/lstm_cell_105/strided_sliceStridedSliceAsequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp:value:0Gsequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack:output:0Isequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack_1:output:0Isequential_42/lstm_105/while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_42/lstm_105/while/lstm_cell_105/strided_slice
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_4MatMul2sequential_42/lstm_105/while/lstm_cell_105/mul:z:0Asequential_42/lstm_105/while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_4
.sequential_42/lstm_105/while/lstm_cell_105/addAddV2;sequential_42/lstm_105/while/lstm_cell_105/BiasAdd:output:0=sequential_42/lstm_105/while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/while/lstm_cell_105/addÙ
2sequential_42/lstm_105/while/lstm_cell_105/SigmoidSigmoid2sequential_42/lstm_105/while/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_42/lstm_105/while/lstm_cell_105/Sigmoid
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_1ReadVariableOpDsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_1Õ
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stackÙ
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2D
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack_1Ù
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack_2
:sequential_42/lstm_105/while/lstm_cell_105/strided_slice_1StridedSliceCsequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_1:value:0Isequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack:output:0Ksequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack_1:output:0Ksequential_42/lstm_105/while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_42/lstm_105/while/lstm_cell_105/strided_slice_1¡
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_5MatMul4sequential_42/lstm_105/while/lstm_cell_105/mul_1:z:0Csequential_42/lstm_105/while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_5
0sequential_42/lstm_105/while/lstm_cell_105/add_1AddV2=sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_1:output:0=sequential_42/lstm_105/while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/add_1ß
4sequential_42/lstm_105/while/lstm_cell_105/Sigmoid_1Sigmoid4sequential_42/lstm_105/while/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_42/lstm_105/while/lstm_cell_105/Sigmoid_1
0sequential_42/lstm_105/while/lstm_cell_105/mul_4Mul8sequential_42/lstm_105/while/lstm_cell_105/Sigmoid_1:y:0*sequential_42_lstm_105_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/mul_4
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_2ReadVariableOpDsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_2Õ
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stackÙ
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2D
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack_1Ù
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack_2
:sequential_42/lstm_105/while/lstm_cell_105/strided_slice_2StridedSliceCsequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_2:value:0Isequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack:output:0Ksequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack_1:output:0Ksequential_42/lstm_105/while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_42/lstm_105/while/lstm_cell_105/strided_slice_2¡
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_6MatMul4sequential_42/lstm_105/while/lstm_cell_105/mul_2:z:0Csequential_42/lstm_105/while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_6
0sequential_42/lstm_105/while/lstm_cell_105/add_2AddV2=sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_2:output:0=sequential_42/lstm_105/while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/add_2Ò
/sequential_42/lstm_105/while/lstm_cell_105/ReluRelu4sequential_42/lstm_105/while/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_42/lstm_105/while/lstm_cell_105/Relu
0sequential_42/lstm_105/while/lstm_cell_105/mul_5Mul6sequential_42/lstm_105/while/lstm_cell_105/Sigmoid:y:0=sequential_42/lstm_105/while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/mul_5
0sequential_42/lstm_105/while/lstm_cell_105/add_3AddV24sequential_42/lstm_105/while/lstm_cell_105/mul_4:z:04sequential_42/lstm_105/while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/add_3
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_3ReadVariableOpDsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_3Õ
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stackÙ
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack_1Ù
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack_2
:sequential_42/lstm_105/while/lstm_cell_105/strided_slice_3StridedSliceCsequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_3:value:0Isequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack:output:0Ksequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack_1:output:0Ksequential_42/lstm_105/while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_42/lstm_105/while/lstm_cell_105/strided_slice_3¡
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_7MatMul4sequential_42/lstm_105/while/lstm_cell_105/mul_3:z:0Csequential_42/lstm_105/while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_42/lstm_105/while/lstm_cell_105/MatMul_7
0sequential_42/lstm_105/while/lstm_cell_105/add_4AddV2=sequential_42/lstm_105/while/lstm_cell_105/BiasAdd_3:output:0=sequential_42/lstm_105/while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/add_4ß
4sequential_42/lstm_105/while/lstm_cell_105/Sigmoid_2Sigmoid4sequential_42/lstm_105/while/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_42/lstm_105/while/lstm_cell_105/Sigmoid_2Ö
1sequential_42/lstm_105/while/lstm_cell_105/Relu_1Relu4sequential_42/lstm_105/while/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_42/lstm_105/while/lstm_cell_105/Relu_1
0sequential_42/lstm_105/while/lstm_cell_105/mul_6Mul8sequential_42/lstm_105/while/lstm_cell_105/Sigmoid_2:y:0?sequential_42/lstm_105/while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_42/lstm_105/while/lstm_cell_105/mul_6Ô
Asequential_42/lstm_105/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_42_lstm_105_while_placeholder_1(sequential_42_lstm_105_while_placeholder4sequential_42/lstm_105/while/lstm_cell_105/mul_6:z:0*
_output_shapes
: *
element_dtype02C
Asequential_42/lstm_105/while/TensorArrayV2Write/TensorListSetItem
"sequential_42/lstm_105/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_42/lstm_105/while/add/yÅ
 sequential_42/lstm_105/while/addAddV2(sequential_42_lstm_105_while_placeholder+sequential_42/lstm_105/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_42/lstm_105/while/add
$sequential_42/lstm_105/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_42/lstm_105/while/add_1/yé
"sequential_42/lstm_105/while/add_1AddV2Fsequential_42_lstm_105_while_sequential_42_lstm_105_while_loop_counter-sequential_42/lstm_105/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_42/lstm_105/while/add_1Ç
%sequential_42/lstm_105/while/IdentityIdentity&sequential_42/lstm_105/while/add_1:z:0"^sequential_42/lstm_105/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_42/lstm_105/while/Identityñ
'sequential_42/lstm_105/while/Identity_1IdentityLsequential_42_lstm_105_while_sequential_42_lstm_105_while_maximum_iterations"^sequential_42/lstm_105/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_42/lstm_105/while/Identity_1É
'sequential_42/lstm_105/while/Identity_2Identity$sequential_42/lstm_105/while/add:z:0"^sequential_42/lstm_105/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_42/lstm_105/while/Identity_2ö
'sequential_42/lstm_105/while/Identity_3IdentityQsequential_42/lstm_105/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_42/lstm_105/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_42/lstm_105/while/Identity_3ê
'sequential_42/lstm_105/while/Identity_4Identity4sequential_42/lstm_105/while/lstm_cell_105/mul_6:z:0"^sequential_42/lstm_105/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_42/lstm_105/while/Identity_4ê
'sequential_42/lstm_105/while/Identity_5Identity4sequential_42/lstm_105/while/lstm_cell_105/add_3:z:0"^sequential_42/lstm_105/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_42/lstm_105/while/Identity_5
!sequential_42/lstm_105/while/NoOpNoOp:^sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp<^sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_1<^sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_2<^sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_3@^sequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOpB^sequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_42/lstm_105/while/NoOp"W
%sequential_42_lstm_105_while_identity.sequential_42/lstm_105/while/Identity:output:0"[
'sequential_42_lstm_105_while_identity_10sequential_42/lstm_105/while/Identity_1:output:0"[
'sequential_42_lstm_105_while_identity_20sequential_42/lstm_105/while/Identity_2:output:0"[
'sequential_42_lstm_105_while_identity_30sequential_42/lstm_105/while/Identity_3:output:0"[
'sequential_42_lstm_105_while_identity_40sequential_42/lstm_105/while/Identity_4:output:0"[
'sequential_42_lstm_105_while_identity_50sequential_42/lstm_105/while/Identity_5:output:0"
Bsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resourceDsequential_42_lstm_105_while_lstm_cell_105_readvariableop_resource_0"
Jsequential_42_lstm_105_while_lstm_cell_105_split_1_readvariableop_resourceLsequential_42_lstm_105_while_lstm_cell_105_split_1_readvariableop_resource_0"
Hsequential_42_lstm_105_while_lstm_cell_105_split_readvariableop_resourceJsequential_42_lstm_105_while_lstm_cell_105_split_readvariableop_resource_0"
Csequential_42_lstm_105_while_sequential_42_lstm_105_strided_slice_1Esequential_42_lstm_105_while_sequential_42_lstm_105_strided_slice_1_0"
sequential_42_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_105_tensorarrayunstack_tensorlistfromtensorsequential_42_lstm_105_while_tensorarrayv2read_tensorlistgetitem_sequential_42_lstm_105_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2v
9sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp9sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp2z
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_1;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_12z
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_2;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_22z
;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_3;sequential_42/lstm_105/while/lstm_cell_105/ReadVariableOp_32
?sequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOp?sequential_42/lstm_105/while/lstm_cell_105/split/ReadVariableOp2
Asequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOpAsequential_42/lstm_105/while/lstm_cell_105/split_1/ReadVariableOp: 
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
à,
Â
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429329
input_43#
lstm_105_3429298:	
lstm_105_3429300:	#
lstm_105_3429302:	 #
dense_126_3429305:  
dense_126_3429307: #
dense_127_3429310: 
dense_127_3429312:
identity¢!dense_126/StatefulPartitionedCall¢!dense_127/StatefulPartitionedCall¢0dense_127/bias/Regularizer/Square/ReadVariableOp¢ lstm_105/StatefulPartitionedCall¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp­
 lstm_105/StatefulPartitionedCallStatefulPartitionedCallinput_43lstm_105_3429298lstm_105_3429300lstm_105_3429302*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_105_layer_call_and_return_conditional_losses_34291612"
 lstm_105/StatefulPartitionedCall¿
!dense_126/StatefulPartitionedCallStatefulPartitionedCall)lstm_105/StatefulPartitionedCall:output:0dense_126_3429305dense_126_3429307*
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
GPU 2J 8 *O
fJRH
F__inference_dense_126_layer_call_and_return_conditional_losses_34287422#
!dense_126/StatefulPartitionedCallÀ
!dense_127/StatefulPartitionedCallStatefulPartitionedCall*dense_126/StatefulPartitionedCall:output:0dense_127_3429310dense_127_3429312*
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
GPU 2J 8 *O
fJRH
F__inference_dense_127_layer_call_and_return_conditional_losses_34287642#
!dense_127/StatefulPartitionedCall
reshape_63/PartitionedCallPartitionedCall*dense_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *P
fKRI
G__inference_reshape_63_layer_call_and_return_conditional_losses_34287832
reshape_63/PartitionedCallÔ
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_105_3429298*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mul²
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_127_3429312*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mul
IdentityIdentity#reshape_63/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_126/StatefulPartitionedCall"^dense_127/StatefulPartitionedCall1^dense_127/bias/Regularizer/Square/ReadVariableOp!^lstm_105/StatefulPartitionedCall@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_126/StatefulPartitionedCall!dense_126/StatefulPartitionedCall2F
!dense_127/StatefulPartitionedCall!dense_127/StatefulPartitionedCall2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp2D
 lstm_105/StatefulPartitionedCall lstm_105/StatefulPartitionedCall2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_43
ê£
´
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430855

inputs>
+lstm_cell_105_split_readvariableop_resource:	<
-lstm_cell_105_split_1_readvariableop_resource:	8
%lstm_cell_105_readvariableop_resource:	 
identity¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_105/ReadVariableOp¢lstm_cell_105/ReadVariableOp_1¢lstm_cell_105/ReadVariableOp_2¢lstm_cell_105/ReadVariableOp_3¢"lstm_cell_105/split/ReadVariableOp¢$lstm_cell_105/split_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2|
lstm_cell_105/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_105/ones_like/Shape
lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_105/ones_like/Const¼
lstm_cell_105/ones_likeFill&lstm_cell_105/ones_like/Shape:output:0&lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/ones_like
lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_105/split/split_dimµ
"lstm_cell_105/split/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_105/split/ReadVariableOpß
lstm_cell_105/splitSplit&lstm_cell_105/split/split_dim:output:0*lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_105/split 
lstm_cell_105/MatMulMatMulstrided_slice_2:output:0lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul¤
lstm_cell_105/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_1¤
lstm_cell_105/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_2¤
lstm_cell_105/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_3
lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_105/split_1/split_dim·
$lstm_cell_105/split_1/ReadVariableOpReadVariableOp-lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_105/split_1/ReadVariableOp×
lstm_cell_105/split_1Split(lstm_cell_105/split_1/split_dim:output:0,lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_105/split_1«
lstm_cell_105/BiasAddBiasAddlstm_cell_105/MatMul:product:0lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd±
lstm_cell_105/BiasAdd_1BiasAdd lstm_cell_105/MatMul_1:product:0lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_1±
lstm_cell_105/BiasAdd_2BiasAdd lstm_cell_105/MatMul_2:product:0lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_2±
lstm_cell_105/BiasAdd_3BiasAdd lstm_cell_105/MatMul_3:product:0lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/BiasAdd_3
lstm_cell_105/mulMulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul
lstm_cell_105/mul_1Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_1
lstm_cell_105/mul_2Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_2
lstm_cell_105/mul_3Mulzeros:output:0 lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_3£
lstm_cell_105/ReadVariableOpReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_105/ReadVariableOp
!lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_105/strided_slice/stack
#lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice/stack_1
#lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_105/strided_slice/stack_2Ð
lstm_cell_105/strided_sliceStridedSlice$lstm_cell_105/ReadVariableOp:value:0*lstm_cell_105/strided_slice/stack:output:0,lstm_cell_105/strided_slice/stack_1:output:0,lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice©
lstm_cell_105/MatMul_4MatMullstm_cell_105/mul:z:0$lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_4£
lstm_cell_105/addAddV2lstm_cell_105/BiasAdd:output:0 lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add
lstm_cell_105/SigmoidSigmoidlstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid§
lstm_cell_105/ReadVariableOp_1ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_1
#lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_105/strided_slice_1/stack
%lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_105/strided_slice_1/stack_1
%lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_1/stack_2Ü
lstm_cell_105/strided_slice_1StridedSlice&lstm_cell_105/ReadVariableOp_1:value:0,lstm_cell_105/strided_slice_1/stack:output:0.lstm_cell_105/strided_slice_1/stack_1:output:0.lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_1­
lstm_cell_105/MatMul_5MatMullstm_cell_105/mul_1:z:0&lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_5©
lstm_cell_105/add_1AddV2 lstm_cell_105/BiasAdd_1:output:0 lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_1
lstm_cell_105/Sigmoid_1Sigmoidlstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_1
lstm_cell_105/mul_4Mullstm_cell_105/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_4§
lstm_cell_105/ReadVariableOp_2ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_2
#lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_105/strided_slice_2/stack
%lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_105/strided_slice_2/stack_1
%lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_2/stack_2Ü
lstm_cell_105/strided_slice_2StridedSlice&lstm_cell_105/ReadVariableOp_2:value:0,lstm_cell_105/strided_slice_2/stack:output:0.lstm_cell_105/strided_slice_2/stack_1:output:0.lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_2­
lstm_cell_105/MatMul_6MatMullstm_cell_105/mul_2:z:0&lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_6©
lstm_cell_105/add_2AddV2 lstm_cell_105/BiasAdd_2:output:0 lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_2{
lstm_cell_105/ReluRelulstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu 
lstm_cell_105/mul_5Mullstm_cell_105/Sigmoid:y:0 lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_5
lstm_cell_105/add_3AddV2lstm_cell_105/mul_4:z:0lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_3§
lstm_cell_105/ReadVariableOp_3ReadVariableOp%lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_105/ReadVariableOp_3
#lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_105/strided_slice_3/stack
%lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_105/strided_slice_3/stack_1
%lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_105/strided_slice_3/stack_2Ü
lstm_cell_105/strided_slice_3StridedSlice&lstm_cell_105/ReadVariableOp_3:value:0,lstm_cell_105/strided_slice_3/stack:output:0.lstm_cell_105/strided_slice_3/stack_1:output:0.lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_105/strided_slice_3­
lstm_cell_105/MatMul_7MatMullstm_cell_105/mul_3:z:0&lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/MatMul_7©
lstm_cell_105/add_4AddV2 lstm_cell_105/BiasAdd_3:output:0 lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/add_4
lstm_cell_105/Sigmoid_2Sigmoidlstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Sigmoid_2
lstm_cell_105/Relu_1Relulstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/Relu_1¤
lstm_cell_105/mul_6Mullstm_cell_105/Sigmoid_2:y:0"lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_105/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_105_split_readvariableop_resource-lstm_cell_105_split_1_readvariableop_resource%lstm_cell_105_readvariableop_resource*
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
bodyR
while_body_3430722*
condR
while_cond_3430721*K
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
runtimeï
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_105/ReadVariableOp^lstm_cell_105/ReadVariableOp_1^lstm_cell_105/ReadVariableOp_2^lstm_cell_105/ReadVariableOp_3#^lstm_cell_105/split/ReadVariableOp%^lstm_cell_105/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_105/ReadVariableOplstm_cell_105/ReadVariableOp2@
lstm_cell_105/ReadVariableOp_1lstm_cell_105/ReadVariableOp_12@
lstm_cell_105/ReadVariableOp_2lstm_cell_105/ReadVariableOp_22@
lstm_cell_105/ReadVariableOp_3lstm_cell_105/ReadVariableOp_32H
"lstm_cell_105/split/ReadVariableOp"lstm_cell_105/split/ReadVariableOp2L
$lstm_cell_105/split_1/ReadVariableOp$lstm_cell_105/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)sequential_42_lstm_105_while_cond_3427540J
Fsequential_42_lstm_105_while_sequential_42_lstm_105_while_loop_counterP
Lsequential_42_lstm_105_while_sequential_42_lstm_105_while_maximum_iterations,
(sequential_42_lstm_105_while_placeholder.
*sequential_42_lstm_105_while_placeholder_1.
*sequential_42_lstm_105_while_placeholder_2.
*sequential_42_lstm_105_while_placeholder_3L
Hsequential_42_lstm_105_while_less_sequential_42_lstm_105_strided_slice_1c
_sequential_42_lstm_105_while_sequential_42_lstm_105_while_cond_3427540___redundant_placeholder0c
_sequential_42_lstm_105_while_sequential_42_lstm_105_while_cond_3427540___redundant_placeholder1c
_sequential_42_lstm_105_while_sequential_42_lstm_105_while_cond_3427540___redundant_placeholder2c
_sequential_42_lstm_105_while_sequential_42_lstm_105_while_cond_3427540___redundant_placeholder3)
%sequential_42_lstm_105_while_identity
ã
!sequential_42/lstm_105/while/LessLess(sequential_42_lstm_105_while_placeholderHsequential_42_lstm_105_while_less_sequential_42_lstm_105_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_42/lstm_105/while/Less¢
%sequential_42/lstm_105/while/IdentityIdentity%sequential_42/lstm_105/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_42/lstm_105/while/Identity"W
%sequential_42_lstm_105_while_identity.sequential_42/lstm_105/while/Identity:output:0*(
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
&
ñ
while_body_3428125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_105_3428149_0:	,
while_lstm_cell_105_3428151_0:	0
while_lstm_cell_105_3428153_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_105_3428149:	*
while_lstm_cell_105_3428151:	.
while_lstm_cell_105_3428153:	 ¢+while/lstm_cell_105/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemë
+while/lstm_cell_105/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_105_3428149_0while_lstm_cell_105_3428151_0while_lstm_cell_105_3428153_0*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_34280472-
+while/lstm_cell_105/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_105/StatefulPartitionedCall:output:0*
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
while/Identity_3¥
while/Identity_4Identity4while/lstm_cell_105/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¥
while/Identity_5Identity4while/lstm_cell_105/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp,^while/lstm_cell_105/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_105_3428149while_lstm_cell_105_3428149_0"<
while_lstm_cell_105_3428151while_lstm_cell_105_3428151_0"<
while_lstm_cell_105_3428153while_lstm_cell_105_3428153_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+while/lstm_cell_105/StatefulPartitionedCall+while/lstm_cell_105/StatefulPartitionedCall: 
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
Ã
	
"__inference__wrapped_model_3427690
input_43U
Bsequential_42_lstm_105_lstm_cell_105_split_readvariableop_resource:	S
Dsequential_42_lstm_105_lstm_cell_105_split_1_readvariableop_resource:	O
<sequential_42_lstm_105_lstm_cell_105_readvariableop_resource:	 H
6sequential_42_dense_126_matmul_readvariableop_resource:  E
7sequential_42_dense_126_biasadd_readvariableop_resource: H
6sequential_42_dense_127_matmul_readvariableop_resource: E
7sequential_42_dense_127_biasadd_readvariableop_resource:
identity¢.sequential_42/dense_126/BiasAdd/ReadVariableOp¢-sequential_42/dense_126/MatMul/ReadVariableOp¢.sequential_42/dense_127/BiasAdd/ReadVariableOp¢-sequential_42/dense_127/MatMul/ReadVariableOp¢3sequential_42/lstm_105/lstm_cell_105/ReadVariableOp¢5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_1¢5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_2¢5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_3¢9sequential_42/lstm_105/lstm_cell_105/split/ReadVariableOp¢;sequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOp¢sequential_42/lstm_105/whilet
sequential_42/lstm_105/ShapeShapeinput_43*
T0*
_output_shapes
:2
sequential_42/lstm_105/Shape¢
*sequential_42/lstm_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_42/lstm_105/strided_slice/stack¦
,sequential_42/lstm_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_42/lstm_105/strided_slice/stack_1¦
,sequential_42/lstm_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_42/lstm_105/strided_slice/stack_2ì
$sequential_42/lstm_105/strided_sliceStridedSlice%sequential_42/lstm_105/Shape:output:03sequential_42/lstm_105/strided_slice/stack:output:05sequential_42/lstm_105/strided_slice/stack_1:output:05sequential_42/lstm_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_42/lstm_105/strided_slice
"sequential_42/lstm_105/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_42/lstm_105/zeros/mul/yÈ
 sequential_42/lstm_105/zeros/mulMul-sequential_42/lstm_105/strided_slice:output:0+sequential_42/lstm_105/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_42/lstm_105/zeros/mul
#sequential_42/lstm_105/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_42/lstm_105/zeros/Less/yÃ
!sequential_42/lstm_105/zeros/LessLess$sequential_42/lstm_105/zeros/mul:z:0,sequential_42/lstm_105/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_42/lstm_105/zeros/Less
%sequential_42/lstm_105/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_42/lstm_105/zeros/packed/1ß
#sequential_42/lstm_105/zeros/packedPack-sequential_42/lstm_105/strided_slice:output:0.sequential_42/lstm_105/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_42/lstm_105/zeros/packed
"sequential_42/lstm_105/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_42/lstm_105/zeros/ConstÑ
sequential_42/lstm_105/zerosFill,sequential_42/lstm_105/zeros/packed:output:0+sequential_42/lstm_105/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_42/lstm_105/zeros
$sequential_42/lstm_105/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_42/lstm_105/zeros_1/mul/yÎ
"sequential_42/lstm_105/zeros_1/mulMul-sequential_42/lstm_105/strided_slice:output:0-sequential_42/lstm_105/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_42/lstm_105/zeros_1/mul
%sequential_42/lstm_105/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2'
%sequential_42/lstm_105/zeros_1/Less/yË
#sequential_42/lstm_105/zeros_1/LessLess&sequential_42/lstm_105/zeros_1/mul:z:0.sequential_42/lstm_105/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_42/lstm_105/zeros_1/Less
'sequential_42/lstm_105/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_42/lstm_105/zeros_1/packed/1å
%sequential_42/lstm_105/zeros_1/packedPack-sequential_42/lstm_105/strided_slice:output:00sequential_42/lstm_105/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_42/lstm_105/zeros_1/packed
$sequential_42/lstm_105/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_42/lstm_105/zeros_1/ConstÙ
sequential_42/lstm_105/zeros_1Fill.sequential_42/lstm_105/zeros_1/packed:output:0-sequential_42/lstm_105/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_42/lstm_105/zeros_1£
%sequential_42/lstm_105/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_42/lstm_105/transpose/permÁ
 sequential_42/lstm_105/transpose	Transposeinput_43.sequential_42/lstm_105/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_42/lstm_105/transpose
sequential_42/lstm_105/Shape_1Shape$sequential_42/lstm_105/transpose:y:0*
T0*
_output_shapes
:2 
sequential_42/lstm_105/Shape_1¦
,sequential_42/lstm_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_42/lstm_105/strided_slice_1/stackª
.sequential_42/lstm_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/lstm_105/strided_slice_1/stack_1ª
.sequential_42/lstm_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/lstm_105/strided_slice_1/stack_2ø
&sequential_42/lstm_105/strided_slice_1StridedSlice'sequential_42/lstm_105/Shape_1:output:05sequential_42/lstm_105/strided_slice_1/stack:output:07sequential_42/lstm_105/strided_slice_1/stack_1:output:07sequential_42/lstm_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_42/lstm_105/strided_slice_1³
2sequential_42/lstm_105/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2sequential_42/lstm_105/TensorArrayV2/element_shape
$sequential_42/lstm_105/TensorArrayV2TensorListReserve;sequential_42/lstm_105/TensorArrayV2/element_shape:output:0/sequential_42/lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_42/lstm_105/TensorArrayV2í
Lsequential_42/lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_42/lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeÔ
>sequential_42/lstm_105/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_42/lstm_105/transpose:y:0Usequential_42/lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_42/lstm_105/TensorArrayUnstack/TensorListFromTensor¦
,sequential_42/lstm_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_42/lstm_105/strided_slice_2/stackª
.sequential_42/lstm_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/lstm_105/strided_slice_2/stack_1ª
.sequential_42/lstm_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/lstm_105/strided_slice_2/stack_2
&sequential_42/lstm_105/strided_slice_2StridedSlice$sequential_42/lstm_105/transpose:y:05sequential_42/lstm_105/strided_slice_2/stack:output:07sequential_42/lstm_105/strided_slice_2/stack_1:output:07sequential_42/lstm_105/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2(
&sequential_42/lstm_105/strided_slice_2Á
4sequential_42/lstm_105/lstm_cell_105/ones_like/ShapeShape%sequential_42/lstm_105/zeros:output:0*
T0*
_output_shapes
:26
4sequential_42/lstm_105/lstm_cell_105/ones_like/Shape±
4sequential_42/lstm_105/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4sequential_42/lstm_105/lstm_cell_105/ones_like/Const
.sequential_42/lstm_105/lstm_cell_105/ones_likeFill=sequential_42/lstm_105/lstm_cell_105/ones_like/Shape:output:0=sequential_42/lstm_105/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/lstm_cell_105/ones_like®
4sequential_42/lstm_105/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_42/lstm_105/lstm_cell_105/split/split_dimú
9sequential_42/lstm_105/lstm_cell_105/split/ReadVariableOpReadVariableOpBsequential_42_lstm_105_lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02;
9sequential_42/lstm_105/lstm_cell_105/split/ReadVariableOp»
*sequential_42/lstm_105/lstm_cell_105/splitSplit=sequential_42/lstm_105/lstm_cell_105/split/split_dim:output:0Asequential_42/lstm_105/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2,
*sequential_42/lstm_105/lstm_cell_105/splitü
+sequential_42/lstm_105/lstm_cell_105/MatMulMatMul/sequential_42/lstm_105/strided_slice_2:output:03sequential_42/lstm_105/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_42/lstm_105/lstm_cell_105/MatMul
-sequential_42/lstm_105/lstm_cell_105/MatMul_1MatMul/sequential_42/lstm_105/strided_slice_2:output:03sequential_42/lstm_105/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_1
-sequential_42/lstm_105/lstm_cell_105/MatMul_2MatMul/sequential_42/lstm_105/strided_slice_2:output:03sequential_42/lstm_105/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_2
-sequential_42/lstm_105/lstm_cell_105/MatMul_3MatMul/sequential_42/lstm_105/strided_slice_2:output:03sequential_42/lstm_105/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_3²
6sequential_42/lstm_105/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 28
6sequential_42/lstm_105/lstm_cell_105/split_1/split_dimü
;sequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOpReadVariableOpDsequential_42_lstm_105_lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOp³
,sequential_42/lstm_105/lstm_cell_105/split_1Split?sequential_42/lstm_105/lstm_cell_105/split_1/split_dim:output:0Csequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2.
,sequential_42/lstm_105/lstm_cell_105/split_1
,sequential_42/lstm_105/lstm_cell_105/BiasAddBiasAdd5sequential_42/lstm_105/lstm_cell_105/MatMul:product:05sequential_42/lstm_105/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_42/lstm_105/lstm_cell_105/BiasAdd
.sequential_42/lstm_105/lstm_cell_105/BiasAdd_1BiasAdd7sequential_42/lstm_105/lstm_cell_105/MatMul_1:product:05sequential_42/lstm_105/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/lstm_cell_105/BiasAdd_1
.sequential_42/lstm_105/lstm_cell_105/BiasAdd_2BiasAdd7sequential_42/lstm_105/lstm_cell_105/MatMul_2:product:05sequential_42/lstm_105/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/lstm_cell_105/BiasAdd_2
.sequential_42/lstm_105/lstm_cell_105/BiasAdd_3BiasAdd7sequential_42/lstm_105/lstm_cell_105/MatMul_3:product:05sequential_42/lstm_105/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/lstm_cell_105/BiasAdd_3í
(sequential_42/lstm_105/lstm_cell_105/mulMul%sequential_42/lstm_105/zeros:output:07sequential_42/lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_42/lstm_105/lstm_cell_105/mulñ
*sequential_42/lstm_105/lstm_cell_105/mul_1Mul%sequential_42/lstm_105/zeros:output:07sequential_42/lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/mul_1ñ
*sequential_42/lstm_105/lstm_cell_105/mul_2Mul%sequential_42/lstm_105/zeros:output:07sequential_42/lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/mul_2ñ
*sequential_42/lstm_105/lstm_cell_105/mul_3Mul%sequential_42/lstm_105/zeros:output:07sequential_42/lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/mul_3è
3sequential_42/lstm_105/lstm_cell_105/ReadVariableOpReadVariableOp<sequential_42_lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_42/lstm_105/lstm_cell_105/ReadVariableOpÅ
8sequential_42/lstm_105/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_42/lstm_105/lstm_cell_105/strided_slice/stackÉ
:sequential_42/lstm_105/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_42/lstm_105/lstm_cell_105/strided_slice/stack_1É
:sequential_42/lstm_105/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_42/lstm_105/lstm_cell_105/strided_slice/stack_2Ú
2sequential_42/lstm_105/lstm_cell_105/strided_sliceStridedSlice;sequential_42/lstm_105/lstm_cell_105/ReadVariableOp:value:0Asequential_42/lstm_105/lstm_cell_105/strided_slice/stack:output:0Csequential_42/lstm_105/lstm_cell_105/strided_slice/stack_1:output:0Csequential_42/lstm_105/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_42/lstm_105/lstm_cell_105/strided_slice
-sequential_42/lstm_105/lstm_cell_105/MatMul_4MatMul,sequential_42/lstm_105/lstm_cell_105/mul:z:0;sequential_42/lstm_105/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_4ÿ
(sequential_42/lstm_105/lstm_cell_105/addAddV25sequential_42/lstm_105/lstm_cell_105/BiasAdd:output:07sequential_42/lstm_105/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_42/lstm_105/lstm_cell_105/addÇ
,sequential_42/lstm_105/lstm_cell_105/SigmoidSigmoid,sequential_42/lstm_105/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_42/lstm_105/lstm_cell_105/Sigmoidì
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_1ReadVariableOp<sequential_42_lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_1É
:sequential_42/lstm_105/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_42/lstm_105/lstm_cell_105/strided_slice_1/stackÍ
<sequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2>
<sequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack_1Í
<sequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack_2æ
4sequential_42/lstm_105/lstm_cell_105/strided_slice_1StridedSlice=sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_1:value:0Csequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack:output:0Esequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack_1:output:0Esequential_42/lstm_105/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_42/lstm_105/lstm_cell_105/strided_slice_1
-sequential_42/lstm_105/lstm_cell_105/MatMul_5MatMul.sequential_42/lstm_105/lstm_cell_105/mul_1:z:0=sequential_42/lstm_105/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_5
*sequential_42/lstm_105/lstm_cell_105/add_1AddV27sequential_42/lstm_105/lstm_cell_105/BiasAdd_1:output:07sequential_42/lstm_105/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/add_1Í
.sequential_42/lstm_105/lstm_cell_105/Sigmoid_1Sigmoid.sequential_42/lstm_105/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/lstm_cell_105/Sigmoid_1î
*sequential_42/lstm_105/lstm_cell_105/mul_4Mul2sequential_42/lstm_105/lstm_cell_105/Sigmoid_1:y:0'sequential_42/lstm_105/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/mul_4ì
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_2ReadVariableOp<sequential_42_lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_2É
:sequential_42/lstm_105/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_42/lstm_105/lstm_cell_105/strided_slice_2/stackÍ
<sequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2>
<sequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack_1Í
<sequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack_2æ
4sequential_42/lstm_105/lstm_cell_105/strided_slice_2StridedSlice=sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_2:value:0Csequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack:output:0Esequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack_1:output:0Esequential_42/lstm_105/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_42/lstm_105/lstm_cell_105/strided_slice_2
-sequential_42/lstm_105/lstm_cell_105/MatMul_6MatMul.sequential_42/lstm_105/lstm_cell_105/mul_2:z:0=sequential_42/lstm_105/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_6
*sequential_42/lstm_105/lstm_cell_105/add_2AddV27sequential_42/lstm_105/lstm_cell_105/BiasAdd_2:output:07sequential_42/lstm_105/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/add_2À
)sequential_42/lstm_105/lstm_cell_105/ReluRelu.sequential_42/lstm_105/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_42/lstm_105/lstm_cell_105/Reluü
*sequential_42/lstm_105/lstm_cell_105/mul_5Mul0sequential_42/lstm_105/lstm_cell_105/Sigmoid:y:07sequential_42/lstm_105/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/mul_5ó
*sequential_42/lstm_105/lstm_cell_105/add_3AddV2.sequential_42/lstm_105/lstm_cell_105/mul_4:z:0.sequential_42/lstm_105/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/add_3ì
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_3ReadVariableOp<sequential_42_lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_3É
:sequential_42/lstm_105/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_42/lstm_105/lstm_cell_105/strided_slice_3/stackÍ
<sequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack_1Í
<sequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack_2æ
4sequential_42/lstm_105/lstm_cell_105/strided_slice_3StridedSlice=sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_3:value:0Csequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack:output:0Esequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack_1:output:0Esequential_42/lstm_105/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_42/lstm_105/lstm_cell_105/strided_slice_3
-sequential_42/lstm_105/lstm_cell_105/MatMul_7MatMul.sequential_42/lstm_105/lstm_cell_105/mul_3:z:0=sequential_42/lstm_105/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_42/lstm_105/lstm_cell_105/MatMul_7
*sequential_42/lstm_105/lstm_cell_105/add_4AddV27sequential_42/lstm_105/lstm_cell_105/BiasAdd_3:output:07sequential_42/lstm_105/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/add_4Í
.sequential_42/lstm_105/lstm_cell_105/Sigmoid_2Sigmoid.sequential_42/lstm_105/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_42/lstm_105/lstm_cell_105/Sigmoid_2Ä
+sequential_42/lstm_105/lstm_cell_105/Relu_1Relu.sequential_42/lstm_105/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_42/lstm_105/lstm_cell_105/Relu_1
*sequential_42/lstm_105/lstm_cell_105/mul_6Mul2sequential_42/lstm_105/lstm_cell_105/Sigmoid_2:y:09sequential_42/lstm_105/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_42/lstm_105/lstm_cell_105/mul_6½
4sequential_42/lstm_105/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    26
4sequential_42/lstm_105/TensorArrayV2_1/element_shape
&sequential_42/lstm_105/TensorArrayV2_1TensorListReserve=sequential_42/lstm_105/TensorArrayV2_1/element_shape:output:0/sequential_42/lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_42/lstm_105/TensorArrayV2_1|
sequential_42/lstm_105/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_42/lstm_105/time­
/sequential_42/lstm_105/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_42/lstm_105/while/maximum_iterations
)sequential_42/lstm_105/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_42/lstm_105/while/loop_counterß
sequential_42/lstm_105/whileWhile2sequential_42/lstm_105/while/loop_counter:output:08sequential_42/lstm_105/while/maximum_iterations:output:0$sequential_42/lstm_105/time:output:0/sequential_42/lstm_105/TensorArrayV2_1:handle:0%sequential_42/lstm_105/zeros:output:0'sequential_42/lstm_105/zeros_1:output:0/sequential_42/lstm_105/strided_slice_1:output:0Nsequential_42/lstm_105/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_42_lstm_105_lstm_cell_105_split_readvariableop_resourceDsequential_42_lstm_105_lstm_cell_105_split_1_readvariableop_resource<sequential_42_lstm_105_lstm_cell_105_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_42_lstm_105_while_body_3427541*5
cond-R+
)sequential_42_lstm_105_while_cond_3427540*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_42/lstm_105/whileã
Gsequential_42/lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2I
Gsequential_42/lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeÄ
9sequential_42/lstm_105/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_42/lstm_105/while:output:3Psequential_42/lstm_105/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02;
9sequential_42/lstm_105/TensorArrayV2Stack/TensorListStack¯
,sequential_42/lstm_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2.
,sequential_42/lstm_105/strided_slice_3/stackª
.sequential_42/lstm_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_42/lstm_105/strided_slice_3/stack_1ª
.sequential_42/lstm_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/lstm_105/strided_slice_3/stack_2¤
&sequential_42/lstm_105/strided_slice_3StridedSliceBsequential_42/lstm_105/TensorArrayV2Stack/TensorListStack:tensor:05sequential_42/lstm_105/strided_slice_3/stack:output:07sequential_42/lstm_105/strided_slice_3/stack_1:output:07sequential_42/lstm_105/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2(
&sequential_42/lstm_105/strided_slice_3§
'sequential_42/lstm_105/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_42/lstm_105/transpose_1/perm
"sequential_42/lstm_105/transpose_1	TransposeBsequential_42/lstm_105/TensorArrayV2Stack/TensorListStack:tensor:00sequential_42/lstm_105/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"sequential_42/lstm_105/transpose_1
sequential_42/lstm_105/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_42/lstm_105/runtimeÕ
-sequential_42/dense_126/MatMul/ReadVariableOpReadVariableOp6sequential_42_dense_126_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_42/dense_126/MatMul/ReadVariableOpä
sequential_42/dense_126/MatMulMatMul/sequential_42/lstm_105/strided_slice_3:output:05sequential_42/dense_126/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_42/dense_126/MatMulÔ
.sequential_42/dense_126/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_dense_126_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_42/dense_126/BiasAdd/ReadVariableOpá
sequential_42/dense_126/BiasAddBiasAdd(sequential_42/dense_126/MatMul:product:06sequential_42/dense_126/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
sequential_42/dense_126/BiasAdd 
sequential_42/dense_126/ReluRelu(sequential_42/dense_126/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_42/dense_126/ReluÕ
-sequential_42/dense_127/MatMul/ReadVariableOpReadVariableOp6sequential_42_dense_127_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_42/dense_127/MatMul/ReadVariableOpß
sequential_42/dense_127/MatMulMatMul*sequential_42/dense_126/Relu:activations:05sequential_42/dense_127/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_42/dense_127/MatMulÔ
.sequential_42/dense_127/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_42/dense_127/BiasAdd/ReadVariableOpá
sequential_42/dense_127/BiasAddBiasAdd(sequential_42/dense_127/MatMul:product:06sequential_42/dense_127/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_42/dense_127/BiasAdd
sequential_42/reshape_63/ShapeShape(sequential_42/dense_127/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_42/reshape_63/Shape¦
,sequential_42/reshape_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_42/reshape_63/strided_slice/stackª
.sequential_42/reshape_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/reshape_63/strided_slice/stack_1ª
.sequential_42/reshape_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_42/reshape_63/strided_slice/stack_2ø
&sequential_42/reshape_63/strided_sliceStridedSlice'sequential_42/reshape_63/Shape:output:05sequential_42/reshape_63/strided_slice/stack:output:07sequential_42/reshape_63/strided_slice/stack_1:output:07sequential_42/reshape_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_42/reshape_63/strided_slice
(sequential_42/reshape_63/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_42/reshape_63/Reshape/shape/1
(sequential_42/reshape_63/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_42/reshape_63/Reshape/shape/2
&sequential_42/reshape_63/Reshape/shapePack/sequential_42/reshape_63/strided_slice:output:01sequential_42/reshape_63/Reshape/shape/1:output:01sequential_42/reshape_63/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_42/reshape_63/Reshape/shapeà
 sequential_42/reshape_63/ReshapeReshape(sequential_42/dense_127/BiasAdd:output:0/sequential_42/reshape_63/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_42/reshape_63/Reshape
IdentityIdentity)sequential_42/reshape_63/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp/^sequential_42/dense_126/BiasAdd/ReadVariableOp.^sequential_42/dense_126/MatMul/ReadVariableOp/^sequential_42/dense_127/BiasAdd/ReadVariableOp.^sequential_42/dense_127/MatMul/ReadVariableOp4^sequential_42/lstm_105/lstm_cell_105/ReadVariableOp6^sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_16^sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_26^sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_3:^sequential_42/lstm_105/lstm_cell_105/split/ReadVariableOp<^sequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOp^sequential_42/lstm_105/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_42/dense_126/BiasAdd/ReadVariableOp.sequential_42/dense_126/BiasAdd/ReadVariableOp2^
-sequential_42/dense_126/MatMul/ReadVariableOp-sequential_42/dense_126/MatMul/ReadVariableOp2`
.sequential_42/dense_127/BiasAdd/ReadVariableOp.sequential_42/dense_127/BiasAdd/ReadVariableOp2^
-sequential_42/dense_127/MatMul/ReadVariableOp-sequential_42/dense_127/MatMul/ReadVariableOp2j
3sequential_42/lstm_105/lstm_cell_105/ReadVariableOp3sequential_42/lstm_105/lstm_cell_105/ReadVariableOp2n
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_15sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_12n
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_25sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_22n
5sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_35sequential_42/lstm_105/lstm_cell_105/ReadVariableOp_32v
9sequential_42/lstm_105/lstm_cell_105/split/ReadVariableOp9sequential_42/lstm_105/lstm_cell_105/split/ReadVariableOp2z
;sequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOp;sequential_42/lstm_105/lstm_cell_105/split_1/ReadVariableOp2<
sequential_42/lstm_105/whilesequential_42/lstm_105/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_43
Ú
È
while_cond_3430721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3430721___redundant_placeholder05
1while_while_cond_3430721___redundant_placeholder15
1while_while_cond_3430721___redundant_placeholder25
1while_while_cond_3430721___redundant_placeholder3
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
Ûæ
º
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429677

inputsG
4lstm_105_lstm_cell_105_split_readvariableop_resource:	E
6lstm_105_lstm_cell_105_split_1_readvariableop_resource:	A
.lstm_105_lstm_cell_105_readvariableop_resource:	 :
(dense_126_matmul_readvariableop_resource:  7
)dense_126_biasadd_readvariableop_resource: :
(dense_127_matmul_readvariableop_resource: 7
)dense_127_biasadd_readvariableop_resource:
identity¢ dense_126/BiasAdd/ReadVariableOp¢dense_126/MatMul/ReadVariableOp¢ dense_127/BiasAdd/ReadVariableOp¢dense_127/MatMul/ReadVariableOp¢0dense_127/bias/Regularizer/Square/ReadVariableOp¢%lstm_105/lstm_cell_105/ReadVariableOp¢'lstm_105/lstm_cell_105/ReadVariableOp_1¢'lstm_105/lstm_cell_105/ReadVariableOp_2¢'lstm_105/lstm_cell_105/ReadVariableOp_3¢?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp¢+lstm_105/lstm_cell_105/split/ReadVariableOp¢-lstm_105/lstm_cell_105/split_1/ReadVariableOp¢lstm_105/whileV
lstm_105/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_105/Shape
lstm_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_105/strided_slice/stack
lstm_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_105/strided_slice/stack_1
lstm_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_105/strided_slice/stack_2
lstm_105/strided_sliceStridedSlicelstm_105/Shape:output:0%lstm_105/strided_slice/stack:output:0'lstm_105/strided_slice/stack_1:output:0'lstm_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_105/strided_slicen
lstm_105/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros/mul/y
lstm_105/zeros/mulMullstm_105/strided_slice:output:0lstm_105/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros/mulq
lstm_105/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_105/zeros/Less/y
lstm_105/zeros/LessLesslstm_105/zeros/mul:z:0lstm_105/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros/Lesst
lstm_105/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros/packed/1§
lstm_105/zeros/packedPacklstm_105/strided_slice:output:0 lstm_105/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_105/zeros/packedq
lstm_105/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_105/zeros/Const
lstm_105/zerosFilllstm_105/zeros/packed:output:0lstm_105/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/zerosr
lstm_105/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros_1/mul/y
lstm_105/zeros_1/mulMullstm_105/strided_slice:output:0lstm_105/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros_1/mulu
lstm_105/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_105/zeros_1/Less/y
lstm_105/zeros_1/LessLesslstm_105/zeros_1/mul:z:0 lstm_105/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_105/zeros_1/Lessx
lstm_105/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/zeros_1/packed/1­
lstm_105/zeros_1/packedPacklstm_105/strided_slice:output:0"lstm_105/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_105/zeros_1/packedu
lstm_105/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_105/zeros_1/Const¡
lstm_105/zeros_1Fill lstm_105/zeros_1/packed:output:0lstm_105/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/zeros_1
lstm_105/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_105/transpose/perm
lstm_105/transpose	Transposeinputs lstm_105/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_105/transposej
lstm_105/Shape_1Shapelstm_105/transpose:y:0*
T0*
_output_shapes
:2
lstm_105/Shape_1
lstm_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_105/strided_slice_1/stack
 lstm_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_1/stack_1
 lstm_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_1/stack_2¤
lstm_105/strided_slice_1StridedSlicelstm_105/Shape_1:output:0'lstm_105/strided_slice_1/stack:output:0)lstm_105/strided_slice_1/stack_1:output:0)lstm_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_105/strided_slice_1
$lstm_105/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$lstm_105/TensorArrayV2/element_shapeÖ
lstm_105/TensorArrayV2TensorListReserve-lstm_105/TensorArrayV2/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_105/TensorArrayV2Ñ
>lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_105/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_105/transpose:y:0Glstm_105/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_105/TensorArrayUnstack/TensorListFromTensor
lstm_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_105/strided_slice_2/stack
 lstm_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_2/stack_1
 lstm_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_2/stack_2²
lstm_105/strided_slice_2StridedSlicelstm_105/transpose:y:0'lstm_105/strided_slice_2/stack:output:0)lstm_105/strided_slice_2/stack_1:output:0)lstm_105/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_105/strided_slice_2
&lstm_105/lstm_cell_105/ones_like/ShapeShapelstm_105/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_105/lstm_cell_105/ones_like/Shape
&lstm_105/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_105/lstm_cell_105/ones_like/Constà
 lstm_105/lstm_cell_105/ones_likeFill/lstm_105/lstm_cell_105/ones_like/Shape:output:0/lstm_105/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/ones_like
&lstm_105/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_105/lstm_cell_105/split/split_dimÐ
+lstm_105/lstm_cell_105/split/ReadVariableOpReadVariableOp4lstm_105_lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_105/lstm_cell_105/split/ReadVariableOp
lstm_105/lstm_cell_105/splitSplit/lstm_105/lstm_cell_105/split/split_dim:output:03lstm_105/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_105/lstm_cell_105/splitÄ
lstm_105/lstm_cell_105/MatMulMatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/MatMulÈ
lstm_105/lstm_cell_105/MatMul_1MatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_1È
lstm_105/lstm_cell_105/MatMul_2MatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_2È
lstm_105/lstm_cell_105/MatMul_3MatMul!lstm_105/strided_slice_2:output:0%lstm_105/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_3
(lstm_105/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm_105/lstm_cell_105/split_1/split_dimÒ
-lstm_105/lstm_cell_105/split_1/ReadVariableOpReadVariableOp6lstm_105_lstm_cell_105_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02/
-lstm_105/lstm_cell_105/split_1/ReadVariableOpû
lstm_105/lstm_cell_105/split_1Split1lstm_105/lstm_cell_105/split_1/split_dim:output:05lstm_105/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm_105/lstm_cell_105/split_1Ï
lstm_105/lstm_cell_105/BiasAddBiasAdd'lstm_105/lstm_cell_105/MatMul:product:0'lstm_105/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_105/lstm_cell_105/BiasAddÕ
 lstm_105/lstm_cell_105/BiasAdd_1BiasAdd)lstm_105/lstm_cell_105/MatMul_1:product:0'lstm_105/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/BiasAdd_1Õ
 lstm_105/lstm_cell_105/BiasAdd_2BiasAdd)lstm_105/lstm_cell_105/MatMul_2:product:0'lstm_105/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/BiasAdd_2Õ
 lstm_105/lstm_cell_105/BiasAdd_3BiasAdd)lstm_105/lstm_cell_105/MatMul_3:product:0'lstm_105/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/BiasAdd_3µ
lstm_105/lstm_cell_105/mulMullstm_105/zeros:output:0)lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul¹
lstm_105/lstm_cell_105/mul_1Mullstm_105/zeros:output:0)lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_1¹
lstm_105/lstm_cell_105/mul_2Mullstm_105/zeros:output:0)lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_2¹
lstm_105/lstm_cell_105/mul_3Mullstm_105/zeros:output:0)lstm_105/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_3¾
%lstm_105/lstm_cell_105/ReadVariableOpReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_105/lstm_cell_105/ReadVariableOp©
*lstm_105/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_105/lstm_cell_105/strided_slice/stack­
,lstm_105/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_105/lstm_cell_105/strided_slice/stack_1­
,lstm_105/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_105/lstm_cell_105/strided_slice/stack_2
$lstm_105/lstm_cell_105/strided_sliceStridedSlice-lstm_105/lstm_cell_105/ReadVariableOp:value:03lstm_105/lstm_cell_105/strided_slice/stack:output:05lstm_105/lstm_cell_105/strided_slice/stack_1:output:05lstm_105/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_105/lstm_cell_105/strided_sliceÍ
lstm_105/lstm_cell_105/MatMul_4MatMullstm_105/lstm_cell_105/mul:z:0-lstm_105/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_4Ç
lstm_105/lstm_cell_105/addAddV2'lstm_105/lstm_cell_105/BiasAdd:output:0)lstm_105/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add
lstm_105/lstm_cell_105/SigmoidSigmoidlstm_105/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_105/lstm_cell_105/SigmoidÂ
'lstm_105/lstm_cell_105/ReadVariableOp_1ReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_105/lstm_cell_105/ReadVariableOp_1­
,lstm_105/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_105/lstm_cell_105/strided_slice_1/stack±
.lstm_105/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_105/lstm_cell_105/strided_slice_1/stack_1±
.lstm_105/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_105/lstm_cell_105/strided_slice_1/stack_2
&lstm_105/lstm_cell_105/strided_slice_1StridedSlice/lstm_105/lstm_cell_105/ReadVariableOp_1:value:05lstm_105/lstm_cell_105/strided_slice_1/stack:output:07lstm_105/lstm_cell_105/strided_slice_1/stack_1:output:07lstm_105/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_105/lstm_cell_105/strided_slice_1Ñ
lstm_105/lstm_cell_105/MatMul_5MatMul lstm_105/lstm_cell_105/mul_1:z:0/lstm_105/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_5Í
lstm_105/lstm_cell_105/add_1AddV2)lstm_105/lstm_cell_105/BiasAdd_1:output:0)lstm_105/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_1£
 lstm_105/lstm_cell_105/Sigmoid_1Sigmoid lstm_105/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/Sigmoid_1¶
lstm_105/lstm_cell_105/mul_4Mul$lstm_105/lstm_cell_105/Sigmoid_1:y:0lstm_105/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_4Â
'lstm_105/lstm_cell_105/ReadVariableOp_2ReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_105/lstm_cell_105/ReadVariableOp_2­
,lstm_105/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_105/lstm_cell_105/strided_slice_2/stack±
.lstm_105/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_105/lstm_cell_105/strided_slice_2/stack_1±
.lstm_105/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_105/lstm_cell_105/strided_slice_2/stack_2
&lstm_105/lstm_cell_105/strided_slice_2StridedSlice/lstm_105/lstm_cell_105/ReadVariableOp_2:value:05lstm_105/lstm_cell_105/strided_slice_2/stack:output:07lstm_105/lstm_cell_105/strided_slice_2/stack_1:output:07lstm_105/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_105/lstm_cell_105/strided_slice_2Ñ
lstm_105/lstm_cell_105/MatMul_6MatMul lstm_105/lstm_cell_105/mul_2:z:0/lstm_105/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_6Í
lstm_105/lstm_cell_105/add_2AddV2)lstm_105/lstm_cell_105/BiasAdd_2:output:0)lstm_105/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_2
lstm_105/lstm_cell_105/ReluRelu lstm_105/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/ReluÄ
lstm_105/lstm_cell_105/mul_5Mul"lstm_105/lstm_cell_105/Sigmoid:y:0)lstm_105/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_5»
lstm_105/lstm_cell_105/add_3AddV2 lstm_105/lstm_cell_105/mul_4:z:0 lstm_105/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_3Â
'lstm_105/lstm_cell_105/ReadVariableOp_3ReadVariableOp.lstm_105_lstm_cell_105_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_105/lstm_cell_105/ReadVariableOp_3­
,lstm_105/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_105/lstm_cell_105/strided_slice_3/stack±
.lstm_105/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_105/lstm_cell_105/strided_slice_3/stack_1±
.lstm_105/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_105/lstm_cell_105/strided_slice_3/stack_2
&lstm_105/lstm_cell_105/strided_slice_3StridedSlice/lstm_105/lstm_cell_105/ReadVariableOp_3:value:05lstm_105/lstm_cell_105/strided_slice_3/stack:output:07lstm_105/lstm_cell_105/strided_slice_3/stack_1:output:07lstm_105/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_105/lstm_cell_105/strided_slice_3Ñ
lstm_105/lstm_cell_105/MatMul_7MatMul lstm_105/lstm_cell_105/mul_3:z:0/lstm_105/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_105/lstm_cell_105/MatMul_7Í
lstm_105/lstm_cell_105/add_4AddV2)lstm_105/lstm_cell_105/BiasAdd_3:output:0)lstm_105/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/add_4£
 lstm_105/lstm_cell_105/Sigmoid_2Sigmoid lstm_105/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_105/lstm_cell_105/Sigmoid_2
lstm_105/lstm_cell_105/Relu_1Relu lstm_105/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/Relu_1È
lstm_105/lstm_cell_105/mul_6Mul$lstm_105/lstm_cell_105/Sigmoid_2:y:0+lstm_105/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/lstm_cell_105/mul_6¡
&lstm_105/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2(
&lstm_105/TensorArrayV2_1/element_shapeÜ
lstm_105/TensorArrayV2_1TensorListReserve/lstm_105/TensorArrayV2_1/element_shape:output:0!lstm_105/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_105/TensorArrayV2_1`
lstm_105/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/time
!lstm_105/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!lstm_105/while/maximum_iterations|
lstm_105/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_105/while/loop_counter
lstm_105/whileWhile$lstm_105/while/loop_counter:output:0*lstm_105/while/maximum_iterations:output:0lstm_105/time:output:0!lstm_105/TensorArrayV2_1:handle:0lstm_105/zeros:output:0lstm_105/zeros_1:output:0!lstm_105/strided_slice_1:output:0@lstm_105/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_105_lstm_cell_105_split_readvariableop_resource6lstm_105_lstm_cell_105_split_1_readvariableop_resource.lstm_105_lstm_cell_105_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_105_while_body_3429516*'
condR
lstm_105_while_cond_3429515*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_105/whileÇ
9lstm_105/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2;
9lstm_105/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_105/TensorArrayV2Stack/TensorListStackTensorListStacklstm_105/while:output:3Blstm_105/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02-
+lstm_105/TensorArrayV2Stack/TensorListStack
lstm_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2 
lstm_105/strided_slice_3/stack
 lstm_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_105/strided_slice_3/stack_1
 lstm_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_105/strided_slice_3/stack_2Ð
lstm_105/strided_slice_3StridedSlice4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_105/strided_slice_3/stack:output:0)lstm_105/strided_slice_3/stack_1:output:0)lstm_105/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_105/strided_slice_3
lstm_105/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_105/transpose_1/permÉ
lstm_105/transpose_1	Transpose4lstm_105/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_105/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_105/transpose_1x
lstm_105/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_105/runtime«
dense_126/MatMul/ReadVariableOpReadVariableOp(dense_126_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_126/MatMul/ReadVariableOp¬
dense_126/MatMulMatMul!lstm_105/strided_slice_3:output:0'dense_126/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_126/MatMulª
 dense_126/BiasAdd/ReadVariableOpReadVariableOp)dense_126_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_126/BiasAdd/ReadVariableOp©
dense_126/BiasAddBiasAdddense_126/MatMul:product:0(dense_126/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_126/BiasAddv
dense_126/ReluReludense_126/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_126/Relu«
dense_127/MatMul/ReadVariableOpReadVariableOp(dense_127_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_127/MatMul/ReadVariableOp§
dense_127/MatMulMatMuldense_126/Relu:activations:0'dense_127/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_127/MatMulª
 dense_127/BiasAdd/ReadVariableOpReadVariableOp)dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_127/BiasAdd/ReadVariableOp©
dense_127/BiasAddBiasAdddense_127/MatMul:product:0(dense_127/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_127/BiasAddn
reshape_63/ShapeShapedense_127/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_63/Shape
reshape_63/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_63/strided_slice/stack
 reshape_63/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_63/strided_slice/stack_1
 reshape_63/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_63/strided_slice/stack_2¤
reshape_63/strided_sliceStridedSlicereshape_63/Shape:output:0'reshape_63/strided_slice/stack:output:0)reshape_63/strided_slice/stack_1:output:0)reshape_63/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_63/strided_slicez
reshape_63/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_63/Reshape/shape/1z
reshape_63/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_63/Reshape/shape/2×
reshape_63/Reshape/shapePack!reshape_63/strided_slice:output:0#reshape_63/Reshape/shape/1:output:0#reshape_63/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_63/Reshape/shape¨
reshape_63/ReshapeReshapedense_127/BiasAdd:output:0!reshape_63/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_63/Reshapeø
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4lstm_105_lstm_cell_105_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOpá
0lstm_105/lstm_cell_105/kernel/Regularizer/SquareSquareGlstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_105/lstm_cell_105/kernel/Regularizer/Square³
/lstm_105/lstm_cell_105/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_105/lstm_cell_105/kernel/Regularizer/Constö
-lstm_105/lstm_cell_105/kernel/Regularizer/SumSum4lstm_105/lstm_cell_105/kernel/Regularizer/Square:y:08lstm_105/lstm_cell_105/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/Sum§
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_105/lstm_cell_105/kernel/Regularizer/mul/xø
-lstm_105/lstm_cell_105/kernel/Regularizer/mulMul8lstm_105/lstm_cell_105/kernel/Regularizer/mul/x:output:06lstm_105/lstm_cell_105/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_105/lstm_cell_105/kernel/Regularizer/mulÊ
0dense_127/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_127_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_127/bias/Regularizer/Square/ReadVariableOp¯
!dense_127/bias/Regularizer/SquareSquare8dense_127/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_127/bias/Regularizer/Square
 dense_127/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_127/bias/Regularizer/Constº
dense_127/bias/Regularizer/SumSum%dense_127/bias/Regularizer/Square:y:0)dense_127/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/Sum
 dense_127/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_127/bias/Regularizer/mul/x¼
dense_127/bias/Regularizer/mulMul)dense_127/bias/Regularizer/mul/x:output:0'dense_127/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_127/bias/Regularizer/mulz
IdentityIdentityreshape_63/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityâ
NoOpNoOp!^dense_126/BiasAdd/ReadVariableOp ^dense_126/MatMul/ReadVariableOp!^dense_127/BiasAdd/ReadVariableOp ^dense_127/MatMul/ReadVariableOp1^dense_127/bias/Regularizer/Square/ReadVariableOp&^lstm_105/lstm_cell_105/ReadVariableOp(^lstm_105/lstm_cell_105/ReadVariableOp_1(^lstm_105/lstm_cell_105/ReadVariableOp_2(^lstm_105/lstm_cell_105/ReadVariableOp_3@^lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp,^lstm_105/lstm_cell_105/split/ReadVariableOp.^lstm_105/lstm_cell_105/split_1/ReadVariableOp^lstm_105/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_126/BiasAdd/ReadVariableOp dense_126/BiasAdd/ReadVariableOp2B
dense_126/MatMul/ReadVariableOpdense_126/MatMul/ReadVariableOp2D
 dense_127/BiasAdd/ReadVariableOp dense_127/BiasAdd/ReadVariableOp2B
dense_127/MatMul/ReadVariableOpdense_127/MatMul/ReadVariableOp2d
0dense_127/bias/Regularizer/Square/ReadVariableOp0dense_127/bias/Regularizer/Square/ReadVariableOp2N
%lstm_105/lstm_cell_105/ReadVariableOp%lstm_105/lstm_cell_105/ReadVariableOp2R
'lstm_105/lstm_cell_105/ReadVariableOp_1'lstm_105/lstm_cell_105/ReadVariableOp_12R
'lstm_105/lstm_cell_105/ReadVariableOp_2'lstm_105/lstm_cell_105/ReadVariableOp_22R
'lstm_105/lstm_cell_105/ReadVariableOp_3'lstm_105/lstm_cell_105/ReadVariableOp_32
?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp?lstm_105/lstm_cell_105/kernel/Regularizer/Square/ReadVariableOp2Z
+lstm_105/lstm_cell_105/split/ReadVariableOp+lstm_105/lstm_cell_105/split/ReadVariableOp2^
-lstm_105/lstm_cell_105/split_1/ReadVariableOp-lstm_105/lstm_cell_105/split_1/ReadVariableOp2 
lstm_105/whilelstm_105/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä	
¨
/__inference_sequential_42_layer_call_fn_3429387

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall¿
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
GPU 2J 8 *S
fNRL
J__inference_sequential_42_layer_call_and_return_conditional_losses_34287982
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
ª
/__inference_sequential_42_layer_call_fn_3428815
input_43
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_43unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_42_layer_call_and_return_conditional_losses_34287982
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
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_43
é

ü
lstm_105_while_cond_3429818.
*lstm_105_while_lstm_105_while_loop_counter4
0lstm_105_while_lstm_105_while_maximum_iterations
lstm_105_while_placeholder 
lstm_105_while_placeholder_1 
lstm_105_while_placeholder_2 
lstm_105_while_placeholder_30
,lstm_105_while_less_lstm_105_strided_slice_1G
Clstm_105_while_lstm_105_while_cond_3429818___redundant_placeholder0G
Clstm_105_while_lstm_105_while_cond_3429818___redundant_placeholder1G
Clstm_105_while_lstm_105_while_cond_3429818___redundant_placeholder2G
Clstm_105_while_lstm_105_while_cond_3429818___redundant_placeholder3
lstm_105_while_identity

lstm_105/while/LessLesslstm_105_while_placeholder,lstm_105_while_less_lstm_105_strided_slice_1*
T0*
_output_shapes
: 2
lstm_105/while/Lessx
lstm_105/while/IdentityIdentitylstm_105/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_105/while/Identity";
lstm_105_while_identity lstm_105/while/Identity:output:0*(
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

±	
while_body_3428590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_105_split_readvariableop_resource_0:	D
5while_lstm_cell_105_split_1_readvariableop_resource_0:	@
-while_lstm_cell_105_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_105_split_readvariableop_resource:	B
3while_lstm_cell_105_split_1_readvariableop_resource:	>
+while_lstm_cell_105_readvariableop_resource:	 ¢"while/lstm_cell_105/ReadVariableOp¢$while/lstm_cell_105/ReadVariableOp_1¢$while/lstm_cell_105/ReadVariableOp_2¢$while/lstm_cell_105/ReadVariableOp_3¢(while/lstm_cell_105/split/ReadVariableOp¢*while/lstm_cell_105/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_105/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_105/ones_like/Shape
#while/lstm_cell_105/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_105/ones_like/ConstÔ
while/lstm_cell_105/ones_likeFill,while/lstm_cell_105/ones_like/Shape:output:0,while/lstm_cell_105/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/ones_like
#while/lstm_cell_105/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_105/split/split_dimÉ
(while/lstm_cell_105/split/ReadVariableOpReadVariableOp3while_lstm_cell_105_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_105/split/ReadVariableOp÷
while/lstm_cell_105/splitSplit,while/lstm_cell_105/split/split_dim:output:00while/lstm_cell_105/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_105/splitÊ
while/lstm_cell_105/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMulÎ
while/lstm_cell_105/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_1Î
while/lstm_cell_105/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_2Î
while/lstm_cell_105/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_105/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_3
%while/lstm_cell_105/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_105/split_1/split_dimË
*while/lstm_cell_105/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_105_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_105/split_1/ReadVariableOpï
while/lstm_cell_105/split_1Split.while/lstm_cell_105/split_1/split_dim:output:02while/lstm_cell_105/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_105/split_1Ã
while/lstm_cell_105/BiasAddBiasAdd$while/lstm_cell_105/MatMul:product:0$while/lstm_cell_105/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAddÉ
while/lstm_cell_105/BiasAdd_1BiasAdd&while/lstm_cell_105/MatMul_1:product:0$while/lstm_cell_105/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_1É
while/lstm_cell_105/BiasAdd_2BiasAdd&while/lstm_cell_105/MatMul_2:product:0$while/lstm_cell_105/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_2É
while/lstm_cell_105/BiasAdd_3BiasAdd&while/lstm_cell_105/MatMul_3:product:0$while/lstm_cell_105/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/BiasAdd_3¨
while/lstm_cell_105/mulMulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul¬
while/lstm_cell_105/mul_1Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_1¬
while/lstm_cell_105/mul_2Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_2¬
while/lstm_cell_105/mul_3Mulwhile_placeholder_2&while/lstm_cell_105/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_3·
"while/lstm_cell_105/ReadVariableOpReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_105/ReadVariableOp£
'while/lstm_cell_105/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_105/strided_slice/stack§
)while/lstm_cell_105/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice/stack_1§
)while/lstm_cell_105/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_105/strided_slice/stack_2ô
!while/lstm_cell_105/strided_sliceStridedSlice*while/lstm_cell_105/ReadVariableOp:value:00while/lstm_cell_105/strided_slice/stack:output:02while/lstm_cell_105/strided_slice/stack_1:output:02while/lstm_cell_105/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_105/strided_sliceÁ
while/lstm_cell_105/MatMul_4MatMulwhile/lstm_cell_105/mul:z:0*while/lstm_cell_105/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_4»
while/lstm_cell_105/addAddV2$while/lstm_cell_105/BiasAdd:output:0&while/lstm_cell_105/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add
while/lstm_cell_105/SigmoidSigmoidwhile/lstm_cell_105/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid»
$while/lstm_cell_105/ReadVariableOp_1ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_1§
)while/lstm_cell_105/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_105/strided_slice_1/stack«
+while/lstm_cell_105/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_105/strided_slice_1/stack_1«
+while/lstm_cell_105/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_1/stack_2
#while/lstm_cell_105/strided_slice_1StridedSlice,while/lstm_cell_105/ReadVariableOp_1:value:02while/lstm_cell_105/strided_slice_1/stack:output:04while/lstm_cell_105/strided_slice_1/stack_1:output:04while/lstm_cell_105/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_1Å
while/lstm_cell_105/MatMul_5MatMulwhile/lstm_cell_105/mul_1:z:0,while/lstm_cell_105/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_5Á
while/lstm_cell_105/add_1AddV2&while/lstm_cell_105/BiasAdd_1:output:0&while/lstm_cell_105/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_1
while/lstm_cell_105/Sigmoid_1Sigmoidwhile/lstm_cell_105/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_1§
while/lstm_cell_105/mul_4Mul!while/lstm_cell_105/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_4»
$while/lstm_cell_105/ReadVariableOp_2ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_2§
)while/lstm_cell_105/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_105/strided_slice_2/stack«
+while/lstm_cell_105/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_105/strided_slice_2/stack_1«
+while/lstm_cell_105/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_2/stack_2
#while/lstm_cell_105/strided_slice_2StridedSlice,while/lstm_cell_105/ReadVariableOp_2:value:02while/lstm_cell_105/strided_slice_2/stack:output:04while/lstm_cell_105/strided_slice_2/stack_1:output:04while/lstm_cell_105/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_2Å
while/lstm_cell_105/MatMul_6MatMulwhile/lstm_cell_105/mul_2:z:0,while/lstm_cell_105/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_6Á
while/lstm_cell_105/add_2AddV2&while/lstm_cell_105/BiasAdd_2:output:0&while/lstm_cell_105/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_2
while/lstm_cell_105/ReluReluwhile/lstm_cell_105/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu¸
while/lstm_cell_105/mul_5Mulwhile/lstm_cell_105/Sigmoid:y:0&while/lstm_cell_105/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_5¯
while/lstm_cell_105/add_3AddV2while/lstm_cell_105/mul_4:z:0while/lstm_cell_105/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_3»
$while/lstm_cell_105/ReadVariableOp_3ReadVariableOp-while_lstm_cell_105_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_105/ReadVariableOp_3§
)while/lstm_cell_105/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_105/strided_slice_3/stack«
+while/lstm_cell_105/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_105/strided_slice_3/stack_1«
+while/lstm_cell_105/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_105/strided_slice_3/stack_2
#while/lstm_cell_105/strided_slice_3StridedSlice,while/lstm_cell_105/ReadVariableOp_3:value:02while/lstm_cell_105/strided_slice_3/stack:output:04while/lstm_cell_105/strided_slice_3/stack_1:output:04while/lstm_cell_105/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_105/strided_slice_3Å
while/lstm_cell_105/MatMul_7MatMulwhile/lstm_cell_105/mul_3:z:0,while/lstm_cell_105/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/MatMul_7Á
while/lstm_cell_105/add_4AddV2&while/lstm_cell_105/BiasAdd_3:output:0&while/lstm_cell_105/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/add_4
while/lstm_cell_105/Sigmoid_2Sigmoidwhile/lstm_cell_105/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Sigmoid_2
while/lstm_cell_105/Relu_1Reluwhile/lstm_cell_105/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/Relu_1¼
while/lstm_cell_105/mul_6Mul!while/lstm_cell_105/Sigmoid_2:y:0(while/lstm_cell_105/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_105/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_105/mul_6:z:0*
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
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_105/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_105/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_105/ReadVariableOp%^while/lstm_cell_105/ReadVariableOp_1%^while/lstm_cell_105/ReadVariableOp_2%^while/lstm_cell_105/ReadVariableOp_3)^while/lstm_cell_105/split/ReadVariableOp+^while/lstm_cell_105/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"\
+while_lstm_cell_105_readvariableop_resource-while_lstm_cell_105_readvariableop_resource_0"l
3while_lstm_cell_105_split_1_readvariableop_resource5while_lstm_cell_105_split_1_readvariableop_resource_0"h
1while_lstm_cell_105_split_readvariableop_resource3while_lstm_cell_105_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_105/ReadVariableOp"while/lstm_cell_105/ReadVariableOp2L
$while/lstm_cell_105/ReadVariableOp_1$while/lstm_cell_105/ReadVariableOp_12L
$while/lstm_cell_105/ReadVariableOp_2$while/lstm_cell_105/ReadVariableOp_22L
$while/lstm_cell_105/ReadVariableOp_3$while/lstm_cell_105/ReadVariableOp_32T
(while/lstm_cell_105/split/ReadVariableOp(while/lstm_cell_105/split/ReadVariableOp2X
*while/lstm_cell_105/split_1/ReadVariableOp*while/lstm_cell_105/split_1/ReadVariableOp: 
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

NoOp*·
serving_default£
A
input_435
serving_default_input_43:0ÿÿÿÿÿÿÿÿÿB

reshape_634
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
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
trainable_variables
regularization_losses
		keras_api


signatures
`__call__
a_default_save_signature
*b&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
 	keras_api
*i&call_and_return_all_conditional_losses
j__call__"
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
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
Ê

)layers
*layer_regularization_losses
	variables
trainable_variables
+layer_metrics
,metrics
regularization_losses
-non_trainable_variables
`__call__
a_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
lserving_default"
signature_map
á
.
state_size

&kernel
'recurrent_kernel
(bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
*m&call_and_return_all_conditional_losses
n__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
¹

3layers
4layer_regularization_losses

5states
	variables
trainable_variables
6layer_metrics
7metrics
regularization_losses
8non_trainable_variables
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
":   2dense_126/kernel
: 2dense_126/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

9layers
	variables
:non_trainable_variables
trainable_variables
;layer_metrics
<metrics
regularization_losses
=layer_regularization_losses
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
":  2dense_127/kernel
:2dense_127/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
­

>layers
	variables
?non_trainable_variables
trainable_variables
@layer_metrics
Ametrics
regularization_losses
Blayer_regularization_losses
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Clayers
	variables
Dnon_trainable_variables
trainable_variables
Elayer_metrics
Fmetrics
regularization_losses
Glayer_regularization_losses
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	2lstm_105/lstm_cell_105/kernel
::8	 2'lstm_105/lstm_cell_105/recurrent_kernel
*:(2lstm_105/lstm_cell_105/bias
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
­

Ilayers
/	variables
Jnon_trainable_variables
0trainable_variables
Klayer_metrics
Lmetrics
1regularization_losses
Mlayer_regularization_losses
n__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
 "
trackable_list_wrapper
'
k0"
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
':%  2Adam/dense_126/kernel/m
!: 2Adam/dense_126/bias/m
':% 2Adam/dense_127/kernel/m
!:2Adam/dense_127/bias/m
5:3	2$Adam/lstm_105/lstm_cell_105/kernel/m
?:=	 2.Adam/lstm_105/lstm_cell_105/recurrent_kernel/m
/:-2"Adam/lstm_105/lstm_cell_105/bias/m
':%  2Adam/dense_126/kernel/v
!: 2Adam/dense_126/bias/v
':% 2Adam/dense_127/kernel/v
!:2Adam/dense_127/bias/v
5:3	2$Adam/lstm_105/lstm_cell_105/kernel/v
?:=	 2.Adam/lstm_105/lstm_cell_105/recurrent_kernel/v
/:-2"Adam/lstm_105/lstm_cell_105/bias/v
2
/__inference_sequential_42_layer_call_fn_3428815
/__inference_sequential_42_layer_call_fn_3429387
/__inference_sequential_42_layer_call_fn_3429406
/__inference_sequential_42_layer_call_fn_3429261À
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
ÎBË
"__inference__wrapped_model_3427690input_43"
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
ö2ó
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429677
J__inference_sequential_42_layer_call_and_return_conditional_losses_3430012
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429295
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429329À
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
2
*__inference_lstm_105_layer_call_fn_3430029
*__inference_lstm_105_layer_call_fn_3430040
*__inference_lstm_105_layer_call_fn_3430051
*__inference_lstm_105_layer_call_fn_3430062Õ
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
÷2ô
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430305
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430612
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430855
E__inference_lstm_105_layer_call_and_return_conditional_losses_3431162Õ
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
ð2í
F__inference_dense_126_layer_call_and_return_conditional_losses_3431173¢
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
Õ2Ò
+__inference_dense_126_layer_call_fn_3431182¢
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
ð2í
F__inference_dense_127_layer_call_and_return_conditional_losses_3431204¢
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
Õ2Ò
+__inference_dense_127_layer_call_fn_3431213¢
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
ñ2î
G__inference_reshape_63_layer_call_and_return_conditional_losses_3431226¢
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
Ö2Ó
,__inference_reshape_63_layer_call_fn_3431231¢
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
´2±
__inference_loss_fn_0_3431242
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
annotationsª *¢ 
ÍBÊ
%__inference_signature_wrapper_3429368input_43"
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
Ü2Ù
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3431329
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3431442¾
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
¦2£
/__inference_lstm_cell_105_layer_call_fn_3431459
/__inference_lstm_cell_105_layer_call_fn_3431476¾
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
´2±
__inference_loss_fn_1_3431487
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
annotationsª *¢ £
"__inference__wrapped_model_3427690}&('5¢2
+¢(
&#
input_43ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_63(%

reshape_63ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_126_layer_call_and_return_conditional_losses_3431173\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ~
+__inference_dense_126_layer_call_fn_3431182O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¦
F__inference_dense_127_layer_call_and_return_conditional_losses_3431204\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_127_layer_call_fn_3431213O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_3431242¢

¢ 
ª " <
__inference_loss_fn_1_3431487&¢

¢ 
ª " Æ
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430305}&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 Æ
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430612}&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
E__inference_lstm_105_layer_call_and_return_conditional_losses_3430855m&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¶
E__inference_lstm_105_layer_call_and_return_conditional_losses_3431162m&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
*__inference_lstm_105_layer_call_fn_3430029p&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
*__inference_lstm_105_layer_call_fn_3430040p&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
*__inference_lstm_105_layer_call_fn_3430051`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
*__inference_lstm_105_layer_call_fn_3430062`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ì
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3431329ý&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
 Ì
J__inference_lstm_cell_105_layer_call_and_return_conditional_losses_3431442ý&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
 ¡
/__inference_lstm_cell_105_layer_call_fn_3431459í&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
1/1ÿÿÿÿÿÿÿÿÿ ¡
/__inference_lstm_cell_105_layer_call_fn_3431476í&('¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
1/1ÿÿÿÿÿÿÿÿÿ §
G__inference_reshape_63_layer_call_and_return_conditional_losses_3431226\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_63_layer_call_fn_3431231O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429295s&('=¢:
3¢0
&#
input_43ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429329s&('=¢:
3¢0
&#
input_43ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_42_layer_call_and_return_conditional_losses_3429677q&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_42_layer_call_and_return_conditional_losses_3430012q&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_42_layer_call_fn_3428815f&('=¢:
3¢0
&#
input_43ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_42_layer_call_fn_3429261f&('=¢:
3¢0
&#
input_43ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_42_layer_call_fn_3429387d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_42_layer_call_fn_3429406d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
%__inference_signature_wrapper_3429368&('A¢>
¢ 
7ª4
2
input_43&#
input_43ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_63(%

reshape_63ÿÿÿÿÿÿÿÿÿ