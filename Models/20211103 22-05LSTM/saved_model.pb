“µ'
Ė
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
num_elementsint’’’’’’’’’
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ś&
|
dense_134/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_134/kernel
u
$dense_134/kernel/Read/ReadVariableOpReadVariableOpdense_134/kernel*
_output_shapes

:  *
dtype0
t
dense_134/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_134/bias
m
"dense_134/bias/Read/ReadVariableOpReadVariableOpdense_134/bias*
_output_shapes
: *
dtype0
|
dense_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_135/kernel
u
$dense_135/kernel/Read/ReadVariableOpReadVariableOpdense_135/kernel*
_output_shapes

: *
dtype0
t
dense_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_135/bias
m
"dense_135/bias/Read/ReadVariableOpReadVariableOpdense_135/bias*
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
lstm_111/lstm_cell_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_111/lstm_cell_111/kernel

1lstm_111/lstm_cell_111/kernel/Read/ReadVariableOpReadVariableOplstm_111/lstm_cell_111/kernel*
_output_shapes
:	*
dtype0
«
'lstm_111/lstm_cell_111/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *8
shared_name)'lstm_111/lstm_cell_111/recurrent_kernel
¤
;lstm_111/lstm_cell_111/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_111/lstm_cell_111/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_111/lstm_cell_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_111/lstm_cell_111/bias

/lstm_111/lstm_cell_111/bias/Read/ReadVariableOpReadVariableOplstm_111/lstm_cell_111/bias*
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
Adam/dense_134/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_134/kernel/m

+Adam/dense_134/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_134/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_134/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_134/bias/m
{
)Adam/dense_134/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_134/bias/m*
_output_shapes
: *
dtype0

Adam/dense_135/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_135/kernel/m

+Adam/dense_135/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_135/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_135/bias/m
{
)Adam/dense_135/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/m*
_output_shapes
:*
dtype0
„
$Adam/lstm_111/lstm_cell_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_111/lstm_cell_111/kernel/m

8Adam/lstm_111/lstm_cell_111/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_111/lstm_cell_111/kernel/m*
_output_shapes
:	*
dtype0
¹
.Adam/lstm_111/lstm_cell_111/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *?
shared_name0.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m
²
BAdam/lstm_111/lstm_cell_111/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

"Adam/lstm_111/lstm_cell_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_111/lstm_cell_111/bias/m

6Adam/lstm_111/lstm_cell_111/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_111/lstm_cell_111/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_134/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_134/kernel/v

+Adam/dense_134/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_134/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_134/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_134/bias/v
{
)Adam/dense_134/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_134/bias/v*
_output_shapes
: *
dtype0

Adam/dense_135/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_135/kernel/v

+Adam/dense_135/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_135/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_135/bias/v
{
)Adam/dense_135/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_135/bias/v*
_output_shapes
:*
dtype0
„
$Adam/lstm_111/lstm_cell_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_111/lstm_cell_111/kernel/v

8Adam/lstm_111/lstm_cell_111/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_111/lstm_cell_111/kernel/v*
_output_shapes
:	*
dtype0
¹
.Adam/lstm_111/lstm_cell_111/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *?
shared_name0.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v
²
BAdam/lstm_111/lstm_cell_111/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

"Adam/lstm_111/lstm_cell_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_111/lstm_cell_111/bias/v

6Adam/lstm_111/lstm_cell_111/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_111/lstm_cell_111/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
Õ,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*,
value,B, Bü+
ó
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
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
trainable_variables
	variables
*metrics
+layer_metrics
,layer_regularization_losses
-non_trainable_variables
regularization_losses
 

.
state_size

&kernel
'recurrent_kernel
(bias
/trainable_variables
0	variables
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
trainable_variables
	variables
4metrics
5layer_metrics
6layer_regularization_losses
7non_trainable_variables

8states
regularization_losses
\Z
VARIABLE_VALUEdense_134/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_134/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

9layers
trainable_variables
	variables
:metrics
;layer_metrics
<layer_regularization_losses
=non_trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_135/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_135/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

>layers
trainable_variables
	variables
?metrics
@layer_metrics
Alayer_regularization_losses
Bnon_trainable_variables
regularization_losses
 
 
 
­

Clayers
trainable_variables
	variables
Dmetrics
Elayer_metrics
Flayer_regularization_losses
Gnon_trainable_variables
regularization_losses
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
ca
VARIABLE_VALUElstm_111/lstm_cell_111/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'lstm_111/lstm_cell_111/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_111/lstm_cell_111/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

H0
 
 
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
/trainable_variables
0	variables
Jmetrics
Klayer_metrics
Llayer_regularization_losses
Mnon_trainable_variables
1regularization_losses
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
VARIABLE_VALUEAdam/dense_134/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_134/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_135/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adam/lstm_111/lstm_cell_111/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_111/lstm_cell_111/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_111/lstm_cell_111/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_134/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_134/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_135/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_135/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adam/lstm_111/lstm_cell_111/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_111/lstm_cell_111/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_111/lstm_cell_111/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_46Placeholder*+
_output_shapes
:’’’’’’’’’*
dtype0* 
shape:’’’’’’’’’
ļ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_46lstm_111/lstm_cell_111/kernellstm_111/lstm_cell_111/bias'lstm_111/lstm_cell_111/recurrent_kerneldense_134/kerneldense_134/biasdense_135/kerneldense_135/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_3547101
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_134/kernel/Read/ReadVariableOp"dense_134/bias/Read/ReadVariableOp$dense_135/kernel/Read/ReadVariableOp"dense_135/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_111/lstm_cell_111/kernel/Read/ReadVariableOp;lstm_111/lstm_cell_111/recurrent_kernel/Read/ReadVariableOp/lstm_111/lstm_cell_111/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_134/kernel/m/Read/ReadVariableOp)Adam/dense_134/bias/m/Read/ReadVariableOp+Adam/dense_135/kernel/m/Read/ReadVariableOp)Adam/dense_135/bias/m/Read/ReadVariableOp8Adam/lstm_111/lstm_cell_111/kernel/m/Read/ReadVariableOpBAdam/lstm_111/lstm_cell_111/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_111/lstm_cell_111/bias/m/Read/ReadVariableOp+Adam/dense_134/kernel/v/Read/ReadVariableOp)Adam/dense_134/bias/v/Read/ReadVariableOp+Adam/dense_135/kernel/v/Read/ReadVariableOp)Adam/dense_135/bias/v/Read/ReadVariableOp8Adam/lstm_111/lstm_cell_111/kernel/v/Read/ReadVariableOpBAdam/lstm_111/lstm_cell_111/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_111/lstm_cell_111/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_3549327
ć
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_134/kerneldense_134/biasdense_135/kerneldense_135/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_111/lstm_cell_111/kernel'lstm_111/lstm_cell_111/recurrent_kernellstm_111/lstm_cell_111/biastotalcountAdam/dense_134/kernel/mAdam/dense_134/bias/mAdam/dense_135/kernel/mAdam/dense_135/bias/m$Adam/lstm_111/lstm_cell_111/kernel/m.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m"Adam/lstm_111/lstm_cell_111/bias/mAdam/dense_134/kernel/vAdam/dense_134/bias/vAdam/dense_135/kernel/vAdam/dense_135/bias/v$Adam/lstm_111/lstm_cell_111/kernel/v.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v"Adam/lstm_111/lstm_cell_111/bias/v*(
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
#__inference__traced_restore_3549421ū%

c
G__inference_reshape_67_layer_call_and_return_conditional_losses_3546516

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
strided_slice/stack_2ā
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
:’’’’’’’’’2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ćµ
±	
while_body_3546729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_111_split_readvariableop_resource_0:	D
5while_lstm_cell_111_split_1_readvariableop_resource_0:	@
-while_lstm_cell_111_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_111_split_readvariableop_resource:	B
3while_lstm_cell_111_split_1_readvariableop_resource:	>
+while_lstm_cell_111_readvariableop_resource:	 ¢"while/lstm_cell_111/ReadVariableOp¢$while/lstm_cell_111/ReadVariableOp_1¢$while/lstm_cell_111/ReadVariableOp_2¢$while/lstm_cell_111/ReadVariableOp_3¢(while/lstm_cell_111/split/ReadVariableOp¢*while/lstm_cell_111/split_1/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_111/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_111/ones_like/Shape
#while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_111/ones_like/ConstŌ
while/lstm_cell_111/ones_likeFill,while/lstm_cell_111/ones_like/Shape:output:0,while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/ones_like
!while/lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2#
!while/lstm_cell_111/dropout/ConstĻ
while/lstm_cell_111/dropout/MulMul&while/lstm_cell_111/ones_like:output:0*while/lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
while/lstm_cell_111/dropout/Mul
!while/lstm_cell_111/dropout/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_111/dropout/Shape
8while/lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2¶čŁ2:
8while/lstm_cell_111/dropout/random_uniform/RandomUniform
*while/lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_111/dropout/GreaterEqual/y
(while/lstm_cell_111/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_111/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2*
(while/lstm_cell_111/dropout/GreaterEqual»
 while/lstm_cell_111/dropout/CastCast,while/lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2"
 while/lstm_cell_111/dropout/CastŹ
!while/lstm_cell_111/dropout/Mul_1Mul#while/lstm_cell_111/dropout/Mul:z:0$while/lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout/Mul_1
#while/lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_1/ConstÕ
!while/lstm_cell_111/dropout_1/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_1/Mul 
#while/lstm_cell_111/dropout_1/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_1/Shape
:while/lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Īč2<
:while/lstm_cell_111/dropout_1/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_1/GreaterEqual/y
*while/lstm_cell_111/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_1/GreaterEqualĮ
"while/lstm_cell_111/dropout_1/CastCast.while/lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_1/CastŅ
#while/lstm_cell_111/dropout_1/Mul_1Mul%while/lstm_cell_111/dropout_1/Mul:z:0&while/lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_1/Mul_1
#while/lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_2/ConstÕ
!while/lstm_cell_111/dropout_2/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_2/Mul 
#while/lstm_cell_111/dropout_2/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_2/Shape
:while/lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2åūķ2<
:while/lstm_cell_111/dropout_2/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_2/GreaterEqual/y
*while/lstm_cell_111/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_2/GreaterEqualĮ
"while/lstm_cell_111/dropout_2/CastCast.while/lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_2/CastŅ
#while/lstm_cell_111/dropout_2/Mul_1Mul%while/lstm_cell_111/dropout_2/Mul:z:0&while/lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_2/Mul_1
#while/lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_3/ConstÕ
!while/lstm_cell_111/dropout_3/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_3/Mul 
#while/lstm_cell_111/dropout_3/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_3/Shape
:while/lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2š­2<
:while/lstm_cell_111/dropout_3/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_3/GreaterEqual/y
*while/lstm_cell_111/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_3/GreaterEqualĮ
"while/lstm_cell_111/dropout_3/CastCast.while/lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_3/CastŅ
#while/lstm_cell_111/dropout_3/Mul_1Mul%while/lstm_cell_111/dropout_3/Mul:z:0&while/lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_3/Mul_1
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_111/split/split_dimÉ
(while/lstm_cell_111/split/ReadVariableOpReadVariableOp3while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_111/split/ReadVariableOp÷
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:00while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_111/splitŹ
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMulĪ
while/lstm_cell_111/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_1Ī
while/lstm_cell_111/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_2Ī
while/lstm_cell_111/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_3
%while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_111/split_1/split_dimĖ
*while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_111/split_1/ReadVariableOpļ
while/lstm_cell_111/split_1Split.while/lstm_cell_111/split_1/split_dim:output:02while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_111/split_1Ć
while/lstm_cell_111/BiasAddBiasAdd$while/lstm_cell_111/MatMul:product:0$while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAddÉ
while/lstm_cell_111/BiasAdd_1BiasAdd&while/lstm_cell_111/MatMul_1:product:0$while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_1É
while/lstm_cell_111/BiasAdd_2BiasAdd&while/lstm_cell_111/MatMul_2:product:0$while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_2É
while/lstm_cell_111/BiasAdd_3BiasAdd&while/lstm_cell_111/MatMul_3:product:0$while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_3§
while/lstm_cell_111/mulMulwhile_placeholder_2%while/lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul­
while/lstm_cell_111/mul_1Mulwhile_placeholder_2'while/lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_1­
while/lstm_cell_111/mul_2Mulwhile_placeholder_2'while/lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_2­
while/lstm_cell_111/mul_3Mulwhile_placeholder_2'while/lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_3·
"while/lstm_cell_111/ReadVariableOpReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_111/ReadVariableOp£
'while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_111/strided_slice/stack§
)while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice/stack_1§
)while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_111/strided_slice/stack_2ō
!while/lstm_cell_111/strided_sliceStridedSlice*while/lstm_cell_111/ReadVariableOp:value:00while/lstm_cell_111/strided_slice/stack:output:02while/lstm_cell_111/strided_slice/stack_1:output:02while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_111/strided_sliceĮ
while/lstm_cell_111/MatMul_4MatMulwhile/lstm_cell_111/mul:z:0*while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_4»
while/lstm_cell_111/addAddV2$while/lstm_cell_111/BiasAdd:output:0&while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add
while/lstm_cell_111/SigmoidSigmoidwhile/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid»
$while/lstm_cell_111/ReadVariableOp_1ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_1§
)while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice_1/stack«
+while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_111/strided_slice_1/stack_1«
+while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_1/stack_2
#while/lstm_cell_111/strided_slice_1StridedSlice,while/lstm_cell_111/ReadVariableOp_1:value:02while/lstm_cell_111/strided_slice_1/stack:output:04while/lstm_cell_111/strided_slice_1/stack_1:output:04while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_1Å
while/lstm_cell_111/MatMul_5MatMulwhile/lstm_cell_111/mul_1:z:0,while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_5Į
while/lstm_cell_111/add_1AddV2&while/lstm_cell_111/BiasAdd_1:output:0&while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_1
while/lstm_cell_111/Sigmoid_1Sigmoidwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_1§
while/lstm_cell_111/mul_4Mul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_4»
$while/lstm_cell_111/ReadVariableOp_2ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_2§
)while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_111/strided_slice_2/stack«
+while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_111/strided_slice_2/stack_1«
+while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_2/stack_2
#while/lstm_cell_111/strided_slice_2StridedSlice,while/lstm_cell_111/ReadVariableOp_2:value:02while/lstm_cell_111/strided_slice_2/stack:output:04while/lstm_cell_111/strided_slice_2/stack_1:output:04while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_2Å
while/lstm_cell_111/MatMul_6MatMulwhile/lstm_cell_111/mul_2:z:0,while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_6Į
while/lstm_cell_111/add_2AddV2&while/lstm_cell_111/BiasAdd_2:output:0&while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_2
while/lstm_cell_111/ReluReluwhile/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Reluø
while/lstm_cell_111/mul_5Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_5Æ
while/lstm_cell_111/add_3AddV2while/lstm_cell_111/mul_4:z:0while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_3»
$while/lstm_cell_111/ReadVariableOp_3ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_3§
)while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_111/strided_slice_3/stack«
+while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_111/strided_slice_3/stack_1«
+while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_3/stack_2
#while/lstm_cell_111/strided_slice_3StridedSlice,while/lstm_cell_111/ReadVariableOp_3:value:02while/lstm_cell_111/strided_slice_3/stack:output:04while/lstm_cell_111/strided_slice_3/stack_1:output:04while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_3Å
while/lstm_cell_111/MatMul_7MatMulwhile/lstm_cell_111/mul_3:z:0,while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_7Į
while/lstm_cell_111/add_4AddV2&while/lstm_cell_111/BiasAdd_3:output:0&while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_4
while/lstm_cell_111/Sigmoid_2Sigmoidwhile/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_2
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Relu_1¼
while/lstm_cell_111/mul_6Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_6į
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_111/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5Ģ

while/NoOpNoOp#^while/lstm_cell_111/ReadVariableOp%^while/lstm_cell_111/ReadVariableOp_1%^while/lstm_cell_111/ReadVariableOp_2%^while/lstm_cell_111/ReadVariableOp_3)^while/lstm_cell_111/split/ReadVariableOp+^while/lstm_cell_111/split_1/ReadVariableOp*"
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
+while_lstm_cell_111_readvariableop_resource-while_lstm_cell_111_readvariableop_resource_0"l
3while_lstm_cell_111_split_1_readvariableop_resource5while_lstm_cell_111_split_1_readvariableop_resource_0"h
1while_lstm_cell_111_split_readvariableop_resource3while_lstm_cell_111_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2H
"while/lstm_cell_111/ReadVariableOp"while/lstm_cell_111/ReadVariableOp2L
$while/lstm_cell_111/ReadVariableOp_1$while/lstm_cell_111/ReadVariableOp_12L
$while/lstm_cell_111/ReadVariableOp_2$while/lstm_cell_111/ReadVariableOp_22L
$while/lstm_cell_111/ReadVariableOp_3$while/lstm_cell_111/ReadVariableOp_32T
(while/lstm_cell_111/split/ReadVariableOp(while/lstm_cell_111/split/ReadVariableOp2X
*while/lstm_cell_111/split_1/ReadVariableOp*while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 

Ŗ
F__inference_dense_135_layer_call_and_return_conditional_losses_3548946

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢0dense_135/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2	
BiasAddĄ
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity²
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_135/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
Ā
¹
*__inference_lstm_111_layer_call_fn_3547762
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
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35456362
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Óv
ķ
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3545780

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:’’’’’’’’’ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeŃ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Ņ2&
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
:’’’’’’’’’ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape×
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed22(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yĘ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÖ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Ō·z2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yĘ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape×
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ūß2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yĘ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2

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
:’’’’’’’’’ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_3^
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
muld
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_1d
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2	
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
:’’’’’’’’’ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_6į
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:’’’’’’’’’:’’’’’’’’’ :’’’’’’’’’ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_namestates:OK
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_namestates
Ćµ
±	
while_body_3548180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_111_split_readvariableop_resource_0:	D
5while_lstm_cell_111_split_1_readvariableop_resource_0:	@
-while_lstm_cell_111_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_111_split_readvariableop_resource:	B
3while_lstm_cell_111_split_1_readvariableop_resource:	>
+while_lstm_cell_111_readvariableop_resource:	 ¢"while/lstm_cell_111/ReadVariableOp¢$while/lstm_cell_111/ReadVariableOp_1¢$while/lstm_cell_111/ReadVariableOp_2¢$while/lstm_cell_111/ReadVariableOp_3¢(while/lstm_cell_111/split/ReadVariableOp¢*while/lstm_cell_111/split_1/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_111/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_111/ones_like/Shape
#while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_111/ones_like/ConstŌ
while/lstm_cell_111/ones_likeFill,while/lstm_cell_111/ones_like/Shape:output:0,while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/ones_like
!while/lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2#
!while/lstm_cell_111/dropout/ConstĻ
while/lstm_cell_111/dropout/MulMul&while/lstm_cell_111/ones_like:output:0*while/lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
while/lstm_cell_111/dropout/Mul
!while/lstm_cell_111/dropout/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_111/dropout/Shape
8while/lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Ķ2:
8while/lstm_cell_111/dropout/random_uniform/RandomUniform
*while/lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_111/dropout/GreaterEqual/y
(while/lstm_cell_111/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_111/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2*
(while/lstm_cell_111/dropout/GreaterEqual»
 while/lstm_cell_111/dropout/CastCast,while/lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2"
 while/lstm_cell_111/dropout/CastŹ
!while/lstm_cell_111/dropout/Mul_1Mul#while/lstm_cell_111/dropout/Mul:z:0$while/lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout/Mul_1
#while/lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_1/ConstÕ
!while/lstm_cell_111/dropout_1/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_1/Mul 
#while/lstm_cell_111/dropout_1/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_1/Shape
:while/lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2’ē2<
:while/lstm_cell_111/dropout_1/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_1/GreaterEqual/y
*while/lstm_cell_111/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_1/GreaterEqualĮ
"while/lstm_cell_111/dropout_1/CastCast.while/lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_1/CastŅ
#while/lstm_cell_111/dropout_1/Mul_1Mul%while/lstm_cell_111/dropout_1/Mul:z:0&while/lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_1/Mul_1
#while/lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_2/ConstÕ
!while/lstm_cell_111/dropout_2/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_2/Mul 
#while/lstm_cell_111/dropout_2/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_2/Shape
:while/lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Ł2<
:while/lstm_cell_111/dropout_2/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_2/GreaterEqual/y
*while/lstm_cell_111/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_2/GreaterEqualĮ
"while/lstm_cell_111/dropout_2/CastCast.while/lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_2/CastŅ
#while/lstm_cell_111/dropout_2/Mul_1Mul%while/lstm_cell_111/dropout_2/Mul:z:0&while/lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_2/Mul_1
#while/lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_3/ConstÕ
!while/lstm_cell_111/dropout_3/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_3/Mul 
#while/lstm_cell_111/dropout_3/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_3/Shape
:while/lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2£2<
:while/lstm_cell_111/dropout_3/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_3/GreaterEqual/y
*while/lstm_cell_111/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_3/GreaterEqualĮ
"while/lstm_cell_111/dropout_3/CastCast.while/lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_3/CastŅ
#while/lstm_cell_111/dropout_3/Mul_1Mul%while/lstm_cell_111/dropout_3/Mul:z:0&while/lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_3/Mul_1
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_111/split/split_dimÉ
(while/lstm_cell_111/split/ReadVariableOpReadVariableOp3while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_111/split/ReadVariableOp÷
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:00while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_111/splitŹ
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMulĪ
while/lstm_cell_111/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_1Ī
while/lstm_cell_111/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_2Ī
while/lstm_cell_111/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_3
%while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_111/split_1/split_dimĖ
*while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_111/split_1/ReadVariableOpļ
while/lstm_cell_111/split_1Split.while/lstm_cell_111/split_1/split_dim:output:02while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_111/split_1Ć
while/lstm_cell_111/BiasAddBiasAdd$while/lstm_cell_111/MatMul:product:0$while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAddÉ
while/lstm_cell_111/BiasAdd_1BiasAdd&while/lstm_cell_111/MatMul_1:product:0$while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_1É
while/lstm_cell_111/BiasAdd_2BiasAdd&while/lstm_cell_111/MatMul_2:product:0$while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_2É
while/lstm_cell_111/BiasAdd_3BiasAdd&while/lstm_cell_111/MatMul_3:product:0$while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_3§
while/lstm_cell_111/mulMulwhile_placeholder_2%while/lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul­
while/lstm_cell_111/mul_1Mulwhile_placeholder_2'while/lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_1­
while/lstm_cell_111/mul_2Mulwhile_placeholder_2'while/lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_2­
while/lstm_cell_111/mul_3Mulwhile_placeholder_2'while/lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_3·
"while/lstm_cell_111/ReadVariableOpReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_111/ReadVariableOp£
'while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_111/strided_slice/stack§
)while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice/stack_1§
)while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_111/strided_slice/stack_2ō
!while/lstm_cell_111/strided_sliceStridedSlice*while/lstm_cell_111/ReadVariableOp:value:00while/lstm_cell_111/strided_slice/stack:output:02while/lstm_cell_111/strided_slice/stack_1:output:02while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_111/strided_sliceĮ
while/lstm_cell_111/MatMul_4MatMulwhile/lstm_cell_111/mul:z:0*while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_4»
while/lstm_cell_111/addAddV2$while/lstm_cell_111/BiasAdd:output:0&while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add
while/lstm_cell_111/SigmoidSigmoidwhile/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid»
$while/lstm_cell_111/ReadVariableOp_1ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_1§
)while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice_1/stack«
+while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_111/strided_slice_1/stack_1«
+while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_1/stack_2
#while/lstm_cell_111/strided_slice_1StridedSlice,while/lstm_cell_111/ReadVariableOp_1:value:02while/lstm_cell_111/strided_slice_1/stack:output:04while/lstm_cell_111/strided_slice_1/stack_1:output:04while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_1Å
while/lstm_cell_111/MatMul_5MatMulwhile/lstm_cell_111/mul_1:z:0,while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_5Į
while/lstm_cell_111/add_1AddV2&while/lstm_cell_111/BiasAdd_1:output:0&while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_1
while/lstm_cell_111/Sigmoid_1Sigmoidwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_1§
while/lstm_cell_111/mul_4Mul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_4»
$while/lstm_cell_111/ReadVariableOp_2ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_2§
)while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_111/strided_slice_2/stack«
+while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_111/strided_slice_2/stack_1«
+while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_2/stack_2
#while/lstm_cell_111/strided_slice_2StridedSlice,while/lstm_cell_111/ReadVariableOp_2:value:02while/lstm_cell_111/strided_slice_2/stack:output:04while/lstm_cell_111/strided_slice_2/stack_1:output:04while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_2Å
while/lstm_cell_111/MatMul_6MatMulwhile/lstm_cell_111/mul_2:z:0,while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_6Į
while/lstm_cell_111/add_2AddV2&while/lstm_cell_111/BiasAdd_2:output:0&while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_2
while/lstm_cell_111/ReluReluwhile/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Reluø
while/lstm_cell_111/mul_5Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_5Æ
while/lstm_cell_111/add_3AddV2while/lstm_cell_111/mul_4:z:0while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_3»
$while/lstm_cell_111/ReadVariableOp_3ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_3§
)while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_111/strided_slice_3/stack«
+while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_111/strided_slice_3/stack_1«
+while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_3/stack_2
#while/lstm_cell_111/strided_slice_3StridedSlice,while/lstm_cell_111/ReadVariableOp_3:value:02while/lstm_cell_111/strided_slice_3/stack:output:04while/lstm_cell_111/strided_slice_3/stack_1:output:04while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_3Å
while/lstm_cell_111/MatMul_7MatMulwhile/lstm_cell_111/mul_3:z:0,while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_7Į
while/lstm_cell_111/add_4AddV2&while/lstm_cell_111/BiasAdd_3:output:0&while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_4
while/lstm_cell_111/Sigmoid_2Sigmoidwhile/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_2
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Relu_1¼
while/lstm_cell_111/mul_6Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_6į
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_111/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5Ģ

while/NoOpNoOp#^while/lstm_cell_111/ReadVariableOp%^while/lstm_cell_111/ReadVariableOp_1%^while/lstm_cell_111/ReadVariableOp_2%^while/lstm_cell_111/ReadVariableOp_3)^while/lstm_cell_111/split/ReadVariableOp+^while/lstm_cell_111/split_1/ReadVariableOp*"
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
+while_lstm_cell_111_readvariableop_resource-while_lstm_cell_111_readvariableop_resource_0"l
3while_lstm_cell_111_split_1_readvariableop_resource5while_lstm_cell_111_split_1_readvariableop_resource_0"h
1while_lstm_cell_111_split_readvariableop_resource3while_lstm_cell_111_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2H
"while/lstm_cell_111/ReadVariableOp"while/lstm_cell_111/ReadVariableOp2L
$while/lstm_cell_111/ReadVariableOp_1$while/lstm_cell_111/ReadVariableOp_12L
$while/lstm_cell_111/ReadVariableOp_2$while/lstm_cell_111/ReadVariableOp_22L
$while/lstm_cell_111/ReadVariableOp_3$while/lstm_cell_111/ReadVariableOp_32T
(while/lstm_cell_111/split/ReadVariableOp(while/lstm_cell_111/split/ReadVariableOp2X
*while/lstm_cell_111/split_1/ReadVariableOp*while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
ŗ
ų
/__inference_lstm_cell_111_layer_call_fn_3548998

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
9:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_35455472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

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
?:’’’’’’’’’:’’’’’’’’’ :’’’’’’’’’ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/1
Ŗ
·
*__inference_lstm_111_layer_call_fn_3547795

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
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35468942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ā
¹
*__inference_lstm_111_layer_call_fn_3547773
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
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35459332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ś
Č
while_cond_3545857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3545857___redundant_placeholder05
1while_while_cond_3545857___redundant_placeholder15
1while_while_cond_3545857___redundant_placeholder25
1while_while_cond_3545857___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:

Ļ
__inference_loss_fn_1_3549220[
Hlstm_111_lstm_cell_111_kernel_regularizer_square_readvariableop_resource:	
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlstm_111_lstm_cell_111_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mul{
IdentityIdentity1lstm_111/lstm_cell_111/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp

Ŗ
F__inference_dense_135_layer_call_and_return_conditional_losses_3546497

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢0dense_135/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2	
BiasAddĄ
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity²
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_135/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
ä	
Ø
/__inference_sequential_45_layer_call_fn_3547120

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_45_layer_call_and_return_conditional_losses_35465312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ź	
Ŗ
/__inference_sequential_45_layer_call_fn_3546994
input_46
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinput_46unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_45_layer_call_and_return_conditional_losses_35469582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_46
Ŗ
·
*__inference_lstm_111_layer_call_fn_3547784

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
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35464562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ź£
“
E__inference_lstm_111_layer_call_and_return_conditional_losses_3546456

inputs>
+lstm_cell_111_split_readvariableop_resource:	<
-lstm_cell_111_split_1_readvariableop_resource:	8
%lstm_cell_111_readvariableop_resource:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_111/ReadVariableOp¢lstm_cell_111/ReadVariableOp_1¢lstm_cell_111/ReadVariableOp_2¢lstm_cell_111/ReadVariableOp_3¢"lstm_cell_111/split/ReadVariableOp¢$lstm_cell_111/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
:’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2|
lstm_cell_111/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_111/ones_like/Shape
lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_111/ones_like/Const¼
lstm_cell_111/ones_likeFill&lstm_cell_111/ones_like/Shape:output:0&lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/ones_like
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_111/split/split_dimµ
"lstm_cell_111/split/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_111/split/ReadVariableOpß
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0*lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_111/split 
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul¤
lstm_cell_111/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_1¤
lstm_cell_111/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_2¤
lstm_cell_111/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_3
lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_111/split_1/split_dim·
$lstm_cell_111/split_1/ReadVariableOpReadVariableOp-lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_111/split_1/ReadVariableOp×
lstm_cell_111/split_1Split(lstm_cell_111/split_1/split_dim:output:0,lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_111/split_1«
lstm_cell_111/BiasAddBiasAddlstm_cell_111/MatMul:product:0lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd±
lstm_cell_111/BiasAdd_1BiasAdd lstm_cell_111/MatMul_1:product:0lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_1±
lstm_cell_111/BiasAdd_2BiasAdd lstm_cell_111/MatMul_2:product:0lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_2±
lstm_cell_111/BiasAdd_3BiasAdd lstm_cell_111/MatMul_3:product:0lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_3
lstm_cell_111/mulMulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul
lstm_cell_111/mul_1Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_1
lstm_cell_111/mul_2Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_2
lstm_cell_111/mul_3Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_3£
lstm_cell_111/ReadVariableOpReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_111/ReadVariableOp
!lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_111/strided_slice/stack
#lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice/stack_1
#lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_111/strided_slice/stack_2Š
lstm_cell_111/strided_sliceStridedSlice$lstm_cell_111/ReadVariableOp:value:0*lstm_cell_111/strided_slice/stack:output:0,lstm_cell_111/strided_slice/stack_1:output:0,lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice©
lstm_cell_111/MatMul_4MatMullstm_cell_111/mul:z:0$lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_4£
lstm_cell_111/addAddV2lstm_cell_111/BiasAdd:output:0 lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add
lstm_cell_111/SigmoidSigmoidlstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid§
lstm_cell_111/ReadVariableOp_1ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_1
#lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice_1/stack
%lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_111/strided_slice_1/stack_1
%lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_1/stack_2Ü
lstm_cell_111/strided_slice_1StridedSlice&lstm_cell_111/ReadVariableOp_1:value:0,lstm_cell_111/strided_slice_1/stack:output:0.lstm_cell_111/strided_slice_1/stack_1:output:0.lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_1­
lstm_cell_111/MatMul_5MatMullstm_cell_111/mul_1:z:0&lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_5©
lstm_cell_111/add_1AddV2 lstm_cell_111/BiasAdd_1:output:0 lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_1
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_1
lstm_cell_111/mul_4Mullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_4§
lstm_cell_111/ReadVariableOp_2ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_2
#lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_111/strided_slice_2/stack
%lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_111/strided_slice_2/stack_1
%lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_2/stack_2Ü
lstm_cell_111/strided_slice_2StridedSlice&lstm_cell_111/ReadVariableOp_2:value:0,lstm_cell_111/strided_slice_2/stack:output:0.lstm_cell_111/strided_slice_2/stack_1:output:0.lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_2­
lstm_cell_111/MatMul_6MatMullstm_cell_111/mul_2:z:0&lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_6©
lstm_cell_111/add_2AddV2 lstm_cell_111/BiasAdd_2:output:0 lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_2{
lstm_cell_111/ReluRelulstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu 
lstm_cell_111/mul_5Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_5
lstm_cell_111/add_3AddV2lstm_cell_111/mul_4:z:0lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_3§
lstm_cell_111/ReadVariableOp_3ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_3
#lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_111/strided_slice_3/stack
%lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_111/strided_slice_3/stack_1
%lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_3/stack_2Ü
lstm_cell_111/strided_slice_3StridedSlice&lstm_cell_111/ReadVariableOp_3:value:0,lstm_cell_111/strided_slice_3/stack:output:0.lstm_cell_111/strided_slice_3/stack_1:output:0.lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_3­
lstm_cell_111/MatMul_7MatMullstm_cell_111/mul_3:z:0&lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_7©
lstm_cell_111/add_4AddV2 lstm_cell_111/BiasAdd_3:output:0 lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_4
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_2
lstm_cell_111/Relu_1Relulstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu_1¤
lstm_cell_111/mul_6Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_111_split_readvariableop_resource-lstm_cell_111_split_1_readvariableop_resource%lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3546323*
condR
while_cond_3546322*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeč
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm„
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeļ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityę
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_111/ReadVariableOp^lstm_cell_111/ReadVariableOp_1^lstm_cell_111/ReadVariableOp_2^lstm_cell_111/ReadVariableOp_3#^lstm_cell_111/split/ReadVariableOp%^lstm_cell_111/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_111/ReadVariableOplstm_cell_111/ReadVariableOp2@
lstm_cell_111/ReadVariableOp_1lstm_cell_111/ReadVariableOp_12@
lstm_cell_111/ReadVariableOp_2lstm_cell_111/ReadVariableOp_22@
lstm_cell_111/ReadVariableOp_3lstm_cell_111/ReadVariableOp_32H
"lstm_cell_111/split/ReadVariableOp"lstm_cell_111/split/ReadVariableOp2L
$lstm_cell_111/split_1/ReadVariableOp$lstm_cell_111/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ŗ
ų
/__inference_lstm_cell_111_layer_call_fn_3549015

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
9:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_35457802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

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
?:’’’’’’’’’:’’’’’’’’’ :’’’’’’’’’ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/1
Ś
Č
while_cond_3547904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3547904___redundant_placeholder05
1while_while_cond_3547904___redundant_placeholder15
1while_while_cond_3547904___redundant_placeholder25
1while_while_cond_3547904___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
S
ļ
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3549096

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2

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
:’’’’’’’’’ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_3a
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mule
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_1e
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_2e
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2	
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
:’’’’’’’’’ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_6į
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:’’’’’’’’’:’’’’’’’’’ :’’’’’’’’’ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/1
é

ü
lstm_111_while_cond_3547248.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_30
,lstm_111_while_less_lstm_111_strided_slice_1G
Clstm_111_while_lstm_111_while_cond_3547248___redundant_placeholder0G
Clstm_111_while_lstm_111_while_cond_3547248___redundant_placeholder1G
Clstm_111_while_lstm_111_while_cond_3547248___redundant_placeholder2G
Clstm_111_while_lstm_111_while_cond_3547248___redundant_placeholder3
lstm_111_while_identity

lstm_111/while/LessLesslstm_111_while_placeholder,lstm_111_while_less_lstm_111_strided_slice_1*
T0*
_output_shapes
: 2
lstm_111/while/Lessx
lstm_111/while/IdentityIdentitylstm_111/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_111/while/Identity";
lstm_111_while_identity lstm_111/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
Ś
Č
while_cond_3548179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3548179___redundant_placeholder05
1while_while_cond_3548179___redundant_placeholder15
1while_while_cond_3548179___redundant_placeholder25
1while_while_cond_3548179___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
Ž|

#__inference__traced_restore_3549421
file_prefix3
!assignvariableop_dense_134_kernel:  /
!assignvariableop_1_dense_134_bias: 5
#assignvariableop_2_dense_135_kernel: /
!assignvariableop_3_dense_135_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
0assignvariableop_9_lstm_111_lstm_cell_111_kernel:	N
;assignvariableop_10_lstm_111_lstm_cell_111_recurrent_kernel:	 >
/assignvariableop_11_lstm_111_lstm_cell_111_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: =
+assignvariableop_14_adam_dense_134_kernel_m:  7
)assignvariableop_15_adam_dense_134_bias_m: =
+assignvariableop_16_adam_dense_135_kernel_m: 7
)assignvariableop_17_adam_dense_135_bias_m:K
8assignvariableop_18_adam_lstm_111_lstm_cell_111_kernel_m:	U
Bassignvariableop_19_adam_lstm_111_lstm_cell_111_recurrent_kernel_m:	 E
6assignvariableop_20_adam_lstm_111_lstm_cell_111_bias_m:	=
+assignvariableop_21_adam_dense_134_kernel_v:  7
)assignvariableop_22_adam_dense_134_bias_v: =
+assignvariableop_23_adam_dense_135_kernel_v: 7
)assignvariableop_24_adam_dense_135_bias_v:K
8assignvariableop_25_adam_lstm_111_lstm_cell_111_kernel_v:	U
Bassignvariableop_26_adam_lstm_111_lstm_cell_111_recurrent_kernel_v:	 E
6assignvariableop_27_adam_lstm_111_lstm_cell_111_bias_v:	
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ö
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ā
valueŲBÕB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesČ
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_134_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_134_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ø
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_135_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_135_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4”
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

Identity_8Ŗ
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
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_111_lstm_cell_111_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ć
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_111_lstm_cell_111_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11·
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_111_lstm_cell_111_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12”
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13”
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_134_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_134_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_135_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_135_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ą
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_lstm_111_lstm_cell_111_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ź
AssignVariableOp_19AssignVariableOpBassignvariableop_19_adam_lstm_111_lstm_cell_111_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¾
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_111_lstm_cell_111_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_134_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_134_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_135_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_135_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ą
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_lstm_111_lstm_cell_111_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ź
AssignVariableOp_26AssignVariableOpBassignvariableop_26_adam_lstm_111_lstm_cell_111_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_111_lstm_cell_111_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpĘ
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
Ś
Č
while_cond_3545560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3545560___redundant_placeholder05
1while_while_cond_3545560___redundant_placeholder15
1while_while_cond_3545560___redundant_placeholder25
1while_while_cond_3545560___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
ćv
ļ
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3549209

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
:’’’’’’’’’ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeŠ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Įée2&
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
:’’’’’’’’’ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape×
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Ā»Ž2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_1/GreaterEqual/yĘ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape×
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2¬ß2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_2/GreaterEqual/yĘ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape×
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ńĆ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout_3/GreaterEqual/yĘ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2

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
:’’’’’’’’’ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_3`
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mulf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_1f
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2	
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
:’’’’’’’’’ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_6į
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:’’’’’’’’’:’’’’’’’’’ :’’’’’’’’’ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:’’’’’’’’’ 
"
_user_specified_name
states/1
Ć½
Ł
)sequential_45_lstm_111_while_body_3545274J
Fsequential_45_lstm_111_while_sequential_45_lstm_111_while_loop_counterP
Lsequential_45_lstm_111_while_sequential_45_lstm_111_while_maximum_iterations,
(sequential_45_lstm_111_while_placeholder.
*sequential_45_lstm_111_while_placeholder_1.
*sequential_45_lstm_111_while_placeholder_2.
*sequential_45_lstm_111_while_placeholder_3I
Esequential_45_lstm_111_while_sequential_45_lstm_111_strided_slice_1_0
sequential_45_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_111_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_45_lstm_111_while_lstm_cell_111_split_readvariableop_resource_0:	[
Lsequential_45_lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0:	W
Dsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource_0:	 )
%sequential_45_lstm_111_while_identity+
'sequential_45_lstm_111_while_identity_1+
'sequential_45_lstm_111_while_identity_2+
'sequential_45_lstm_111_while_identity_3+
'sequential_45_lstm_111_while_identity_4+
'sequential_45_lstm_111_while_identity_5G
Csequential_45_lstm_111_while_sequential_45_lstm_111_strided_slice_1
sequential_45_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_111_tensorarrayunstack_tensorlistfromtensor[
Hsequential_45_lstm_111_while_lstm_cell_111_split_readvariableop_resource:	Y
Jsequential_45_lstm_111_while_lstm_cell_111_split_1_readvariableop_resource:	U
Bsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource:	 ¢9sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp¢;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_1¢;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_2¢;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_3¢?sequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOp¢Asequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOpń
Nsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2P
Nsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeŽ
@sequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_45_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_111_tensorarrayunstack_tensorlistfromtensor_0(sequential_45_lstm_111_while_placeholderWsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02B
@sequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItemŅ
:sequential_45/lstm_111/while/lstm_cell_111/ones_like/ShapeShape*sequential_45_lstm_111_while_placeholder_2*
T0*
_output_shapes
:2<
:sequential_45/lstm_111/while/lstm_cell_111/ones_like/Shape½
:sequential_45/lstm_111/while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2<
:sequential_45/lstm_111/while/lstm_cell_111/ones_like/Const°
4sequential_45/lstm_111/while/lstm_cell_111/ones_likeFillCsequential_45/lstm_111/while/lstm_cell_111/ones_like/Shape:output:0Csequential_45/lstm_111/while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 26
4sequential_45/lstm_111/while/lstm_cell_111/ones_likeŗ
:sequential_45/lstm_111/while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_45/lstm_111/while/lstm_cell_111/split/split_dim
?sequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOpReadVariableOpJsequential_45_lstm_111_while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02A
?sequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOpÓ
0sequential_45/lstm_111/while/lstm_cell_111/splitSplitCsequential_45/lstm_111/while/lstm_cell_111/split/split_dim:output:0Gsequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split22
0sequential_45/lstm_111/while/lstm_cell_111/split¦
1sequential_45/lstm_111/while/lstm_cell_111/MatMulMatMulGsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_45/lstm_111/while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 23
1sequential_45/lstm_111/while/lstm_cell_111/MatMulŖ
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_1MatMulGsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_45/lstm_111/while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_1Ŗ
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_2MatMulGsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_45/lstm_111/while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_2Ŗ
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_3MatMulGsequential_45/lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_45/lstm_111/while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_3¾
<sequential_45/lstm_111/while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2>
<sequential_45/lstm_111/while/lstm_cell_111/split_1/split_dim
Asequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOpReadVariableOpLsequential_45_lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02C
Asequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOpĖ
2sequential_45/lstm_111/while/lstm_cell_111/split_1SplitEsequential_45/lstm_111/while/lstm_cell_111/split_1/split_dim:output:0Isequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split24
2sequential_45/lstm_111/while/lstm_cell_111/split_1
2sequential_45/lstm_111/while/lstm_cell_111/BiasAddBiasAdd;sequential_45/lstm_111/while/lstm_cell_111/MatMul:product:0;sequential_45/lstm_111/while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 24
2sequential_45/lstm_111/while/lstm_cell_111/BiasAdd„
4sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_1BiasAdd=sequential_45/lstm_111/while/lstm_cell_111/MatMul_1:product:0;sequential_45/lstm_111/while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 26
4sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_1„
4sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_2BiasAdd=sequential_45/lstm_111/while/lstm_cell_111/MatMul_2:product:0;sequential_45/lstm_111/while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 26
4sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_2„
4sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_3BiasAdd=sequential_45/lstm_111/while/lstm_cell_111/MatMul_3:product:0;sequential_45/lstm_111/while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 26
4sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_3
.sequential_45/lstm_111/while/lstm_cell_111/mulMul*sequential_45_lstm_111_while_placeholder_2=sequential_45/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/while/lstm_cell_111/mul
0sequential_45/lstm_111/while/lstm_cell_111/mul_1Mul*sequential_45_lstm_111_while_placeholder_2=sequential_45/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/mul_1
0sequential_45/lstm_111/while/lstm_cell_111/mul_2Mul*sequential_45_lstm_111_while_placeholder_2=sequential_45/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/mul_2
0sequential_45/lstm_111/while/lstm_cell_111/mul_3Mul*sequential_45_lstm_111_while_placeholder_2=sequential_45/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/mul_3ü
9sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOpReadVariableOpDsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOpŃ
>sequential_45/lstm_111/while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_45/lstm_111/while/lstm_cell_111/strided_slice/stackÕ
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack_1Õ
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack_2ž
8sequential_45/lstm_111/while/lstm_cell_111/strided_sliceStridedSliceAsequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp:value:0Gsequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack:output:0Isequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack_1:output:0Isequential_45/lstm_111/while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_45/lstm_111/while/lstm_cell_111/strided_slice
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_4MatMul2sequential_45/lstm_111/while/lstm_cell_111/mul:z:0Asequential_45/lstm_111/while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_4
.sequential_45/lstm_111/while/lstm_cell_111/addAddV2;sequential_45/lstm_111/while/lstm_cell_111/BiasAdd:output:0=sequential_45/lstm_111/while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/while/lstm_cell_111/addŁ
2sequential_45/lstm_111/while/lstm_cell_111/SigmoidSigmoid2sequential_45/lstm_111/while/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 24
2sequential_45/lstm_111/while/lstm_cell_111/Sigmoid
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_1ReadVariableOpDsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_1Õ
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stackŁ
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2D
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack_1Ł
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack_2
:sequential_45/lstm_111/while/lstm_cell_111/strided_slice_1StridedSliceCsequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_1:value:0Isequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack:output:0Ksequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack_1:output:0Ksequential_45/lstm_111/while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_45/lstm_111/while/lstm_cell_111/strided_slice_1”
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_5MatMul4sequential_45/lstm_111/while/lstm_cell_111/mul_1:z:0Csequential_45/lstm_111/while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_5
0sequential_45/lstm_111/while/lstm_cell_111/add_1AddV2=sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_1:output:0=sequential_45/lstm_111/while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/add_1ß
4sequential_45/lstm_111/while/lstm_cell_111/Sigmoid_1Sigmoid4sequential_45/lstm_111/while/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 26
4sequential_45/lstm_111/while/lstm_cell_111/Sigmoid_1
0sequential_45/lstm_111/while/lstm_cell_111/mul_4Mul8sequential_45/lstm_111/while/lstm_cell_111/Sigmoid_1:y:0*sequential_45_lstm_111_while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/mul_4
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_2ReadVariableOpDsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_2Õ
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stackŁ
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2D
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack_1Ł
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack_2
:sequential_45/lstm_111/while/lstm_cell_111/strided_slice_2StridedSliceCsequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_2:value:0Isequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack:output:0Ksequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack_1:output:0Ksequential_45/lstm_111/while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_45/lstm_111/while/lstm_cell_111/strided_slice_2”
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_6MatMul4sequential_45/lstm_111/while/lstm_cell_111/mul_2:z:0Csequential_45/lstm_111/while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_6
0sequential_45/lstm_111/while/lstm_cell_111/add_2AddV2=sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_2:output:0=sequential_45/lstm_111/while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/add_2Ņ
/sequential_45/lstm_111/while/lstm_cell_111/ReluRelu4sequential_45/lstm_111/while/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 21
/sequential_45/lstm_111/while/lstm_cell_111/Relu
0sequential_45/lstm_111/while/lstm_cell_111/mul_5Mul6sequential_45/lstm_111/while/lstm_cell_111/Sigmoid:y:0=sequential_45/lstm_111/while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/mul_5
0sequential_45/lstm_111/while/lstm_cell_111/add_3AddV24sequential_45/lstm_111/while/lstm_cell_111/mul_4:z:04sequential_45/lstm_111/while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/add_3
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_3ReadVariableOpDsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_3Õ
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stackŁ
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack_1Ł
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack_2
:sequential_45/lstm_111/while/lstm_cell_111/strided_slice_3StridedSliceCsequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_3:value:0Isequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack:output:0Ksequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack_1:output:0Ksequential_45/lstm_111/while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_45/lstm_111/while/lstm_cell_111/strided_slice_3”
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_7MatMul4sequential_45/lstm_111/while/lstm_cell_111/mul_3:z:0Csequential_45/lstm_111/while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3sequential_45/lstm_111/while/lstm_cell_111/MatMul_7
0sequential_45/lstm_111/while/lstm_cell_111/add_4AddV2=sequential_45/lstm_111/while/lstm_cell_111/BiasAdd_3:output:0=sequential_45/lstm_111/while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/add_4ß
4sequential_45/lstm_111/while/lstm_cell_111/Sigmoid_2Sigmoid4sequential_45/lstm_111/while/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 26
4sequential_45/lstm_111/while/lstm_cell_111/Sigmoid_2Ö
1sequential_45/lstm_111/while/lstm_cell_111/Relu_1Relu4sequential_45/lstm_111/while/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 23
1sequential_45/lstm_111/while/lstm_cell_111/Relu_1
0sequential_45/lstm_111/while/lstm_cell_111/mul_6Mul8sequential_45/lstm_111/while/lstm_cell_111/Sigmoid_2:y:0?sequential_45/lstm_111/while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 22
0sequential_45/lstm_111/while/lstm_cell_111/mul_6Ō
Asequential_45/lstm_111/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_45_lstm_111_while_placeholder_1(sequential_45_lstm_111_while_placeholder4sequential_45/lstm_111/while/lstm_cell_111/mul_6:z:0*
_output_shapes
: *
element_dtype02C
Asequential_45/lstm_111/while/TensorArrayV2Write/TensorListSetItem
"sequential_45/lstm_111/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_45/lstm_111/while/add/yÅ
 sequential_45/lstm_111/while/addAddV2(sequential_45_lstm_111_while_placeholder+sequential_45/lstm_111/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_45/lstm_111/while/add
$sequential_45/lstm_111/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_45/lstm_111/while/add_1/yé
"sequential_45/lstm_111/while/add_1AddV2Fsequential_45_lstm_111_while_sequential_45_lstm_111_while_loop_counter-sequential_45/lstm_111/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_45/lstm_111/while/add_1Ē
%sequential_45/lstm_111/while/IdentityIdentity&sequential_45/lstm_111/while/add_1:z:0"^sequential_45/lstm_111/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_45/lstm_111/while/Identityń
'sequential_45/lstm_111/while/Identity_1IdentityLsequential_45_lstm_111_while_sequential_45_lstm_111_while_maximum_iterations"^sequential_45/lstm_111/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_45/lstm_111/while/Identity_1É
'sequential_45/lstm_111/while/Identity_2Identity$sequential_45/lstm_111/while/add:z:0"^sequential_45/lstm_111/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_45/lstm_111/while/Identity_2ö
'sequential_45/lstm_111/while/Identity_3IdentityQsequential_45/lstm_111/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_45/lstm_111/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_45/lstm_111/while/Identity_3ź
'sequential_45/lstm_111/while/Identity_4Identity4sequential_45/lstm_111/while/lstm_cell_111/mul_6:z:0"^sequential_45/lstm_111/while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2)
'sequential_45/lstm_111/while/Identity_4ź
'sequential_45/lstm_111/while/Identity_5Identity4sequential_45/lstm_111/while/lstm_cell_111/add_3:z:0"^sequential_45/lstm_111/while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2)
'sequential_45/lstm_111/while/Identity_5
!sequential_45/lstm_111/while/NoOpNoOp:^sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp<^sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_1<^sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_2<^sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_3@^sequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOpB^sequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_45/lstm_111/while/NoOp"W
%sequential_45_lstm_111_while_identity.sequential_45/lstm_111/while/Identity:output:0"[
'sequential_45_lstm_111_while_identity_10sequential_45/lstm_111/while/Identity_1:output:0"[
'sequential_45_lstm_111_while_identity_20sequential_45/lstm_111/while/Identity_2:output:0"[
'sequential_45_lstm_111_while_identity_30sequential_45/lstm_111/while/Identity_3:output:0"[
'sequential_45_lstm_111_while_identity_40sequential_45/lstm_111/while/Identity_4:output:0"[
'sequential_45_lstm_111_while_identity_50sequential_45/lstm_111/while/Identity_5:output:0"
Bsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resourceDsequential_45_lstm_111_while_lstm_cell_111_readvariableop_resource_0"
Jsequential_45_lstm_111_while_lstm_cell_111_split_1_readvariableop_resourceLsequential_45_lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0"
Hsequential_45_lstm_111_while_lstm_cell_111_split_readvariableop_resourceJsequential_45_lstm_111_while_lstm_cell_111_split_readvariableop_resource_0"
Csequential_45_lstm_111_while_sequential_45_lstm_111_strided_slice_1Esequential_45_lstm_111_while_sequential_45_lstm_111_strided_slice_1_0"
sequential_45_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_111_tensorarrayunstack_tensorlistfromtensorsequential_45_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_45_lstm_111_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2v
9sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp9sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp2z
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_1;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_12z
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_2;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_22z
;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_3;sequential_45/lstm_111/while/lstm_cell_111/ReadVariableOp_32
?sequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOp?sequential_45/lstm_111/while/lstm_cell_111/split/ReadVariableOp2
Asequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOpAsequential_45/lstm_111/while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 


)sequential_45_lstm_111_while_cond_3545273J
Fsequential_45_lstm_111_while_sequential_45_lstm_111_while_loop_counterP
Lsequential_45_lstm_111_while_sequential_45_lstm_111_while_maximum_iterations,
(sequential_45_lstm_111_while_placeholder.
*sequential_45_lstm_111_while_placeholder_1.
*sequential_45_lstm_111_while_placeholder_2.
*sequential_45_lstm_111_while_placeholder_3L
Hsequential_45_lstm_111_while_less_sequential_45_lstm_111_strided_slice_1c
_sequential_45_lstm_111_while_sequential_45_lstm_111_while_cond_3545273___redundant_placeholder0c
_sequential_45_lstm_111_while_sequential_45_lstm_111_while_cond_3545273___redundant_placeholder1c
_sequential_45_lstm_111_while_sequential_45_lstm_111_while_cond_3545273___redundant_placeholder2c
_sequential_45_lstm_111_while_sequential_45_lstm_111_while_cond_3545273___redundant_placeholder3)
%sequential_45_lstm_111_while_identity
ć
!sequential_45/lstm_111/while/LessLess(sequential_45_lstm_111_while_placeholderHsequential_45_lstm_111_while_less_sequential_45_lstm_111_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_45/lstm_111/while/Less¢
%sequential_45/lstm_111/while/IdentityIdentity%sequential_45/lstm_111/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_45/lstm_111/while/Identity"W
%sequential_45_lstm_111_while_identity.sequential_45/lstm_111/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
×R
Š
E__inference_lstm_111_layer_call_and_return_conditional_losses_3545933

inputs(
lstm_cell_111_3545845:	$
lstm_cell_111_3545847:	(
lstm_cell_111_3545849:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢%lstm_cell_111/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
 :’’’’’’’’’’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2§
%lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_111_3545845lstm_cell_111_3545847lstm_cell_111_3545849*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_35457802'
%lstm_cell_111/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterČ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_111_3545845lstm_cell_111_3545847lstm_cell_111_3545849*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3545858*
condR
while_cond_3545857*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeń
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
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
 :’’’’’’’’’’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŁ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_111_3545845*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

IdentityĄ
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp&^lstm_cell_111/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2N
%lstm_cell_111/StatefulPartitionedCall%lstm_cell_111/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
 ¤
¶
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548038
inputs_0>
+lstm_cell_111_split_readvariableop_resource:	<
-lstm_cell_111_split_1_readvariableop_resource:	8
%lstm_cell_111_readvariableop_resource:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_111/ReadVariableOp¢lstm_cell_111/ReadVariableOp_1¢lstm_cell_111/ReadVariableOp_2¢lstm_cell_111/ReadVariableOp_3¢"lstm_cell_111/split/ReadVariableOp¢$lstm_cell_111/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
 :’’’’’’’’’’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2|
lstm_cell_111/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_111/ones_like/Shape
lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_111/ones_like/Const¼
lstm_cell_111/ones_likeFill&lstm_cell_111/ones_like/Shape:output:0&lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/ones_like
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_111/split/split_dimµ
"lstm_cell_111/split/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_111/split/ReadVariableOpß
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0*lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_111/split 
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul¤
lstm_cell_111/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_1¤
lstm_cell_111/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_2¤
lstm_cell_111/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_3
lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_111/split_1/split_dim·
$lstm_cell_111/split_1/ReadVariableOpReadVariableOp-lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_111/split_1/ReadVariableOp×
lstm_cell_111/split_1Split(lstm_cell_111/split_1/split_dim:output:0,lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_111/split_1«
lstm_cell_111/BiasAddBiasAddlstm_cell_111/MatMul:product:0lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd±
lstm_cell_111/BiasAdd_1BiasAdd lstm_cell_111/MatMul_1:product:0lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_1±
lstm_cell_111/BiasAdd_2BiasAdd lstm_cell_111/MatMul_2:product:0lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_2±
lstm_cell_111/BiasAdd_3BiasAdd lstm_cell_111/MatMul_3:product:0lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_3
lstm_cell_111/mulMulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul
lstm_cell_111/mul_1Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_1
lstm_cell_111/mul_2Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_2
lstm_cell_111/mul_3Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_3£
lstm_cell_111/ReadVariableOpReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_111/ReadVariableOp
!lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_111/strided_slice/stack
#lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice/stack_1
#lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_111/strided_slice/stack_2Š
lstm_cell_111/strided_sliceStridedSlice$lstm_cell_111/ReadVariableOp:value:0*lstm_cell_111/strided_slice/stack:output:0,lstm_cell_111/strided_slice/stack_1:output:0,lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice©
lstm_cell_111/MatMul_4MatMullstm_cell_111/mul:z:0$lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_4£
lstm_cell_111/addAddV2lstm_cell_111/BiasAdd:output:0 lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add
lstm_cell_111/SigmoidSigmoidlstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid§
lstm_cell_111/ReadVariableOp_1ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_1
#lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice_1/stack
%lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_111/strided_slice_1/stack_1
%lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_1/stack_2Ü
lstm_cell_111/strided_slice_1StridedSlice&lstm_cell_111/ReadVariableOp_1:value:0,lstm_cell_111/strided_slice_1/stack:output:0.lstm_cell_111/strided_slice_1/stack_1:output:0.lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_1­
lstm_cell_111/MatMul_5MatMullstm_cell_111/mul_1:z:0&lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_5©
lstm_cell_111/add_1AddV2 lstm_cell_111/BiasAdd_1:output:0 lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_1
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_1
lstm_cell_111/mul_4Mullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_4§
lstm_cell_111/ReadVariableOp_2ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_2
#lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_111/strided_slice_2/stack
%lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_111/strided_slice_2/stack_1
%lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_2/stack_2Ü
lstm_cell_111/strided_slice_2StridedSlice&lstm_cell_111/ReadVariableOp_2:value:0,lstm_cell_111/strided_slice_2/stack:output:0.lstm_cell_111/strided_slice_2/stack_1:output:0.lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_2­
lstm_cell_111/MatMul_6MatMullstm_cell_111/mul_2:z:0&lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_6©
lstm_cell_111/add_2AddV2 lstm_cell_111/BiasAdd_2:output:0 lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_2{
lstm_cell_111/ReluRelulstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu 
lstm_cell_111/mul_5Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_5
lstm_cell_111/add_3AddV2lstm_cell_111/mul_4:z:0lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_3§
lstm_cell_111/ReadVariableOp_3ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_3
#lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_111/strided_slice_3/stack
%lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_111/strided_slice_3/stack_1
%lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_3/stack_2Ü
lstm_cell_111/strided_slice_3StridedSlice&lstm_cell_111/ReadVariableOp_3:value:0,lstm_cell_111/strided_slice_3/stack:output:0.lstm_cell_111/strided_slice_3/stack_1:output:0.lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_3­
lstm_cell_111/MatMul_7MatMullstm_cell_111/mul_3:z:0&lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_7©
lstm_cell_111/add_4AddV2 lstm_cell_111/BiasAdd_3:output:0 lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_4
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_2
lstm_cell_111/Relu_1Relulstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu_1¤
lstm_cell_111/mul_6Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_111_split_readvariableop_resource-lstm_cell_111_split_1_readvariableop_resource%lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3547905*
condR
while_cond_3547904*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeń
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
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
 :’’’’’’’’’’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeļ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityę
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_111/ReadVariableOp^lstm_cell_111/ReadVariableOp_1^lstm_cell_111/ReadVariableOp_2^lstm_cell_111/ReadVariableOp_3#^lstm_cell_111/split/ReadVariableOp%^lstm_cell_111/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_111/ReadVariableOplstm_cell_111/ReadVariableOp2@
lstm_cell_111/ReadVariableOp_1lstm_cell_111/ReadVariableOp_12@
lstm_cell_111/ReadVariableOp_2lstm_cell_111/ReadVariableOp_22@
lstm_cell_111/ReadVariableOp_3lstm_cell_111/ReadVariableOp_32H
"lstm_cell_111/split/ReadVariableOp"lstm_cell_111/split/ReadVariableOp2L
$lstm_cell_111/split_1/ReadVariableOp$lstm_cell_111/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Āµ
±	
while_body_3548730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_111_split_readvariableop_resource_0:	D
5while_lstm_cell_111_split_1_readvariableop_resource_0:	@
-while_lstm_cell_111_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_111_split_readvariableop_resource:	B
3while_lstm_cell_111_split_1_readvariableop_resource:	>
+while_lstm_cell_111_readvariableop_resource:	 ¢"while/lstm_cell_111/ReadVariableOp¢$while/lstm_cell_111/ReadVariableOp_1¢$while/lstm_cell_111/ReadVariableOp_2¢$while/lstm_cell_111/ReadVariableOp_3¢(while/lstm_cell_111/split/ReadVariableOp¢*while/lstm_cell_111/split_1/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_111/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_111/ones_like/Shape
#while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_111/ones_like/ConstŌ
while/lstm_cell_111/ones_likeFill,while/lstm_cell_111/ones_like/Shape:output:0,while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/ones_like
!while/lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2#
!while/lstm_cell_111/dropout/ConstĻ
while/lstm_cell_111/dropout/MulMul&while/lstm_cell_111/ones_like:output:0*while/lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
while/lstm_cell_111/dropout/Mul
!while/lstm_cell_111/dropout/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_111/dropout/Shape
8while/lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2§’2:
8while/lstm_cell_111/dropout/random_uniform/RandomUniform
*while/lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_111/dropout/GreaterEqual/y
(while/lstm_cell_111/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_111/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2*
(while/lstm_cell_111/dropout/GreaterEqual»
 while/lstm_cell_111/dropout/CastCast,while/lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2"
 while/lstm_cell_111/dropout/CastŹ
!while/lstm_cell_111/dropout/Mul_1Mul#while/lstm_cell_111/dropout/Mul:z:0$while/lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout/Mul_1
#while/lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_1/ConstÕ
!while/lstm_cell_111/dropout_1/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_1/Mul 
#while/lstm_cell_111/dropout_1/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_1/Shape
:while/lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2øŲm2<
:while/lstm_cell_111/dropout_1/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_1/GreaterEqual/y
*while/lstm_cell_111/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_1/GreaterEqualĮ
"while/lstm_cell_111/dropout_1/CastCast.while/lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_1/CastŅ
#while/lstm_cell_111/dropout_1/Mul_1Mul%while/lstm_cell_111/dropout_1/Mul:z:0&while/lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_1/Mul_1
#while/lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_2/ConstÕ
!while/lstm_cell_111/dropout_2/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_2/Mul 
#while/lstm_cell_111/dropout_2/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_2/Shape
:while/lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Źš2<
:while/lstm_cell_111/dropout_2/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_2/GreaterEqual/y
*while/lstm_cell_111/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_2/GreaterEqualĮ
"while/lstm_cell_111/dropout_2/CastCast.while/lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_2/CastŅ
#while/lstm_cell_111/dropout_2/Mul_1Mul%while/lstm_cell_111/dropout_2/Mul:z:0&while/lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_2/Mul_1
#while/lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2%
#while/lstm_cell_111/dropout_3/ConstÕ
!while/lstm_cell_111/dropout_3/MulMul&while/lstm_cell_111/ones_like:output:0,while/lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!while/lstm_cell_111/dropout_3/Mul 
#while/lstm_cell_111/dropout_3/ShapeShape&while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_111/dropout_3/Shape
:while/lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ĶČ2<
:while/lstm_cell_111/dropout_3/random_uniform/RandomUniform”
,while/lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_111/dropout_3/GreaterEqual/y
*while/lstm_cell_111/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*while/lstm_cell_111/dropout_3/GreaterEqualĮ
"while/lstm_cell_111/dropout_3/CastCast.while/lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2$
"while/lstm_cell_111/dropout_3/CastŅ
#while/lstm_cell_111/dropout_3/Mul_1Mul%while/lstm_cell_111/dropout_3/Mul:z:0&while/lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#while/lstm_cell_111/dropout_3/Mul_1
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_111/split/split_dimÉ
(while/lstm_cell_111/split/ReadVariableOpReadVariableOp3while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_111/split/ReadVariableOp÷
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:00while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_111/splitŹ
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMulĪ
while/lstm_cell_111/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_1Ī
while/lstm_cell_111/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_2Ī
while/lstm_cell_111/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_3
%while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_111/split_1/split_dimĖ
*while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_111/split_1/ReadVariableOpļ
while/lstm_cell_111/split_1Split.while/lstm_cell_111/split_1/split_dim:output:02while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_111/split_1Ć
while/lstm_cell_111/BiasAddBiasAdd$while/lstm_cell_111/MatMul:product:0$while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAddÉ
while/lstm_cell_111/BiasAdd_1BiasAdd&while/lstm_cell_111/MatMul_1:product:0$while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_1É
while/lstm_cell_111/BiasAdd_2BiasAdd&while/lstm_cell_111/MatMul_2:product:0$while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_2É
while/lstm_cell_111/BiasAdd_3BiasAdd&while/lstm_cell_111/MatMul_3:product:0$while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_3§
while/lstm_cell_111/mulMulwhile_placeholder_2%while/lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul­
while/lstm_cell_111/mul_1Mulwhile_placeholder_2'while/lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_1­
while/lstm_cell_111/mul_2Mulwhile_placeholder_2'while/lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_2­
while/lstm_cell_111/mul_3Mulwhile_placeholder_2'while/lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_3·
"while/lstm_cell_111/ReadVariableOpReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_111/ReadVariableOp£
'while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_111/strided_slice/stack§
)while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice/stack_1§
)while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_111/strided_slice/stack_2ō
!while/lstm_cell_111/strided_sliceStridedSlice*while/lstm_cell_111/ReadVariableOp:value:00while/lstm_cell_111/strided_slice/stack:output:02while/lstm_cell_111/strided_slice/stack_1:output:02while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_111/strided_sliceĮ
while/lstm_cell_111/MatMul_4MatMulwhile/lstm_cell_111/mul:z:0*while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_4»
while/lstm_cell_111/addAddV2$while/lstm_cell_111/BiasAdd:output:0&while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add
while/lstm_cell_111/SigmoidSigmoidwhile/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid»
$while/lstm_cell_111/ReadVariableOp_1ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_1§
)while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice_1/stack«
+while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_111/strided_slice_1/stack_1«
+while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_1/stack_2
#while/lstm_cell_111/strided_slice_1StridedSlice,while/lstm_cell_111/ReadVariableOp_1:value:02while/lstm_cell_111/strided_slice_1/stack:output:04while/lstm_cell_111/strided_slice_1/stack_1:output:04while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_1Å
while/lstm_cell_111/MatMul_5MatMulwhile/lstm_cell_111/mul_1:z:0,while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_5Į
while/lstm_cell_111/add_1AddV2&while/lstm_cell_111/BiasAdd_1:output:0&while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_1
while/lstm_cell_111/Sigmoid_1Sigmoidwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_1§
while/lstm_cell_111/mul_4Mul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_4»
$while/lstm_cell_111/ReadVariableOp_2ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_2§
)while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_111/strided_slice_2/stack«
+while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_111/strided_slice_2/stack_1«
+while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_2/stack_2
#while/lstm_cell_111/strided_slice_2StridedSlice,while/lstm_cell_111/ReadVariableOp_2:value:02while/lstm_cell_111/strided_slice_2/stack:output:04while/lstm_cell_111/strided_slice_2/stack_1:output:04while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_2Å
while/lstm_cell_111/MatMul_6MatMulwhile/lstm_cell_111/mul_2:z:0,while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_6Į
while/lstm_cell_111/add_2AddV2&while/lstm_cell_111/BiasAdd_2:output:0&while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_2
while/lstm_cell_111/ReluReluwhile/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Reluø
while/lstm_cell_111/mul_5Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_5Æ
while/lstm_cell_111/add_3AddV2while/lstm_cell_111/mul_4:z:0while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_3»
$while/lstm_cell_111/ReadVariableOp_3ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_3§
)while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_111/strided_slice_3/stack«
+while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_111/strided_slice_3/stack_1«
+while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_3/stack_2
#while/lstm_cell_111/strided_slice_3StridedSlice,while/lstm_cell_111/ReadVariableOp_3:value:02while/lstm_cell_111/strided_slice_3/stack:output:04while/lstm_cell_111/strided_slice_3/stack_1:output:04while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_3Å
while/lstm_cell_111/MatMul_7MatMulwhile/lstm_cell_111/mul_3:z:0,while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_7Į
while/lstm_cell_111/add_4AddV2&while/lstm_cell_111/BiasAdd_3:output:0&while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_4
while/lstm_cell_111/Sigmoid_2Sigmoidwhile/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_2
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Relu_1¼
while/lstm_cell_111/mul_6Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_6į
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_111/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5Ģ

while/NoOpNoOp#^while/lstm_cell_111/ReadVariableOp%^while/lstm_cell_111/ReadVariableOp_1%^while/lstm_cell_111/ReadVariableOp_2%^while/lstm_cell_111/ReadVariableOp_3)^while/lstm_cell_111/split/ReadVariableOp+^while/lstm_cell_111/split_1/ReadVariableOp*"
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
+while_lstm_cell_111_readvariableop_resource-while_lstm_cell_111_readvariableop_resource_0"l
3while_lstm_cell_111_split_1_readvariableop_resource5while_lstm_cell_111_split_1_readvariableop_resource_0"h
1while_lstm_cell_111_split_readvariableop_resource3while_lstm_cell_111_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2H
"while/lstm_cell_111/ReadVariableOp"while/lstm_cell_111/ReadVariableOp2L
$while/lstm_cell_111/ReadVariableOp_1$while/lstm_cell_111/ReadVariableOp_12L
$while/lstm_cell_111/ReadVariableOp_2$while/lstm_cell_111/ReadVariableOp_22L
$while/lstm_cell_111/ReadVariableOp_3$while/lstm_cell_111/ReadVariableOp_32T
(while/lstm_cell_111/split/ReadVariableOp(while/lstm_cell_111/split/ReadVariableOp2X
*while/lstm_cell_111/split_1/ReadVariableOp*while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
ź£
“
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548588

inputs>
+lstm_cell_111_split_readvariableop_resource:	<
-lstm_cell_111_split_1_readvariableop_resource:	8
%lstm_cell_111_readvariableop_resource:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_111/ReadVariableOp¢lstm_cell_111/ReadVariableOp_1¢lstm_cell_111/ReadVariableOp_2¢lstm_cell_111/ReadVariableOp_3¢"lstm_cell_111/split/ReadVariableOp¢$lstm_cell_111/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
:’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2|
lstm_cell_111/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_111/ones_like/Shape
lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_111/ones_like/Const¼
lstm_cell_111/ones_likeFill&lstm_cell_111/ones_like/Shape:output:0&lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/ones_like
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_111/split/split_dimµ
"lstm_cell_111/split/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_111/split/ReadVariableOpß
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0*lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_111/split 
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul¤
lstm_cell_111/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_1¤
lstm_cell_111/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_2¤
lstm_cell_111/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_3
lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_111/split_1/split_dim·
$lstm_cell_111/split_1/ReadVariableOpReadVariableOp-lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_111/split_1/ReadVariableOp×
lstm_cell_111/split_1Split(lstm_cell_111/split_1/split_dim:output:0,lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_111/split_1«
lstm_cell_111/BiasAddBiasAddlstm_cell_111/MatMul:product:0lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd±
lstm_cell_111/BiasAdd_1BiasAdd lstm_cell_111/MatMul_1:product:0lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_1±
lstm_cell_111/BiasAdd_2BiasAdd lstm_cell_111/MatMul_2:product:0lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_2±
lstm_cell_111/BiasAdd_3BiasAdd lstm_cell_111/MatMul_3:product:0lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_3
lstm_cell_111/mulMulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul
lstm_cell_111/mul_1Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_1
lstm_cell_111/mul_2Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_2
lstm_cell_111/mul_3Mulzeros:output:0 lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_3£
lstm_cell_111/ReadVariableOpReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_111/ReadVariableOp
!lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_111/strided_slice/stack
#lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice/stack_1
#lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_111/strided_slice/stack_2Š
lstm_cell_111/strided_sliceStridedSlice$lstm_cell_111/ReadVariableOp:value:0*lstm_cell_111/strided_slice/stack:output:0,lstm_cell_111/strided_slice/stack_1:output:0,lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice©
lstm_cell_111/MatMul_4MatMullstm_cell_111/mul:z:0$lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_4£
lstm_cell_111/addAddV2lstm_cell_111/BiasAdd:output:0 lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add
lstm_cell_111/SigmoidSigmoidlstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid§
lstm_cell_111/ReadVariableOp_1ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_1
#lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice_1/stack
%lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_111/strided_slice_1/stack_1
%lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_1/stack_2Ü
lstm_cell_111/strided_slice_1StridedSlice&lstm_cell_111/ReadVariableOp_1:value:0,lstm_cell_111/strided_slice_1/stack:output:0.lstm_cell_111/strided_slice_1/stack_1:output:0.lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_1­
lstm_cell_111/MatMul_5MatMullstm_cell_111/mul_1:z:0&lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_5©
lstm_cell_111/add_1AddV2 lstm_cell_111/BiasAdd_1:output:0 lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_1
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_1
lstm_cell_111/mul_4Mullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_4§
lstm_cell_111/ReadVariableOp_2ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_2
#lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_111/strided_slice_2/stack
%lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_111/strided_slice_2/stack_1
%lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_2/stack_2Ü
lstm_cell_111/strided_slice_2StridedSlice&lstm_cell_111/ReadVariableOp_2:value:0,lstm_cell_111/strided_slice_2/stack:output:0.lstm_cell_111/strided_slice_2/stack_1:output:0.lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_2­
lstm_cell_111/MatMul_6MatMullstm_cell_111/mul_2:z:0&lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_6©
lstm_cell_111/add_2AddV2 lstm_cell_111/BiasAdd_2:output:0 lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_2{
lstm_cell_111/ReluRelulstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu 
lstm_cell_111/mul_5Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_5
lstm_cell_111/add_3AddV2lstm_cell_111/mul_4:z:0lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_3§
lstm_cell_111/ReadVariableOp_3ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_3
#lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_111/strided_slice_3/stack
%lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_111/strided_slice_3/stack_1
%lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_3/stack_2Ü
lstm_cell_111/strided_slice_3StridedSlice&lstm_cell_111/ReadVariableOp_3:value:0,lstm_cell_111/strided_slice_3/stack:output:0.lstm_cell_111/strided_slice_3/stack_1:output:0.lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_3­
lstm_cell_111/MatMul_7MatMullstm_cell_111/mul_3:z:0&lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_7©
lstm_cell_111/add_4AddV2 lstm_cell_111/BiasAdd_3:output:0 lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_4
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_2
lstm_cell_111/Relu_1Relulstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu_1¤
lstm_cell_111/mul_6Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_111_split_readvariableop_resource-lstm_cell_111_split_1_readvariableop_resource%lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3548455*
condR
while_cond_3548454*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeč
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm„
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeļ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityę
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_111/ReadVariableOp^lstm_cell_111/ReadVariableOp_1^lstm_cell_111/ReadVariableOp_2^lstm_cell_111/ReadVariableOp_3#^lstm_cell_111/split/ReadVariableOp%^lstm_cell_111/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_111/ReadVariableOplstm_cell_111/ReadVariableOp2@
lstm_cell_111/ReadVariableOp_1lstm_cell_111/ReadVariableOp_12@
lstm_cell_111/ReadVariableOp_2lstm_cell_111/ReadVariableOp_22@
lstm_cell_111/ReadVariableOp_3lstm_cell_111/ReadVariableOp_32H
"lstm_cell_111/split/ReadVariableOp"lstm_cell_111/split/ReadVariableOp2L
$lstm_cell_111/split_1/ReadVariableOp$lstm_cell_111/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

±	
while_body_3547905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_111_split_readvariableop_resource_0:	D
5while_lstm_cell_111_split_1_readvariableop_resource_0:	@
-while_lstm_cell_111_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_111_split_readvariableop_resource:	B
3while_lstm_cell_111_split_1_readvariableop_resource:	>
+while_lstm_cell_111_readvariableop_resource:	 ¢"while/lstm_cell_111/ReadVariableOp¢$while/lstm_cell_111/ReadVariableOp_1¢$while/lstm_cell_111/ReadVariableOp_2¢$while/lstm_cell_111/ReadVariableOp_3¢(while/lstm_cell_111/split/ReadVariableOp¢*while/lstm_cell_111/split_1/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_111/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_111/ones_like/Shape
#while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_111/ones_like/ConstŌ
while/lstm_cell_111/ones_likeFill,while/lstm_cell_111/ones_like/Shape:output:0,while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/ones_like
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_111/split/split_dimÉ
(while/lstm_cell_111/split/ReadVariableOpReadVariableOp3while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_111/split/ReadVariableOp÷
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:00while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_111/splitŹ
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMulĪ
while/lstm_cell_111/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_1Ī
while/lstm_cell_111/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_2Ī
while/lstm_cell_111/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_3
%while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_111/split_1/split_dimĖ
*while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_111/split_1/ReadVariableOpļ
while/lstm_cell_111/split_1Split.while/lstm_cell_111/split_1/split_dim:output:02while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_111/split_1Ć
while/lstm_cell_111/BiasAddBiasAdd$while/lstm_cell_111/MatMul:product:0$while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAddÉ
while/lstm_cell_111/BiasAdd_1BiasAdd&while/lstm_cell_111/MatMul_1:product:0$while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_1É
while/lstm_cell_111/BiasAdd_2BiasAdd&while/lstm_cell_111/MatMul_2:product:0$while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_2É
while/lstm_cell_111/BiasAdd_3BiasAdd&while/lstm_cell_111/MatMul_3:product:0$while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_3Ø
while/lstm_cell_111/mulMulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul¬
while/lstm_cell_111/mul_1Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_1¬
while/lstm_cell_111/mul_2Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_2¬
while/lstm_cell_111/mul_3Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_3·
"while/lstm_cell_111/ReadVariableOpReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_111/ReadVariableOp£
'while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_111/strided_slice/stack§
)while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice/stack_1§
)while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_111/strided_slice/stack_2ō
!while/lstm_cell_111/strided_sliceStridedSlice*while/lstm_cell_111/ReadVariableOp:value:00while/lstm_cell_111/strided_slice/stack:output:02while/lstm_cell_111/strided_slice/stack_1:output:02while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_111/strided_sliceĮ
while/lstm_cell_111/MatMul_4MatMulwhile/lstm_cell_111/mul:z:0*while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_4»
while/lstm_cell_111/addAddV2$while/lstm_cell_111/BiasAdd:output:0&while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add
while/lstm_cell_111/SigmoidSigmoidwhile/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid»
$while/lstm_cell_111/ReadVariableOp_1ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_1§
)while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice_1/stack«
+while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_111/strided_slice_1/stack_1«
+while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_1/stack_2
#while/lstm_cell_111/strided_slice_1StridedSlice,while/lstm_cell_111/ReadVariableOp_1:value:02while/lstm_cell_111/strided_slice_1/stack:output:04while/lstm_cell_111/strided_slice_1/stack_1:output:04while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_1Å
while/lstm_cell_111/MatMul_5MatMulwhile/lstm_cell_111/mul_1:z:0,while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_5Į
while/lstm_cell_111/add_1AddV2&while/lstm_cell_111/BiasAdd_1:output:0&while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_1
while/lstm_cell_111/Sigmoid_1Sigmoidwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_1§
while/lstm_cell_111/mul_4Mul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_4»
$while/lstm_cell_111/ReadVariableOp_2ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_2§
)while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_111/strided_slice_2/stack«
+while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_111/strided_slice_2/stack_1«
+while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_2/stack_2
#while/lstm_cell_111/strided_slice_2StridedSlice,while/lstm_cell_111/ReadVariableOp_2:value:02while/lstm_cell_111/strided_slice_2/stack:output:04while/lstm_cell_111/strided_slice_2/stack_1:output:04while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_2Å
while/lstm_cell_111/MatMul_6MatMulwhile/lstm_cell_111/mul_2:z:0,while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_6Į
while/lstm_cell_111/add_2AddV2&while/lstm_cell_111/BiasAdd_2:output:0&while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_2
while/lstm_cell_111/ReluReluwhile/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Reluø
while/lstm_cell_111/mul_5Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_5Æ
while/lstm_cell_111/add_3AddV2while/lstm_cell_111/mul_4:z:0while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_3»
$while/lstm_cell_111/ReadVariableOp_3ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_3§
)while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_111/strided_slice_3/stack«
+while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_111/strided_slice_3/stack_1«
+while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_3/stack_2
#while/lstm_cell_111/strided_slice_3StridedSlice,while/lstm_cell_111/ReadVariableOp_3:value:02while/lstm_cell_111/strided_slice_3/stack:output:04while/lstm_cell_111/strided_slice_3/stack_1:output:04while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_3Å
while/lstm_cell_111/MatMul_7MatMulwhile/lstm_cell_111/mul_3:z:0,while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_7Į
while/lstm_cell_111/add_4AddV2&while/lstm_cell_111/BiasAdd_3:output:0&while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_4
while/lstm_cell_111/Sigmoid_2Sigmoidwhile/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_2
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Relu_1¼
while/lstm_cell_111/mul_6Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_6į
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_111/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5Ģ

while/NoOpNoOp#^while/lstm_cell_111/ReadVariableOp%^while/lstm_cell_111/ReadVariableOp_1%^while/lstm_cell_111/ReadVariableOp_2%^while/lstm_cell_111/ReadVariableOp_3)^while/lstm_cell_111/split/ReadVariableOp+^while/lstm_cell_111/split_1/ReadVariableOp*"
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
+while_lstm_cell_111_readvariableop_resource-while_lstm_cell_111_readvariableop_resource_0"l
3while_lstm_cell_111_split_1_readvariableop_resource5while_lstm_cell_111_split_1_readvariableop_resource_0"h
1while_lstm_cell_111_split_readvariableop_resource3while_lstm_cell_111_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2H
"while/lstm_cell_111/ReadVariableOp"while/lstm_cell_111/ReadVariableOp2L
$while/lstm_cell_111/ReadVariableOp_1$while/lstm_cell_111/ReadVariableOp_12L
$while/lstm_cell_111/ReadVariableOp_2$while/lstm_cell_111/ReadVariableOp_22L
$while/lstm_cell_111/ReadVariableOp_3$while/lstm_cell_111/ReadVariableOp_32T
(while/lstm_cell_111/split/ReadVariableOp(while/lstm_cell_111/split/ReadVariableOp2X
*while/lstm_cell_111/split_1/ReadVariableOp*while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
õ

+__inference_dense_135_layer_call_fn_3548930

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
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_35464972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
õ

+__inference_dense_134_layer_call_fn_3548904

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
:’’’’’’’’’ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_35464752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
Ć
	
"__inference__wrapped_model_3545423
input_46U
Bsequential_45_lstm_111_lstm_cell_111_split_readvariableop_resource:	S
Dsequential_45_lstm_111_lstm_cell_111_split_1_readvariableop_resource:	O
<sequential_45_lstm_111_lstm_cell_111_readvariableop_resource:	 H
6sequential_45_dense_134_matmul_readvariableop_resource:  E
7sequential_45_dense_134_biasadd_readvariableop_resource: H
6sequential_45_dense_135_matmul_readvariableop_resource: E
7sequential_45_dense_135_biasadd_readvariableop_resource:
identity¢.sequential_45/dense_134/BiasAdd/ReadVariableOp¢-sequential_45/dense_134/MatMul/ReadVariableOp¢.sequential_45/dense_135/BiasAdd/ReadVariableOp¢-sequential_45/dense_135/MatMul/ReadVariableOp¢3sequential_45/lstm_111/lstm_cell_111/ReadVariableOp¢5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_1¢5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_2¢5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_3¢9sequential_45/lstm_111/lstm_cell_111/split/ReadVariableOp¢;sequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOp¢sequential_45/lstm_111/whilet
sequential_45/lstm_111/ShapeShapeinput_46*
T0*
_output_shapes
:2
sequential_45/lstm_111/Shape¢
*sequential_45/lstm_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_45/lstm_111/strided_slice/stack¦
,sequential_45/lstm_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_45/lstm_111/strided_slice/stack_1¦
,sequential_45/lstm_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_45/lstm_111/strided_slice/stack_2ģ
$sequential_45/lstm_111/strided_sliceStridedSlice%sequential_45/lstm_111/Shape:output:03sequential_45/lstm_111/strided_slice/stack:output:05sequential_45/lstm_111/strided_slice/stack_1:output:05sequential_45/lstm_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_45/lstm_111/strided_slice
"sequential_45/lstm_111/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_45/lstm_111/zeros/mul/yČ
 sequential_45/lstm_111/zeros/mulMul-sequential_45/lstm_111/strided_slice:output:0+sequential_45/lstm_111/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_45/lstm_111/zeros/mul
#sequential_45/lstm_111/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2%
#sequential_45/lstm_111/zeros/Less/yĆ
!sequential_45/lstm_111/zeros/LessLess$sequential_45/lstm_111/zeros/mul:z:0,sequential_45/lstm_111/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_45/lstm_111/zeros/Less
%sequential_45/lstm_111/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_45/lstm_111/zeros/packed/1ß
#sequential_45/lstm_111/zeros/packedPack-sequential_45/lstm_111/strided_slice:output:0.sequential_45/lstm_111/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_45/lstm_111/zeros/packed
"sequential_45/lstm_111/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_45/lstm_111/zeros/ConstŃ
sequential_45/lstm_111/zerosFill,sequential_45/lstm_111/zeros/packed:output:0+sequential_45/lstm_111/zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
sequential_45/lstm_111/zeros
$sequential_45/lstm_111/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_45/lstm_111/zeros_1/mul/yĪ
"sequential_45/lstm_111/zeros_1/mulMul-sequential_45/lstm_111/strided_slice:output:0-sequential_45/lstm_111/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_45/lstm_111/zeros_1/mul
%sequential_45/lstm_111/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2'
%sequential_45/lstm_111/zeros_1/Less/yĖ
#sequential_45/lstm_111/zeros_1/LessLess&sequential_45/lstm_111/zeros_1/mul:z:0.sequential_45/lstm_111/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_45/lstm_111/zeros_1/Less
'sequential_45/lstm_111/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_45/lstm_111/zeros_1/packed/1å
%sequential_45/lstm_111/zeros_1/packedPack-sequential_45/lstm_111/strided_slice:output:00sequential_45/lstm_111/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_45/lstm_111/zeros_1/packed
$sequential_45/lstm_111/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_45/lstm_111/zeros_1/ConstŁ
sequential_45/lstm_111/zeros_1Fill.sequential_45/lstm_111/zeros_1/packed:output:0-sequential_45/lstm_111/zeros_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2 
sequential_45/lstm_111/zeros_1£
%sequential_45/lstm_111/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_45/lstm_111/transpose/permĮ
 sequential_45/lstm_111/transpose	Transposeinput_46.sequential_45/lstm_111/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’2"
 sequential_45/lstm_111/transpose
sequential_45/lstm_111/Shape_1Shape$sequential_45/lstm_111/transpose:y:0*
T0*
_output_shapes
:2 
sequential_45/lstm_111/Shape_1¦
,sequential_45/lstm_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_45/lstm_111/strided_slice_1/stackŖ
.sequential_45/lstm_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/lstm_111/strided_slice_1/stack_1Ŗ
.sequential_45/lstm_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/lstm_111/strided_slice_1/stack_2ų
&sequential_45/lstm_111/strided_slice_1StridedSlice'sequential_45/lstm_111/Shape_1:output:05sequential_45/lstm_111/strided_slice_1/stack:output:07sequential_45/lstm_111/strided_slice_1/stack_1:output:07sequential_45/lstm_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_45/lstm_111/strided_slice_1³
2sequential_45/lstm_111/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’24
2sequential_45/lstm_111/TensorArrayV2/element_shape
$sequential_45/lstm_111/TensorArrayV2TensorListReserve;sequential_45/lstm_111/TensorArrayV2/element_shape:output:0/sequential_45/lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_45/lstm_111/TensorArrayV2ķ
Lsequential_45/lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2N
Lsequential_45/lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeŌ
>sequential_45/lstm_111/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_45/lstm_111/transpose:y:0Usequential_45/lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_45/lstm_111/TensorArrayUnstack/TensorListFromTensor¦
,sequential_45/lstm_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_45/lstm_111/strided_slice_2/stackŖ
.sequential_45/lstm_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/lstm_111/strided_slice_2/stack_1Ŗ
.sequential_45/lstm_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/lstm_111/strided_slice_2/stack_2
&sequential_45/lstm_111/strided_slice_2StridedSlice$sequential_45/lstm_111/transpose:y:05sequential_45/lstm_111/strided_slice_2/stack:output:07sequential_45/lstm_111/strided_slice_2/stack_1:output:07sequential_45/lstm_111/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2(
&sequential_45/lstm_111/strided_slice_2Į
4sequential_45/lstm_111/lstm_cell_111/ones_like/ShapeShape%sequential_45/lstm_111/zeros:output:0*
T0*
_output_shapes
:26
4sequential_45/lstm_111/lstm_cell_111/ones_like/Shape±
4sequential_45/lstm_111/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4sequential_45/lstm_111/lstm_cell_111/ones_like/Const
.sequential_45/lstm_111/lstm_cell_111/ones_likeFill=sequential_45/lstm_111/lstm_cell_111/ones_like/Shape:output:0=sequential_45/lstm_111/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/lstm_cell_111/ones_like®
4sequential_45/lstm_111/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_45/lstm_111/lstm_cell_111/split/split_dimś
9sequential_45/lstm_111/lstm_cell_111/split/ReadVariableOpReadVariableOpBsequential_45_lstm_111_lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02;
9sequential_45/lstm_111/lstm_cell_111/split/ReadVariableOp»
*sequential_45/lstm_111/lstm_cell_111/splitSplit=sequential_45/lstm_111/lstm_cell_111/split/split_dim:output:0Asequential_45/lstm_111/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2,
*sequential_45/lstm_111/lstm_cell_111/splitü
+sequential_45/lstm_111/lstm_cell_111/MatMulMatMul/sequential_45/lstm_111/strided_slice_2:output:03sequential_45/lstm_111/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2-
+sequential_45/lstm_111/lstm_cell_111/MatMul
-sequential_45/lstm_111/lstm_cell_111/MatMul_1MatMul/sequential_45/lstm_111/strided_slice_2:output:03sequential_45/lstm_111/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_1
-sequential_45/lstm_111/lstm_cell_111/MatMul_2MatMul/sequential_45/lstm_111/strided_slice_2:output:03sequential_45/lstm_111/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_2
-sequential_45/lstm_111/lstm_cell_111/MatMul_3MatMul/sequential_45/lstm_111/strided_slice_2:output:03sequential_45/lstm_111/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_3²
6sequential_45/lstm_111/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 28
6sequential_45/lstm_111/lstm_cell_111/split_1/split_dimü
;sequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOpReadVariableOpDsequential_45_lstm_111_lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOp³
,sequential_45/lstm_111/lstm_cell_111/split_1Split?sequential_45/lstm_111/lstm_cell_111/split_1/split_dim:output:0Csequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2.
,sequential_45/lstm_111/lstm_cell_111/split_1
,sequential_45/lstm_111/lstm_cell_111/BiasAddBiasAdd5sequential_45/lstm_111/lstm_cell_111/MatMul:product:05sequential_45/lstm_111/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2.
,sequential_45/lstm_111/lstm_cell_111/BiasAdd
.sequential_45/lstm_111/lstm_cell_111/BiasAdd_1BiasAdd7sequential_45/lstm_111/lstm_cell_111/MatMul_1:product:05sequential_45/lstm_111/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/lstm_cell_111/BiasAdd_1
.sequential_45/lstm_111/lstm_cell_111/BiasAdd_2BiasAdd7sequential_45/lstm_111/lstm_cell_111/MatMul_2:product:05sequential_45/lstm_111/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/lstm_cell_111/BiasAdd_2
.sequential_45/lstm_111/lstm_cell_111/BiasAdd_3BiasAdd7sequential_45/lstm_111/lstm_cell_111/MatMul_3:product:05sequential_45/lstm_111/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/lstm_cell_111/BiasAdd_3ķ
(sequential_45/lstm_111/lstm_cell_111/mulMul%sequential_45/lstm_111/zeros:output:07sequential_45/lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2*
(sequential_45/lstm_111/lstm_cell_111/mulń
*sequential_45/lstm_111/lstm_cell_111/mul_1Mul%sequential_45/lstm_111/zeros:output:07sequential_45/lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/mul_1ń
*sequential_45/lstm_111/lstm_cell_111/mul_2Mul%sequential_45/lstm_111/zeros:output:07sequential_45/lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/mul_2ń
*sequential_45/lstm_111/lstm_cell_111/mul_3Mul%sequential_45/lstm_111/zeros:output:07sequential_45/lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/mul_3č
3sequential_45/lstm_111/lstm_cell_111/ReadVariableOpReadVariableOp<sequential_45_lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_45/lstm_111/lstm_cell_111/ReadVariableOpÅ
8sequential_45/lstm_111/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_45/lstm_111/lstm_cell_111/strided_slice/stackÉ
:sequential_45/lstm_111/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_45/lstm_111/lstm_cell_111/strided_slice/stack_1É
:sequential_45/lstm_111/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_45/lstm_111/lstm_cell_111/strided_slice/stack_2Ś
2sequential_45/lstm_111/lstm_cell_111/strided_sliceStridedSlice;sequential_45/lstm_111/lstm_cell_111/ReadVariableOp:value:0Asequential_45/lstm_111/lstm_cell_111/strided_slice/stack:output:0Csequential_45/lstm_111/lstm_cell_111/strided_slice/stack_1:output:0Csequential_45/lstm_111/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_45/lstm_111/lstm_cell_111/strided_slice
-sequential_45/lstm_111/lstm_cell_111/MatMul_4MatMul,sequential_45/lstm_111/lstm_cell_111/mul:z:0;sequential_45/lstm_111/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_4’
(sequential_45/lstm_111/lstm_cell_111/addAddV25sequential_45/lstm_111/lstm_cell_111/BiasAdd:output:07sequential_45/lstm_111/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2*
(sequential_45/lstm_111/lstm_cell_111/addĒ
,sequential_45/lstm_111/lstm_cell_111/SigmoidSigmoid,sequential_45/lstm_111/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2.
,sequential_45/lstm_111/lstm_cell_111/Sigmoidģ
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_1ReadVariableOp<sequential_45_lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_1É
:sequential_45/lstm_111/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_45/lstm_111/lstm_cell_111/strided_slice_1/stackĶ
<sequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2>
<sequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack_1Ķ
<sequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack_2ę
4sequential_45/lstm_111/lstm_cell_111/strided_slice_1StridedSlice=sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_1:value:0Csequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack:output:0Esequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack_1:output:0Esequential_45/lstm_111/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_45/lstm_111/lstm_cell_111/strided_slice_1
-sequential_45/lstm_111/lstm_cell_111/MatMul_5MatMul.sequential_45/lstm_111/lstm_cell_111/mul_1:z:0=sequential_45/lstm_111/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_5
*sequential_45/lstm_111/lstm_cell_111/add_1AddV27sequential_45/lstm_111/lstm_cell_111/BiasAdd_1:output:07sequential_45/lstm_111/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/add_1Ķ
.sequential_45/lstm_111/lstm_cell_111/Sigmoid_1Sigmoid.sequential_45/lstm_111/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/lstm_cell_111/Sigmoid_1ī
*sequential_45/lstm_111/lstm_cell_111/mul_4Mul2sequential_45/lstm_111/lstm_cell_111/Sigmoid_1:y:0'sequential_45/lstm_111/zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/mul_4ģ
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_2ReadVariableOp<sequential_45_lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_2É
:sequential_45/lstm_111/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_45/lstm_111/lstm_cell_111/strided_slice_2/stackĶ
<sequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2>
<sequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack_1Ķ
<sequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack_2ę
4sequential_45/lstm_111/lstm_cell_111/strided_slice_2StridedSlice=sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_2:value:0Csequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack:output:0Esequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack_1:output:0Esequential_45/lstm_111/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_45/lstm_111/lstm_cell_111/strided_slice_2
-sequential_45/lstm_111/lstm_cell_111/MatMul_6MatMul.sequential_45/lstm_111/lstm_cell_111/mul_2:z:0=sequential_45/lstm_111/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_6
*sequential_45/lstm_111/lstm_cell_111/add_2AddV27sequential_45/lstm_111/lstm_cell_111/BiasAdd_2:output:07sequential_45/lstm_111/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/add_2Ą
)sequential_45/lstm_111/lstm_cell_111/ReluRelu.sequential_45/lstm_111/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2+
)sequential_45/lstm_111/lstm_cell_111/Reluü
*sequential_45/lstm_111/lstm_cell_111/mul_5Mul0sequential_45/lstm_111/lstm_cell_111/Sigmoid:y:07sequential_45/lstm_111/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/mul_5ó
*sequential_45/lstm_111/lstm_cell_111/add_3AddV2.sequential_45/lstm_111/lstm_cell_111/mul_4:z:0.sequential_45/lstm_111/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/add_3ģ
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_3ReadVariableOp<sequential_45_lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_3É
:sequential_45/lstm_111/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_45/lstm_111/lstm_cell_111/strided_slice_3/stackĶ
<sequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack_1Ķ
<sequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack_2ę
4sequential_45/lstm_111/lstm_cell_111/strided_slice_3StridedSlice=sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_3:value:0Csequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack:output:0Esequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack_1:output:0Esequential_45/lstm_111/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_45/lstm_111/lstm_cell_111/strided_slice_3
-sequential_45/lstm_111/lstm_cell_111/MatMul_7MatMul.sequential_45/lstm_111/lstm_cell_111/mul_3:z:0=sequential_45/lstm_111/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-sequential_45/lstm_111/lstm_cell_111/MatMul_7
*sequential_45/lstm_111/lstm_cell_111/add_4AddV27sequential_45/lstm_111/lstm_cell_111/BiasAdd_3:output:07sequential_45/lstm_111/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/add_4Ķ
.sequential_45/lstm_111/lstm_cell_111/Sigmoid_2Sigmoid.sequential_45/lstm_111/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 20
.sequential_45/lstm_111/lstm_cell_111/Sigmoid_2Ä
+sequential_45/lstm_111/lstm_cell_111/Relu_1Relu.sequential_45/lstm_111/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2-
+sequential_45/lstm_111/lstm_cell_111/Relu_1
*sequential_45/lstm_111/lstm_cell_111/mul_6Mul2sequential_45/lstm_111/lstm_cell_111/Sigmoid_2:y:09sequential_45/lstm_111/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*sequential_45/lstm_111/lstm_cell_111/mul_6½
4sequential_45/lstm_111/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    26
4sequential_45/lstm_111/TensorArrayV2_1/element_shape
&sequential_45/lstm_111/TensorArrayV2_1TensorListReserve=sequential_45/lstm_111/TensorArrayV2_1/element_shape:output:0/sequential_45/lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_45/lstm_111/TensorArrayV2_1|
sequential_45/lstm_111/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_45/lstm_111/time­
/sequential_45/lstm_111/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’21
/sequential_45/lstm_111/while/maximum_iterations
)sequential_45/lstm_111/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_45/lstm_111/while/loop_counterß
sequential_45/lstm_111/whileWhile2sequential_45/lstm_111/while/loop_counter:output:08sequential_45/lstm_111/while/maximum_iterations:output:0$sequential_45/lstm_111/time:output:0/sequential_45/lstm_111/TensorArrayV2_1:handle:0%sequential_45/lstm_111/zeros:output:0'sequential_45/lstm_111/zeros_1:output:0/sequential_45/lstm_111/strided_slice_1:output:0Nsequential_45/lstm_111/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_45_lstm_111_lstm_cell_111_split_readvariableop_resourceDsequential_45_lstm_111_lstm_cell_111_split_1_readvariableop_resource<sequential_45_lstm_111_lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_45_lstm_111_while_body_3545274*5
cond-R+
)sequential_45_lstm_111_while_cond_3545273*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
sequential_45/lstm_111/whileć
Gsequential_45/lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2I
Gsequential_45/lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeÄ
9sequential_45/lstm_111/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_45/lstm_111/while:output:3Psequential_45/lstm_111/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02;
9sequential_45/lstm_111/TensorArrayV2Stack/TensorListStackÆ
,sequential_45/lstm_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2.
,sequential_45/lstm_111/strided_slice_3/stackŖ
.sequential_45/lstm_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_45/lstm_111/strided_slice_3/stack_1Ŗ
.sequential_45/lstm_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/lstm_111/strided_slice_3/stack_2¤
&sequential_45/lstm_111/strided_slice_3StridedSliceBsequential_45/lstm_111/TensorArrayV2Stack/TensorListStack:tensor:05sequential_45/lstm_111/strided_slice_3/stack:output:07sequential_45/lstm_111/strided_slice_3/stack_1:output:07sequential_45/lstm_111/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’ *
shrink_axis_mask2(
&sequential_45/lstm_111/strided_slice_3§
'sequential_45/lstm_111/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_45/lstm_111/transpose_1/perm
"sequential_45/lstm_111/transpose_1	TransposeBsequential_45/lstm_111/TensorArrayV2Stack/TensorListStack:tensor:00sequential_45/lstm_111/transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2$
"sequential_45/lstm_111/transpose_1
sequential_45/lstm_111/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_45/lstm_111/runtimeÕ
-sequential_45/dense_134/MatMul/ReadVariableOpReadVariableOp6sequential_45_dense_134_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_45/dense_134/MatMul/ReadVariableOpä
sequential_45/dense_134/MatMulMatMul/sequential_45/lstm_111/strided_slice_3:output:05sequential_45/dense_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2 
sequential_45/dense_134/MatMulŌ
.sequential_45/dense_134/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_dense_134_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_45/dense_134/BiasAdd/ReadVariableOpį
sequential_45/dense_134/BiasAddBiasAdd(sequential_45/dense_134/MatMul:product:06sequential_45/dense_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
sequential_45/dense_134/BiasAdd 
sequential_45/dense_134/ReluRelu(sequential_45/dense_134/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
sequential_45/dense_134/ReluÕ
-sequential_45/dense_135/MatMul/ReadVariableOpReadVariableOp6sequential_45_dense_135_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_45/dense_135/MatMul/ReadVariableOpß
sequential_45/dense_135/MatMulMatMul*sequential_45/dense_134/Relu:activations:05sequential_45/dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2 
sequential_45/dense_135/MatMulŌ
.sequential_45/dense_135/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_45/dense_135/BiasAdd/ReadVariableOpį
sequential_45/dense_135/BiasAddBiasAdd(sequential_45/dense_135/MatMul:product:06sequential_45/dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2!
sequential_45/dense_135/BiasAdd
sequential_45/reshape_67/ShapeShape(sequential_45/dense_135/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_45/reshape_67/Shape¦
,sequential_45/reshape_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_45/reshape_67/strided_slice/stackŖ
.sequential_45/reshape_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/reshape_67/strided_slice/stack_1Ŗ
.sequential_45/reshape_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_45/reshape_67/strided_slice/stack_2ų
&sequential_45/reshape_67/strided_sliceStridedSlice'sequential_45/reshape_67/Shape:output:05sequential_45/reshape_67/strided_slice/stack:output:07sequential_45/reshape_67/strided_slice/stack_1:output:07sequential_45/reshape_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_45/reshape_67/strided_slice
(sequential_45/reshape_67/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_45/reshape_67/Reshape/shape/1
(sequential_45/reshape_67/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_45/reshape_67/Reshape/shape/2
&sequential_45/reshape_67/Reshape/shapePack/sequential_45/reshape_67/strided_slice:output:01sequential_45/reshape_67/Reshape/shape/1:output:01sequential_45/reshape_67/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_45/reshape_67/Reshape/shapeą
 sequential_45/reshape_67/ReshapeReshape(sequential_45/dense_135/BiasAdd:output:0/sequential_45/reshape_67/Reshape/shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’2"
 sequential_45/reshape_67/Reshape
IdentityIdentity)sequential_45/reshape_67/Reshape:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp/^sequential_45/dense_134/BiasAdd/ReadVariableOp.^sequential_45/dense_134/MatMul/ReadVariableOp/^sequential_45/dense_135/BiasAdd/ReadVariableOp.^sequential_45/dense_135/MatMul/ReadVariableOp4^sequential_45/lstm_111/lstm_cell_111/ReadVariableOp6^sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_16^sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_26^sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_3:^sequential_45/lstm_111/lstm_cell_111/split/ReadVariableOp<^sequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOp^sequential_45/lstm_111/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2`
.sequential_45/dense_134/BiasAdd/ReadVariableOp.sequential_45/dense_134/BiasAdd/ReadVariableOp2^
-sequential_45/dense_134/MatMul/ReadVariableOp-sequential_45/dense_134/MatMul/ReadVariableOp2`
.sequential_45/dense_135/BiasAdd/ReadVariableOp.sequential_45/dense_135/BiasAdd/ReadVariableOp2^
-sequential_45/dense_135/MatMul/ReadVariableOp-sequential_45/dense_135/MatMul/ReadVariableOp2j
3sequential_45/lstm_111/lstm_cell_111/ReadVariableOp3sequential_45/lstm_111/lstm_cell_111/ReadVariableOp2n
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_15sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_12n
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_25sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_22n
5sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_35sequential_45/lstm_111/lstm_cell_111/ReadVariableOp_32v
9sequential_45/lstm_111/lstm_cell_111/split/ReadVariableOp9sequential_45/lstm_111/lstm_cell_111/split/ReadVariableOp2z
;sequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOp;sequential_45/lstm_111/lstm_cell_111/split_1/ReadVariableOp2<
sequential_45/lstm_111/whilesequential_45/lstm_111/while:U Q
+
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_46
ø	
 
%__inference_signature_wrapper_3547101
input_46
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_46unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_35454232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_46
Ś
Č
while_cond_3548454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3548454___redundant_placeholder05
1while_while_cond_3548454___redundant_placeholder15
1while_while_cond_3548454___redundant_placeholder25
1while_while_cond_3548454___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
ūR
ķ
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3545547

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2

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
:’’’’’’’’’ 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
	BiasAdd_3_
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mulc
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_1c
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_2c
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2	
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
:’’’’’’’’’ 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
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
:’’’’’’’’’ 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
mul_6į
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:’’’’’’’’’:’’’’’’’’’ :’’’’’’’’’ : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:OK
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_namestates:OK
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_namestates
×R
Š
E__inference_lstm_111_layer_call_and_return_conditional_losses_3545636

inputs(
lstm_cell_111_3545548:	$
lstm_cell_111_3545550:	(
lstm_cell_111_3545552:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢%lstm_cell_111/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
 :’’’’’’’’’’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2§
%lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_111_3545548lstm_cell_111_3545550lstm_cell_111_3545552*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_35455472'
%lstm_cell_111/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterČ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_111_3545548lstm_cell_111_3545550lstm_cell_111_3545552*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3545561*
condR
while_cond_3545560*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeń
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
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
 :’’’’’’’’’’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŁ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_111_3545548*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

IdentityĄ
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp&^lstm_cell_111/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2N
%lstm_cell_111/StatefulPartitionedCall%lstm_cell_111/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
åÓ
ģ
lstm_111_while_body_3547552.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_3-
)lstm_111_while_lstm_111_strided_slice_1_0i
elstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_111_while_lstm_cell_111_split_readvariableop_resource_0:	M
>lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0:	I
6lstm_111_while_lstm_cell_111_readvariableop_resource_0:	 
lstm_111_while_identity
lstm_111_while_identity_1
lstm_111_while_identity_2
lstm_111_while_identity_3
lstm_111_while_identity_4
lstm_111_while_identity_5+
'lstm_111_while_lstm_111_strided_slice_1g
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorM
:lstm_111_while_lstm_cell_111_split_readvariableop_resource:	K
<lstm_111_while_lstm_cell_111_split_1_readvariableop_resource:	G
4lstm_111_while_lstm_cell_111_readvariableop_resource:	 ¢+lstm_111/while/lstm_cell_111/ReadVariableOp¢-lstm_111/while/lstm_cell_111/ReadVariableOp_1¢-lstm_111/while/lstm_cell_111/ReadVariableOp_2¢-lstm_111/while/lstm_cell_111/ReadVariableOp_3¢1lstm_111/while/lstm_cell_111/split/ReadVariableOp¢3lstm_111/while/lstm_cell_111/split_1/ReadVariableOpÕ
@lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2B
@lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_111/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0lstm_111_while_placeholderIlstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype024
2lstm_111/while/TensorArrayV2Read/TensorListGetItemØ
,lstm_111/while/lstm_cell_111/ones_like/ShapeShapelstm_111_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_111/while/lstm_cell_111/ones_like/Shape”
,lstm_111/while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_111/while/lstm_cell_111/ones_like/Constų
&lstm_111/while/lstm_cell_111/ones_likeFill5lstm_111/while/lstm_cell_111/ones_like/Shape:output:05lstm_111/while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/ones_like
*lstm_111/while/lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2,
*lstm_111/while/lstm_cell_111/dropout/Constó
(lstm_111/while/lstm_cell_111/dropout/MulMul/lstm_111/while/lstm_cell_111/ones_like:output:03lstm_111/while/lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2*
(lstm_111/while/lstm_cell_111/dropout/Mul·
*lstm_111/while/lstm_cell_111/dropout/ShapeShape/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_111/while/lstm_cell_111/dropout/ShapeØ
Alstm_111/while/lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform3lstm_111/while/lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2øō»2C
Alstm_111/while/lstm_cell_111/dropout/random_uniform/RandomUniformÆ
3lstm_111/while/lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_111/while/lstm_cell_111/dropout/GreaterEqual/y²
1lstm_111/while/lstm_cell_111/dropout/GreaterEqualGreaterEqualJlstm_111/while/lstm_cell_111/dropout/random_uniform/RandomUniform:output:0<lstm_111/while/lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 23
1lstm_111/while/lstm_cell_111/dropout/GreaterEqualÖ
)lstm_111/while/lstm_cell_111/dropout/CastCast5lstm_111/while/lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2+
)lstm_111/while/lstm_cell_111/dropout/Castī
*lstm_111/while/lstm_cell_111/dropout/Mul_1Mul,lstm_111/while/lstm_cell_111/dropout/Mul:z:0-lstm_111/while/lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*lstm_111/while/lstm_cell_111/dropout/Mul_1”
,lstm_111/while/lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2.
,lstm_111/while/lstm_cell_111/dropout_1/Constł
*lstm_111/while/lstm_cell_111/dropout_1/MulMul/lstm_111/while/lstm_cell_111/ones_like:output:05lstm_111/while/lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*lstm_111/while/lstm_cell_111/dropout_1/Mul»
,lstm_111/while/lstm_cell_111/dropout_1/ShapeShape/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_111/while/lstm_cell_111/dropout_1/Shape­
Clstm_111/while/lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform5lstm_111/while/lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2 ”y2E
Clstm_111/while/lstm_cell_111/dropout_1/random_uniform/RandomUniform³
5lstm_111/while/lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_111/while/lstm_cell_111/dropout_1/GreaterEqual/yŗ
3lstm_111/while/lstm_cell_111/dropout_1/GreaterEqualGreaterEqualLlstm_111/while/lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:0>lstm_111/while/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3lstm_111/while/lstm_cell_111/dropout_1/GreaterEqualÜ
+lstm_111/while/lstm_cell_111/dropout_1/CastCast7lstm_111/while/lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2-
+lstm_111/while/lstm_cell_111/dropout_1/Castö
,lstm_111/while/lstm_cell_111/dropout_1/Mul_1Mul.lstm_111/while/lstm_cell_111/dropout_1/Mul:z:0/lstm_111/while/lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2.
,lstm_111/while/lstm_cell_111/dropout_1/Mul_1”
,lstm_111/while/lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2.
,lstm_111/while/lstm_cell_111/dropout_2/Constł
*lstm_111/while/lstm_cell_111/dropout_2/MulMul/lstm_111/while/lstm_cell_111/ones_like:output:05lstm_111/while/lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*lstm_111/while/lstm_cell_111/dropout_2/Mul»
,lstm_111/while/lstm_cell_111/dropout_2/ShapeShape/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_111/while/lstm_cell_111/dropout_2/Shape®
Clstm_111/while/lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform5lstm_111/while/lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2į»2E
Clstm_111/while/lstm_cell_111/dropout_2/random_uniform/RandomUniform³
5lstm_111/while/lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_111/while/lstm_cell_111/dropout_2/GreaterEqual/yŗ
3lstm_111/while/lstm_cell_111/dropout_2/GreaterEqualGreaterEqualLlstm_111/while/lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:0>lstm_111/while/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3lstm_111/while/lstm_cell_111/dropout_2/GreaterEqualÜ
+lstm_111/while/lstm_cell_111/dropout_2/CastCast7lstm_111/while/lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2-
+lstm_111/while/lstm_cell_111/dropout_2/Castö
,lstm_111/while/lstm_cell_111/dropout_2/Mul_1Mul.lstm_111/while/lstm_cell_111/dropout_2/Mul:z:0/lstm_111/while/lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2.
,lstm_111/while/lstm_cell_111/dropout_2/Mul_1”
,lstm_111/while/lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2.
,lstm_111/while/lstm_cell_111/dropout_3/Constł
*lstm_111/while/lstm_cell_111/dropout_3/MulMul/lstm_111/while/lstm_cell_111/ones_like:output:05lstm_111/while/lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2,
*lstm_111/while/lstm_cell_111/dropout_3/Mul»
,lstm_111/while/lstm_cell_111/dropout_3/ShapeShape/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_111/while/lstm_cell_111/dropout_3/Shape®
Clstm_111/while/lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform5lstm_111/while/lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2½·2E
Clstm_111/while/lstm_cell_111/dropout_3/random_uniform/RandomUniform³
5lstm_111/while/lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_111/while/lstm_cell_111/dropout_3/GreaterEqual/yŗ
3lstm_111/while/lstm_cell_111/dropout_3/GreaterEqualGreaterEqualLlstm_111/while/lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:0>lstm_111/while/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 25
3lstm_111/while/lstm_cell_111/dropout_3/GreaterEqualÜ
+lstm_111/while/lstm_cell_111/dropout_3/CastCast7lstm_111/while/lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2-
+lstm_111/while/lstm_cell_111/dropout_3/Castö
,lstm_111/while/lstm_cell_111/dropout_3/Mul_1Mul.lstm_111/while/lstm_cell_111/dropout_3/Mul:z:0/lstm_111/while/lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2.
,lstm_111/while/lstm_cell_111/dropout_3/Mul_1
,lstm_111/while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_111/while/lstm_cell_111/split/split_dimä
1lstm_111/while/lstm_cell_111/split/ReadVariableOpReadVariableOp<lstm_111_while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_111/while/lstm_cell_111/split/ReadVariableOp
"lstm_111/while/lstm_cell_111/splitSplit5lstm_111/while/lstm_cell_111/split/split_dim:output:09lstm_111/while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2$
"lstm_111/while/lstm_cell_111/splitī
#lstm_111/while/lstm_cell_111/MatMulMatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#lstm_111/while/lstm_cell_111/MatMulņ
%lstm_111/while/lstm_cell_111/MatMul_1MatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_1ņ
%lstm_111/while/lstm_cell_111/MatMul_2MatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_2ņ
%lstm_111/while/lstm_cell_111/MatMul_3MatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_3¢
.lstm_111/while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.lstm_111/while/lstm_cell_111/split_1/split_dimę
3lstm_111/while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp>lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype025
3lstm_111/while/lstm_cell_111/split_1/ReadVariableOp
$lstm_111/while/lstm_cell_111/split_1Split7lstm_111/while/lstm_cell_111/split_1/split_dim:output:0;lstm_111/while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2&
$lstm_111/while/lstm_cell_111/split_1ē
$lstm_111/while/lstm_cell_111/BiasAddBiasAdd-lstm_111/while/lstm_cell_111/MatMul:product:0-lstm_111/while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/while/lstm_cell_111/BiasAddķ
&lstm_111/while/lstm_cell_111/BiasAdd_1BiasAdd/lstm_111/while/lstm_cell_111/MatMul_1:product:0-lstm_111/while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/BiasAdd_1ķ
&lstm_111/while/lstm_cell_111/BiasAdd_2BiasAdd/lstm_111/while/lstm_cell_111/MatMul_2:product:0-lstm_111/while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/BiasAdd_2ķ
&lstm_111/while/lstm_cell_111/BiasAdd_3BiasAdd/lstm_111/while/lstm_cell_111/MatMul_3:product:0-lstm_111/while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/BiasAdd_3Ė
 lstm_111/while/lstm_cell_111/mulMullstm_111_while_placeholder_2.lstm_111/while/lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/while/lstm_cell_111/mulŃ
"lstm_111/while/lstm_cell_111/mul_1Mullstm_111_while_placeholder_20lstm_111/while/lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_1Ń
"lstm_111/while/lstm_cell_111/mul_2Mullstm_111_while_placeholder_20lstm_111/while/lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_2Ń
"lstm_111/while/lstm_cell_111/mul_3Mullstm_111_while_placeholder_20lstm_111/while/lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_3Ņ
+lstm_111/while/lstm_cell_111/ReadVariableOpReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_111/while/lstm_cell_111/ReadVariableOpµ
0lstm_111/while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_111/while/lstm_cell_111/strided_slice/stack¹
2lstm_111/while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_111/while/lstm_cell_111/strided_slice/stack_1¹
2lstm_111/while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_111/while/lstm_cell_111/strided_slice/stack_2Ŗ
*lstm_111/while/lstm_cell_111/strided_sliceStridedSlice3lstm_111/while/lstm_cell_111/ReadVariableOp:value:09lstm_111/while/lstm_cell_111/strided_slice/stack:output:0;lstm_111/while/lstm_cell_111/strided_slice/stack_1:output:0;lstm_111/while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_111/while/lstm_cell_111/strided_sliceå
%lstm_111/while/lstm_cell_111/MatMul_4MatMul$lstm_111/while/lstm_cell_111/mul:z:03lstm_111/while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_4ß
 lstm_111/while/lstm_cell_111/addAddV2-lstm_111/while/lstm_cell_111/BiasAdd:output:0/lstm_111/while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/while/lstm_cell_111/addÆ
$lstm_111/while/lstm_cell_111/SigmoidSigmoid$lstm_111/while/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/while/lstm_cell_111/SigmoidÖ
-lstm_111/while/lstm_cell_111/ReadVariableOp_1ReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_111/while/lstm_cell_111/ReadVariableOp_1¹
2lstm_111/while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_111/while/lstm_cell_111/strided_slice_1/stack½
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   26
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_1½
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_2¶
,lstm_111/while/lstm_cell_111/strided_slice_1StridedSlice5lstm_111/while/lstm_cell_111/ReadVariableOp_1:value:0;lstm_111/while/lstm_cell_111/strided_slice_1/stack:output:0=lstm_111/while/lstm_cell_111/strided_slice_1/stack_1:output:0=lstm_111/while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_111/while/lstm_cell_111/strided_slice_1é
%lstm_111/while/lstm_cell_111/MatMul_5MatMul&lstm_111/while/lstm_cell_111/mul_1:z:05lstm_111/while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_5å
"lstm_111/while/lstm_cell_111/add_1AddV2/lstm_111/while/lstm_cell_111/BiasAdd_1:output:0/lstm_111/while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_1µ
&lstm_111/while/lstm_cell_111/Sigmoid_1Sigmoid&lstm_111/while/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/Sigmoid_1Ė
"lstm_111/while/lstm_cell_111/mul_4Mul*lstm_111/while/lstm_cell_111/Sigmoid_1:y:0lstm_111_while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_4Ö
-lstm_111/while/lstm_cell_111/ReadVariableOp_2ReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_111/while/lstm_cell_111/ReadVariableOp_2¹
2lstm_111/while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_111/while/lstm_cell_111/strided_slice_2/stack½
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   26
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_1½
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_2¶
,lstm_111/while/lstm_cell_111/strided_slice_2StridedSlice5lstm_111/while/lstm_cell_111/ReadVariableOp_2:value:0;lstm_111/while/lstm_cell_111/strided_slice_2/stack:output:0=lstm_111/while/lstm_cell_111/strided_slice_2/stack_1:output:0=lstm_111/while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_111/while/lstm_cell_111/strided_slice_2é
%lstm_111/while/lstm_cell_111/MatMul_6MatMul&lstm_111/while/lstm_cell_111/mul_2:z:05lstm_111/while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_6å
"lstm_111/while/lstm_cell_111/add_2AddV2/lstm_111/while/lstm_cell_111/BiasAdd_2:output:0/lstm_111/while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_2Ø
!lstm_111/while/lstm_cell_111/ReluRelu&lstm_111/while/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!lstm_111/while/lstm_cell_111/ReluÜ
"lstm_111/while/lstm_cell_111/mul_5Mul(lstm_111/while/lstm_cell_111/Sigmoid:y:0/lstm_111/while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_5Ó
"lstm_111/while/lstm_cell_111/add_3AddV2&lstm_111/while/lstm_cell_111/mul_4:z:0&lstm_111/while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_3Ö
-lstm_111/while/lstm_cell_111/ReadVariableOp_3ReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_111/while/lstm_cell_111/ReadVariableOp_3¹
2lstm_111/while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_111/while/lstm_cell_111/strided_slice_3/stack½
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_1½
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_2¶
,lstm_111/while/lstm_cell_111/strided_slice_3StridedSlice5lstm_111/while/lstm_cell_111/ReadVariableOp_3:value:0;lstm_111/while/lstm_cell_111/strided_slice_3/stack:output:0=lstm_111/while/lstm_cell_111/strided_slice_3/stack_1:output:0=lstm_111/while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_111/while/lstm_cell_111/strided_slice_3é
%lstm_111/while/lstm_cell_111/MatMul_7MatMul&lstm_111/while/lstm_cell_111/mul_3:z:05lstm_111/while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_7å
"lstm_111/while/lstm_cell_111/add_4AddV2/lstm_111/while/lstm_cell_111/BiasAdd_3:output:0/lstm_111/while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_4µ
&lstm_111/while/lstm_cell_111/Sigmoid_2Sigmoid&lstm_111/while/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/Sigmoid_2¬
#lstm_111/while/lstm_cell_111/Relu_1Relu&lstm_111/while/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#lstm_111/while/lstm_cell_111/Relu_1ą
"lstm_111/while/lstm_cell_111/mul_6Mul*lstm_111/while/lstm_cell_111/Sigmoid_2:y:01lstm_111/while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_6
3lstm_111/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_111_while_placeholder_1lstm_111_while_placeholder&lstm_111/while/lstm_cell_111/mul_6:z:0*
_output_shapes
: *
element_dtype025
3lstm_111/while/TensorArrayV2Write/TensorListSetItemn
lstm_111/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_111/while/add/y
lstm_111/while/addAddV2lstm_111_while_placeholderlstm_111/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_111/while/addr
lstm_111/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_111/while/add_1/y£
lstm_111/while/add_1AddV2*lstm_111_while_lstm_111_while_loop_counterlstm_111/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_111/while/add_1
lstm_111/while/IdentityIdentitylstm_111/while/add_1:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity«
lstm_111/while/Identity_1Identity0lstm_111_while_lstm_111_while_maximum_iterations^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity_1
lstm_111/while/Identity_2Identitylstm_111/while/add:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity_2¾
lstm_111/while/Identity_3IdentityClstm_111/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity_3²
lstm_111/while/Identity_4Identity&lstm_111/while/lstm_cell_111/mul_6:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/while/Identity_4²
lstm_111/while/Identity_5Identity&lstm_111/while/lstm_cell_111/add_3:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/while/Identity_5
lstm_111/while/NoOpNoOp,^lstm_111/while/lstm_cell_111/ReadVariableOp.^lstm_111/while/lstm_cell_111/ReadVariableOp_1.^lstm_111/while/lstm_cell_111/ReadVariableOp_2.^lstm_111/while/lstm_cell_111/ReadVariableOp_32^lstm_111/while/lstm_cell_111/split/ReadVariableOp4^lstm_111/while/lstm_cell_111/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_111/while/NoOp";
lstm_111_while_identity lstm_111/while/Identity:output:0"?
lstm_111_while_identity_1"lstm_111/while/Identity_1:output:0"?
lstm_111_while_identity_2"lstm_111/while/Identity_2:output:0"?
lstm_111_while_identity_3"lstm_111/while/Identity_3:output:0"?
lstm_111_while_identity_4"lstm_111/while/Identity_4:output:0"?
lstm_111_while_identity_5"lstm_111/while/Identity_5:output:0"T
'lstm_111_while_lstm_111_strided_slice_1)lstm_111_while_lstm_111_strided_slice_1_0"n
4lstm_111_while_lstm_cell_111_readvariableop_resource6lstm_111_while_lstm_cell_111_readvariableop_resource_0"~
<lstm_111_while_lstm_cell_111_split_1_readvariableop_resource>lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0"z
:lstm_111_while_lstm_cell_111_split_readvariableop_resource<lstm_111_while_lstm_cell_111_split_readvariableop_resource_0"Ģ
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2Z
+lstm_111/while/lstm_cell_111/ReadVariableOp+lstm_111/while/lstm_cell_111/ReadVariableOp2^
-lstm_111/while/lstm_cell_111/ReadVariableOp_1-lstm_111/while/lstm_cell_111/ReadVariableOp_12^
-lstm_111/while/lstm_cell_111/ReadVariableOp_2-lstm_111/while/lstm_cell_111/ReadVariableOp_22^
-lstm_111/while/lstm_cell_111/ReadVariableOp_3-lstm_111/while/lstm_cell_111/ReadVariableOp_32f
1lstm_111/while/lstm_cell_111/split/ReadVariableOp1lstm_111/while/lstm_cell_111/split/ReadVariableOp2j
3lstm_111/while/lstm_cell_111/split_1/ReadVariableOp3lstm_111/while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 

÷
F__inference_dense_134_layer_call_and_return_conditional_losses_3546475

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
:’’’’’’’’’ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
Ŗ
ģ
lstm_111_while_body_3547249.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_3-
)lstm_111_while_lstm_111_strided_slice_1_0i
elstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_111_while_lstm_cell_111_split_readvariableop_resource_0:	M
>lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0:	I
6lstm_111_while_lstm_cell_111_readvariableop_resource_0:	 
lstm_111_while_identity
lstm_111_while_identity_1
lstm_111_while_identity_2
lstm_111_while_identity_3
lstm_111_while_identity_4
lstm_111_while_identity_5+
'lstm_111_while_lstm_111_strided_slice_1g
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorM
:lstm_111_while_lstm_cell_111_split_readvariableop_resource:	K
<lstm_111_while_lstm_cell_111_split_1_readvariableop_resource:	G
4lstm_111_while_lstm_cell_111_readvariableop_resource:	 ¢+lstm_111/while/lstm_cell_111/ReadVariableOp¢-lstm_111/while/lstm_cell_111/ReadVariableOp_1¢-lstm_111/while/lstm_cell_111/ReadVariableOp_2¢-lstm_111/while/lstm_cell_111/ReadVariableOp_3¢1lstm_111/while/lstm_cell_111/split/ReadVariableOp¢3lstm_111/while/lstm_cell_111/split_1/ReadVariableOpÕ
@lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2B
@lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_111/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0lstm_111_while_placeholderIlstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype024
2lstm_111/while/TensorArrayV2Read/TensorListGetItemØ
,lstm_111/while/lstm_cell_111/ones_like/ShapeShapelstm_111_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_111/while/lstm_cell_111/ones_like/Shape”
,lstm_111/while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_111/while/lstm_cell_111/ones_like/Constų
&lstm_111/while/lstm_cell_111/ones_likeFill5lstm_111/while/lstm_cell_111/ones_like/Shape:output:05lstm_111/while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/ones_like
,lstm_111/while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_111/while/lstm_cell_111/split/split_dimä
1lstm_111/while/lstm_cell_111/split/ReadVariableOpReadVariableOp<lstm_111_while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_111/while/lstm_cell_111/split/ReadVariableOp
"lstm_111/while/lstm_cell_111/splitSplit5lstm_111/while/lstm_cell_111/split/split_dim:output:09lstm_111/while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2$
"lstm_111/while/lstm_cell_111/splitī
#lstm_111/while/lstm_cell_111/MatMulMatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#lstm_111/while/lstm_cell_111/MatMulņ
%lstm_111/while/lstm_cell_111/MatMul_1MatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_1ņ
%lstm_111/while/lstm_cell_111/MatMul_2MatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_2ņ
%lstm_111/while/lstm_cell_111/MatMul_3MatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_111/while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_3¢
.lstm_111/while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.lstm_111/while/lstm_cell_111/split_1/split_dimę
3lstm_111/while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp>lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype025
3lstm_111/while/lstm_cell_111/split_1/ReadVariableOp
$lstm_111/while/lstm_cell_111/split_1Split7lstm_111/while/lstm_cell_111/split_1/split_dim:output:0;lstm_111/while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2&
$lstm_111/while/lstm_cell_111/split_1ē
$lstm_111/while/lstm_cell_111/BiasAddBiasAdd-lstm_111/while/lstm_cell_111/MatMul:product:0-lstm_111/while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/while/lstm_cell_111/BiasAddķ
&lstm_111/while/lstm_cell_111/BiasAdd_1BiasAdd/lstm_111/while/lstm_cell_111/MatMul_1:product:0-lstm_111/while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/BiasAdd_1ķ
&lstm_111/while/lstm_cell_111/BiasAdd_2BiasAdd/lstm_111/while/lstm_cell_111/MatMul_2:product:0-lstm_111/while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/BiasAdd_2ķ
&lstm_111/while/lstm_cell_111/BiasAdd_3BiasAdd/lstm_111/while/lstm_cell_111/MatMul_3:product:0-lstm_111/while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/BiasAdd_3Ģ
 lstm_111/while/lstm_cell_111/mulMullstm_111_while_placeholder_2/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/while/lstm_cell_111/mulŠ
"lstm_111/while/lstm_cell_111/mul_1Mullstm_111_while_placeholder_2/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_1Š
"lstm_111/while/lstm_cell_111/mul_2Mullstm_111_while_placeholder_2/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_2Š
"lstm_111/while/lstm_cell_111/mul_3Mullstm_111_while_placeholder_2/lstm_111/while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_3Ņ
+lstm_111/while/lstm_cell_111/ReadVariableOpReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_111/while/lstm_cell_111/ReadVariableOpµ
0lstm_111/while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_111/while/lstm_cell_111/strided_slice/stack¹
2lstm_111/while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_111/while/lstm_cell_111/strided_slice/stack_1¹
2lstm_111/while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_111/while/lstm_cell_111/strided_slice/stack_2Ŗ
*lstm_111/while/lstm_cell_111/strided_sliceStridedSlice3lstm_111/while/lstm_cell_111/ReadVariableOp:value:09lstm_111/while/lstm_cell_111/strided_slice/stack:output:0;lstm_111/while/lstm_cell_111/strided_slice/stack_1:output:0;lstm_111/while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_111/while/lstm_cell_111/strided_sliceå
%lstm_111/while/lstm_cell_111/MatMul_4MatMul$lstm_111/while/lstm_cell_111/mul:z:03lstm_111/while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_4ß
 lstm_111/while/lstm_cell_111/addAddV2-lstm_111/while/lstm_cell_111/BiasAdd:output:0/lstm_111/while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/while/lstm_cell_111/addÆ
$lstm_111/while/lstm_cell_111/SigmoidSigmoid$lstm_111/while/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/while/lstm_cell_111/SigmoidÖ
-lstm_111/while/lstm_cell_111/ReadVariableOp_1ReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_111/while/lstm_cell_111/ReadVariableOp_1¹
2lstm_111/while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_111/while/lstm_cell_111/strided_slice_1/stack½
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   26
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_1½
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_111/while/lstm_cell_111/strided_slice_1/stack_2¶
,lstm_111/while/lstm_cell_111/strided_slice_1StridedSlice5lstm_111/while/lstm_cell_111/ReadVariableOp_1:value:0;lstm_111/while/lstm_cell_111/strided_slice_1/stack:output:0=lstm_111/while/lstm_cell_111/strided_slice_1/stack_1:output:0=lstm_111/while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_111/while/lstm_cell_111/strided_slice_1é
%lstm_111/while/lstm_cell_111/MatMul_5MatMul&lstm_111/while/lstm_cell_111/mul_1:z:05lstm_111/while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_5å
"lstm_111/while/lstm_cell_111/add_1AddV2/lstm_111/while/lstm_cell_111/BiasAdd_1:output:0/lstm_111/while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_1µ
&lstm_111/while/lstm_cell_111/Sigmoid_1Sigmoid&lstm_111/while/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/Sigmoid_1Ė
"lstm_111/while/lstm_cell_111/mul_4Mul*lstm_111/while/lstm_cell_111/Sigmoid_1:y:0lstm_111_while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_4Ö
-lstm_111/while/lstm_cell_111/ReadVariableOp_2ReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_111/while/lstm_cell_111/ReadVariableOp_2¹
2lstm_111/while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_111/while/lstm_cell_111/strided_slice_2/stack½
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   26
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_1½
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_111/while/lstm_cell_111/strided_slice_2/stack_2¶
,lstm_111/while/lstm_cell_111/strided_slice_2StridedSlice5lstm_111/while/lstm_cell_111/ReadVariableOp_2:value:0;lstm_111/while/lstm_cell_111/strided_slice_2/stack:output:0=lstm_111/while/lstm_cell_111/strided_slice_2/stack_1:output:0=lstm_111/while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_111/while/lstm_cell_111/strided_slice_2é
%lstm_111/while/lstm_cell_111/MatMul_6MatMul&lstm_111/while/lstm_cell_111/mul_2:z:05lstm_111/while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_6å
"lstm_111/while/lstm_cell_111/add_2AddV2/lstm_111/while/lstm_cell_111/BiasAdd_2:output:0/lstm_111/while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_2Ø
!lstm_111/while/lstm_cell_111/ReluRelu&lstm_111/while/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2#
!lstm_111/while/lstm_cell_111/ReluÜ
"lstm_111/while/lstm_cell_111/mul_5Mul(lstm_111/while/lstm_cell_111/Sigmoid:y:0/lstm_111/while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_5Ó
"lstm_111/while/lstm_cell_111/add_3AddV2&lstm_111/while/lstm_cell_111/mul_4:z:0&lstm_111/while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_3Ö
-lstm_111/while/lstm_cell_111/ReadVariableOp_3ReadVariableOp6lstm_111_while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_111/while/lstm_cell_111/ReadVariableOp_3¹
2lstm_111/while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_111/while/lstm_cell_111/strided_slice_3/stack½
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_1½
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_111/while/lstm_cell_111/strided_slice_3/stack_2¶
,lstm_111/while/lstm_cell_111/strided_slice_3StridedSlice5lstm_111/while/lstm_cell_111/ReadVariableOp_3:value:0;lstm_111/while/lstm_cell_111/strided_slice_3/stack:output:0=lstm_111/while/lstm_cell_111/strided_slice_3/stack_1:output:0=lstm_111/while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_111/while/lstm_cell_111/strided_slice_3é
%lstm_111/while/lstm_cell_111/MatMul_7MatMul&lstm_111/while/lstm_cell_111/mul_3:z:05lstm_111/while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/while/lstm_cell_111/MatMul_7å
"lstm_111/while/lstm_cell_111/add_4AddV2/lstm_111/while/lstm_cell_111/BiasAdd_3:output:0/lstm_111/while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/add_4µ
&lstm_111/while/lstm_cell_111/Sigmoid_2Sigmoid&lstm_111/while/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/while/lstm_cell_111/Sigmoid_2¬
#lstm_111/while/lstm_cell_111/Relu_1Relu&lstm_111/while/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2%
#lstm_111/while/lstm_cell_111/Relu_1ą
"lstm_111/while/lstm_cell_111/mul_6Mul*lstm_111/while/lstm_cell_111/Sigmoid_2:y:01lstm_111/while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/while/lstm_cell_111/mul_6
3lstm_111/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_111_while_placeholder_1lstm_111_while_placeholder&lstm_111/while/lstm_cell_111/mul_6:z:0*
_output_shapes
: *
element_dtype025
3lstm_111/while/TensorArrayV2Write/TensorListSetItemn
lstm_111/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_111/while/add/y
lstm_111/while/addAddV2lstm_111_while_placeholderlstm_111/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_111/while/addr
lstm_111/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_111/while/add_1/y£
lstm_111/while/add_1AddV2*lstm_111_while_lstm_111_while_loop_counterlstm_111/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_111/while/add_1
lstm_111/while/IdentityIdentitylstm_111/while/add_1:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity«
lstm_111/while/Identity_1Identity0lstm_111_while_lstm_111_while_maximum_iterations^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity_1
lstm_111/while/Identity_2Identitylstm_111/while/add:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity_2¾
lstm_111/while/Identity_3IdentityClstm_111/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_111/while/NoOp*
T0*
_output_shapes
: 2
lstm_111/while/Identity_3²
lstm_111/while/Identity_4Identity&lstm_111/while/lstm_cell_111/mul_6:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/while/Identity_4²
lstm_111/while/Identity_5Identity&lstm_111/while/lstm_cell_111/add_3:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/while/Identity_5
lstm_111/while/NoOpNoOp,^lstm_111/while/lstm_cell_111/ReadVariableOp.^lstm_111/while/lstm_cell_111/ReadVariableOp_1.^lstm_111/while/lstm_cell_111/ReadVariableOp_2.^lstm_111/while/lstm_cell_111/ReadVariableOp_32^lstm_111/while/lstm_cell_111/split/ReadVariableOp4^lstm_111/while/lstm_cell_111/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_111/while/NoOp";
lstm_111_while_identity lstm_111/while/Identity:output:0"?
lstm_111_while_identity_1"lstm_111/while/Identity_1:output:0"?
lstm_111_while_identity_2"lstm_111/while/Identity_2:output:0"?
lstm_111_while_identity_3"lstm_111/while/Identity_3:output:0"?
lstm_111_while_identity_4"lstm_111/while/Identity_4:output:0"?
lstm_111_while_identity_5"lstm_111/while/Identity_5:output:0"T
'lstm_111_while_lstm_111_strided_slice_1)lstm_111_while_lstm_111_strided_slice_1_0"n
4lstm_111_while_lstm_cell_111_readvariableop_resource6lstm_111_while_lstm_cell_111_readvariableop_resource_0"~
<lstm_111_while_lstm_cell_111_split_1_readvariableop_resource>lstm_111_while_lstm_cell_111_split_1_readvariableop_resource_0"z
:lstm_111_while_lstm_cell_111_split_readvariableop_resource<lstm_111_while_lstm_cell_111_split_readvariableop_resource_0"Ģ
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2Z
+lstm_111/while/lstm_cell_111/ReadVariableOp+lstm_111/while/lstm_cell_111/ReadVariableOp2^
-lstm_111/while/lstm_cell_111/ReadVariableOp_1-lstm_111/while/lstm_cell_111/ReadVariableOp_12^
-lstm_111/while/lstm_cell_111/ReadVariableOp_2-lstm_111/while/lstm_cell_111/ReadVariableOp_22^
-lstm_111/while/lstm_cell_111/ReadVariableOp_3-lstm_111/while/lstm_cell_111/ReadVariableOp_32f
1lstm_111/while/lstm_cell_111/split/ReadVariableOp1lstm_111/while/lstm_cell_111/split/ReadVariableOp2j
3lstm_111/while/lstm_cell_111/split_1/ReadVariableOp3lstm_111/while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
Ś
Č
while_cond_3548729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3548729___redundant_placeholder05
1while_while_cond_3548729___redundant_placeholder15
1while_while_cond_3548729___redundant_placeholder25
1while_while_cond_3548729___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
&
ń
while_body_3545858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_111_3545882_0:	,
while_lstm_cell_111_3545884_0:	0
while_lstm_cell_111_3545886_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_111_3545882:	*
while_lstm_cell_111_3545884:	.
while_lstm_cell_111_3545886:	 ¢+while/lstm_cell_111/StatefulPartitionedCallĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemė
+while/lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_111_3545882_0while_lstm_cell_111_3545884_0while_lstm_cell_111_3545886_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_35457802-
+while/lstm_cell_111/StatefulPartitionedCallų
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_111/StatefulPartitionedCall:output:0*
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
while/Identity_3„
while/Identity_4Identity4while/lstm_cell_111/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4„
while/Identity_5Identity4while/lstm_cell_111/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5

while/NoOpNoOp,^while/lstm_cell_111/StatefulPartitionedCall*"
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
while_lstm_cell_111_3545882while_lstm_cell_111_3545882_0"<
while_lstm_cell_111_3545884while_lstm_cell_111_3545884_0"<
while_lstm_cell_111_3545886while_lstm_cell_111_3545886_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2Z
+while/lstm_cell_111/StatefulPartitionedCall+while/lstm_cell_111/StatefulPartitionedCall: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 

±	
while_body_3548455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_111_split_readvariableop_resource_0:	D
5while_lstm_cell_111_split_1_readvariableop_resource_0:	@
-while_lstm_cell_111_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_111_split_readvariableop_resource:	B
3while_lstm_cell_111_split_1_readvariableop_resource:	>
+while_lstm_cell_111_readvariableop_resource:	 ¢"while/lstm_cell_111/ReadVariableOp¢$while/lstm_cell_111/ReadVariableOp_1¢$while/lstm_cell_111/ReadVariableOp_2¢$while/lstm_cell_111/ReadVariableOp_3¢(while/lstm_cell_111/split/ReadVariableOp¢*while/lstm_cell_111/split_1/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_111/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_111/ones_like/Shape
#while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_111/ones_like/ConstŌ
while/lstm_cell_111/ones_likeFill,while/lstm_cell_111/ones_like/Shape:output:0,while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/ones_like
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_111/split/split_dimÉ
(while/lstm_cell_111/split/ReadVariableOpReadVariableOp3while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_111/split/ReadVariableOp÷
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:00while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_111/splitŹ
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMulĪ
while/lstm_cell_111/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_1Ī
while/lstm_cell_111/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_2Ī
while/lstm_cell_111/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_3
%while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_111/split_1/split_dimĖ
*while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_111/split_1/ReadVariableOpļ
while/lstm_cell_111/split_1Split.while/lstm_cell_111/split_1/split_dim:output:02while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_111/split_1Ć
while/lstm_cell_111/BiasAddBiasAdd$while/lstm_cell_111/MatMul:product:0$while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAddÉ
while/lstm_cell_111/BiasAdd_1BiasAdd&while/lstm_cell_111/MatMul_1:product:0$while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_1É
while/lstm_cell_111/BiasAdd_2BiasAdd&while/lstm_cell_111/MatMul_2:product:0$while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_2É
while/lstm_cell_111/BiasAdd_3BiasAdd&while/lstm_cell_111/MatMul_3:product:0$while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_3Ø
while/lstm_cell_111/mulMulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul¬
while/lstm_cell_111/mul_1Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_1¬
while/lstm_cell_111/mul_2Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_2¬
while/lstm_cell_111/mul_3Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_3·
"while/lstm_cell_111/ReadVariableOpReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_111/ReadVariableOp£
'while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_111/strided_slice/stack§
)while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice/stack_1§
)while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_111/strided_slice/stack_2ō
!while/lstm_cell_111/strided_sliceStridedSlice*while/lstm_cell_111/ReadVariableOp:value:00while/lstm_cell_111/strided_slice/stack:output:02while/lstm_cell_111/strided_slice/stack_1:output:02while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_111/strided_sliceĮ
while/lstm_cell_111/MatMul_4MatMulwhile/lstm_cell_111/mul:z:0*while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_4»
while/lstm_cell_111/addAddV2$while/lstm_cell_111/BiasAdd:output:0&while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add
while/lstm_cell_111/SigmoidSigmoidwhile/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid»
$while/lstm_cell_111/ReadVariableOp_1ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_1§
)while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice_1/stack«
+while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_111/strided_slice_1/stack_1«
+while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_1/stack_2
#while/lstm_cell_111/strided_slice_1StridedSlice,while/lstm_cell_111/ReadVariableOp_1:value:02while/lstm_cell_111/strided_slice_1/stack:output:04while/lstm_cell_111/strided_slice_1/stack_1:output:04while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_1Å
while/lstm_cell_111/MatMul_5MatMulwhile/lstm_cell_111/mul_1:z:0,while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_5Į
while/lstm_cell_111/add_1AddV2&while/lstm_cell_111/BiasAdd_1:output:0&while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_1
while/lstm_cell_111/Sigmoid_1Sigmoidwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_1§
while/lstm_cell_111/mul_4Mul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_4»
$while/lstm_cell_111/ReadVariableOp_2ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_2§
)while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_111/strided_slice_2/stack«
+while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_111/strided_slice_2/stack_1«
+while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_2/stack_2
#while/lstm_cell_111/strided_slice_2StridedSlice,while/lstm_cell_111/ReadVariableOp_2:value:02while/lstm_cell_111/strided_slice_2/stack:output:04while/lstm_cell_111/strided_slice_2/stack_1:output:04while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_2Å
while/lstm_cell_111/MatMul_6MatMulwhile/lstm_cell_111/mul_2:z:0,while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_6Į
while/lstm_cell_111/add_2AddV2&while/lstm_cell_111/BiasAdd_2:output:0&while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_2
while/lstm_cell_111/ReluReluwhile/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Reluø
while/lstm_cell_111/mul_5Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_5Æ
while/lstm_cell_111/add_3AddV2while/lstm_cell_111/mul_4:z:0while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_3»
$while/lstm_cell_111/ReadVariableOp_3ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_3§
)while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_111/strided_slice_3/stack«
+while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_111/strided_slice_3/stack_1«
+while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_3/stack_2
#while/lstm_cell_111/strided_slice_3StridedSlice,while/lstm_cell_111/ReadVariableOp_3:value:02while/lstm_cell_111/strided_slice_3/stack:output:04while/lstm_cell_111/strided_slice_3/stack_1:output:04while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_3Å
while/lstm_cell_111/MatMul_7MatMulwhile/lstm_cell_111/mul_3:z:0,while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_7Į
while/lstm_cell_111/add_4AddV2&while/lstm_cell_111/BiasAdd_3:output:0&while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_4
while/lstm_cell_111/Sigmoid_2Sigmoidwhile/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_2
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Relu_1¼
while/lstm_cell_111/mul_6Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_6į
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_111/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5Ģ

while/NoOpNoOp#^while/lstm_cell_111/ReadVariableOp%^while/lstm_cell_111/ReadVariableOp_1%^while/lstm_cell_111/ReadVariableOp_2%^while/lstm_cell_111/ReadVariableOp_3)^while/lstm_cell_111/split/ReadVariableOp+^while/lstm_cell_111/split_1/ReadVariableOp*"
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
+while_lstm_cell_111_readvariableop_resource-while_lstm_cell_111_readvariableop_resource_0"l
3while_lstm_cell_111_split_1_readvariableop_resource5while_lstm_cell_111_split_1_readvariableop_resource_0"h
1while_lstm_cell_111_split_readvariableop_resource3while_lstm_cell_111_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2H
"while/lstm_cell_111/ReadVariableOp"while/lstm_cell_111/ReadVariableOp2L
$while/lstm_cell_111/ReadVariableOp_1$while/lstm_cell_111/ReadVariableOp_12L
$while/lstm_cell_111/ReadVariableOp_2$while/lstm_cell_111/ReadVariableOp_22L
$while/lstm_cell_111/ReadVariableOp_3$while/lstm_cell_111/ReadVariableOp_32T
(while/lstm_cell_111/split/ReadVariableOp(while/lstm_cell_111/split/ReadVariableOp2X
*while/lstm_cell_111/split_1/ReadVariableOp*while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
Ūę
ŗ
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547410

inputsG
4lstm_111_lstm_cell_111_split_readvariableop_resource:	E
6lstm_111_lstm_cell_111_split_1_readvariableop_resource:	A
.lstm_111_lstm_cell_111_readvariableop_resource:	 :
(dense_134_matmul_readvariableop_resource:  7
)dense_134_biasadd_readvariableop_resource: :
(dense_135_matmul_readvariableop_resource: 7
)dense_135_biasadd_readvariableop_resource:
identity¢ dense_134/BiasAdd/ReadVariableOp¢dense_134/MatMul/ReadVariableOp¢ dense_135/BiasAdd/ReadVariableOp¢dense_135/MatMul/ReadVariableOp¢0dense_135/bias/Regularizer/Square/ReadVariableOp¢%lstm_111/lstm_cell_111/ReadVariableOp¢'lstm_111/lstm_cell_111/ReadVariableOp_1¢'lstm_111/lstm_cell_111/ReadVariableOp_2¢'lstm_111/lstm_cell_111/ReadVariableOp_3¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢+lstm_111/lstm_cell_111/split/ReadVariableOp¢-lstm_111/lstm_cell_111/split_1/ReadVariableOp¢lstm_111/whileV
lstm_111/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_111/Shape
lstm_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_111/strided_slice/stack
lstm_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_111/strided_slice/stack_1
lstm_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_111/strided_slice/stack_2
lstm_111/strided_sliceStridedSlicelstm_111/Shape:output:0%lstm_111/strided_slice/stack:output:0'lstm_111/strided_slice/stack_1:output:0'lstm_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_111/strided_slicen
lstm_111/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros/mul/y
lstm_111/zeros/mulMullstm_111/strided_slice:output:0lstm_111/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros/mulq
lstm_111/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
lstm_111/zeros/Less/y
lstm_111/zeros/LessLesslstm_111/zeros/mul:z:0lstm_111/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros/Lesst
lstm_111/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros/packed/1§
lstm_111/zeros/packedPacklstm_111/strided_slice:output:0 lstm_111/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_111/zeros/packedq
lstm_111/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_111/zeros/Const
lstm_111/zerosFilllstm_111/zeros/packed:output:0lstm_111/zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/zerosr
lstm_111/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros_1/mul/y
lstm_111/zeros_1/mulMullstm_111/strided_slice:output:0lstm_111/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros_1/mulu
lstm_111/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
lstm_111/zeros_1/Less/y
lstm_111/zeros_1/LessLesslstm_111/zeros_1/mul:z:0 lstm_111/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros_1/Lessx
lstm_111/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros_1/packed/1­
lstm_111/zeros_1/packedPacklstm_111/strided_slice:output:0"lstm_111/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_111/zeros_1/packedu
lstm_111/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_111/zeros_1/Const”
lstm_111/zeros_1Fill lstm_111/zeros_1/packed:output:0lstm_111/zeros_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/zeros_1
lstm_111/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_111/transpose/perm
lstm_111/transpose	Transposeinputs lstm_111/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’2
lstm_111/transposej
lstm_111/Shape_1Shapelstm_111/transpose:y:0*
T0*
_output_shapes
:2
lstm_111/Shape_1
lstm_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_111/strided_slice_1/stack
 lstm_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_1/stack_1
 lstm_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_1/stack_2¤
lstm_111/strided_slice_1StridedSlicelstm_111/Shape_1:output:0'lstm_111/strided_slice_1/stack:output:0)lstm_111/strided_slice_1/stack_1:output:0)lstm_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_111/strided_slice_1
$lstm_111/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2&
$lstm_111/TensorArrayV2/element_shapeÖ
lstm_111/TensorArrayV2TensorListReserve-lstm_111/TensorArrayV2/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_111/TensorArrayV2Ń
>lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2@
>lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_111/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_111/transpose:y:0Glstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_111/TensorArrayUnstack/TensorListFromTensor
lstm_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_111/strided_slice_2/stack
 lstm_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_2/stack_1
 lstm_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_2/stack_2²
lstm_111/strided_slice_2StridedSlicelstm_111/transpose:y:0'lstm_111/strided_slice_2/stack:output:0)lstm_111/strided_slice_2/stack_1:output:0)lstm_111/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
lstm_111/strided_slice_2
&lstm_111/lstm_cell_111/ones_like/ShapeShapelstm_111/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_111/lstm_cell_111/ones_like/Shape
&lstm_111/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_111/lstm_cell_111/ones_like/Constą
 lstm_111/lstm_cell_111/ones_likeFill/lstm_111/lstm_cell_111/ones_like/Shape:output:0/lstm_111/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/ones_like
&lstm_111/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_111/lstm_cell_111/split/split_dimŠ
+lstm_111/lstm_cell_111/split/ReadVariableOpReadVariableOp4lstm_111_lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_111/lstm_cell_111/split/ReadVariableOp
lstm_111/lstm_cell_111/splitSplit/lstm_111/lstm_cell_111/split/split_dim:output:03lstm_111/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_111/lstm_cell_111/splitÄ
lstm_111/lstm_cell_111/MatMulMatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/MatMulČ
lstm_111/lstm_cell_111/MatMul_1MatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_1Č
lstm_111/lstm_cell_111/MatMul_2MatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_2Č
lstm_111/lstm_cell_111/MatMul_3MatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_3
(lstm_111/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm_111/lstm_cell_111/split_1/split_dimŅ
-lstm_111/lstm_cell_111/split_1/ReadVariableOpReadVariableOp6lstm_111_lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02/
-lstm_111/lstm_cell_111/split_1/ReadVariableOpū
lstm_111/lstm_cell_111/split_1Split1lstm_111/lstm_cell_111/split_1/split_dim:output:05lstm_111/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm_111/lstm_cell_111/split_1Ļ
lstm_111/lstm_cell_111/BiasAddBiasAdd'lstm_111/lstm_cell_111/MatMul:product:0'lstm_111/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2 
lstm_111/lstm_cell_111/BiasAddÕ
 lstm_111/lstm_cell_111/BiasAdd_1BiasAdd)lstm_111/lstm_cell_111/MatMul_1:product:0'lstm_111/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/BiasAdd_1Õ
 lstm_111/lstm_cell_111/BiasAdd_2BiasAdd)lstm_111/lstm_cell_111/MatMul_2:product:0'lstm_111/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/BiasAdd_2Õ
 lstm_111/lstm_cell_111/BiasAdd_3BiasAdd)lstm_111/lstm_cell_111/MatMul_3:product:0'lstm_111/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/BiasAdd_3µ
lstm_111/lstm_cell_111/mulMullstm_111/zeros:output:0)lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul¹
lstm_111/lstm_cell_111/mul_1Mullstm_111/zeros:output:0)lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_1¹
lstm_111/lstm_cell_111/mul_2Mullstm_111/zeros:output:0)lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_2¹
lstm_111/lstm_cell_111/mul_3Mullstm_111/zeros:output:0)lstm_111/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_3¾
%lstm_111/lstm_cell_111/ReadVariableOpReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_111/lstm_cell_111/ReadVariableOp©
*lstm_111/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_111/lstm_cell_111/strided_slice/stack­
,lstm_111/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_111/lstm_cell_111/strided_slice/stack_1­
,lstm_111/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_111/lstm_cell_111/strided_slice/stack_2
$lstm_111/lstm_cell_111/strided_sliceStridedSlice-lstm_111/lstm_cell_111/ReadVariableOp:value:03lstm_111/lstm_cell_111/strided_slice/stack:output:05lstm_111/lstm_cell_111/strided_slice/stack_1:output:05lstm_111/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_111/lstm_cell_111/strided_sliceĶ
lstm_111/lstm_cell_111/MatMul_4MatMullstm_111/lstm_cell_111/mul:z:0-lstm_111/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_4Ē
lstm_111/lstm_cell_111/addAddV2'lstm_111/lstm_cell_111/BiasAdd:output:0)lstm_111/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add
lstm_111/lstm_cell_111/SigmoidSigmoidlstm_111/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2 
lstm_111/lstm_cell_111/SigmoidĀ
'lstm_111/lstm_cell_111/ReadVariableOp_1ReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_111/lstm_cell_111/ReadVariableOp_1­
,lstm_111/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_111/lstm_cell_111/strided_slice_1/stack±
.lstm_111/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_111/lstm_cell_111/strided_slice_1/stack_1±
.lstm_111/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_111/lstm_cell_111/strided_slice_1/stack_2
&lstm_111/lstm_cell_111/strided_slice_1StridedSlice/lstm_111/lstm_cell_111/ReadVariableOp_1:value:05lstm_111/lstm_cell_111/strided_slice_1/stack:output:07lstm_111/lstm_cell_111/strided_slice_1/stack_1:output:07lstm_111/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_111/lstm_cell_111/strided_slice_1Ń
lstm_111/lstm_cell_111/MatMul_5MatMul lstm_111/lstm_cell_111/mul_1:z:0/lstm_111/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_5Ķ
lstm_111/lstm_cell_111/add_1AddV2)lstm_111/lstm_cell_111/BiasAdd_1:output:0)lstm_111/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_1£
 lstm_111/lstm_cell_111/Sigmoid_1Sigmoid lstm_111/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/Sigmoid_1¶
lstm_111/lstm_cell_111/mul_4Mul$lstm_111/lstm_cell_111/Sigmoid_1:y:0lstm_111/zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_4Ā
'lstm_111/lstm_cell_111/ReadVariableOp_2ReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_111/lstm_cell_111/ReadVariableOp_2­
,lstm_111/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_111/lstm_cell_111/strided_slice_2/stack±
.lstm_111/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_111/lstm_cell_111/strided_slice_2/stack_1±
.lstm_111/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_111/lstm_cell_111/strided_slice_2/stack_2
&lstm_111/lstm_cell_111/strided_slice_2StridedSlice/lstm_111/lstm_cell_111/ReadVariableOp_2:value:05lstm_111/lstm_cell_111/strided_slice_2/stack:output:07lstm_111/lstm_cell_111/strided_slice_2/stack_1:output:07lstm_111/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_111/lstm_cell_111/strided_slice_2Ń
lstm_111/lstm_cell_111/MatMul_6MatMul lstm_111/lstm_cell_111/mul_2:z:0/lstm_111/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_6Ķ
lstm_111/lstm_cell_111/add_2AddV2)lstm_111/lstm_cell_111/BiasAdd_2:output:0)lstm_111/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_2
lstm_111/lstm_cell_111/ReluRelu lstm_111/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/ReluÄ
lstm_111/lstm_cell_111/mul_5Mul"lstm_111/lstm_cell_111/Sigmoid:y:0)lstm_111/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_5»
lstm_111/lstm_cell_111/add_3AddV2 lstm_111/lstm_cell_111/mul_4:z:0 lstm_111/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_3Ā
'lstm_111/lstm_cell_111/ReadVariableOp_3ReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_111/lstm_cell_111/ReadVariableOp_3­
,lstm_111/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_111/lstm_cell_111/strided_slice_3/stack±
.lstm_111/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_111/lstm_cell_111/strided_slice_3/stack_1±
.lstm_111/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_111/lstm_cell_111/strided_slice_3/stack_2
&lstm_111/lstm_cell_111/strided_slice_3StridedSlice/lstm_111/lstm_cell_111/ReadVariableOp_3:value:05lstm_111/lstm_cell_111/strided_slice_3/stack:output:07lstm_111/lstm_cell_111/strided_slice_3/stack_1:output:07lstm_111/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_111/lstm_cell_111/strided_slice_3Ń
lstm_111/lstm_cell_111/MatMul_7MatMul lstm_111/lstm_cell_111/mul_3:z:0/lstm_111/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_7Ķ
lstm_111/lstm_cell_111/add_4AddV2)lstm_111/lstm_cell_111/BiasAdd_3:output:0)lstm_111/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_4£
 lstm_111/lstm_cell_111/Sigmoid_2Sigmoid lstm_111/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/Sigmoid_2
lstm_111/lstm_cell_111/Relu_1Relu lstm_111/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/Relu_1Č
lstm_111/lstm_cell_111/mul_6Mul$lstm_111/lstm_cell_111/Sigmoid_2:y:0+lstm_111/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_6”
&lstm_111/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2(
&lstm_111/TensorArrayV2_1/element_shapeÜ
lstm_111/TensorArrayV2_1TensorListReserve/lstm_111/TensorArrayV2_1/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_111/TensorArrayV2_1`
lstm_111/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/time
!lstm_111/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2#
!lstm_111/while/maximum_iterations|
lstm_111/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/while/loop_counter
lstm_111/whileWhile$lstm_111/while/loop_counter:output:0*lstm_111/while/maximum_iterations:output:0lstm_111/time:output:0!lstm_111/TensorArrayV2_1:handle:0lstm_111/zeros:output:0lstm_111/zeros_1:output:0!lstm_111/strided_slice_1:output:0@lstm_111/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_111_lstm_cell_111_split_readvariableop_resource6lstm_111_lstm_cell_111_split_1_readvariableop_resource.lstm_111_lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_111_while_body_3547249*'
condR
lstm_111_while_cond_3547248*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
lstm_111/whileĒ
9lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2;
9lstm_111/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_111/TensorArrayV2Stack/TensorListStackTensorListStacklstm_111/while:output:3Blstm_111/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02-
+lstm_111/TensorArrayV2Stack/TensorListStack
lstm_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2 
lstm_111/strided_slice_3/stack
 lstm_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_111/strided_slice_3/stack_1
 lstm_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_3/stack_2Š
lstm_111/strided_slice_3StridedSlice4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_111/strided_slice_3/stack:output:0)lstm_111/strided_slice_3/stack_1:output:0)lstm_111/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’ *
shrink_axis_mask2
lstm_111/strided_slice_3
lstm_111/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_111/transpose_1/permÉ
lstm_111/transpose_1	Transpose4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_111/transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2
lstm_111/transpose_1x
lstm_111/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_111/runtime«
dense_134/MatMul/ReadVariableOpReadVariableOp(dense_134_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_134/MatMul/ReadVariableOp¬
dense_134/MatMulMatMul!lstm_111/strided_slice_3:output:0'dense_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dense_134/MatMulŖ
 dense_134/BiasAdd/ReadVariableOpReadVariableOp)dense_134_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_134/BiasAdd/ReadVariableOp©
dense_134/BiasAddBiasAdddense_134/MatMul:product:0(dense_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dense_134/BiasAddv
dense_134/ReluReludense_134/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dense_134/Relu«
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_135/MatMul/ReadVariableOp§
dense_135/MatMulMatMuldense_134/Relu:activations:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense_135/MatMulŖ
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_135/BiasAdd/ReadVariableOp©
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense_135/BiasAddn
reshape_67/ShapeShapedense_135/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_67/Shape
reshape_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_67/strided_slice/stack
 reshape_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_67/strided_slice/stack_1
 reshape_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_67/strided_slice/stack_2¤
reshape_67/strided_sliceStridedSlicereshape_67/Shape:output:0'reshape_67/strided_slice/stack:output:0)reshape_67/strided_slice/stack_1:output:0)reshape_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_67/strided_slicez
reshape_67/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_67/Reshape/shape/1z
reshape_67/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_67/Reshape/shape/2×
reshape_67/Reshape/shapePack!reshape_67/strided_slice:output:0#reshape_67/Reshape/shape/1:output:0#reshape_67/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_67/Reshape/shapeØ
reshape_67/ReshapeReshapedense_135/BiasAdd:output:0!reshape_67/Reshape/shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’2
reshape_67/Reshapeų
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4lstm_111_lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mulŹ
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mulz
IdentityIdentityreshape_67/Reshape:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityā
NoOpNoOp!^dense_134/BiasAdd/ReadVariableOp ^dense_134/MatMul/ReadVariableOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp1^dense_135/bias/Regularizer/Square/ReadVariableOp&^lstm_111/lstm_cell_111/ReadVariableOp(^lstm_111/lstm_cell_111/ReadVariableOp_1(^lstm_111/lstm_cell_111/ReadVariableOp_2(^lstm_111/lstm_cell_111/ReadVariableOp_3@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp,^lstm_111/lstm_cell_111/split/ReadVariableOp.^lstm_111/lstm_cell_111/split_1/ReadVariableOp^lstm_111/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2D
 dense_134/BiasAdd/ReadVariableOp dense_134/BiasAdd/ReadVariableOp2B
dense_134/MatMul/ReadVariableOpdense_134/MatMul/ReadVariableOp2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp2N
%lstm_111/lstm_cell_111/ReadVariableOp%lstm_111/lstm_cell_111/ReadVariableOp2R
'lstm_111/lstm_cell_111/ReadVariableOp_1'lstm_111/lstm_cell_111/ReadVariableOp_12R
'lstm_111/lstm_cell_111/ReadVariableOp_2'lstm_111/lstm_cell_111/ReadVariableOp_22R
'lstm_111/lstm_cell_111/ReadVariableOp_3'lstm_111/lstm_cell_111/ReadVariableOp_32
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2Z
+lstm_111/lstm_cell_111/split/ReadVariableOp+lstm_111/lstm_cell_111/split/ReadVariableOp2^
-lstm_111/lstm_cell_111/split_1/ReadVariableOp-lstm_111/lstm_cell_111/split_1/ReadVariableOp2 
lstm_111/whilelstm_111/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
&
ń
while_body_3545561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_111_3545585_0:	,
while_lstm_cell_111_3545587_0:	0
while_lstm_cell_111_3545589_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_111_3545585:	*
while_lstm_cell_111_3545587:	.
while_lstm_cell_111_3545589:	 ¢+while/lstm_cell_111/StatefulPartitionedCallĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemė
+while/lstm_cell_111/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_111_3545585_0while_lstm_cell_111_3545587_0while_lstm_cell_111_3545589_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:’’’’’’’’’ :’’’’’’’’’ :’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_35455472-
+while/lstm_cell_111/StatefulPartitionedCallų
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_111/StatefulPartitionedCall:output:0*
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
while/Identity_3„
while/Identity_4Identity4while/lstm_cell_111/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4„
while/Identity_5Identity4while/lstm_cell_111/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5

while/NoOpNoOp,^while/lstm_cell_111/StatefulPartitionedCall*"
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
while_lstm_cell_111_3545585while_lstm_cell_111_3545585_0"<
while_lstm_cell_111_3545587while_lstm_cell_111_3545587_0"<
while_lstm_cell_111_3545589while_lstm_cell_111_3545589_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2Z
+while/lstm_cell_111/StatefulPartitionedCall+while/lstm_cell_111/StatefulPartitionedCall: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
Ś
Č
while_cond_3546728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3546728___redundant_placeholder05
1while_while_cond_3546728___redundant_placeholder15
1while_while_cond_3546728___redundant_placeholder25
1while_while_cond_3546728___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:

c
G__inference_reshape_67_layer_call_and_return_conditional_losses_3548964

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
strided_slice/stack_2ā
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
:’’’’’’’’’2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ČŅ
“
E__inference_lstm_111_layer_call_and_return_conditional_losses_3546894

inputs>
+lstm_cell_111_split_readvariableop_resource:	<
-lstm_cell_111_split_1_readvariableop_resource:	8
%lstm_cell_111_readvariableop_resource:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_111/ReadVariableOp¢lstm_cell_111/ReadVariableOp_1¢lstm_cell_111/ReadVariableOp_2¢lstm_cell_111/ReadVariableOp_3¢"lstm_cell_111/split/ReadVariableOp¢$lstm_cell_111/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
:’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2|
lstm_cell_111/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_111/ones_like/Shape
lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_111/ones_like/Const¼
lstm_cell_111/ones_likeFill&lstm_cell_111/ones_like/Shape:output:0&lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/ones_like
lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout/Const·
lstm_cell_111/dropout/MulMul lstm_cell_111/ones_like:output:0$lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Mul
lstm_cell_111/dropout/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout/Shapeś
2lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2b24
2lstm_cell_111/dropout/random_uniform/RandomUniform
$lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_111/dropout/GreaterEqual/yö
"lstm_cell_111/dropout/GreaterEqualGreaterEqual;lstm_cell_111/dropout/random_uniform/RandomUniform:output:0-lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_cell_111/dropout/GreaterEqual©
lstm_cell_111/dropout/CastCast&lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Cast²
lstm_cell_111/dropout/Mul_1Mullstm_cell_111/dropout/Mul:z:0lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Mul_1
lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_1/Const½
lstm_cell_111/dropout_1/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Mul
lstm_cell_111/dropout_1/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_1/Shape
4lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Šé26
4lstm_cell_111/dropout_1/random_uniform/RandomUniform
&lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_1/GreaterEqual/yž
$lstm_cell_111/dropout_1/GreaterEqualGreaterEqual=lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_1/GreaterEqualÆ
lstm_cell_111/dropout_1/CastCast(lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Castŗ
lstm_cell_111/dropout_1/Mul_1Mullstm_cell_111/dropout_1/Mul:z:0 lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Mul_1
lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_2/Const½
lstm_cell_111/dropout_2/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Mul
lstm_cell_111/dropout_2/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_2/Shape
4lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2óĄ26
4lstm_cell_111/dropout_2/random_uniform/RandomUniform
&lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_2/GreaterEqual/yž
$lstm_cell_111/dropout_2/GreaterEqualGreaterEqual=lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_2/GreaterEqualÆ
lstm_cell_111/dropout_2/CastCast(lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Castŗ
lstm_cell_111/dropout_2/Mul_1Mullstm_cell_111/dropout_2/Mul:z:0 lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Mul_1
lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_3/Const½
lstm_cell_111/dropout_3/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Mul
lstm_cell_111/dropout_3/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_3/Shape
4lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ńŽ26
4lstm_cell_111/dropout_3/random_uniform/RandomUniform
&lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_3/GreaterEqual/yž
$lstm_cell_111/dropout_3/GreaterEqualGreaterEqual=lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_3/GreaterEqualÆ
lstm_cell_111/dropout_3/CastCast(lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Castŗ
lstm_cell_111/dropout_3/Mul_1Mullstm_cell_111/dropout_3/Mul:z:0 lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Mul_1
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_111/split/split_dimµ
"lstm_cell_111/split/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_111/split/ReadVariableOpß
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0*lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_111/split 
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul¤
lstm_cell_111/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_1¤
lstm_cell_111/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_2¤
lstm_cell_111/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_3
lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_111/split_1/split_dim·
$lstm_cell_111/split_1/ReadVariableOpReadVariableOp-lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_111/split_1/ReadVariableOp×
lstm_cell_111/split_1Split(lstm_cell_111/split_1/split_dim:output:0,lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_111/split_1«
lstm_cell_111/BiasAddBiasAddlstm_cell_111/MatMul:product:0lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd±
lstm_cell_111/BiasAdd_1BiasAdd lstm_cell_111/MatMul_1:product:0lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_1±
lstm_cell_111/BiasAdd_2BiasAdd lstm_cell_111/MatMul_2:product:0lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_2±
lstm_cell_111/BiasAdd_3BiasAdd lstm_cell_111/MatMul_3:product:0lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_3
lstm_cell_111/mulMulzeros:output:0lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul
lstm_cell_111/mul_1Mulzeros:output:0!lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_1
lstm_cell_111/mul_2Mulzeros:output:0!lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_2
lstm_cell_111/mul_3Mulzeros:output:0!lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_3£
lstm_cell_111/ReadVariableOpReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_111/ReadVariableOp
!lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_111/strided_slice/stack
#lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice/stack_1
#lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_111/strided_slice/stack_2Š
lstm_cell_111/strided_sliceStridedSlice$lstm_cell_111/ReadVariableOp:value:0*lstm_cell_111/strided_slice/stack:output:0,lstm_cell_111/strided_slice/stack_1:output:0,lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice©
lstm_cell_111/MatMul_4MatMullstm_cell_111/mul:z:0$lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_4£
lstm_cell_111/addAddV2lstm_cell_111/BiasAdd:output:0 lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add
lstm_cell_111/SigmoidSigmoidlstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid§
lstm_cell_111/ReadVariableOp_1ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_1
#lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice_1/stack
%lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_111/strided_slice_1/stack_1
%lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_1/stack_2Ü
lstm_cell_111/strided_slice_1StridedSlice&lstm_cell_111/ReadVariableOp_1:value:0,lstm_cell_111/strided_slice_1/stack:output:0.lstm_cell_111/strided_slice_1/stack_1:output:0.lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_1­
lstm_cell_111/MatMul_5MatMullstm_cell_111/mul_1:z:0&lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_5©
lstm_cell_111/add_1AddV2 lstm_cell_111/BiasAdd_1:output:0 lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_1
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_1
lstm_cell_111/mul_4Mullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_4§
lstm_cell_111/ReadVariableOp_2ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_2
#lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_111/strided_slice_2/stack
%lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_111/strided_slice_2/stack_1
%lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_2/stack_2Ü
lstm_cell_111/strided_slice_2StridedSlice&lstm_cell_111/ReadVariableOp_2:value:0,lstm_cell_111/strided_slice_2/stack:output:0.lstm_cell_111/strided_slice_2/stack_1:output:0.lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_2­
lstm_cell_111/MatMul_6MatMullstm_cell_111/mul_2:z:0&lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_6©
lstm_cell_111/add_2AddV2 lstm_cell_111/BiasAdd_2:output:0 lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_2{
lstm_cell_111/ReluRelulstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu 
lstm_cell_111/mul_5Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_5
lstm_cell_111/add_3AddV2lstm_cell_111/mul_4:z:0lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_3§
lstm_cell_111/ReadVariableOp_3ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_3
#lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_111/strided_slice_3/stack
%lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_111/strided_slice_3/stack_1
%lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_3/stack_2Ü
lstm_cell_111/strided_slice_3StridedSlice&lstm_cell_111/ReadVariableOp_3:value:0,lstm_cell_111/strided_slice_3/stack:output:0.lstm_cell_111/strided_slice_3/stack_1:output:0.lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_3­
lstm_cell_111/MatMul_7MatMullstm_cell_111/mul_3:z:0&lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_7©
lstm_cell_111/add_4AddV2 lstm_cell_111/BiasAdd_3:output:0 lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_4
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_2
lstm_cell_111/Relu_1Relulstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu_1¤
lstm_cell_111/mul_6Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_111_split_readvariableop_resource-lstm_cell_111_split_1_readvariableop_resource%lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3546729*
condR
while_cond_3546728*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeč
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm„
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeļ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityę
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_111/ReadVariableOp^lstm_cell_111/ReadVariableOp_1^lstm_cell_111/ReadVariableOp_2^lstm_cell_111/ReadVariableOp_3#^lstm_cell_111/split/ReadVariableOp%^lstm_cell_111/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_111/ReadVariableOplstm_cell_111/ReadVariableOp2@
lstm_cell_111/ReadVariableOp_1lstm_cell_111/ReadVariableOp_12@
lstm_cell_111/ReadVariableOp_2lstm_cell_111/ReadVariableOp_22@
lstm_cell_111/ReadVariableOp_3lstm_cell_111/ReadVariableOp_32H
"lstm_cell_111/split/ReadVariableOp"lstm_cell_111/split/ReadVariableOp2L
$lstm_cell_111/split_1/ReadVariableOp$lstm_cell_111/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

±	
while_body_3546323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_111_split_readvariableop_resource_0:	D
5while_lstm_cell_111_split_1_readvariableop_resource_0:	@
-while_lstm_cell_111_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_111_split_readvariableop_resource:	B
3while_lstm_cell_111_split_1_readvariableop_resource:	>
+while_lstm_cell_111_readvariableop_resource:	 ¢"while/lstm_cell_111/ReadVariableOp¢$while/lstm_cell_111/ReadVariableOp_1¢$while/lstm_cell_111/ReadVariableOp_2¢$while/lstm_cell_111/ReadVariableOp_3¢(while/lstm_cell_111/split/ReadVariableOp¢*while/lstm_cell_111/split_1/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
#while/lstm_cell_111/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_111/ones_like/Shape
#while/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_111/ones_like/ConstŌ
while/lstm_cell_111/ones_likeFill,while/lstm_cell_111/ones_like/Shape:output:0,while/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/ones_like
#while/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_111/split/split_dimÉ
(while/lstm_cell_111/split/ReadVariableOpReadVariableOp3while_lstm_cell_111_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_111/split/ReadVariableOp÷
while/lstm_cell_111/splitSplit,while/lstm_cell_111/split/split_dim:output:00while/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_111/splitŹ
while/lstm_cell_111/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMulĪ
while/lstm_cell_111/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_1Ī
while/lstm_cell_111/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_2Ī
while/lstm_cell_111/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_3
%while/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_111/split_1/split_dimĖ
*while/lstm_cell_111/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_111_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_111/split_1/ReadVariableOpļ
while/lstm_cell_111/split_1Split.while/lstm_cell_111/split_1/split_dim:output:02while/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_111/split_1Ć
while/lstm_cell_111/BiasAddBiasAdd$while/lstm_cell_111/MatMul:product:0$while/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAddÉ
while/lstm_cell_111/BiasAdd_1BiasAdd&while/lstm_cell_111/MatMul_1:product:0$while/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_1É
while/lstm_cell_111/BiasAdd_2BiasAdd&while/lstm_cell_111/MatMul_2:product:0$while/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_2É
while/lstm_cell_111/BiasAdd_3BiasAdd&while/lstm_cell_111/MatMul_3:product:0$while/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/BiasAdd_3Ø
while/lstm_cell_111/mulMulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul¬
while/lstm_cell_111/mul_1Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_1¬
while/lstm_cell_111/mul_2Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_2¬
while/lstm_cell_111/mul_3Mulwhile_placeholder_2&while/lstm_cell_111/ones_like:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_3·
"while/lstm_cell_111/ReadVariableOpReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_111/ReadVariableOp£
'while/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_111/strided_slice/stack§
)while/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice/stack_1§
)while/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_111/strided_slice/stack_2ō
!while/lstm_cell_111/strided_sliceStridedSlice*while/lstm_cell_111/ReadVariableOp:value:00while/lstm_cell_111/strided_slice/stack:output:02while/lstm_cell_111/strided_slice/stack_1:output:02while/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_111/strided_sliceĮ
while/lstm_cell_111/MatMul_4MatMulwhile/lstm_cell_111/mul:z:0*while/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_4»
while/lstm_cell_111/addAddV2$while/lstm_cell_111/BiasAdd:output:0&while/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add
while/lstm_cell_111/SigmoidSigmoidwhile/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid»
$while/lstm_cell_111/ReadVariableOp_1ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_1§
)while/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_111/strided_slice_1/stack«
+while/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_111/strided_slice_1/stack_1«
+while/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_1/stack_2
#while/lstm_cell_111/strided_slice_1StridedSlice,while/lstm_cell_111/ReadVariableOp_1:value:02while/lstm_cell_111/strided_slice_1/stack:output:04while/lstm_cell_111/strided_slice_1/stack_1:output:04while/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_1Å
while/lstm_cell_111/MatMul_5MatMulwhile/lstm_cell_111/mul_1:z:0,while/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_5Į
while/lstm_cell_111/add_1AddV2&while/lstm_cell_111/BiasAdd_1:output:0&while/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_1
while/lstm_cell_111/Sigmoid_1Sigmoidwhile/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_1§
while/lstm_cell_111/mul_4Mul!while/lstm_cell_111/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_4»
$while/lstm_cell_111/ReadVariableOp_2ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_2§
)while/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_111/strided_slice_2/stack«
+while/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_111/strided_slice_2/stack_1«
+while/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_2/stack_2
#while/lstm_cell_111/strided_slice_2StridedSlice,while/lstm_cell_111/ReadVariableOp_2:value:02while/lstm_cell_111/strided_slice_2/stack:output:04while/lstm_cell_111/strided_slice_2/stack_1:output:04while/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_2Å
while/lstm_cell_111/MatMul_6MatMulwhile/lstm_cell_111/mul_2:z:0,while/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_6Į
while/lstm_cell_111/add_2AddV2&while/lstm_cell_111/BiasAdd_2:output:0&while/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_2
while/lstm_cell_111/ReluReluwhile/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Reluø
while/lstm_cell_111/mul_5Mulwhile/lstm_cell_111/Sigmoid:y:0&while/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_5Æ
while/lstm_cell_111/add_3AddV2while/lstm_cell_111/mul_4:z:0while/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_3»
$while/lstm_cell_111/ReadVariableOp_3ReadVariableOp-while_lstm_cell_111_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_111/ReadVariableOp_3§
)while/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_111/strided_slice_3/stack«
+while/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_111/strided_slice_3/stack_1«
+while/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_111/strided_slice_3/stack_2
#while/lstm_cell_111/strided_slice_3StridedSlice,while/lstm_cell_111/ReadVariableOp_3:value:02while/lstm_cell_111/strided_slice_3/stack:output:04while/lstm_cell_111/strided_slice_3/stack_1:output:04while/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_111/strided_slice_3Å
while/lstm_cell_111/MatMul_7MatMulwhile/lstm_cell_111/mul_3:z:0,while/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/MatMul_7Į
while/lstm_cell_111/add_4AddV2&while/lstm_cell_111/BiasAdd_3:output:0&while/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/add_4
while/lstm_cell_111/Sigmoid_2Sigmoidwhile/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Sigmoid_2
while/lstm_cell_111/Relu_1Reluwhile/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/Relu_1¼
while/lstm_cell_111/mul_6Mul!while/lstm_cell_111/Sigmoid_2:y:0(while/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/lstm_cell_111/mul_6į
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_111/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_111/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_111/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2
while/Identity_5Ģ

while/NoOpNoOp#^while/lstm_cell_111/ReadVariableOp%^while/lstm_cell_111/ReadVariableOp_1%^while/lstm_cell_111/ReadVariableOp_2%^while/lstm_cell_111/ReadVariableOp_3)^while/lstm_cell_111/split/ReadVariableOp+^while/lstm_cell_111/split_1/ReadVariableOp*"
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
+while_lstm_cell_111_readvariableop_resource-while_lstm_cell_111_readvariableop_resource_0"l
3while_lstm_cell_111_split_1_readvariableop_resource5while_lstm_cell_111_split_1_readvariableop_resource_0"h
1while_lstm_cell_111_split_readvariableop_resource3while_lstm_cell_111_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : 2H
"while/lstm_cell_111/ReadVariableOp"while/lstm_cell_111/ReadVariableOp2L
$while/lstm_cell_111/ReadVariableOp_1$while/lstm_cell_111/ReadVariableOp_12L
$while/lstm_cell_111/ReadVariableOp_2$while/lstm_cell_111/ReadVariableOp_22L
$while/lstm_cell_111/ReadVariableOp_3$while/lstm_cell_111/ReadVariableOp_32T
(while/lstm_cell_111/split/ReadVariableOp(while/lstm_cell_111/split/ReadVariableOp2X
*while/lstm_cell_111/split_1/ReadVariableOp*while/lstm_cell_111/split_1/ReadVariableOp: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
: 
ą,
Ā
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547062
input_46#
lstm_111_3547031:	
lstm_111_3547033:	#
lstm_111_3547035:	 #
dense_134_3547038:  
dense_134_3547040: #
dense_135_3547043: 
dense_135_3547045:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall¢0dense_135/bias/Regularizer/Square/ReadVariableOp¢ lstm_111/StatefulPartitionedCall¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp­
 lstm_111/StatefulPartitionedCallStatefulPartitionedCallinput_46lstm_111_3547031lstm_111_3547033lstm_111_3547035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35468942"
 lstm_111/StatefulPartitionedCallæ
!dense_134/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0dense_134_3547038dense_134_3547040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_35464752#
!dense_134/StatefulPartitionedCallĄ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_3547043dense_135_3547045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_35464972#
!dense_135/StatefulPartitionedCall
reshape_67/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_67_layer_call_and_return_conditional_losses_35465162
reshape_67/PartitionedCallŌ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_111_3547031*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mul²
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_3547045*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mul
IdentityIdentity#reshape_67/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identity®
NoOpNoOp"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall1^dense_135/bias/Regularizer/Square/ReadVariableOp!^lstm_111/StatefulPartitionedCall@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_46

÷
F__inference_dense_134_layer_call_and_return_conditional_losses_3548915

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
:’’’’’’’’’ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
C

 __inference__traced_save_3549327
file_prefix/
+savev2_dense_134_kernel_read_readvariableop-
)savev2_dense_134_bias_read_readvariableop/
+savev2_dense_135_kernel_read_readvariableop-
)savev2_dense_135_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_111_lstm_cell_111_kernel_read_readvariableopF
Bsavev2_lstm_111_lstm_cell_111_recurrent_kernel_read_readvariableop:
6savev2_lstm_111_lstm_cell_111_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_134_kernel_m_read_readvariableop4
0savev2_adam_dense_134_bias_m_read_readvariableop6
2savev2_adam_dense_135_kernel_m_read_readvariableop4
0savev2_adam_dense_135_bias_m_read_readvariableopC
?savev2_adam_lstm_111_lstm_cell_111_kernel_m_read_readvariableopM
Isavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_111_lstm_cell_111_bias_m_read_readvariableop6
2savev2_adam_dense_134_kernel_v_read_readvariableop4
0savev2_adam_dense_134_bias_v_read_readvariableop6
2savev2_adam_dense_135_kernel_v_read_readvariableop4
0savev2_adam_dense_135_bias_v_read_readvariableopC
?savev2_adam_lstm_111_lstm_cell_111_kernel_v_read_readvariableopM
Isavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_111_lstm_cell_111_bias_v_read_readvariableop
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
ShardedFilenameŠ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ā
valueŲBÕB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesĀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesś
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_134_kernel_read_readvariableop)savev2_dense_134_bias_read_readvariableop+savev2_dense_135_kernel_read_readvariableop)savev2_dense_135_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_111_lstm_cell_111_kernel_read_readvariableopBsavev2_lstm_111_lstm_cell_111_recurrent_kernel_read_readvariableop6savev2_lstm_111_lstm_cell_111_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_134_kernel_m_read_readvariableop0savev2_adam_dense_134_bias_m_read_readvariableop2savev2_adam_dense_135_kernel_m_read_readvariableop0savev2_adam_dense_135_bias_m_read_readvariableop?savev2_adam_lstm_111_lstm_cell_111_kernel_m_read_readvariableopIsavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_111_lstm_cell_111_bias_m_read_readvariableop2savev2_adam_dense_134_kernel_v_read_readvariableop0savev2_adam_dense_134_bias_v_read_readvariableop2savev2_adam_dense_135_kernel_v_read_readvariableop0savev2_adam_dense_135_bias_v_read_readvariableop?savev2_adam_lstm_111_lstm_cell_111_kernel_v_read_readvariableopIsavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_111_lstm_cell_111_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2ŗ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes”
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

identity_1Identity_1:output:0*Ž
_input_shapesĢ
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
ą,
Ā
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547028
input_46#
lstm_111_3546997:	
lstm_111_3546999:	#
lstm_111_3547001:	 #
dense_134_3547004:  
dense_134_3547006: #
dense_135_3547009: 
dense_135_3547011:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall¢0dense_135/bias/Regularizer/Square/ReadVariableOp¢ lstm_111/StatefulPartitionedCall¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp­
 lstm_111/StatefulPartitionedCallStatefulPartitionedCallinput_46lstm_111_3546997lstm_111_3546999lstm_111_3547001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35464562"
 lstm_111/StatefulPartitionedCallæ
!dense_134/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0dense_134_3547004dense_134_3547006*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_35464752#
!dense_134/StatefulPartitionedCallĄ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_3547009dense_135_3547011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_35464972#
!dense_135/StatefulPartitionedCall
reshape_67/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_67_layer_call_and_return_conditional_losses_35465162
reshape_67/PartitionedCallŌ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_111_3546997*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mul²
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_3547011*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mul
IdentityIdentity#reshape_67/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identity®
NoOpNoOp"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall1^dense_135/bias/Regularizer/Square/ReadVariableOp!^lstm_111/StatefulPartitionedCall@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_46
ź	
Ŗ
/__inference_sequential_45_layer_call_fn_3546548
input_46
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinput_46unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_45_layer_call_and_return_conditional_losses_35465312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:’’’’’’’’’
"
_user_specified_name
input_46
ÉŅ
“
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548895

inputs>
+lstm_cell_111_split_readvariableop_resource:	<
-lstm_cell_111_split_1_readvariableop_resource:	8
%lstm_cell_111_readvariableop_resource:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_111/ReadVariableOp¢lstm_cell_111/ReadVariableOp_1¢lstm_cell_111/ReadVariableOp_2¢lstm_cell_111/ReadVariableOp_3¢"lstm_cell_111/split/ReadVariableOp¢$lstm_cell_111/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
:’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2|
lstm_cell_111/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_111/ones_like/Shape
lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_111/ones_like/Const¼
lstm_cell_111/ones_likeFill&lstm_cell_111/ones_like/Shape:output:0&lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/ones_like
lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout/Const·
lstm_cell_111/dropout/MulMul lstm_cell_111/ones_like:output:0$lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Mul
lstm_cell_111/dropout/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout/Shapeū
2lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2¢¦ī24
2lstm_cell_111/dropout/random_uniform/RandomUniform
$lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_111/dropout/GreaterEqual/yö
"lstm_cell_111/dropout/GreaterEqualGreaterEqual;lstm_cell_111/dropout/random_uniform/RandomUniform:output:0-lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_cell_111/dropout/GreaterEqual©
lstm_cell_111/dropout/CastCast&lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Cast²
lstm_cell_111/dropout/Mul_1Mullstm_cell_111/dropout/Mul:z:0lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Mul_1
lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_1/Const½
lstm_cell_111/dropout_1/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Mul
lstm_cell_111/dropout_1/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_1/Shape
4lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ņĢ26
4lstm_cell_111/dropout_1/random_uniform/RandomUniform
&lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_1/GreaterEqual/yž
$lstm_cell_111/dropout_1/GreaterEqualGreaterEqual=lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_1/GreaterEqualÆ
lstm_cell_111/dropout_1/CastCast(lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Castŗ
lstm_cell_111/dropout_1/Mul_1Mullstm_cell_111/dropout_1/Mul:z:0 lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Mul_1
lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_2/Const½
lstm_cell_111/dropout_2/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Mul
lstm_cell_111/dropout_2/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_2/Shape
4lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ę26
4lstm_cell_111/dropout_2/random_uniform/RandomUniform
&lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_2/GreaterEqual/yž
$lstm_cell_111/dropout_2/GreaterEqualGreaterEqual=lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_2/GreaterEqualÆ
lstm_cell_111/dropout_2/CastCast(lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Castŗ
lstm_cell_111/dropout_2/Mul_1Mullstm_cell_111/dropout_2/Mul:z:0 lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Mul_1
lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_3/Const½
lstm_cell_111/dropout_3/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Mul
lstm_cell_111/dropout_3/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_3/Shape
4lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2š26
4lstm_cell_111/dropout_3/random_uniform/RandomUniform
&lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_3/GreaterEqual/yž
$lstm_cell_111/dropout_3/GreaterEqualGreaterEqual=lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_3/GreaterEqualÆ
lstm_cell_111/dropout_3/CastCast(lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Castŗ
lstm_cell_111/dropout_3/Mul_1Mullstm_cell_111/dropout_3/Mul:z:0 lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Mul_1
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_111/split/split_dimµ
"lstm_cell_111/split/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_111/split/ReadVariableOpß
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0*lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_111/split 
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul¤
lstm_cell_111/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_1¤
lstm_cell_111/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_2¤
lstm_cell_111/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_3
lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_111/split_1/split_dim·
$lstm_cell_111/split_1/ReadVariableOpReadVariableOp-lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_111/split_1/ReadVariableOp×
lstm_cell_111/split_1Split(lstm_cell_111/split_1/split_dim:output:0,lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_111/split_1«
lstm_cell_111/BiasAddBiasAddlstm_cell_111/MatMul:product:0lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd±
lstm_cell_111/BiasAdd_1BiasAdd lstm_cell_111/MatMul_1:product:0lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_1±
lstm_cell_111/BiasAdd_2BiasAdd lstm_cell_111/MatMul_2:product:0lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_2±
lstm_cell_111/BiasAdd_3BiasAdd lstm_cell_111/MatMul_3:product:0lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_3
lstm_cell_111/mulMulzeros:output:0lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul
lstm_cell_111/mul_1Mulzeros:output:0!lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_1
lstm_cell_111/mul_2Mulzeros:output:0!lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_2
lstm_cell_111/mul_3Mulzeros:output:0!lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_3£
lstm_cell_111/ReadVariableOpReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_111/ReadVariableOp
!lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_111/strided_slice/stack
#lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice/stack_1
#lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_111/strided_slice/stack_2Š
lstm_cell_111/strided_sliceStridedSlice$lstm_cell_111/ReadVariableOp:value:0*lstm_cell_111/strided_slice/stack:output:0,lstm_cell_111/strided_slice/stack_1:output:0,lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice©
lstm_cell_111/MatMul_4MatMullstm_cell_111/mul:z:0$lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_4£
lstm_cell_111/addAddV2lstm_cell_111/BiasAdd:output:0 lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add
lstm_cell_111/SigmoidSigmoidlstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid§
lstm_cell_111/ReadVariableOp_1ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_1
#lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice_1/stack
%lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_111/strided_slice_1/stack_1
%lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_1/stack_2Ü
lstm_cell_111/strided_slice_1StridedSlice&lstm_cell_111/ReadVariableOp_1:value:0,lstm_cell_111/strided_slice_1/stack:output:0.lstm_cell_111/strided_slice_1/stack_1:output:0.lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_1­
lstm_cell_111/MatMul_5MatMullstm_cell_111/mul_1:z:0&lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_5©
lstm_cell_111/add_1AddV2 lstm_cell_111/BiasAdd_1:output:0 lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_1
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_1
lstm_cell_111/mul_4Mullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_4§
lstm_cell_111/ReadVariableOp_2ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_2
#lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_111/strided_slice_2/stack
%lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_111/strided_slice_2/stack_1
%lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_2/stack_2Ü
lstm_cell_111/strided_slice_2StridedSlice&lstm_cell_111/ReadVariableOp_2:value:0,lstm_cell_111/strided_slice_2/stack:output:0.lstm_cell_111/strided_slice_2/stack_1:output:0.lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_2­
lstm_cell_111/MatMul_6MatMullstm_cell_111/mul_2:z:0&lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_6©
lstm_cell_111/add_2AddV2 lstm_cell_111/BiasAdd_2:output:0 lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_2{
lstm_cell_111/ReluRelulstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu 
lstm_cell_111/mul_5Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_5
lstm_cell_111/add_3AddV2lstm_cell_111/mul_4:z:0lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_3§
lstm_cell_111/ReadVariableOp_3ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_3
#lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_111/strided_slice_3/stack
%lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_111/strided_slice_3/stack_1
%lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_3/stack_2Ü
lstm_cell_111/strided_slice_3StridedSlice&lstm_cell_111/ReadVariableOp_3:value:0,lstm_cell_111/strided_slice_3/stack:output:0.lstm_cell_111/strided_slice_3/stack_1:output:0.lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_3­
lstm_cell_111/MatMul_7MatMullstm_cell_111/mul_3:z:0&lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_7©
lstm_cell_111/add_4AddV2 lstm_cell_111/BiasAdd_3:output:0 lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_4
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_2
lstm_cell_111/Relu_1Relulstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu_1¤
lstm_cell_111/mul_6Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_111_split_readvariableop_resource-lstm_cell_111_split_1_readvariableop_resource%lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3548730*
condR
while_cond_3548729*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeč
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm„
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeļ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityę
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_111/ReadVariableOp^lstm_cell_111/ReadVariableOp_1^lstm_cell_111/ReadVariableOp_2^lstm_cell_111/ReadVariableOp_3#^lstm_cell_111/split/ReadVariableOp%^lstm_cell_111/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_111/ReadVariableOplstm_cell_111/ReadVariableOp2@
lstm_cell_111/ReadVariableOp_1lstm_cell_111/ReadVariableOp_12@
lstm_cell_111/ReadVariableOp_2lstm_cell_111/ReadVariableOp_22@
lstm_cell_111/ReadVariableOp_3lstm_cell_111/ReadVariableOp_32H
"lstm_cell_111/split/ReadVariableOp"lstm_cell_111/split/ReadVariableOp2L
$lstm_cell_111/split_1/ReadVariableOp$lstm_cell_111/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

¬
__inference_loss_fn_0_3548975G
9dense_135_bias_regularizer_square_readvariableop_resource:
identity¢0dense_135/bias/Regularizer/Square/ReadVariableOpŚ
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOp9dense_135_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mull
IdentityIdentity"dense_135/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp1^dense_135/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp
ä	
Ø
/__inference_sequential_45_layer_call_fn_3547139

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_45_layer_call_and_return_conditional_losses_35469582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ś,
Ą
J__inference_sequential_45_layer_call_and_return_conditional_losses_3546958

inputs#
lstm_111_3546927:	
lstm_111_3546929:	#
lstm_111_3546931:	 #
dense_134_3546934:  
dense_134_3546936: #
dense_135_3546939: 
dense_135_3546941:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall¢0dense_135/bias/Regularizer/Square/ReadVariableOp¢ lstm_111/StatefulPartitionedCall¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp«
 lstm_111/StatefulPartitionedCallStatefulPartitionedCallinputslstm_111_3546927lstm_111_3546929lstm_111_3546931*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35468942"
 lstm_111/StatefulPartitionedCallæ
!dense_134/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0dense_134_3546934dense_134_3546936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_35464752#
!dense_134/StatefulPartitionedCallĄ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_3546939dense_135_3546941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_35464972#
!dense_135/StatefulPartitionedCall
reshape_67/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_67_layer_call_and_return_conditional_losses_35465162
reshape_67/PartitionedCallŌ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_111_3546927*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mul²
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_3546941*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mul
IdentityIdentity#reshape_67/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identity®
NoOpNoOp"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall1^dense_135/bias/Regularizer/Square/ReadVariableOp!^lstm_111/StatefulPartitionedCall@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
é

ü
lstm_111_while_cond_3547551.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_30
,lstm_111_while_less_lstm_111_strided_slice_1G
Clstm_111_while_lstm_111_while_cond_3547551___redundant_placeholder0G
Clstm_111_while_lstm_111_while_cond_3547551___redundant_placeholder1G
Clstm_111_while_lstm_111_while_cond_3547551___redundant_placeholder2G
Clstm_111_while_lstm_111_while_cond_3547551___redundant_placeholder3
lstm_111_while_identity

lstm_111/while/LessLesslstm_111_while_placeholder,lstm_111_while_less_lstm_111_strided_slice_1*
T0*
_output_shapes
: 2
lstm_111/while/Lessx
lstm_111/while/IdentityIdentitylstm_111/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_111/while/Identity";
lstm_111_while_identity lstm_111/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
¾
ŗ
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547745

inputsG
4lstm_111_lstm_cell_111_split_readvariableop_resource:	E
6lstm_111_lstm_cell_111_split_1_readvariableop_resource:	A
.lstm_111_lstm_cell_111_readvariableop_resource:	 :
(dense_134_matmul_readvariableop_resource:  7
)dense_134_biasadd_readvariableop_resource: :
(dense_135_matmul_readvariableop_resource: 7
)dense_135_biasadd_readvariableop_resource:
identity¢ dense_134/BiasAdd/ReadVariableOp¢dense_134/MatMul/ReadVariableOp¢ dense_135/BiasAdd/ReadVariableOp¢dense_135/MatMul/ReadVariableOp¢0dense_135/bias/Regularizer/Square/ReadVariableOp¢%lstm_111/lstm_cell_111/ReadVariableOp¢'lstm_111/lstm_cell_111/ReadVariableOp_1¢'lstm_111/lstm_cell_111/ReadVariableOp_2¢'lstm_111/lstm_cell_111/ReadVariableOp_3¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢+lstm_111/lstm_cell_111/split/ReadVariableOp¢-lstm_111/lstm_cell_111/split_1/ReadVariableOp¢lstm_111/whileV
lstm_111/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_111/Shape
lstm_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_111/strided_slice/stack
lstm_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_111/strided_slice/stack_1
lstm_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_111/strided_slice/stack_2
lstm_111/strided_sliceStridedSlicelstm_111/Shape:output:0%lstm_111/strided_slice/stack:output:0'lstm_111/strided_slice/stack_1:output:0'lstm_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_111/strided_slicen
lstm_111/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros/mul/y
lstm_111/zeros/mulMullstm_111/strided_slice:output:0lstm_111/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros/mulq
lstm_111/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
lstm_111/zeros/Less/y
lstm_111/zeros/LessLesslstm_111/zeros/mul:z:0lstm_111/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros/Lesst
lstm_111/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros/packed/1§
lstm_111/zeros/packedPacklstm_111/strided_slice:output:0 lstm_111/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_111/zeros/packedq
lstm_111/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_111/zeros/Const
lstm_111/zerosFilllstm_111/zeros/packed:output:0lstm_111/zeros/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/zerosr
lstm_111/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros_1/mul/y
lstm_111/zeros_1/mulMullstm_111/strided_slice:output:0lstm_111/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros_1/mulu
lstm_111/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
lstm_111/zeros_1/Less/y
lstm_111/zeros_1/LessLesslstm_111/zeros_1/mul:z:0 lstm_111/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_111/zeros_1/Lessx
lstm_111/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/zeros_1/packed/1­
lstm_111/zeros_1/packedPacklstm_111/strided_slice:output:0"lstm_111/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_111/zeros_1/packedu
lstm_111/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_111/zeros_1/Const”
lstm_111/zeros_1Fill lstm_111/zeros_1/packed:output:0lstm_111/zeros_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/zeros_1
lstm_111/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_111/transpose/perm
lstm_111/transpose	Transposeinputs lstm_111/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’2
lstm_111/transposej
lstm_111/Shape_1Shapelstm_111/transpose:y:0*
T0*
_output_shapes
:2
lstm_111/Shape_1
lstm_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_111/strided_slice_1/stack
 lstm_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_1/stack_1
 lstm_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_1/stack_2¤
lstm_111/strided_slice_1StridedSlicelstm_111/Shape_1:output:0'lstm_111/strided_slice_1/stack:output:0)lstm_111/strided_slice_1/stack_1:output:0)lstm_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_111/strided_slice_1
$lstm_111/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2&
$lstm_111/TensorArrayV2/element_shapeÖ
lstm_111/TensorArrayV2TensorListReserve-lstm_111/TensorArrayV2/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_111/TensorArrayV2Ń
>lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2@
>lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_111/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_111/transpose:y:0Glstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_111/TensorArrayUnstack/TensorListFromTensor
lstm_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_111/strided_slice_2/stack
 lstm_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_2/stack_1
 lstm_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_2/stack_2²
lstm_111/strided_slice_2StridedSlicelstm_111/transpose:y:0'lstm_111/strided_slice_2/stack:output:0)lstm_111/strided_slice_2/stack_1:output:0)lstm_111/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
lstm_111/strided_slice_2
&lstm_111/lstm_cell_111/ones_like/ShapeShapelstm_111/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_111/lstm_cell_111/ones_like/Shape
&lstm_111/lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_111/lstm_cell_111/ones_like/Constą
 lstm_111/lstm_cell_111/ones_likeFill/lstm_111/lstm_cell_111/ones_like/Shape:output:0/lstm_111/lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/ones_like
$lstm_111/lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2&
$lstm_111/lstm_cell_111/dropout/ConstŪ
"lstm_111/lstm_cell_111/dropout/MulMul)lstm_111/lstm_cell_111/ones_like:output:0-lstm_111/lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_111/lstm_cell_111/dropout/Mul„
$lstm_111/lstm_cell_111/dropout/ShapeShape)lstm_111/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_111/lstm_cell_111/dropout/Shape
;lstm_111/lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform-lstm_111/lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2§Ņ2=
;lstm_111/lstm_cell_111/dropout/random_uniform/RandomUniform£
-lstm_111/lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_111/lstm_cell_111/dropout/GreaterEqual/y
+lstm_111/lstm_cell_111/dropout/GreaterEqualGreaterEqualDlstm_111/lstm_cell_111/dropout/random_uniform/RandomUniform:output:06lstm_111/lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2-
+lstm_111/lstm_cell_111/dropout/GreaterEqualÄ
#lstm_111/lstm_cell_111/dropout/CastCast/lstm_111/lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2%
#lstm_111/lstm_cell_111/dropout/CastÖ
$lstm_111/lstm_cell_111/dropout/Mul_1Mul&lstm_111/lstm_cell_111/dropout/Mul:z:0'lstm_111/lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/lstm_cell_111/dropout/Mul_1
&lstm_111/lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2(
&lstm_111/lstm_cell_111/dropout_1/Constį
$lstm_111/lstm_cell_111/dropout_1/MulMul)lstm_111/lstm_cell_111/ones_like:output:0/lstm_111/lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/lstm_cell_111/dropout_1/Mul©
&lstm_111/lstm_cell_111/dropout_1/ShapeShape)lstm_111/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_111/lstm_cell_111/dropout_1/Shape
=lstm_111/lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform/lstm_111/lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ēč62?
=lstm_111/lstm_cell_111/dropout_1/random_uniform/RandomUniform§
/lstm_111/lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_111/lstm_cell_111/dropout_1/GreaterEqual/y¢
-lstm_111/lstm_cell_111/dropout_1/GreaterEqualGreaterEqualFlstm_111/lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:08lstm_111/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-lstm_111/lstm_cell_111/dropout_1/GreaterEqualŹ
%lstm_111/lstm_cell_111/dropout_1/CastCast1lstm_111/lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/lstm_cell_111/dropout_1/CastŽ
&lstm_111/lstm_cell_111/dropout_1/Mul_1Mul(lstm_111/lstm_cell_111/dropout_1/Mul:z:0)lstm_111/lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/lstm_cell_111/dropout_1/Mul_1
&lstm_111/lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2(
&lstm_111/lstm_cell_111/dropout_2/Constį
$lstm_111/lstm_cell_111/dropout_2/MulMul)lstm_111/lstm_cell_111/ones_like:output:0/lstm_111/lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/lstm_cell_111/dropout_2/Mul©
&lstm_111/lstm_cell_111/dropout_2/ShapeShape)lstm_111/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_111/lstm_cell_111/dropout_2/Shape
=lstm_111/lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform/lstm_111/lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ėó2?
=lstm_111/lstm_cell_111/dropout_2/random_uniform/RandomUniform§
/lstm_111/lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_111/lstm_cell_111/dropout_2/GreaterEqual/y¢
-lstm_111/lstm_cell_111/dropout_2/GreaterEqualGreaterEqualFlstm_111/lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:08lstm_111/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-lstm_111/lstm_cell_111/dropout_2/GreaterEqualŹ
%lstm_111/lstm_cell_111/dropout_2/CastCast1lstm_111/lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/lstm_cell_111/dropout_2/CastŽ
&lstm_111/lstm_cell_111/dropout_2/Mul_1Mul(lstm_111/lstm_cell_111/dropout_2/Mul:z:0)lstm_111/lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/lstm_cell_111/dropout_2/Mul_1
&lstm_111/lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2(
&lstm_111/lstm_cell_111/dropout_3/Constį
$lstm_111/lstm_cell_111/dropout_3/MulMul)lstm_111/lstm_cell_111/ones_like:output:0/lstm_111/lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_111/lstm_cell_111/dropout_3/Mul©
&lstm_111/lstm_cell_111/dropout_3/ShapeShape)lstm_111/lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_111/lstm_cell_111/dropout_3/Shape
=lstm_111/lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform/lstm_111/lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Ö±2?
=lstm_111/lstm_cell_111/dropout_3/random_uniform/RandomUniform§
/lstm_111/lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_111/lstm_cell_111/dropout_3/GreaterEqual/y¢
-lstm_111/lstm_cell_111/dropout_3/GreaterEqualGreaterEqualFlstm_111/lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:08lstm_111/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2/
-lstm_111/lstm_cell_111/dropout_3/GreaterEqualŹ
%lstm_111/lstm_cell_111/dropout_3/CastCast1lstm_111/lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2'
%lstm_111/lstm_cell_111/dropout_3/CastŽ
&lstm_111/lstm_cell_111/dropout_3/Mul_1Mul(lstm_111/lstm_cell_111/dropout_3/Mul:z:0)lstm_111/lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2(
&lstm_111/lstm_cell_111/dropout_3/Mul_1
&lstm_111/lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_111/lstm_cell_111/split/split_dimŠ
+lstm_111/lstm_cell_111/split/ReadVariableOpReadVariableOp4lstm_111_lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_111/lstm_cell_111/split/ReadVariableOp
lstm_111/lstm_cell_111/splitSplit/lstm_111/lstm_cell_111/split/split_dim:output:03lstm_111/lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_111/lstm_cell_111/splitÄ
lstm_111/lstm_cell_111/MatMulMatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/MatMulČ
lstm_111/lstm_cell_111/MatMul_1MatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_1Č
lstm_111/lstm_cell_111/MatMul_2MatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_2Č
lstm_111/lstm_cell_111/MatMul_3MatMul!lstm_111/strided_slice_2:output:0%lstm_111/lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_3
(lstm_111/lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm_111/lstm_cell_111/split_1/split_dimŅ
-lstm_111/lstm_cell_111/split_1/ReadVariableOpReadVariableOp6lstm_111_lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02/
-lstm_111/lstm_cell_111/split_1/ReadVariableOpū
lstm_111/lstm_cell_111/split_1Split1lstm_111/lstm_cell_111/split_1/split_dim:output:05lstm_111/lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm_111/lstm_cell_111/split_1Ļ
lstm_111/lstm_cell_111/BiasAddBiasAdd'lstm_111/lstm_cell_111/MatMul:product:0'lstm_111/lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2 
lstm_111/lstm_cell_111/BiasAddÕ
 lstm_111/lstm_cell_111/BiasAdd_1BiasAdd)lstm_111/lstm_cell_111/MatMul_1:product:0'lstm_111/lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/BiasAdd_1Õ
 lstm_111/lstm_cell_111/BiasAdd_2BiasAdd)lstm_111/lstm_cell_111/MatMul_2:product:0'lstm_111/lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/BiasAdd_2Õ
 lstm_111/lstm_cell_111/BiasAdd_3BiasAdd)lstm_111/lstm_cell_111/MatMul_3:product:0'lstm_111/lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/BiasAdd_3“
lstm_111/lstm_cell_111/mulMullstm_111/zeros:output:0(lstm_111/lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mulŗ
lstm_111/lstm_cell_111/mul_1Mullstm_111/zeros:output:0*lstm_111/lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_1ŗ
lstm_111/lstm_cell_111/mul_2Mullstm_111/zeros:output:0*lstm_111/lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_2ŗ
lstm_111/lstm_cell_111/mul_3Mullstm_111/zeros:output:0*lstm_111/lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_3¾
%lstm_111/lstm_cell_111/ReadVariableOpReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_111/lstm_cell_111/ReadVariableOp©
*lstm_111/lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_111/lstm_cell_111/strided_slice/stack­
,lstm_111/lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_111/lstm_cell_111/strided_slice/stack_1­
,lstm_111/lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_111/lstm_cell_111/strided_slice/stack_2
$lstm_111/lstm_cell_111/strided_sliceStridedSlice-lstm_111/lstm_cell_111/ReadVariableOp:value:03lstm_111/lstm_cell_111/strided_slice/stack:output:05lstm_111/lstm_cell_111/strided_slice/stack_1:output:05lstm_111/lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_111/lstm_cell_111/strided_sliceĶ
lstm_111/lstm_cell_111/MatMul_4MatMullstm_111/lstm_cell_111/mul:z:0-lstm_111/lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_4Ē
lstm_111/lstm_cell_111/addAddV2'lstm_111/lstm_cell_111/BiasAdd:output:0)lstm_111/lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add
lstm_111/lstm_cell_111/SigmoidSigmoidlstm_111/lstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2 
lstm_111/lstm_cell_111/SigmoidĀ
'lstm_111/lstm_cell_111/ReadVariableOp_1ReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_111/lstm_cell_111/ReadVariableOp_1­
,lstm_111/lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_111/lstm_cell_111/strided_slice_1/stack±
.lstm_111/lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_111/lstm_cell_111/strided_slice_1/stack_1±
.lstm_111/lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_111/lstm_cell_111/strided_slice_1/stack_2
&lstm_111/lstm_cell_111/strided_slice_1StridedSlice/lstm_111/lstm_cell_111/ReadVariableOp_1:value:05lstm_111/lstm_cell_111/strided_slice_1/stack:output:07lstm_111/lstm_cell_111/strided_slice_1/stack_1:output:07lstm_111/lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_111/lstm_cell_111/strided_slice_1Ń
lstm_111/lstm_cell_111/MatMul_5MatMul lstm_111/lstm_cell_111/mul_1:z:0/lstm_111/lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_5Ķ
lstm_111/lstm_cell_111/add_1AddV2)lstm_111/lstm_cell_111/BiasAdd_1:output:0)lstm_111/lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_1£
 lstm_111/lstm_cell_111/Sigmoid_1Sigmoid lstm_111/lstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/Sigmoid_1¶
lstm_111/lstm_cell_111/mul_4Mul$lstm_111/lstm_cell_111/Sigmoid_1:y:0lstm_111/zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_4Ā
'lstm_111/lstm_cell_111/ReadVariableOp_2ReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_111/lstm_cell_111/ReadVariableOp_2­
,lstm_111/lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_111/lstm_cell_111/strided_slice_2/stack±
.lstm_111/lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_111/lstm_cell_111/strided_slice_2/stack_1±
.lstm_111/lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_111/lstm_cell_111/strided_slice_2/stack_2
&lstm_111/lstm_cell_111/strided_slice_2StridedSlice/lstm_111/lstm_cell_111/ReadVariableOp_2:value:05lstm_111/lstm_cell_111/strided_slice_2/stack:output:07lstm_111/lstm_cell_111/strided_slice_2/stack_1:output:07lstm_111/lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_111/lstm_cell_111/strided_slice_2Ń
lstm_111/lstm_cell_111/MatMul_6MatMul lstm_111/lstm_cell_111/mul_2:z:0/lstm_111/lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_6Ķ
lstm_111/lstm_cell_111/add_2AddV2)lstm_111/lstm_cell_111/BiasAdd_2:output:0)lstm_111/lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_2
lstm_111/lstm_cell_111/ReluRelu lstm_111/lstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/ReluÄ
lstm_111/lstm_cell_111/mul_5Mul"lstm_111/lstm_cell_111/Sigmoid:y:0)lstm_111/lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_5»
lstm_111/lstm_cell_111/add_3AddV2 lstm_111/lstm_cell_111/mul_4:z:0 lstm_111/lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_3Ā
'lstm_111/lstm_cell_111/ReadVariableOp_3ReadVariableOp.lstm_111_lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_111/lstm_cell_111/ReadVariableOp_3­
,lstm_111/lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_111/lstm_cell_111/strided_slice_3/stack±
.lstm_111/lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_111/lstm_cell_111/strided_slice_3/stack_1±
.lstm_111/lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_111/lstm_cell_111/strided_slice_3/stack_2
&lstm_111/lstm_cell_111/strided_slice_3StridedSlice/lstm_111/lstm_cell_111/ReadVariableOp_3:value:05lstm_111/lstm_cell_111/strided_slice_3/stack:output:07lstm_111/lstm_cell_111/strided_slice_3/stack_1:output:07lstm_111/lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_111/lstm_cell_111/strided_slice_3Ń
lstm_111/lstm_cell_111/MatMul_7MatMul lstm_111/lstm_cell_111/mul_3:z:0/lstm_111/lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2!
lstm_111/lstm_cell_111/MatMul_7Ķ
lstm_111/lstm_cell_111/add_4AddV2)lstm_111/lstm_cell_111/BiasAdd_3:output:0)lstm_111/lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/add_4£
 lstm_111/lstm_cell_111/Sigmoid_2Sigmoid lstm_111/lstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2"
 lstm_111/lstm_cell_111/Sigmoid_2
lstm_111/lstm_cell_111/Relu_1Relu lstm_111/lstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/Relu_1Č
lstm_111/lstm_cell_111/mul_6Mul$lstm_111/lstm_cell_111/Sigmoid_2:y:0+lstm_111/lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_111/lstm_cell_111/mul_6”
&lstm_111/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2(
&lstm_111/TensorArrayV2_1/element_shapeÜ
lstm_111/TensorArrayV2_1TensorListReserve/lstm_111/TensorArrayV2_1/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_111/TensorArrayV2_1`
lstm_111/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/time
!lstm_111/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2#
!lstm_111/while/maximum_iterations|
lstm_111/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_111/while/loop_counter
lstm_111/whileWhile$lstm_111/while/loop_counter:output:0*lstm_111/while/maximum_iterations:output:0lstm_111/time:output:0!lstm_111/TensorArrayV2_1:handle:0lstm_111/zeros:output:0lstm_111/zeros_1:output:0!lstm_111/strided_slice_1:output:0@lstm_111/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_111_lstm_cell_111_split_readvariableop_resource6lstm_111_lstm_cell_111_split_1_readvariableop_resource.lstm_111_lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_111_while_body_3547552*'
condR
lstm_111_while_cond_3547551*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
lstm_111/whileĒ
9lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2;
9lstm_111/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_111/TensorArrayV2Stack/TensorListStackTensorListStacklstm_111/while:output:3Blstm_111/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:’’’’’’’’’ *
element_dtype02-
+lstm_111/TensorArrayV2Stack/TensorListStack
lstm_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2 
lstm_111/strided_slice_3/stack
 lstm_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_111/strided_slice_3/stack_1
 lstm_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_111/strided_slice_3/stack_2Š
lstm_111/strided_slice_3StridedSlice4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_111/strided_slice_3/stack:output:0)lstm_111/strided_slice_3/stack_1:output:0)lstm_111/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’ *
shrink_axis_mask2
lstm_111/strided_slice_3
lstm_111/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_111/transpose_1/permÉ
lstm_111/transpose_1	Transpose4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_111/transpose_1/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’ 2
lstm_111/transpose_1x
lstm_111/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_111/runtime«
dense_134/MatMul/ReadVariableOpReadVariableOp(dense_134_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_134/MatMul/ReadVariableOp¬
dense_134/MatMulMatMul!lstm_111/strided_slice_3:output:0'dense_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dense_134/MatMulŖ
 dense_134/BiasAdd/ReadVariableOpReadVariableOp)dense_134_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_134/BiasAdd/ReadVariableOp©
dense_134/BiasAddBiasAdddense_134/MatMul:product:0(dense_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dense_134/BiasAddv
dense_134/ReluReludense_134/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
dense_134/Relu«
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_135/MatMul/ReadVariableOp§
dense_135/MatMulMatMuldense_134/Relu:activations:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense_135/MatMulŖ
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_135/BiasAdd/ReadVariableOp©
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense_135/BiasAddn
reshape_67/ShapeShapedense_135/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_67/Shape
reshape_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_67/strided_slice/stack
 reshape_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_67/strided_slice/stack_1
 reshape_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_67/strided_slice/stack_2¤
reshape_67/strided_sliceStridedSlicereshape_67/Shape:output:0'reshape_67/strided_slice/stack:output:0)reshape_67/strided_slice/stack_1:output:0)reshape_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_67/strided_slicez
reshape_67/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_67/Reshape/shape/1z
reshape_67/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_67/Reshape/shape/2×
reshape_67/Reshape/shapePack!reshape_67/strided_slice:output:0#reshape_67/Reshape/shape/1:output:0#reshape_67/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_67/Reshape/shapeØ
reshape_67/ReshapeReshapedense_135/BiasAdd:output:0!reshape_67/Reshape/shape:output:0*
T0*+
_output_shapes
:’’’’’’’’’2
reshape_67/Reshapeų
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4lstm_111_lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mulŹ
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mulz
IdentityIdentityreshape_67/Reshape:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identityā
NoOpNoOp!^dense_134/BiasAdd/ReadVariableOp ^dense_134/MatMul/ReadVariableOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp1^dense_135/bias/Regularizer/Square/ReadVariableOp&^lstm_111/lstm_cell_111/ReadVariableOp(^lstm_111/lstm_cell_111/ReadVariableOp_1(^lstm_111/lstm_cell_111/ReadVariableOp_2(^lstm_111/lstm_cell_111/ReadVariableOp_3@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp,^lstm_111/lstm_cell_111/split/ReadVariableOp.^lstm_111/lstm_cell_111/split_1/ReadVariableOp^lstm_111/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2D
 dense_134/BiasAdd/ReadVariableOp dense_134/BiasAdd/ReadVariableOp2B
dense_134/MatMul/ReadVariableOpdense_134/MatMul/ReadVariableOp2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp2N
%lstm_111/lstm_cell_111/ReadVariableOp%lstm_111/lstm_cell_111/ReadVariableOp2R
'lstm_111/lstm_cell_111/ReadVariableOp_1'lstm_111/lstm_cell_111/ReadVariableOp_12R
'lstm_111/lstm_cell_111/ReadVariableOp_2'lstm_111/lstm_cell_111/ReadVariableOp_22R
'lstm_111/lstm_cell_111/ReadVariableOp_3'lstm_111/lstm_cell_111/ReadVariableOp_32
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2Z
+lstm_111/lstm_cell_111/split/ReadVariableOp+lstm_111/lstm_cell_111/split/ReadVariableOp2^
-lstm_111/lstm_cell_111/split_1/ReadVariableOp-lstm_111/lstm_cell_111/split_1/ReadVariableOp2 
lstm_111/whilelstm_111/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ś
Č
while_cond_3546322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3546322___redundant_placeholder05
1while_while_cond_3546322___redundant_placeholder15
1while_while_cond_3546322___redundant_placeholder25
1while_while_cond_3546322___redundant_placeholder3
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
@: : : : :’’’’’’’’’ :’’’’’’’’’ : ::::: 
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
:’’’’’’’’’ :-)
'
_output_shapes
:’’’’’’’’’ :

_output_shapes
: :

_output_shapes
:
Ź
H
,__inference_reshape_67_layer_call_fn_3548951

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
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_67_layer_call_and_return_conditional_losses_35465162
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
žŅ
¶
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548345
inputs_0>
+lstm_cell_111_split_readvariableop_resource:	<
-lstm_cell_111_split_1_readvariableop_resource:	8
%lstm_cell_111_readvariableop_resource:	 
identity¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_111/ReadVariableOp¢lstm_cell_111/ReadVariableOp_1¢lstm_cell_111/ReadVariableOp_2¢lstm_cell_111/ReadVariableOp_3¢"lstm_cell_111/split/ReadVariableOp¢$lstm_cell_111/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2ā
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
B :č2
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
:’’’’’’’’’ 2
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
B :č2
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
:’’’’’’’’’ 2	
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
 :’’’’’’’’’’’’’’’’’’2
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
strided_slice_1/stack_2ī
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
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
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
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2|
lstm_cell_111/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_111/ones_like/Shape
lstm_cell_111/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_111/ones_like/Const¼
lstm_cell_111/ones_likeFill&lstm_cell_111/ones_like/Shape:output:0&lstm_cell_111/ones_like/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/ones_like
lstm_cell_111/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout/Const·
lstm_cell_111/dropout/MulMul lstm_cell_111/ones_like:output:0$lstm_cell_111/dropout/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Mul
lstm_cell_111/dropout/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout/Shapeś
2lstm_cell_111/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_111/dropout/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2Åu24
2lstm_cell_111/dropout/random_uniform/RandomUniform
$lstm_cell_111/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_111/dropout/GreaterEqual/yö
"lstm_cell_111/dropout/GreaterEqualGreaterEqual;lstm_cell_111/dropout/random_uniform/RandomUniform:output:0-lstm_cell_111/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2$
"lstm_cell_111/dropout/GreaterEqual©
lstm_cell_111/dropout/CastCast&lstm_cell_111/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Cast²
lstm_cell_111/dropout/Mul_1Mullstm_cell_111/dropout/Mul:z:0lstm_cell_111/dropout/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout/Mul_1
lstm_cell_111/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_1/Const½
lstm_cell_111/dropout_1/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_1/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Mul
lstm_cell_111/dropout_1/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_1/Shape
4lstm_cell_111/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_1/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ų26
4lstm_cell_111/dropout_1/random_uniform/RandomUniform
&lstm_cell_111/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_1/GreaterEqual/yž
$lstm_cell_111/dropout_1/GreaterEqualGreaterEqual=lstm_cell_111/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_1/GreaterEqualÆ
lstm_cell_111/dropout_1/CastCast(lstm_cell_111/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Castŗ
lstm_cell_111/dropout_1/Mul_1Mullstm_cell_111/dropout_1/Mul:z:0 lstm_cell_111/dropout_1/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_1/Mul_1
lstm_cell_111/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_2/Const½
lstm_cell_111/dropout_2/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_2/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Mul
lstm_cell_111/dropout_2/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_2/Shape
4lstm_cell_111/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_2/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2ī26
4lstm_cell_111/dropout_2/random_uniform/RandomUniform
&lstm_cell_111/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_2/GreaterEqual/yž
$lstm_cell_111/dropout_2/GreaterEqualGreaterEqual=lstm_cell_111/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_2/GreaterEqualÆ
lstm_cell_111/dropout_2/CastCast(lstm_cell_111/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Castŗ
lstm_cell_111/dropout_2/Mul_1Mullstm_cell_111/dropout_2/Mul:z:0 lstm_cell_111/dropout_2/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_2/Mul_1
lstm_cell_111/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŪ¶?2
lstm_cell_111/dropout_3/Const½
lstm_cell_111/dropout_3/MulMul lstm_cell_111/ones_like:output:0&lstm_cell_111/dropout_3/Const:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Mul
lstm_cell_111/dropout_3/ShapeShape lstm_cell_111/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_111/dropout_3/Shape
4lstm_cell_111/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_111/dropout_3/Shape:output:0*
T0*'
_output_shapes
:’’’’’’’’’ *
dtype0*
seedŅ	*
seed2’Õ26
4lstm_cell_111/dropout_3/random_uniform/RandomUniform
&lstm_cell_111/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_111/dropout_3/GreaterEqual/yž
$lstm_cell_111/dropout_3/GreaterEqualGreaterEqual=lstm_cell_111/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_111/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2&
$lstm_cell_111/dropout_3/GreaterEqualÆ
lstm_cell_111/dropout_3/CastCast(lstm_cell_111/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Castŗ
lstm_cell_111/dropout_3/Mul_1Mullstm_cell_111/dropout_3/Mul:z:0 lstm_cell_111/dropout_3/Cast:y:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/dropout_3/Mul_1
lstm_cell_111/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_111/split/split_dimµ
"lstm_cell_111/split/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_111/split/ReadVariableOpß
lstm_cell_111/splitSplit&lstm_cell_111/split/split_dim:output:0*lstm_cell_111/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_111/split 
lstm_cell_111/MatMulMatMulstrided_slice_2:output:0lstm_cell_111/split:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul¤
lstm_cell_111/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_111/split:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_1¤
lstm_cell_111/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_111/split:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_2¤
lstm_cell_111/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_111/split:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_3
lstm_cell_111/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_111/split_1/split_dim·
$lstm_cell_111/split_1/ReadVariableOpReadVariableOp-lstm_cell_111_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_111/split_1/ReadVariableOp×
lstm_cell_111/split_1Split(lstm_cell_111/split_1/split_dim:output:0,lstm_cell_111/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_111/split_1«
lstm_cell_111/BiasAddBiasAddlstm_cell_111/MatMul:product:0lstm_cell_111/split_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd±
lstm_cell_111/BiasAdd_1BiasAdd lstm_cell_111/MatMul_1:product:0lstm_cell_111/split_1:output:1*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_1±
lstm_cell_111/BiasAdd_2BiasAdd lstm_cell_111/MatMul_2:product:0lstm_cell_111/split_1:output:2*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_2±
lstm_cell_111/BiasAdd_3BiasAdd lstm_cell_111/MatMul_3:product:0lstm_cell_111/split_1:output:3*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/BiasAdd_3
lstm_cell_111/mulMulzeros:output:0lstm_cell_111/dropout/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul
lstm_cell_111/mul_1Mulzeros:output:0!lstm_cell_111/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_1
lstm_cell_111/mul_2Mulzeros:output:0!lstm_cell_111/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_2
lstm_cell_111/mul_3Mulzeros:output:0!lstm_cell_111/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_3£
lstm_cell_111/ReadVariableOpReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_111/ReadVariableOp
!lstm_cell_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_111/strided_slice/stack
#lstm_cell_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice/stack_1
#lstm_cell_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_111/strided_slice/stack_2Š
lstm_cell_111/strided_sliceStridedSlice$lstm_cell_111/ReadVariableOp:value:0*lstm_cell_111/strided_slice/stack:output:0,lstm_cell_111/strided_slice/stack_1:output:0,lstm_cell_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice©
lstm_cell_111/MatMul_4MatMullstm_cell_111/mul:z:0$lstm_cell_111/strided_slice:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_4£
lstm_cell_111/addAddV2lstm_cell_111/BiasAdd:output:0 lstm_cell_111/MatMul_4:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add
lstm_cell_111/SigmoidSigmoidlstm_cell_111/add:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid§
lstm_cell_111/ReadVariableOp_1ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_1
#lstm_cell_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_111/strided_slice_1/stack
%lstm_cell_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_111/strided_slice_1/stack_1
%lstm_cell_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_1/stack_2Ü
lstm_cell_111/strided_slice_1StridedSlice&lstm_cell_111/ReadVariableOp_1:value:0,lstm_cell_111/strided_slice_1/stack:output:0.lstm_cell_111/strided_slice_1/stack_1:output:0.lstm_cell_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_1­
lstm_cell_111/MatMul_5MatMullstm_cell_111/mul_1:z:0&lstm_cell_111/strided_slice_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_5©
lstm_cell_111/add_1AddV2 lstm_cell_111/BiasAdd_1:output:0 lstm_cell_111/MatMul_5:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_1
lstm_cell_111/Sigmoid_1Sigmoidlstm_cell_111/add_1:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_1
lstm_cell_111/mul_4Mullstm_cell_111/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_4§
lstm_cell_111/ReadVariableOp_2ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_2
#lstm_cell_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_111/strided_slice_2/stack
%lstm_cell_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_111/strided_slice_2/stack_1
%lstm_cell_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_2/stack_2Ü
lstm_cell_111/strided_slice_2StridedSlice&lstm_cell_111/ReadVariableOp_2:value:0,lstm_cell_111/strided_slice_2/stack:output:0.lstm_cell_111/strided_slice_2/stack_1:output:0.lstm_cell_111/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_2­
lstm_cell_111/MatMul_6MatMullstm_cell_111/mul_2:z:0&lstm_cell_111/strided_slice_2:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_6©
lstm_cell_111/add_2AddV2 lstm_cell_111/BiasAdd_2:output:0 lstm_cell_111/MatMul_6:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_2{
lstm_cell_111/ReluRelulstm_cell_111/add_2:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu 
lstm_cell_111/mul_5Mullstm_cell_111/Sigmoid:y:0 lstm_cell_111/Relu:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_5
lstm_cell_111/add_3AddV2lstm_cell_111/mul_4:z:0lstm_cell_111/mul_5:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_3§
lstm_cell_111/ReadVariableOp_3ReadVariableOp%lstm_cell_111_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_111/ReadVariableOp_3
#lstm_cell_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_111/strided_slice_3/stack
%lstm_cell_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_111/strided_slice_3/stack_1
%lstm_cell_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_111/strided_slice_3/stack_2Ü
lstm_cell_111/strided_slice_3StridedSlice&lstm_cell_111/ReadVariableOp_3:value:0,lstm_cell_111/strided_slice_3/stack:output:0.lstm_cell_111/strided_slice_3/stack_1:output:0.lstm_cell_111/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_111/strided_slice_3­
lstm_cell_111/MatMul_7MatMullstm_cell_111/mul_3:z:0&lstm_cell_111/strided_slice_3:output:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/MatMul_7©
lstm_cell_111/add_4AddV2 lstm_cell_111/BiasAdd_3:output:0 lstm_cell_111/MatMul_7:product:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/add_4
lstm_cell_111/Sigmoid_2Sigmoidlstm_cell_111/add_4:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Sigmoid_2
lstm_cell_111/Relu_1Relulstm_cell_111/add_3:z:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/Relu_1¤
lstm_cell_111/mul_6Mullstm_cell_111/Sigmoid_2:y:0"lstm_cell_111/Relu_1:activations:0*
T0*'
_output_shapes
:’’’’’’’’’ 2
lstm_cell_111/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    2
TensorArrayV2_1/element_shapeø
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
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_111_split_readvariableop_resource-lstm_cell_111_split_1_readvariableop_resource%lstm_cell_111_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3548180*
condR
while_cond_3548179*K
output_shapes:
8: : : : :’’’’’’’’’ :’’’’’’’’’ : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’    22
0TensorArrayV2Stack/TensorListStack/element_shapeń
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
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
:’’’’’’’’’ *
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
 :’’’’’’’’’’’’’’’’’’ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeļ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_111_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ 2

Identityę
NoOpNoOp@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_111/ReadVariableOp^lstm_cell_111/ReadVariableOp_1^lstm_cell_111/ReadVariableOp_2^lstm_cell_111/ReadVariableOp_3#^lstm_cell_111/split/ReadVariableOp%^lstm_cell_111/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_111/ReadVariableOplstm_cell_111/ReadVariableOp2@
lstm_cell_111/ReadVariableOp_1lstm_cell_111/ReadVariableOp_12@
lstm_cell_111/ReadVariableOp_2lstm_cell_111/ReadVariableOp_22@
lstm_cell_111/ReadVariableOp_3lstm_cell_111/ReadVariableOp_32H
"lstm_cell_111/split/ReadVariableOp"lstm_cell_111/split/ReadVariableOp2L
$lstm_cell_111/split_1/ReadVariableOp$lstm_cell_111/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ś,
Ą
J__inference_sequential_45_layer_call_and_return_conditional_losses_3546531

inputs#
lstm_111_3546457:	
lstm_111_3546459:	#
lstm_111_3546461:	 #
dense_134_3546476:  
dense_134_3546478: #
dense_135_3546498: 
dense_135_3546500:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall¢0dense_135/bias/Regularizer/Square/ReadVariableOp¢ lstm_111/StatefulPartitionedCall¢?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp«
 lstm_111/StatefulPartitionedCallStatefulPartitionedCallinputslstm_111_3546457lstm_111_3546459lstm_111_3546461*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_35464562"
 lstm_111/StatefulPartitionedCallæ
!dense_134/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0dense_134_3546476dense_134_3546478*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_35464752#
!dense_134/StatefulPartitionedCallĄ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_3546498dense_135_3546500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_35464972#
!dense_135/StatefulPartitionedCall
reshape_67/PartitionedCallPartitionedCall*dense_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_67_layer_call_and_return_conditional_losses_35465162
reshape_67/PartitionedCallŌ
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_111_3546457*
_output_shapes
:	*
dtype02A
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOpį
0lstm_111/lstm_cell_111/kernel/Regularizer/SquareSquareGlstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_111/lstm_cell_111/kernel/Regularizer/Square³
/lstm_111/lstm_cell_111/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_111/lstm_cell_111/kernel/Regularizer/Constö
-lstm_111/lstm_cell_111/kernel/Regularizer/SumSum4lstm_111/lstm_cell_111/kernel/Regularizer/Square:y:08lstm_111/lstm_cell_111/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/Sum§
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ń821
/lstm_111/lstm_cell_111/kernel/Regularizer/mul/xų
-lstm_111/lstm_cell_111/kernel/Regularizer/mulMul8lstm_111/lstm_cell_111/kernel/Regularizer/mul/x:output:06lstm_111/lstm_cell_111/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_111/lstm_cell_111/kernel/Regularizer/mul²
0dense_135/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_135_3546500*
_output_shapes
:*
dtype022
0dense_135/bias/Regularizer/Square/ReadVariableOpÆ
!dense_135/bias/Regularizer/SquareSquare8dense_135/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_135/bias/Regularizer/Square
 dense_135/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_135/bias/Regularizer/Constŗ
dense_135/bias/Regularizer/SumSum%dense_135/bias/Regularizer/Square:y:0)dense_135/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/Sum
 dense_135/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_135/bias/Regularizer/mul/x¼
dense_135/bias/Regularizer/mulMul)dense_135/bias/Regularizer/mul/x:output:0'dense_135/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_135/bias/Regularizer/mul
IdentityIdentity#reshape_67/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’2

Identity®
NoOpNoOp"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall1^dense_135/bias/Regularizer/Square/ReadVariableOp!^lstm_111/StatefulPartitionedCall@^lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:’’’’’’’’’: : : : : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall2d
0dense_135/bias/Regularizer/Square/ReadVariableOp0dense_135/bias/Regularizer/Square/ReadVariableOp2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2
?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp?lstm_111/lstm_cell_111/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs"ØL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
A
input_465
serving_default_input_46:0’’’’’’’’’B

reshape_674
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:
č
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
`_default_save_signature
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ć
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
„
trainable_variables
	variables
regularization_losses
 	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
Ń
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
Ź

)layers
trainable_variables
	variables
*metrics
+layer_metrics
,layer_regularization_losses
-non_trainable_variables
regularization_losses
a__call__
`_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
lserving_default"
signature_map
į
.
state_size

&kernel
'recurrent_kernel
(bias
/trainable_variables
0	variables
1regularization_losses
2	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
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
trainable_variables
	variables
4metrics
5layer_metrics
6layer_regularization_losses
7non_trainable_variables

8states
regularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
":   2dense_134/kernel
: 2dense_134/bias
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
trainable_variables
	variables
:metrics
;layer_metrics
<layer_regularization_losses
=non_trainable_variables
regularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
":  2dense_135/kernel
:2dense_135/bias
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
trainable_variables
	variables
?metrics
@layer_metrics
Alayer_regularization_losses
Bnon_trainable_variables
regularization_losses
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

Clayers
trainable_variables
	variables
Dmetrics
Elayer_metrics
Flayer_regularization_losses
Gnon_trainable_variables
regularization_losses
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
0:.	2lstm_111/lstm_cell_111/kernel
::8	 2'lstm_111/lstm_cell_111/recurrent_kernel
*:(2lstm_111/lstm_cell_111/bias
<
0
1
2
3"
trackable_list_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
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
/trainable_variables
0	variables
Jmetrics
Klayer_metrics
Llayer_regularization_losses
Mnon_trainable_variables
1regularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
'
k0"
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
'
o0"
trackable_list_wrapper
 "
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
':%  2Adam/dense_134/kernel/m
!: 2Adam/dense_134/bias/m
':% 2Adam/dense_135/kernel/m
!:2Adam/dense_135/bias/m
5:3	2$Adam/lstm_111/lstm_cell_111/kernel/m
?:=	 2.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m
/:-2"Adam/lstm_111/lstm_cell_111/bias/m
':%  2Adam/dense_134/kernel/v
!: 2Adam/dense_134/bias/v
':% 2Adam/dense_135/kernel/v
!:2Adam/dense_135/bias/v
5:3	2$Adam/lstm_111/lstm_cell_111/kernel/v
?:=	 2.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v
/:-2"Adam/lstm_111/lstm_cell_111/bias/v
ĪBĖ
"__inference__wrapped_model_3545423input_46"
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
annotationsŖ *
 
2
/__inference_sequential_45_layer_call_fn_3546548
/__inference_sequential_45_layer_call_fn_3547120
/__inference_sequential_45_layer_call_fn_3547139
/__inference_sequential_45_layer_call_fn_3546994Ą
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
kwonlydefaultsŖ 
annotationsŖ *
 
ö2ó
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547410
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547745
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547028
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547062Ą
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
kwonlydefaultsŖ 
annotationsŖ *
 
2
*__inference_lstm_111_layer_call_fn_3547762
*__inference_lstm_111_layer_call_fn_3547773
*__inference_lstm_111_layer_call_fn_3547784
*__inference_lstm_111_layer_call_fn_3547795Õ
Ģ²Č
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
kwonlydefaultsŖ 
annotationsŖ *
 
÷2ō
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548038
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548345
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548588
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548895Õ
Ģ²Č
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
kwonlydefaultsŖ 
annotationsŖ *
 
Õ2Ņ
+__inference_dense_134_layer_call_fn_3548904¢
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
annotationsŖ *
 
š2ķ
F__inference_dense_134_layer_call_and_return_conditional_losses_3548915¢
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
annotationsŖ *
 
Õ2Ņ
+__inference_dense_135_layer_call_fn_3548930¢
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
annotationsŖ *
 
š2ķ
F__inference_dense_135_layer_call_and_return_conditional_losses_3548946¢
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
annotationsŖ *
 
Ö2Ó
,__inference_reshape_67_layer_call_fn_3548951¢
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
annotationsŖ *
 
ń2ī
G__inference_reshape_67_layer_call_and_return_conditional_losses_3548964¢
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
annotationsŖ *
 
“2±
__inference_loss_fn_0_3548975
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
annotationsŖ *¢ 
ĶBŹ
%__inference_signature_wrapper_3547101input_46"
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
annotationsŖ *
 
¦2£
/__inference_lstm_cell_111_layer_call_fn_3548998
/__inference_lstm_cell_111_layer_call_fn_3549015¾
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
kwonlydefaultsŖ 
annotationsŖ *
 
Ü2Ł
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3549096
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3549209¾
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
kwonlydefaultsŖ 
annotationsŖ *
 
“2±
__inference_loss_fn_1_3549220
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
annotationsŖ *¢ £
"__inference__wrapped_model_3545423}&('5¢2
+¢(
&#
input_46’’’’’’’’’
Ŗ ";Ŗ8
6

reshape_67(%

reshape_67’’’’’’’’’¦
F__inference_dense_134_layer_call_and_return_conditional_losses_3548915\/¢,
%¢"
 
inputs’’’’’’’’’ 
Ŗ "%¢"

0’’’’’’’’’ 
 ~
+__inference_dense_134_layer_call_fn_3548904O/¢,
%¢"
 
inputs’’’’’’’’’ 
Ŗ "’’’’’’’’’ ¦
F__inference_dense_135_layer_call_and_return_conditional_losses_3548946\/¢,
%¢"
 
inputs’’’’’’’’’ 
Ŗ "%¢"

0’’’’’’’’’
 ~
+__inference_dense_135_layer_call_fn_3548930O/¢,
%¢"
 
inputs’’’’’’’’’ 
Ŗ "’’’’’’’’’<
__inference_loss_fn_0_3548975¢

¢ 
Ŗ " <
__inference_loss_fn_1_3549220&¢

¢ 
Ŗ " Ę
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548038}&('O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "%¢"

0’’’’’’’’’ 
 Ę
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548345}&('O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "%¢"

0’’’’’’’’’ 
 ¶
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548588m&('?¢<
5¢2
$!
inputs’’’’’’’’’

 
p 

 
Ŗ "%¢"

0’’’’’’’’’ 
 ¶
E__inference_lstm_111_layer_call_and_return_conditional_losses_3548895m&('?¢<
5¢2
$!
inputs’’’’’’’’’

 
p

 
Ŗ "%¢"

0’’’’’’’’’ 
 
*__inference_lstm_111_layer_call_fn_3547762p&('O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’ 
*__inference_lstm_111_layer_call_fn_3547773p&('O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’ 
*__inference_lstm_111_layer_call_fn_3547784`&('?¢<
5¢2
$!
inputs’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’ 
*__inference_lstm_111_layer_call_fn_3547795`&('?¢<
5¢2
$!
inputs’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’ Ģ
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3549096ż&('¢}
v¢s
 
inputs’’’’’’’’’
K¢H
"
states/0’’’’’’’’’ 
"
states/1’’’’’’’’’ 
p 
Ŗ "s¢p
i¢f

0/0’’’’’’’’’ 
EB

0/1/0’’’’’’’’’ 

0/1/1’’’’’’’’’ 
 Ģ
J__inference_lstm_cell_111_layer_call_and_return_conditional_losses_3549209ż&('¢}
v¢s
 
inputs’’’’’’’’’
K¢H
"
states/0’’’’’’’’’ 
"
states/1’’’’’’’’’ 
p
Ŗ "s¢p
i¢f

0/0’’’’’’’’’ 
EB

0/1/0’’’’’’’’’ 

0/1/1’’’’’’’’’ 
 ”
/__inference_lstm_cell_111_layer_call_fn_3548998ķ&('¢}
v¢s
 
inputs’’’’’’’’’
K¢H
"
states/0’’’’’’’’’ 
"
states/1’’’’’’’’’ 
p 
Ŗ "c¢`

0’’’’’’’’’ 
A>

1/0’’’’’’’’’ 

1/1’’’’’’’’’ ”
/__inference_lstm_cell_111_layer_call_fn_3549015ķ&('¢}
v¢s
 
inputs’’’’’’’’’
K¢H
"
states/0’’’’’’’’’ 
"
states/1’’’’’’’’’ 
p
Ŗ "c¢`

0’’’’’’’’’ 
A>

1/0’’’’’’’’’ 

1/1’’’’’’’’’ §
G__inference_reshape_67_layer_call_and_return_conditional_losses_3548964\/¢,
%¢"
 
inputs’’’’’’’’’
Ŗ ")¢&

0’’’’’’’’’
 
,__inference_reshape_67_layer_call_fn_3548951O/¢,
%¢"
 
inputs’’’’’’’’’
Ŗ "’’’’’’’’’Į
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547028s&('=¢:
3¢0
&#
input_46’’’’’’’’’
p 

 
Ŗ ")¢&

0’’’’’’’’’
 Į
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547062s&('=¢:
3¢0
&#
input_46’’’’’’’’’
p

 
Ŗ ")¢&

0’’’’’’’’’
 æ
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547410q&(';¢8
1¢.
$!
inputs’’’’’’’’’
p 

 
Ŗ ")¢&

0’’’’’’’’’
 æ
J__inference_sequential_45_layer_call_and_return_conditional_losses_3547745q&(';¢8
1¢.
$!
inputs’’’’’’’’’
p

 
Ŗ ")¢&

0’’’’’’’’’
 
/__inference_sequential_45_layer_call_fn_3546548f&('=¢:
3¢0
&#
input_46’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’
/__inference_sequential_45_layer_call_fn_3546994f&('=¢:
3¢0
&#
input_46’’’’’’’’’
p

 
Ŗ "’’’’’’’’’
/__inference_sequential_45_layer_call_fn_3547120d&(';¢8
1¢.
$!
inputs’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’
/__inference_sequential_45_layer_call_fn_3547139d&(';¢8
1¢.
$!
inputs’’’’’’’’’
p

 
Ŗ "’’’’’’’’’³
%__inference_signature_wrapper_3547101&('A¢>
¢ 
7Ŗ4
2
input_46&#
input_46’’’’’’’’’";Ŗ8
6

reshape_67(%

reshape_67’’’’’’’’’