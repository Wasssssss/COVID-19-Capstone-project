î&
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8îÎ%
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:  *
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
: *
dtype0
z
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

: *
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
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
lstm_45/lstm_cell_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_45/lstm_cell_45/kernel

/lstm_45/lstm_cell_45/kernel/Read/ReadVariableOpReadVariableOplstm_45/lstm_cell_45/kernel*
_output_shapes
:	*
dtype0
§
%lstm_45/lstm_cell_45/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_45/lstm_cell_45/recurrent_kernel
 
9lstm_45/lstm_cell_45/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_45/lstm_cell_45/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_45/lstm_cell_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_45/lstm_cell_45/bias

-lstm_45/lstm_cell_45/bias/Read/ReadVariableOpReadVariableOplstm_45/lstm_cell_45/bias*
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
Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_54/kernel/m

*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_54/bias/m
y
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes
: *
dtype0

Adam/dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_55/kernel/m

*Adam/dense_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_55/bias/m
y
(Adam/dense_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_45/lstm_cell_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_45/lstm_cell_45/kernel/m

6Adam/lstm_45/lstm_cell_45/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_45/lstm_cell_45/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_45/lstm_cell_45/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m
®
@Adam/lstm_45/lstm_cell_45/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_45/lstm_cell_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_45/lstm_cell_45/bias/m

4Adam/lstm_45/lstm_cell_45/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_45/lstm_cell_45/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_54/kernel/v

*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_54/bias/v
y
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
_output_shapes
: *
dtype0

Adam/dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_55/kernel/v

*Adam/dense_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_55/bias/v
y
(Adam/dense_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_45/lstm_cell_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_45/lstm_cell_45/kernel/v

6Adam/lstm_45/lstm_cell_45/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_45/lstm_cell_45/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_45/lstm_cell_45/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v
®
@Adam/lstm_45/lstm_cell_45/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_45/lstm_cell_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_45/lstm_cell_45/bias/v

4Adam/lstm_45/lstm_cell_45/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_45/lstm_cell_45/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
·,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ò+
valueè+Bå+ BÞ+
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
trainable_variables
)layer_metrics
	variables
*metrics

+layers
,non_trainable_variables
regularization_losses
-layer_regularization_losses
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
trainable_variables
3layer_metrics
	variables
4metrics

5layers

6states
7non_trainable_variables
regularization_losses
8layer_regularization_losses
[Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
9layer_metrics
:metrics
	variables

;layers
<non_trainable_variables
regularization_losses
=layer_regularization_losses
[Y
VARIABLE_VALUEdense_55/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
>layer_metrics
?metrics
	variables

@layers
Anon_trainable_variables
regularization_losses
Blayer_regularization_losses
 
 
 
­
trainable_variables
Clayer_metrics
Dmetrics
	variables

Elayers
Fnon_trainable_variables
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
a_
VARIABLE_VALUElstm_45/lstm_cell_45/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_45/lstm_cell_45/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_45/lstm_cell_45/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

H0

0
1
2
3
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
/trainable_variables
Ilayer_metrics
Jmetrics
0	variables

Klayers
Lnon_trainable_variables
1regularization_losses
Mlayer_regularization_losses
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
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_45/lstm_cell_45/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_45/lstm_cell_45/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_45/lstm_cell_45/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_45/lstm_cell_45/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_45/lstm_cell_45/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_45/lstm_cell_45/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_19Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_19lstm_45/lstm_cell_45/kernellstm_45/lstm_cell_45/bias%lstm_45/lstm_cell_45/recurrent_kerneldense_54/kerneldense_54/biasdense_55/kerneldense_55/bias*
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
%__inference_signature_wrapper_1556690
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_45/lstm_cell_45/kernel/Read/ReadVariableOp9lstm_45/lstm_cell_45/recurrent_kernel/Read/ReadVariableOp-lstm_45/lstm_cell_45/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp*Adam/dense_55/kernel/m/Read/ReadVariableOp(Adam/dense_55/bias/m/Read/ReadVariableOp6Adam/lstm_45/lstm_cell_45/kernel/m/Read/ReadVariableOp@Adam/lstm_45/lstm_cell_45/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_45/lstm_cell_45/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOp*Adam/dense_55/kernel/v/Read/ReadVariableOp(Adam/dense_55/bias/v/Read/ReadVariableOp6Adam/lstm_45/lstm_cell_45/kernel/v/Read/ReadVariableOp@Adam/lstm_45/lstm_cell_45/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_45/lstm_cell_45/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_1558916
Å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_54/kerneldense_54/biasdense_55/kerneldense_55/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_45/lstm_cell_45/kernel%lstm_45/lstm_cell_45/recurrent_kernellstm_45/lstm_cell_45/biastotalcountAdam/dense_54/kernel/mAdam/dense_54/bias/mAdam/dense_55/kernel/mAdam/dense_55/bias/m"Adam/lstm_45/lstm_cell_45/kernel/m,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m Adam/lstm_45/lstm_cell_45/bias/mAdam/dense_54/kernel/vAdam/dense_54/bias/vAdam/dense_55/kernel/vAdam/dense_55/bias/v"Adam/lstm_45/lstm_cell_45/kernel/v,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v Adam/lstm_45/lstm_cell_45/bias/v*(
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
#__inference__traced_restore_1559010ëÏ$
¨
¥	
while_body_1557450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_45_split_readvariableop_resource_0:	C
4while_lstm_cell_45_split_1_readvariableop_resource_0:	?
,while_lstm_cell_45_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_45_split_readvariableop_resource:	A
2while_lstm_cell_45_split_1_readvariableop_resource:	=
*while_lstm_cell_45_readvariableop_resource:	 ¢!while/lstm_cell_45/ReadVariableOp¢#while/lstm_cell_45/ReadVariableOp_1¢#while/lstm_cell_45/ReadVariableOp_2¢#while/lstm_cell_45/ReadVariableOp_3¢'while/lstm_cell_45/split/ReadVariableOp¢)while/lstm_cell_45/split_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_45/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_45/ones_like/Shape
"while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_45/ones_like/ConstÐ
while/lstm_cell_45/ones_likeFill+while/lstm_cell_45/ones_like/Shape:output:0+while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/ones_like
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_45/split/split_dimÆ
'while/lstm_cell_45/split/ReadVariableOpReadVariableOp2while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_45/split/ReadVariableOpó
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_45/splitÇ
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMulË
while/lstm_cell_45/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_1Ë
while/lstm_cell_45/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_2Ë
while/lstm_cell_45/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_3
$while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_45/split_1/split_dimÈ
)while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_45/split_1/ReadVariableOpë
while/lstm_cell_45/split_1Split-while/lstm_cell_45/split_1/split_dim:output:01while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_45/split_1¿
while/lstm_cell_45/BiasAddBiasAdd#while/lstm_cell_45/MatMul:product:0#while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAddÅ
while/lstm_cell_45/BiasAdd_1BiasAdd%while/lstm_cell_45/MatMul_1:product:0#while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_1Å
while/lstm_cell_45/BiasAdd_2BiasAdd%while/lstm_cell_45/MatMul_2:product:0#while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_2Å
while/lstm_cell_45/BiasAdd_3BiasAdd%while/lstm_cell_45/MatMul_3:product:0#while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_3¥
while/lstm_cell_45/mulMulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul©
while/lstm_cell_45/mul_1Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_1©
while/lstm_cell_45/mul_2Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_2©
while/lstm_cell_45/mul_3Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_3´
!while/lstm_cell_45/ReadVariableOpReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_45/ReadVariableOp¡
&while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_45/strided_slice/stack¥
(while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice/stack_1¥
(while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_45/strided_slice/stack_2î
 while/lstm_cell_45/strided_sliceStridedSlice)while/lstm_cell_45/ReadVariableOp:value:0/while/lstm_cell_45/strided_slice/stack:output:01while/lstm_cell_45/strided_slice/stack_1:output:01while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_45/strided_slice½
while/lstm_cell_45/MatMul_4MatMulwhile/lstm_cell_45/mul:z:0)while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_4·
while/lstm_cell_45/addAddV2#while/lstm_cell_45/BiasAdd:output:0%while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add
while/lstm_cell_45/SigmoidSigmoidwhile/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid¸
#while/lstm_cell_45/ReadVariableOp_1ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_1¥
(while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice_1/stack©
*while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_45/strided_slice_1/stack_1©
*while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_1/stack_2ú
"while/lstm_cell_45/strided_slice_1StridedSlice+while/lstm_cell_45/ReadVariableOp_1:value:01while/lstm_cell_45/strided_slice_1/stack:output:03while/lstm_cell_45/strided_slice_1/stack_1:output:03while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_1Á
while/lstm_cell_45/MatMul_5MatMulwhile/lstm_cell_45/mul_1:z:0+while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_5½
while/lstm_cell_45/add_1AddV2%while/lstm_cell_45/BiasAdd_1:output:0%while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_1
while/lstm_cell_45/Sigmoid_1Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_1¤
while/lstm_cell_45/mul_4Mul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_4¸
#while/lstm_cell_45/ReadVariableOp_2ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_2¥
(while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_45/strided_slice_2/stack©
*while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_45/strided_slice_2/stack_1©
*while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_2/stack_2ú
"while/lstm_cell_45/strided_slice_2StridedSlice+while/lstm_cell_45/ReadVariableOp_2:value:01while/lstm_cell_45/strided_slice_2/stack:output:03while/lstm_cell_45/strided_slice_2/stack_1:output:03while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_2Á
while/lstm_cell_45/MatMul_6MatMulwhile/lstm_cell_45/mul_2:z:0+while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_6½
while/lstm_cell_45/add_2AddV2%while/lstm_cell_45/BiasAdd_2:output:0%while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_2
while/lstm_cell_45/ReluReluwhile/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu´
while/lstm_cell_45/mul_5Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_5«
while/lstm_cell_45/add_3AddV2while/lstm_cell_45/mul_4:z:0while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_3¸
#while/lstm_cell_45/ReadVariableOp_3ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_3¥
(while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_45/strided_slice_3/stack©
*while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_45/strided_slice_3/stack_1©
*while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_3/stack_2ú
"while/lstm_cell_45/strided_slice_3StridedSlice+while/lstm_cell_45/ReadVariableOp_3:value:01while/lstm_cell_45/strided_slice_3/stack:output:03while/lstm_cell_45/strided_slice_3/stack_1:output:03while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_3Á
while/lstm_cell_45/MatMul_7MatMulwhile/lstm_cell_45/mul_3:z:0+while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_7½
while/lstm_cell_45/add_4AddV2%while/lstm_cell_45/BiasAdd_3:output:0%while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_4
while/lstm_cell_45/Sigmoid_2Sigmoidwhile/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_2
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu_1¸
while/lstm_cell_45/mul_6Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_45/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_45/ReadVariableOp$^while/lstm_cell_45/ReadVariableOp_1$^while/lstm_cell_45/ReadVariableOp_2$^while/lstm_cell_45/ReadVariableOp_3(^while/lstm_cell_45/split/ReadVariableOp*^while/lstm_cell_45/split_1/ReadVariableOp*"
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
*while_lstm_cell_45_readvariableop_resource,while_lstm_cell_45_readvariableop_resource_0"j
2while_lstm_cell_45_split_1_readvariableop_resource4while_lstm_cell_45_split_1_readvariableop_resource_0"f
0while_lstm_cell_45_split_readvariableop_resource2while_lstm_cell_45_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_45/ReadVariableOp!while/lstm_cell_45/ReadVariableOp2J
#while/lstm_cell_45/ReadVariableOp_1#while/lstm_cell_45/ReadVariableOp_12J
#while/lstm_cell_45/ReadVariableOp_2#while/lstm_cell_45/ReadVariableOp_22J
#while/lstm_cell_45/ReadVariableOp_3#while/lstm_cell_45/ReadVariableOp_32R
'while/lstm_cell_45/split/ReadVariableOp'while/lstm_cell_45/split/ReadVariableOp2V
)while/lstm_cell_45/split_1/ReadVariableOp)while/lstm_cell_45/split_1/ReadVariableOp: 
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
ð

(sequential_18_lstm_45_while_cond_1554862H
Dsequential_18_lstm_45_while_sequential_18_lstm_45_while_loop_counterN
Jsequential_18_lstm_45_while_sequential_18_lstm_45_while_maximum_iterations+
'sequential_18_lstm_45_while_placeholder-
)sequential_18_lstm_45_while_placeholder_1-
)sequential_18_lstm_45_while_placeholder_2-
)sequential_18_lstm_45_while_placeholder_3J
Fsequential_18_lstm_45_while_less_sequential_18_lstm_45_strided_slice_1a
]sequential_18_lstm_45_while_sequential_18_lstm_45_while_cond_1554862___redundant_placeholder0a
]sequential_18_lstm_45_while_sequential_18_lstm_45_while_cond_1554862___redundant_placeholder1a
]sequential_18_lstm_45_while_sequential_18_lstm_45_while_cond_1554862___redundant_placeholder2a
]sequential_18_lstm_45_while_sequential_18_lstm_45_while_cond_1554862___redundant_placeholder3(
$sequential_18_lstm_45_while_identity
Þ
 sequential_18/lstm_45/while/LessLess'sequential_18_lstm_45_while_placeholderFsequential_18_lstm_45_while_less_sequential_18_lstm_45_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_18/lstm_45/while/Less
$sequential_18/lstm_45/while/IdentityIdentity$sequential_18/lstm_45/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_18/lstm_45/while/Identity"U
$sequential_18_lstm_45_while_identity-sequential_18/lstm_45/while/Identity:output:0*(
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
ä	
¨
/__inference_sequential_18_layer_call_fn_1557334

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
J__inference_sequential_18_layer_call_and_return_conditional_losses_15565472
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
Ú
È
while_cond_1555149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555149___redundant_placeholder05
1while_while_cond_1555149___redundant_placeholder15
1while_while_cond_1555149___redundant_placeholder25
1while_while_cond_1555149___redundant_placeholder3
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
¨
¶
)__inference_lstm_45_layer_call_fn_1558473

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15560452
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
¸
÷
.__inference_lstm_cell_45_layer_call_fn_1558781

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÄ
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_15551362
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
ò+
³
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556547

inputs"
lstm_45_1556516:	
lstm_45_1556518:	"
lstm_45_1556520:	 "
dense_54_1556523:  
dense_54_1556525: "
dense_55_1556528: 
dense_55_1556530:
identity¢ dense_54/StatefulPartitionedCall¢ dense_55/StatefulPartitionedCall¢/dense_55/bias/Regularizer/Square/ReadVariableOp¢lstm_45/StatefulPartitionedCall¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¥
lstm_45/StatefulPartitionedCallStatefulPartitionedCallinputslstm_45_1556516lstm_45_1556518lstm_45_1556520*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15564832!
lstm_45/StatefulPartitionedCall¹
 dense_54/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0dense_54_1556523dense_54_1556525*
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
GPU 2J 8 *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_15560642"
 dense_54/StatefulPartitionedCallº
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_1556528dense_55_1556530*
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
GPU 2J 8 *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_15560862"
 dense_55/StatefulPartitionedCall
reshape_27/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
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
G__inference_reshape_27_layer_call_and_return_conditional_losses_15561052
reshape_27/PartitionedCallÏ
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_45_1556516*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/mul¯
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_1556530*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul
IdentityIdentity#reshape_27/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp ^lstm_45/StatefulPartitionedCall>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü²
¥	
while_body_1558275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_45_split_readvariableop_resource_0:	C
4while_lstm_cell_45_split_1_readvariableop_resource_0:	?
,while_lstm_cell_45_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_45_split_readvariableop_resource:	A
2while_lstm_cell_45_split_1_readvariableop_resource:	=
*while_lstm_cell_45_readvariableop_resource:	 ¢!while/lstm_cell_45/ReadVariableOp¢#while/lstm_cell_45/ReadVariableOp_1¢#while/lstm_cell_45/ReadVariableOp_2¢#while/lstm_cell_45/ReadVariableOp_3¢'while/lstm_cell_45/split/ReadVariableOp¢)while/lstm_cell_45/split_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_45/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_45/ones_like/Shape
"while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_45/ones_like/ConstÐ
while/lstm_cell_45/ones_likeFill+while/lstm_cell_45/ones_like/Shape:output:0+while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/ones_like
 while/lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_45/dropout/ConstË
while/lstm_cell_45/dropout/MulMul%while/lstm_cell_45/ones_like:output:0)while/lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_45/dropout/Mul
 while/lstm_cell_45/dropout/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_45/dropout/Shape
7while/lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ªì29
7while/lstm_cell_45/dropout/random_uniform/RandomUniform
)while/lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_45/dropout/GreaterEqual/y
'while/lstm_cell_45/dropout/GreaterEqualGreaterEqual@while/lstm_cell_45/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_45/dropout/GreaterEqual¸
while/lstm_cell_45/dropout/CastCast+while/lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_45/dropout/CastÆ
 while/lstm_cell_45/dropout/Mul_1Mul"while/lstm_cell_45/dropout/Mul:z:0#while/lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout/Mul_1
"while/lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_1/ConstÑ
 while/lstm_cell_45/dropout_1/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_1/Mul
"while/lstm_cell_45/dropout_1/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_1/Shape
9while/lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2é¡«2;
9while/lstm_cell_45/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_1/GreaterEqual/y
)while/lstm_cell_45/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_1/GreaterEqual¾
!while/lstm_cell_45/dropout_1/CastCast-while/lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_1/CastÎ
"while/lstm_cell_45/dropout_1/Mul_1Mul$while/lstm_cell_45/dropout_1/Mul:z:0%while/lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_1/Mul_1
"while/lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_2/ConstÑ
 while/lstm_cell_45/dropout_2/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_2/Mul
"while/lstm_cell_45/dropout_2/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_2/Shape
9while/lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¹ß§2;
9while/lstm_cell_45/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_2/GreaterEqual/y
)while/lstm_cell_45/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_2/GreaterEqual¾
!while/lstm_cell_45/dropout_2/CastCast-while/lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_2/CastÎ
"while/lstm_cell_45/dropout_2/Mul_1Mul$while/lstm_cell_45/dropout_2/Mul:z:0%while/lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_2/Mul_1
"while/lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_3/ConstÑ
 while/lstm_cell_45/dropout_3/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_3/Mul
"while/lstm_cell_45/dropout_3/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_3/Shape
9while/lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ó¼2;
9while/lstm_cell_45/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_3/GreaterEqual/y
)while/lstm_cell_45/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_3/GreaterEqual¾
!while/lstm_cell_45/dropout_3/CastCast-while/lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_3/CastÎ
"while/lstm_cell_45/dropout_3/Mul_1Mul$while/lstm_cell_45/dropout_3/Mul:z:0%while/lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_3/Mul_1
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_45/split/split_dimÆ
'while/lstm_cell_45/split/ReadVariableOpReadVariableOp2while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_45/split/ReadVariableOpó
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_45/splitÇ
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMulË
while/lstm_cell_45/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_1Ë
while/lstm_cell_45/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_2Ë
while/lstm_cell_45/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_3
$while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_45/split_1/split_dimÈ
)while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_45/split_1/ReadVariableOpë
while/lstm_cell_45/split_1Split-while/lstm_cell_45/split_1/split_dim:output:01while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_45/split_1¿
while/lstm_cell_45/BiasAddBiasAdd#while/lstm_cell_45/MatMul:product:0#while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAddÅ
while/lstm_cell_45/BiasAdd_1BiasAdd%while/lstm_cell_45/MatMul_1:product:0#while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_1Å
while/lstm_cell_45/BiasAdd_2BiasAdd%while/lstm_cell_45/MatMul_2:product:0#while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_2Å
while/lstm_cell_45/BiasAdd_3BiasAdd%while/lstm_cell_45/MatMul_3:product:0#while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_3¤
while/lstm_cell_45/mulMulwhile_placeholder_2$while/lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mulª
while/lstm_cell_45/mul_1Mulwhile_placeholder_2&while/lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_1ª
while/lstm_cell_45/mul_2Mulwhile_placeholder_2&while/lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_2ª
while/lstm_cell_45/mul_3Mulwhile_placeholder_2&while/lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_3´
!while/lstm_cell_45/ReadVariableOpReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_45/ReadVariableOp¡
&while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_45/strided_slice/stack¥
(while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice/stack_1¥
(while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_45/strided_slice/stack_2î
 while/lstm_cell_45/strided_sliceStridedSlice)while/lstm_cell_45/ReadVariableOp:value:0/while/lstm_cell_45/strided_slice/stack:output:01while/lstm_cell_45/strided_slice/stack_1:output:01while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_45/strided_slice½
while/lstm_cell_45/MatMul_4MatMulwhile/lstm_cell_45/mul:z:0)while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_4·
while/lstm_cell_45/addAddV2#while/lstm_cell_45/BiasAdd:output:0%while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add
while/lstm_cell_45/SigmoidSigmoidwhile/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid¸
#while/lstm_cell_45/ReadVariableOp_1ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_1¥
(while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice_1/stack©
*while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_45/strided_slice_1/stack_1©
*while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_1/stack_2ú
"while/lstm_cell_45/strided_slice_1StridedSlice+while/lstm_cell_45/ReadVariableOp_1:value:01while/lstm_cell_45/strided_slice_1/stack:output:03while/lstm_cell_45/strided_slice_1/stack_1:output:03while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_1Á
while/lstm_cell_45/MatMul_5MatMulwhile/lstm_cell_45/mul_1:z:0+while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_5½
while/lstm_cell_45/add_1AddV2%while/lstm_cell_45/BiasAdd_1:output:0%while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_1
while/lstm_cell_45/Sigmoid_1Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_1¤
while/lstm_cell_45/mul_4Mul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_4¸
#while/lstm_cell_45/ReadVariableOp_2ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_2¥
(while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_45/strided_slice_2/stack©
*while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_45/strided_slice_2/stack_1©
*while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_2/stack_2ú
"while/lstm_cell_45/strided_slice_2StridedSlice+while/lstm_cell_45/ReadVariableOp_2:value:01while/lstm_cell_45/strided_slice_2/stack:output:03while/lstm_cell_45/strided_slice_2/stack_1:output:03while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_2Á
while/lstm_cell_45/MatMul_6MatMulwhile/lstm_cell_45/mul_2:z:0+while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_6½
while/lstm_cell_45/add_2AddV2%while/lstm_cell_45/BiasAdd_2:output:0%while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_2
while/lstm_cell_45/ReluReluwhile/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu´
while/lstm_cell_45/mul_5Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_5«
while/lstm_cell_45/add_3AddV2while/lstm_cell_45/mul_4:z:0while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_3¸
#while/lstm_cell_45/ReadVariableOp_3ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_3¥
(while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_45/strided_slice_3/stack©
*while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_45/strided_slice_3/stack_1©
*while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_3/stack_2ú
"while/lstm_cell_45/strided_slice_3StridedSlice+while/lstm_cell_45/ReadVariableOp_3:value:01while/lstm_cell_45/strided_slice_3/stack:output:03while/lstm_cell_45/strided_slice_3/stack_1:output:03while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_3Á
while/lstm_cell_45/MatMul_7MatMulwhile/lstm_cell_45/mul_3:z:0+while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_7½
while/lstm_cell_45/add_4AddV2%while/lstm_cell_45/BiasAdd_3:output:0%while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_4
while/lstm_cell_45/Sigmoid_2Sigmoidwhile/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_2
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu_1¸
while/lstm_cell_45/mul_6Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_45/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_45/ReadVariableOp$^while/lstm_cell_45/ReadVariableOp_1$^while/lstm_cell_45/ReadVariableOp_2$^while/lstm_cell_45/ReadVariableOp_3(^while/lstm_cell_45/split/ReadVariableOp*^while/lstm_cell_45/split_1/ReadVariableOp*"
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
*while_lstm_cell_45_readvariableop_resource,while_lstm_cell_45_readvariableop_resource_0"j
2while_lstm_cell_45_split_1_readvariableop_resource4while_lstm_cell_45_split_1_readvariableop_resource_0"f
0while_lstm_cell_45_split_readvariableop_resource2while_lstm_cell_45_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_45/ReadVariableOp!while/lstm_cell_45/ReadVariableOp2J
#while/lstm_cell_45/ReadVariableOp_1#while/lstm_cell_45/ReadVariableOp_12J
#while/lstm_cell_45/ReadVariableOp_2#while/lstm_cell_45/ReadVariableOp_22J
#while/lstm_cell_45/ReadVariableOp_3#while/lstm_cell_45/ReadVariableOp_32R
'while/lstm_cell_45/split/ReadVariableOp'while/lstm_cell_45/split/ReadVariableOp2V
)while/lstm_cell_45/split_1/ReadVariableOp)while/lstm_cell_45/split_1/ReadVariableOp: 
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
¢
ª
D__inference_lstm_45_layer_call_and_return_conditional_losses_1557583
inputs_0=
*lstm_cell_45_split_readvariableop_resource:	;
,lstm_cell_45_split_1_readvariableop_resource:	7
$lstm_cell_45_readvariableop_resource:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_45/ReadVariableOp¢lstm_cell_45/ReadVariableOp_1¢lstm_cell_45/ReadVariableOp_2¢lstm_cell_45/ReadVariableOp_3¢!lstm_cell_45/split/ReadVariableOp¢#lstm_cell_45/split_1/ReadVariableOp¢whileF
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
strided_slice_2z
lstm_cell_45/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_45/ones_like/Shape
lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_45/ones_like/Const¸
lstm_cell_45/ones_likeFill%lstm_cell_45/ones_like/Shape:output:0%lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/ones_like~
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_45/split/split_dim²
!lstm_cell_45/split/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_45/split/ReadVariableOpÛ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0)lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_45/split
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul¡
lstm_cell_45/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_1¡
lstm_cell_45/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_2¡
lstm_cell_45/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_3
lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_45/split_1/split_dim´
#lstm_cell_45/split_1/ReadVariableOpReadVariableOp,lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_45/split_1/ReadVariableOpÓ
lstm_cell_45/split_1Split'lstm_cell_45/split_1/split_dim:output:0+lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_45/split_1§
lstm_cell_45/BiasAddBiasAddlstm_cell_45/MatMul:product:0lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd­
lstm_cell_45/BiasAdd_1BiasAddlstm_cell_45/MatMul_1:product:0lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_1­
lstm_cell_45/BiasAdd_2BiasAddlstm_cell_45/MatMul_2:product:0lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_2­
lstm_cell_45/BiasAdd_3BiasAddlstm_cell_45/MatMul_3:product:0lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_3
lstm_cell_45/mulMulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul
lstm_cell_45/mul_1Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_1
lstm_cell_45/mul_2Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_2
lstm_cell_45/mul_3Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_3 
lstm_cell_45/ReadVariableOpReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp
 lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_45/strided_slice/stack
"lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice/stack_1
"lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_45/strided_slice/stack_2Ê
lstm_cell_45/strided_sliceStridedSlice#lstm_cell_45/ReadVariableOp:value:0)lstm_cell_45/strided_slice/stack:output:0+lstm_cell_45/strided_slice/stack_1:output:0+lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice¥
lstm_cell_45/MatMul_4MatMullstm_cell_45/mul:z:0#lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_4
lstm_cell_45/addAddV2lstm_cell_45/BiasAdd:output:0lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add
lstm_cell_45/SigmoidSigmoidlstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid¤
lstm_cell_45/ReadVariableOp_1ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_1
"lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice_1/stack
$lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_45/strided_slice_1/stack_1
$lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_1/stack_2Ö
lstm_cell_45/strided_slice_1StridedSlice%lstm_cell_45/ReadVariableOp_1:value:0+lstm_cell_45/strided_slice_1/stack:output:0-lstm_cell_45/strided_slice_1/stack_1:output:0-lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_1©
lstm_cell_45/MatMul_5MatMullstm_cell_45/mul_1:z:0%lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_5¥
lstm_cell_45/add_1AddV2lstm_cell_45/BiasAdd_1:output:0lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_1
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_1
lstm_cell_45/mul_4Mullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_4¤
lstm_cell_45/ReadVariableOp_2ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_2
"lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_45/strided_slice_2/stack
$lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_45/strided_slice_2/stack_1
$lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_2/stack_2Ö
lstm_cell_45/strided_slice_2StridedSlice%lstm_cell_45/ReadVariableOp_2:value:0+lstm_cell_45/strided_slice_2/stack:output:0-lstm_cell_45/strided_slice_2/stack_1:output:0-lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_2©
lstm_cell_45/MatMul_6MatMullstm_cell_45/mul_2:z:0%lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_6¥
lstm_cell_45/add_2AddV2lstm_cell_45/BiasAdd_2:output:0lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_2x
lstm_cell_45/ReluRelulstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu
lstm_cell_45/mul_5Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_5
lstm_cell_45/add_3AddV2lstm_cell_45/mul_4:z:0lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_3¤
lstm_cell_45/ReadVariableOp_3ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_3
"lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_45/strided_slice_3/stack
$lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_45/strided_slice_3/stack_1
$lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_3/stack_2Ö
lstm_cell_45/strided_slice_3StridedSlice%lstm_cell_45/ReadVariableOp_3:value:0+lstm_cell_45/strided_slice_3/stack:output:0-lstm_cell_45/strided_slice_3/stack_1:output:0-lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_3©
lstm_cell_45/MatMul_7MatMullstm_cell_45/mul_3:z:0%lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_7¥
lstm_cell_45/add_4AddV2lstm_cell_45/BiasAdd_3:output:0lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_4
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_2|
lstm_cell_45/Relu_1Relulstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu_1 
lstm_cell_45/mul_6Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_45_split_readvariableop_resource,lstm_cell_45_split_1_readvariableop_resource$lstm_cell_45_readvariableop_resource*
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
while_body_1557450*
condR
while_cond_1557449*K
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
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_45/ReadVariableOp^lstm_cell_45/ReadVariableOp_1^lstm_cell_45/ReadVariableOp_2^lstm_cell_45/ReadVariableOp_3"^lstm_cell_45/split/ReadVariableOp$^lstm_cell_45/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_45/ReadVariableOplstm_cell_45/ReadVariableOp2>
lstm_cell_45/ReadVariableOp_1lstm_cell_45/ReadVariableOp_12>
lstm_cell_45/ReadVariableOp_2lstm_cell_45/ReadVariableOp_22>
lstm_cell_45/ReadVariableOp_3lstm_cell_45/ReadVariableOp_32F
!lstm_cell_45/split/ReadVariableOp!lstm_cell_45/split/ReadVariableOp2J
#lstm_cell_45/split_1/ReadVariableOp#lstm_cell_45/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ê
H
,__inference_reshape_27_layer_call_fn_1558553

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
G__inference_reshape_27_layer_call_and_return_conditional_losses_15561052
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
¸	
 
%__inference_signature_wrapper_1556690
input_19
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_15550122
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
input_19
á¡
¨
D__inference_lstm_45_layer_call_and_return_conditional_losses_1556045

inputs=
*lstm_cell_45_split_readvariableop_resource:	;
,lstm_cell_45_split_1_readvariableop_resource:	7
$lstm_cell_45_readvariableop_resource:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_45/ReadVariableOp¢lstm_cell_45/ReadVariableOp_1¢lstm_cell_45/ReadVariableOp_2¢lstm_cell_45/ReadVariableOp_3¢!lstm_cell_45/split/ReadVariableOp¢#lstm_cell_45/split_1/ReadVariableOp¢whileD
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
strided_slice_2z
lstm_cell_45/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_45/ones_like/Shape
lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_45/ones_like/Const¸
lstm_cell_45/ones_likeFill%lstm_cell_45/ones_like/Shape:output:0%lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/ones_like~
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_45/split/split_dim²
!lstm_cell_45/split/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_45/split/ReadVariableOpÛ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0)lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_45/split
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul¡
lstm_cell_45/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_1¡
lstm_cell_45/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_2¡
lstm_cell_45/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_3
lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_45/split_1/split_dim´
#lstm_cell_45/split_1/ReadVariableOpReadVariableOp,lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_45/split_1/ReadVariableOpÓ
lstm_cell_45/split_1Split'lstm_cell_45/split_1/split_dim:output:0+lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_45/split_1§
lstm_cell_45/BiasAddBiasAddlstm_cell_45/MatMul:product:0lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd­
lstm_cell_45/BiasAdd_1BiasAddlstm_cell_45/MatMul_1:product:0lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_1­
lstm_cell_45/BiasAdd_2BiasAddlstm_cell_45/MatMul_2:product:0lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_2­
lstm_cell_45/BiasAdd_3BiasAddlstm_cell_45/MatMul_3:product:0lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_3
lstm_cell_45/mulMulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul
lstm_cell_45/mul_1Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_1
lstm_cell_45/mul_2Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_2
lstm_cell_45/mul_3Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_3 
lstm_cell_45/ReadVariableOpReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp
 lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_45/strided_slice/stack
"lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice/stack_1
"lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_45/strided_slice/stack_2Ê
lstm_cell_45/strided_sliceStridedSlice#lstm_cell_45/ReadVariableOp:value:0)lstm_cell_45/strided_slice/stack:output:0+lstm_cell_45/strided_slice/stack_1:output:0+lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice¥
lstm_cell_45/MatMul_4MatMullstm_cell_45/mul:z:0#lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_4
lstm_cell_45/addAddV2lstm_cell_45/BiasAdd:output:0lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add
lstm_cell_45/SigmoidSigmoidlstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid¤
lstm_cell_45/ReadVariableOp_1ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_1
"lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice_1/stack
$lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_45/strided_slice_1/stack_1
$lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_1/stack_2Ö
lstm_cell_45/strided_slice_1StridedSlice%lstm_cell_45/ReadVariableOp_1:value:0+lstm_cell_45/strided_slice_1/stack:output:0-lstm_cell_45/strided_slice_1/stack_1:output:0-lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_1©
lstm_cell_45/MatMul_5MatMullstm_cell_45/mul_1:z:0%lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_5¥
lstm_cell_45/add_1AddV2lstm_cell_45/BiasAdd_1:output:0lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_1
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_1
lstm_cell_45/mul_4Mullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_4¤
lstm_cell_45/ReadVariableOp_2ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_2
"lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_45/strided_slice_2/stack
$lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_45/strided_slice_2/stack_1
$lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_2/stack_2Ö
lstm_cell_45/strided_slice_2StridedSlice%lstm_cell_45/ReadVariableOp_2:value:0+lstm_cell_45/strided_slice_2/stack:output:0-lstm_cell_45/strided_slice_2/stack_1:output:0-lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_2©
lstm_cell_45/MatMul_6MatMullstm_cell_45/mul_2:z:0%lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_6¥
lstm_cell_45/add_2AddV2lstm_cell_45/BiasAdd_2:output:0lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_2x
lstm_cell_45/ReluRelulstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu
lstm_cell_45/mul_5Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_5
lstm_cell_45/add_3AddV2lstm_cell_45/mul_4:z:0lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_3¤
lstm_cell_45/ReadVariableOp_3ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_3
"lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_45/strided_slice_3/stack
$lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_45/strided_slice_3/stack_1
$lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_3/stack_2Ö
lstm_cell_45/strided_slice_3StridedSlice%lstm_cell_45/ReadVariableOp_3:value:0+lstm_cell_45/strided_slice_3/stack:output:0-lstm_cell_45/strided_slice_3/stack_1:output:0-lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_3©
lstm_cell_45/MatMul_7MatMullstm_cell_45/mul_3:z:0%lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_7¥
lstm_cell_45/add_4AddV2lstm_cell_45/BiasAdd_3:output:0lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_4
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_2|
lstm_cell_45/Relu_1Relulstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu_1 
lstm_cell_45/mul_6Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_45_split_readvariableop_resource,lstm_cell_45_split_1_readvariableop_resource$lstm_cell_45_readvariableop_resource*
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
while_body_1555912*
condR
while_cond_1555911*K
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
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_45/ReadVariableOp^lstm_cell_45/ReadVariableOp_1^lstm_cell_45/ReadVariableOp_2^lstm_cell_45/ReadVariableOp_3"^lstm_cell_45/split/ReadVariableOp$^lstm_cell_45/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_45/ReadVariableOplstm_cell_45/ReadVariableOp2>
lstm_cell_45/ReadVariableOp_1lstm_cell_45/ReadVariableOp_12>
lstm_cell_45/ReadVariableOp_2lstm_cell_45/ReadVariableOp_22>
lstm_cell_45/ReadVariableOp_3lstm_cell_45/ReadVariableOp_32F
!lstm_cell_45/split/ReadVariableOp!lstm_cell_45/split/ReadVariableOp2J
#lstm_cell_45/split_1/ReadVariableOp#lstm_cell_45/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä	
¨
/__inference_sequential_18_layer_call_fn_1557315

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
J__inference_sequential_18_layer_call_and_return_conditional_losses_15561202
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
ÏR
ê
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1555136

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
mul_6Ý
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
ReadVariableOp_3ReadVariableOp_32~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2,
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
¸
÷
.__inference_lstm_cell_45_layer_call_fn_1558798

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÄ
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_15553692
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

ö
E__inference_dense_54_layer_call_and_return_conditional_losses_1558495

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
ø+
µ
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556617
input_19"
lstm_45_1556586:	
lstm_45_1556588:	"
lstm_45_1556590:	 "
dense_54_1556593:  
dense_54_1556595: "
dense_55_1556598: 
dense_55_1556600:
identity¢ dense_54/StatefulPartitionedCall¢ dense_55/StatefulPartitionedCall¢/dense_55/bias/Regularizer/Square/ReadVariableOp¢lstm_45/StatefulPartitionedCall¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp§
lstm_45/StatefulPartitionedCallStatefulPartitionedCallinput_19lstm_45_1556586lstm_45_1556588lstm_45_1556590*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15560452!
lstm_45/StatefulPartitionedCall¹
 dense_54/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0dense_54_1556593dense_54_1556595*
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
GPU 2J 8 *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_15560642"
 dense_54/StatefulPartitionedCallº
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_1556598dense_55_1556600*
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
GPU 2J 8 *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_15560862"
 dense_55/StatefulPartitionedCall
reshape_27/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
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
G__inference_reshape_27_layer_call_and_return_conditional_losses_15561052
reshape_27/PartitionedCallÏ
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_45_1556586*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/mul¯
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_1556600*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul
IdentityIdentity#reshape_27/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp ^lstm_45/StatefulPartitionedCall>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
R
É
D__inference_lstm_45_layer_call_and_return_conditional_losses_1555522

inputs'
lstm_cell_45_1555434:	#
lstm_cell_45_1555436:	'
lstm_cell_45_1555438:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_45/StatefulPartitionedCall¢whileD
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
strided_slice_2¡
$lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_45_1555434lstm_cell_45_1555436lstm_cell_45_1555438*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_15553692&
$lstm_cell_45/StatefulPartitionedCall
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
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_45_1555434lstm_cell_45_1555436lstm_cell_45_1555438*
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
while_body_1555447*
condR
while_cond_1555446*K
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
runtimeÔ
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_45_1555434*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_45/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_45/StatefulPartitionedCall$lstm_cell_45/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û²
¥	
while_body_1556318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_45_split_readvariableop_resource_0:	C
4while_lstm_cell_45_split_1_readvariableop_resource_0:	?
,while_lstm_cell_45_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_45_split_readvariableop_resource:	A
2while_lstm_cell_45_split_1_readvariableop_resource:	=
*while_lstm_cell_45_readvariableop_resource:	 ¢!while/lstm_cell_45/ReadVariableOp¢#while/lstm_cell_45/ReadVariableOp_1¢#while/lstm_cell_45/ReadVariableOp_2¢#while/lstm_cell_45/ReadVariableOp_3¢'while/lstm_cell_45/split/ReadVariableOp¢)while/lstm_cell_45/split_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_45/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_45/ones_like/Shape
"while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_45/ones_like/ConstÐ
while/lstm_cell_45/ones_likeFill+while/lstm_cell_45/ones_like/Shape:output:0+while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/ones_like
 while/lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_45/dropout/ConstË
while/lstm_cell_45/dropout/MulMul%while/lstm_cell_45/ones_like:output:0)while/lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_45/dropout/Mul
 while/lstm_cell_45/dropout/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_45/dropout/Shape
7while/lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2îÎÖ29
7while/lstm_cell_45/dropout/random_uniform/RandomUniform
)while/lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_45/dropout/GreaterEqual/y
'while/lstm_cell_45/dropout/GreaterEqualGreaterEqual@while/lstm_cell_45/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_45/dropout/GreaterEqual¸
while/lstm_cell_45/dropout/CastCast+while/lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_45/dropout/CastÆ
 while/lstm_cell_45/dropout/Mul_1Mul"while/lstm_cell_45/dropout/Mul:z:0#while/lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout/Mul_1
"while/lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_1/ConstÑ
 while/lstm_cell_45/dropout_1/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_1/Mul
"while/lstm_cell_45/dropout_1/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_1/Shape
9while/lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2­ÖÕ2;
9while/lstm_cell_45/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_1/GreaterEqual/y
)while/lstm_cell_45/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_1/GreaterEqual¾
!while/lstm_cell_45/dropout_1/CastCast-while/lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_1/CastÎ
"while/lstm_cell_45/dropout_1/Mul_1Mul$while/lstm_cell_45/dropout_1/Mul:z:0%while/lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_1/Mul_1
"while/lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_2/ConstÑ
 while/lstm_cell_45/dropout_2/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_2/Mul
"while/lstm_cell_45/dropout_2/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_2/Shape
9while/lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2×ü©2;
9while/lstm_cell_45/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_2/GreaterEqual/y
)while/lstm_cell_45/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_2/GreaterEqual¾
!while/lstm_cell_45/dropout_2/CastCast-while/lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_2/CastÎ
"while/lstm_cell_45/dropout_2/Mul_1Mul$while/lstm_cell_45/dropout_2/Mul:z:0%while/lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_2/Mul_1
"while/lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_3/ConstÑ
 while/lstm_cell_45/dropout_3/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_3/Mul
"while/lstm_cell_45/dropout_3/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_3/Shape
9while/lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2·üQ2;
9while/lstm_cell_45/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_3/GreaterEqual/y
)while/lstm_cell_45/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_3/GreaterEqual¾
!while/lstm_cell_45/dropout_3/CastCast-while/lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_3/CastÎ
"while/lstm_cell_45/dropout_3/Mul_1Mul$while/lstm_cell_45/dropout_3/Mul:z:0%while/lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_3/Mul_1
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_45/split/split_dimÆ
'while/lstm_cell_45/split/ReadVariableOpReadVariableOp2while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_45/split/ReadVariableOpó
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_45/splitÇ
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMulË
while/lstm_cell_45/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_1Ë
while/lstm_cell_45/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_2Ë
while/lstm_cell_45/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_3
$while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_45/split_1/split_dimÈ
)while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_45/split_1/ReadVariableOpë
while/lstm_cell_45/split_1Split-while/lstm_cell_45/split_1/split_dim:output:01while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_45/split_1¿
while/lstm_cell_45/BiasAddBiasAdd#while/lstm_cell_45/MatMul:product:0#while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAddÅ
while/lstm_cell_45/BiasAdd_1BiasAdd%while/lstm_cell_45/MatMul_1:product:0#while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_1Å
while/lstm_cell_45/BiasAdd_2BiasAdd%while/lstm_cell_45/MatMul_2:product:0#while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_2Å
while/lstm_cell_45/BiasAdd_3BiasAdd%while/lstm_cell_45/MatMul_3:product:0#while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_3¤
while/lstm_cell_45/mulMulwhile_placeholder_2$while/lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mulª
while/lstm_cell_45/mul_1Mulwhile_placeholder_2&while/lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_1ª
while/lstm_cell_45/mul_2Mulwhile_placeholder_2&while/lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_2ª
while/lstm_cell_45/mul_3Mulwhile_placeholder_2&while/lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_3´
!while/lstm_cell_45/ReadVariableOpReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_45/ReadVariableOp¡
&while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_45/strided_slice/stack¥
(while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice/stack_1¥
(while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_45/strided_slice/stack_2î
 while/lstm_cell_45/strided_sliceStridedSlice)while/lstm_cell_45/ReadVariableOp:value:0/while/lstm_cell_45/strided_slice/stack:output:01while/lstm_cell_45/strided_slice/stack_1:output:01while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_45/strided_slice½
while/lstm_cell_45/MatMul_4MatMulwhile/lstm_cell_45/mul:z:0)while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_4·
while/lstm_cell_45/addAddV2#while/lstm_cell_45/BiasAdd:output:0%while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add
while/lstm_cell_45/SigmoidSigmoidwhile/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid¸
#while/lstm_cell_45/ReadVariableOp_1ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_1¥
(while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice_1/stack©
*while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_45/strided_slice_1/stack_1©
*while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_1/stack_2ú
"while/lstm_cell_45/strided_slice_1StridedSlice+while/lstm_cell_45/ReadVariableOp_1:value:01while/lstm_cell_45/strided_slice_1/stack:output:03while/lstm_cell_45/strided_slice_1/stack_1:output:03while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_1Á
while/lstm_cell_45/MatMul_5MatMulwhile/lstm_cell_45/mul_1:z:0+while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_5½
while/lstm_cell_45/add_1AddV2%while/lstm_cell_45/BiasAdd_1:output:0%while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_1
while/lstm_cell_45/Sigmoid_1Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_1¤
while/lstm_cell_45/mul_4Mul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_4¸
#while/lstm_cell_45/ReadVariableOp_2ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_2¥
(while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_45/strided_slice_2/stack©
*while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_45/strided_slice_2/stack_1©
*while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_2/stack_2ú
"while/lstm_cell_45/strided_slice_2StridedSlice+while/lstm_cell_45/ReadVariableOp_2:value:01while/lstm_cell_45/strided_slice_2/stack:output:03while/lstm_cell_45/strided_slice_2/stack_1:output:03while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_2Á
while/lstm_cell_45/MatMul_6MatMulwhile/lstm_cell_45/mul_2:z:0+while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_6½
while/lstm_cell_45/add_2AddV2%while/lstm_cell_45/BiasAdd_2:output:0%while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_2
while/lstm_cell_45/ReluReluwhile/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu´
while/lstm_cell_45/mul_5Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_5«
while/lstm_cell_45/add_3AddV2while/lstm_cell_45/mul_4:z:0while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_3¸
#while/lstm_cell_45/ReadVariableOp_3ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_3¥
(while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_45/strided_slice_3/stack©
*while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_45/strided_slice_3/stack_1©
*while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_3/stack_2ú
"while/lstm_cell_45/strided_slice_3StridedSlice+while/lstm_cell_45/ReadVariableOp_3:value:01while/lstm_cell_45/strided_slice_3/stack:output:03while/lstm_cell_45/strided_slice_3/stack_1:output:03while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_3Á
while/lstm_cell_45/MatMul_7MatMulwhile/lstm_cell_45/mul_3:z:0+while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_7½
while/lstm_cell_45/add_4AddV2%while/lstm_cell_45/BiasAdd_3:output:0%while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_4
while/lstm_cell_45/Sigmoid_2Sigmoidwhile/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_2
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu_1¸
while/lstm_cell_45/mul_6Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_45/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_45/ReadVariableOp$^while/lstm_cell_45/ReadVariableOp_1$^while/lstm_cell_45/ReadVariableOp_2$^while/lstm_cell_45/ReadVariableOp_3(^while/lstm_cell_45/split/ReadVariableOp*^while/lstm_cell_45/split_1/ReadVariableOp*"
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
*while_lstm_cell_45_readvariableop_resource,while_lstm_cell_45_readvariableop_resource_0"j
2while_lstm_cell_45_split_1_readvariableop_resource4while_lstm_cell_45_split_1_readvariableop_resource_0"f
0while_lstm_cell_45_split_readvariableop_resource2while_lstm_cell_45_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_45/ReadVariableOp!while/lstm_cell_45/ReadVariableOp2J
#while/lstm_cell_45/ReadVariableOp_1#while/lstm_cell_45/ReadVariableOp_12J
#while/lstm_cell_45/ReadVariableOp_2#while/lstm_cell_45/ReadVariableOp_22J
#while/lstm_cell_45/ReadVariableOp_3#while/lstm_cell_45/ReadVariableOp_32R
'while/lstm_cell_45/split/ReadVariableOp'while/lstm_cell_45/split/ReadVariableOp2V
)while/lstm_cell_45/split_1/ReadVariableOp)while/lstm_cell_45/split_1/ReadVariableOp: 
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
¨
¶
)__inference_lstm_45_layer_call_fn_1558484

inputs
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15564832
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

c
G__inference_reshape_27_layer_call_and_return_conditional_losses_1558548

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
Ú
È
while_cond_1557999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557999___redundant_placeholder05
1while_while_cond_1557999___redundant_placeholder15
1while_while_cond_1557999___redundant_placeholder25
1while_while_cond_1557999___redundant_placeholder3
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
ÛÏ
¨
D__inference_lstm_45_layer_call_and_return_conditional_losses_1556483

inputs=
*lstm_cell_45_split_readvariableop_resource:	;
,lstm_cell_45_split_1_readvariableop_resource:	7
$lstm_cell_45_readvariableop_resource:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_45/ReadVariableOp¢lstm_cell_45/ReadVariableOp_1¢lstm_cell_45/ReadVariableOp_2¢lstm_cell_45/ReadVariableOp_3¢!lstm_cell_45/split/ReadVariableOp¢#lstm_cell_45/split_1/ReadVariableOp¢whileD
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
strided_slice_2z
lstm_cell_45/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_45/ones_like/Shape
lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_45/ones_like/Const¸
lstm_cell_45/ones_likeFill%lstm_cell_45/ones_like/Shape:output:0%lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/ones_like}
lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout/Const³
lstm_cell_45/dropout/MulMullstm_cell_45/ones_like:output:0#lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Mul
lstm_cell_45/dropout/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout/Shapeø
1lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÞÆç23
1lstm_cell_45/dropout/random_uniform/RandomUniform
#lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_45/dropout/GreaterEqual/yò
!lstm_cell_45/dropout/GreaterEqualGreaterEqual:lstm_cell_45/dropout/random_uniform/RandomUniform:output:0,lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_45/dropout/GreaterEqual¦
lstm_cell_45/dropout/CastCast%lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Cast®
lstm_cell_45/dropout/Mul_1Mullstm_cell_45/dropout/Mul:z:0lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Mul_1
lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_1/Const¹
lstm_cell_45/dropout_1/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Mul
lstm_cell_45/dropout_1/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_1/Shapeþ
3lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¶É25
3lstm_cell_45/dropout_1/random_uniform/RandomUniform
%lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_1/GreaterEqual/yú
#lstm_cell_45/dropout_1/GreaterEqualGreaterEqual<lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_1/GreaterEqual¬
lstm_cell_45/dropout_1/CastCast'lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Cast¶
lstm_cell_45/dropout_1/Mul_1Mullstm_cell_45/dropout_1/Mul:z:0lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Mul_1
lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_2/Const¹
lstm_cell_45/dropout_2/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Mul
lstm_cell_45/dropout_2/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_2/Shapeý
3lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ú225
3lstm_cell_45/dropout_2/random_uniform/RandomUniform
%lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_2/GreaterEqual/yú
#lstm_cell_45/dropout_2/GreaterEqualGreaterEqual<lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_2/GreaterEqual¬
lstm_cell_45/dropout_2/CastCast'lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Cast¶
lstm_cell_45/dropout_2/Mul_1Mullstm_cell_45/dropout_2/Mul:z:0lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Mul_1
lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_3/Const¹
lstm_cell_45/dropout_3/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Mul
lstm_cell_45/dropout_3/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_3/Shapeþ
3lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÖÓ25
3lstm_cell_45/dropout_3/random_uniform/RandomUniform
%lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_3/GreaterEqual/yú
#lstm_cell_45/dropout_3/GreaterEqualGreaterEqual<lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_3/GreaterEqual¬
lstm_cell_45/dropout_3/CastCast'lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Cast¶
lstm_cell_45/dropout_3/Mul_1Mullstm_cell_45/dropout_3/Mul:z:0lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Mul_1~
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_45/split/split_dim²
!lstm_cell_45/split/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_45/split/ReadVariableOpÛ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0)lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_45/split
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul¡
lstm_cell_45/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_1¡
lstm_cell_45/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_2¡
lstm_cell_45/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_3
lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_45/split_1/split_dim´
#lstm_cell_45/split_1/ReadVariableOpReadVariableOp,lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_45/split_1/ReadVariableOpÓ
lstm_cell_45/split_1Split'lstm_cell_45/split_1/split_dim:output:0+lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_45/split_1§
lstm_cell_45/BiasAddBiasAddlstm_cell_45/MatMul:product:0lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd­
lstm_cell_45/BiasAdd_1BiasAddlstm_cell_45/MatMul_1:product:0lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_1­
lstm_cell_45/BiasAdd_2BiasAddlstm_cell_45/MatMul_2:product:0lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_2­
lstm_cell_45/BiasAdd_3BiasAddlstm_cell_45/MatMul_3:product:0lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_3
lstm_cell_45/mulMulzeros:output:0lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul
lstm_cell_45/mul_1Mulzeros:output:0 lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_1
lstm_cell_45/mul_2Mulzeros:output:0 lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_2
lstm_cell_45/mul_3Mulzeros:output:0 lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_3 
lstm_cell_45/ReadVariableOpReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp
 lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_45/strided_slice/stack
"lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice/stack_1
"lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_45/strided_slice/stack_2Ê
lstm_cell_45/strided_sliceStridedSlice#lstm_cell_45/ReadVariableOp:value:0)lstm_cell_45/strided_slice/stack:output:0+lstm_cell_45/strided_slice/stack_1:output:0+lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice¥
lstm_cell_45/MatMul_4MatMullstm_cell_45/mul:z:0#lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_4
lstm_cell_45/addAddV2lstm_cell_45/BiasAdd:output:0lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add
lstm_cell_45/SigmoidSigmoidlstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid¤
lstm_cell_45/ReadVariableOp_1ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_1
"lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice_1/stack
$lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_45/strided_slice_1/stack_1
$lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_1/stack_2Ö
lstm_cell_45/strided_slice_1StridedSlice%lstm_cell_45/ReadVariableOp_1:value:0+lstm_cell_45/strided_slice_1/stack:output:0-lstm_cell_45/strided_slice_1/stack_1:output:0-lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_1©
lstm_cell_45/MatMul_5MatMullstm_cell_45/mul_1:z:0%lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_5¥
lstm_cell_45/add_1AddV2lstm_cell_45/BiasAdd_1:output:0lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_1
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_1
lstm_cell_45/mul_4Mullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_4¤
lstm_cell_45/ReadVariableOp_2ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_2
"lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_45/strided_slice_2/stack
$lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_45/strided_slice_2/stack_1
$lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_2/stack_2Ö
lstm_cell_45/strided_slice_2StridedSlice%lstm_cell_45/ReadVariableOp_2:value:0+lstm_cell_45/strided_slice_2/stack:output:0-lstm_cell_45/strided_slice_2/stack_1:output:0-lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_2©
lstm_cell_45/MatMul_6MatMullstm_cell_45/mul_2:z:0%lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_6¥
lstm_cell_45/add_2AddV2lstm_cell_45/BiasAdd_2:output:0lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_2x
lstm_cell_45/ReluRelulstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu
lstm_cell_45/mul_5Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_5
lstm_cell_45/add_3AddV2lstm_cell_45/mul_4:z:0lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_3¤
lstm_cell_45/ReadVariableOp_3ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_3
"lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_45/strided_slice_3/stack
$lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_45/strided_slice_3/stack_1
$lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_3/stack_2Ö
lstm_cell_45/strided_slice_3StridedSlice%lstm_cell_45/ReadVariableOp_3:value:0+lstm_cell_45/strided_slice_3/stack:output:0-lstm_cell_45/strided_slice_3/stack_1:output:0-lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_3©
lstm_cell_45/MatMul_7MatMullstm_cell_45/mul_3:z:0%lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_7¥
lstm_cell_45/add_4AddV2lstm_cell_45/BiasAdd_3:output:0lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_4
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_2|
lstm_cell_45/Relu_1Relulstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu_1 
lstm_cell_45/mul_6Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_45_split_readvariableop_resource,lstm_cell_45_split_1_readvariableop_resource$lstm_cell_45_readvariableop_resource*
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
while_body_1556318*
condR
while_cond_1556317*K
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
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_45/ReadVariableOp^lstm_cell_45/ReadVariableOp_1^lstm_cell_45/ReadVariableOp_2^lstm_cell_45/ReadVariableOp_3"^lstm_cell_45/split/ReadVariableOp$^lstm_cell_45/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_45/ReadVariableOplstm_cell_45/ReadVariableOp2>
lstm_cell_45/ReadVariableOp_1lstm_cell_45/ReadVariableOp_12>
lstm_cell_45/ReadVariableOp_2lstm_cell_45/ReadVariableOp_22>
lstm_cell_45/ReadVariableOp_3lstm_cell_45/ReadVariableOp_32F
!lstm_cell_45/split/ReadVariableOp!lstm_cell_45/split/ReadVariableOp2J
#lstm_cell_45/split_1/ReadVariableOp#lstm_cell_45/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
¨
E__inference_dense_55_layer_call_and_return_conditional_losses_1558526

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_55/bias/Regularizer/Square/ReadVariableOp
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
BiasAdd¾
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ë

è
lstm_45_while_cond_1557102,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3.
*lstm_45_while_less_lstm_45_strided_slice_1E
Alstm_45_while_lstm_45_while_cond_1557102___redundant_placeholder0E
Alstm_45_while_lstm_45_while_cond_1557102___redundant_placeholder1E
Alstm_45_while_lstm_45_while_cond_1557102___redundant_placeholder2E
Alstm_45_while_lstm_45_while_cond_1557102___redundant_placeholder3
lstm_45_while_identity

lstm_45/while/LessLesslstm_45_while_placeholder*lstm_45_while_less_lstm_45_strided_slice_1*
T0*
_output_shapes
: 2
lstm_45/while/Lessu
lstm_45/while/IdentityIdentitylstm_45/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_45/while/Identity"9
lstm_45_while_identitylstm_45/while/Identity:output:0*(
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
¨
¥	
while_body_1558000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_45_split_readvariableop_resource_0:	C
4while_lstm_cell_45_split_1_readvariableop_resource_0:	?
,while_lstm_cell_45_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_45_split_readvariableop_resource:	A
2while_lstm_cell_45_split_1_readvariableop_resource:	=
*while_lstm_cell_45_readvariableop_resource:	 ¢!while/lstm_cell_45/ReadVariableOp¢#while/lstm_cell_45/ReadVariableOp_1¢#while/lstm_cell_45/ReadVariableOp_2¢#while/lstm_cell_45/ReadVariableOp_3¢'while/lstm_cell_45/split/ReadVariableOp¢)while/lstm_cell_45/split_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_45/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_45/ones_like/Shape
"while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_45/ones_like/ConstÐ
while/lstm_cell_45/ones_likeFill+while/lstm_cell_45/ones_like/Shape:output:0+while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/ones_like
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_45/split/split_dimÆ
'while/lstm_cell_45/split/ReadVariableOpReadVariableOp2while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_45/split/ReadVariableOpó
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_45/splitÇ
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMulË
while/lstm_cell_45/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_1Ë
while/lstm_cell_45/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_2Ë
while/lstm_cell_45/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_3
$while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_45/split_1/split_dimÈ
)while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_45/split_1/ReadVariableOpë
while/lstm_cell_45/split_1Split-while/lstm_cell_45/split_1/split_dim:output:01while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_45/split_1¿
while/lstm_cell_45/BiasAddBiasAdd#while/lstm_cell_45/MatMul:product:0#while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAddÅ
while/lstm_cell_45/BiasAdd_1BiasAdd%while/lstm_cell_45/MatMul_1:product:0#while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_1Å
while/lstm_cell_45/BiasAdd_2BiasAdd%while/lstm_cell_45/MatMul_2:product:0#while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_2Å
while/lstm_cell_45/BiasAdd_3BiasAdd%while/lstm_cell_45/MatMul_3:product:0#while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_3¥
while/lstm_cell_45/mulMulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul©
while/lstm_cell_45/mul_1Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_1©
while/lstm_cell_45/mul_2Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_2©
while/lstm_cell_45/mul_3Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_3´
!while/lstm_cell_45/ReadVariableOpReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_45/ReadVariableOp¡
&while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_45/strided_slice/stack¥
(while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice/stack_1¥
(while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_45/strided_slice/stack_2î
 while/lstm_cell_45/strided_sliceStridedSlice)while/lstm_cell_45/ReadVariableOp:value:0/while/lstm_cell_45/strided_slice/stack:output:01while/lstm_cell_45/strided_slice/stack_1:output:01while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_45/strided_slice½
while/lstm_cell_45/MatMul_4MatMulwhile/lstm_cell_45/mul:z:0)while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_4·
while/lstm_cell_45/addAddV2#while/lstm_cell_45/BiasAdd:output:0%while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add
while/lstm_cell_45/SigmoidSigmoidwhile/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid¸
#while/lstm_cell_45/ReadVariableOp_1ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_1¥
(while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice_1/stack©
*while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_45/strided_slice_1/stack_1©
*while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_1/stack_2ú
"while/lstm_cell_45/strided_slice_1StridedSlice+while/lstm_cell_45/ReadVariableOp_1:value:01while/lstm_cell_45/strided_slice_1/stack:output:03while/lstm_cell_45/strided_slice_1/stack_1:output:03while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_1Á
while/lstm_cell_45/MatMul_5MatMulwhile/lstm_cell_45/mul_1:z:0+while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_5½
while/lstm_cell_45/add_1AddV2%while/lstm_cell_45/BiasAdd_1:output:0%while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_1
while/lstm_cell_45/Sigmoid_1Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_1¤
while/lstm_cell_45/mul_4Mul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_4¸
#while/lstm_cell_45/ReadVariableOp_2ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_2¥
(while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_45/strided_slice_2/stack©
*while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_45/strided_slice_2/stack_1©
*while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_2/stack_2ú
"while/lstm_cell_45/strided_slice_2StridedSlice+while/lstm_cell_45/ReadVariableOp_2:value:01while/lstm_cell_45/strided_slice_2/stack:output:03while/lstm_cell_45/strided_slice_2/stack_1:output:03while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_2Á
while/lstm_cell_45/MatMul_6MatMulwhile/lstm_cell_45/mul_2:z:0+while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_6½
while/lstm_cell_45/add_2AddV2%while/lstm_cell_45/BiasAdd_2:output:0%while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_2
while/lstm_cell_45/ReluReluwhile/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu´
while/lstm_cell_45/mul_5Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_5«
while/lstm_cell_45/add_3AddV2while/lstm_cell_45/mul_4:z:0while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_3¸
#while/lstm_cell_45/ReadVariableOp_3ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_3¥
(while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_45/strided_slice_3/stack©
*while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_45/strided_slice_3/stack_1©
*while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_3/stack_2ú
"while/lstm_cell_45/strided_slice_3StridedSlice+while/lstm_cell_45/ReadVariableOp_3:value:01while/lstm_cell_45/strided_slice_3/stack:output:03while/lstm_cell_45/strided_slice_3/stack_1:output:03while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_3Á
while/lstm_cell_45/MatMul_7MatMulwhile/lstm_cell_45/mul_3:z:0+while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_7½
while/lstm_cell_45/add_4AddV2%while/lstm_cell_45/BiasAdd_3:output:0%while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_4
while/lstm_cell_45/Sigmoid_2Sigmoidwhile/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_2
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu_1¸
while/lstm_cell_45/mul_6Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_45/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_45/ReadVariableOp$^while/lstm_cell_45/ReadVariableOp_1$^while/lstm_cell_45/ReadVariableOp_2$^while/lstm_cell_45/ReadVariableOp_3(^while/lstm_cell_45/split/ReadVariableOp*^while/lstm_cell_45/split_1/ReadVariableOp*"
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
*while_lstm_cell_45_readvariableop_resource,while_lstm_cell_45_readvariableop_resource_0"j
2while_lstm_cell_45_split_1_readvariableop_resource4while_lstm_cell_45_split_1_readvariableop_resource_0"f
0while_lstm_cell_45_split_readvariableop_resource2while_lstm_cell_45_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_45/ReadVariableOp!while/lstm_cell_45/ReadVariableOp2J
#while/lstm_cell_45/ReadVariableOp_1#while/lstm_cell_45/ReadVariableOp_12J
#while/lstm_cell_45/ReadVariableOp_2#while/lstm_cell_45/ReadVariableOp_22J
#while/lstm_cell_45/ReadVariableOp_3#while/lstm_cell_45/ReadVariableOp_32R
'while/lstm_cell_45/split/ReadVariableOp'while/lstm_cell_45/split/ReadVariableOp2V
)while/lstm_cell_45/split_1/ReadVariableOp)while/lstm_cell_45/split_1/ReadVariableOp: 
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
á

J__inference_sequential_18_layer_call_and_return_conditional_losses_1556961

inputsE
2lstm_45_lstm_cell_45_split_readvariableop_resource:	C
4lstm_45_lstm_cell_45_split_1_readvariableop_resource:	?
,lstm_45_lstm_cell_45_readvariableop_resource:	 9
'dense_54_matmul_readvariableop_resource:  6
(dense_54_biasadd_readvariableop_resource: 9
'dense_55_matmul_readvariableop_resource: 6
(dense_55_biasadd_readvariableop_resource:
identity¢dense_54/BiasAdd/ReadVariableOp¢dense_54/MatMul/ReadVariableOp¢dense_55/BiasAdd/ReadVariableOp¢dense_55/MatMul/ReadVariableOp¢/dense_55/bias/Regularizer/Square/ReadVariableOp¢#lstm_45/lstm_cell_45/ReadVariableOp¢%lstm_45/lstm_cell_45/ReadVariableOp_1¢%lstm_45/lstm_cell_45/ReadVariableOp_2¢%lstm_45/lstm_cell_45/ReadVariableOp_3¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢)lstm_45/lstm_cell_45/split/ReadVariableOp¢+lstm_45/lstm_cell_45/split_1/ReadVariableOp¢lstm_45/whileT
lstm_45/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_45/Shape
lstm_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_45/strided_slice/stack
lstm_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_45/strided_slice/stack_1
lstm_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_45/strided_slice/stack_2
lstm_45/strided_sliceStridedSlicelstm_45/Shape:output:0$lstm_45/strided_slice/stack:output:0&lstm_45/strided_slice/stack_1:output:0&lstm_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_45/strided_slicel
lstm_45/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros/mul/y
lstm_45/zeros/mulMullstm_45/strided_slice:output:0lstm_45/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros/mulo
lstm_45/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_45/zeros/Less/y
lstm_45/zeros/LessLesslstm_45/zeros/mul:z:0lstm_45/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros/Lessr
lstm_45/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros/packed/1£
lstm_45/zeros/packedPacklstm_45/strided_slice:output:0lstm_45/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_45/zeros/packedo
lstm_45/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_45/zeros/Const
lstm_45/zerosFilllstm_45/zeros/packed:output:0lstm_45/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/zerosp
lstm_45/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros_1/mul/y
lstm_45/zeros_1/mulMullstm_45/strided_slice:output:0lstm_45/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros_1/muls
lstm_45/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_45/zeros_1/Less/y
lstm_45/zeros_1/LessLesslstm_45/zeros_1/mul:z:0lstm_45/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros_1/Lessv
lstm_45/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros_1/packed/1©
lstm_45/zeros_1/packedPacklstm_45/strided_slice:output:0!lstm_45/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_45/zeros_1/packeds
lstm_45/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_45/zeros_1/Const
lstm_45/zeros_1Filllstm_45/zeros_1/packed:output:0lstm_45/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/zeros_1
lstm_45/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_45/transpose/perm
lstm_45/transpose	Transposeinputslstm_45/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_45/transposeg
lstm_45/Shape_1Shapelstm_45/transpose:y:0*
T0*
_output_shapes
:2
lstm_45/Shape_1
lstm_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_45/strided_slice_1/stack
lstm_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_1/stack_1
lstm_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_1/stack_2
lstm_45/strided_slice_1StridedSlicelstm_45/Shape_1:output:0&lstm_45/strided_slice_1/stack:output:0(lstm_45/strided_slice_1/stack_1:output:0(lstm_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_45/strided_slice_1
#lstm_45/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_45/TensorArrayV2/element_shapeÒ
lstm_45/TensorArrayV2TensorListReserve,lstm_45/TensorArrayV2/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_45/TensorArrayV2Ï
=lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_45/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_45/transpose:y:0Flstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_45/TensorArrayUnstack/TensorListFromTensor
lstm_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_45/strided_slice_2/stack
lstm_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_2/stack_1
lstm_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_2/stack_2¬
lstm_45/strided_slice_2StridedSlicelstm_45/transpose:y:0&lstm_45/strided_slice_2/stack:output:0(lstm_45/strided_slice_2/stack_1:output:0(lstm_45/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_45/strided_slice_2
$lstm_45/lstm_cell_45/ones_like/ShapeShapelstm_45/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_45/lstm_cell_45/ones_like/Shape
$lstm_45/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_45/lstm_cell_45/ones_like/ConstØ
lstm_45/lstm_cell_45/ones_likeFill-lstm_45/lstm_cell_45/ones_like/Shape:output:0-lstm_45/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/ones_like
$lstm_45/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_45/lstm_cell_45/split/split_dimÊ
)lstm_45/lstm_cell_45/split/ReadVariableOpReadVariableOp2lstm_45_lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_45/lstm_cell_45/split/ReadVariableOpû
lstm_45/lstm_cell_45/splitSplit-lstm_45/lstm_cell_45/split/split_dim:output:01lstm_45/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_45/lstm_cell_45/split½
lstm_45/lstm_cell_45/MatMulMatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMulÁ
lstm_45/lstm_cell_45/MatMul_1MatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_1Á
lstm_45/lstm_cell_45/MatMul_2MatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_2Á
lstm_45/lstm_cell_45/MatMul_3MatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_3
&lstm_45/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_45/lstm_cell_45/split_1/split_dimÌ
+lstm_45/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4lstm_45_lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_45/lstm_cell_45/split_1/ReadVariableOpó
lstm_45/lstm_cell_45/split_1Split/lstm_45/lstm_cell_45/split_1/split_dim:output:03lstm_45/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_45/lstm_cell_45/split_1Ç
lstm_45/lstm_cell_45/BiasAddBiasAdd%lstm_45/lstm_cell_45/MatMul:product:0%lstm_45/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/BiasAddÍ
lstm_45/lstm_cell_45/BiasAdd_1BiasAdd'lstm_45/lstm_cell_45/MatMul_1:product:0%lstm_45/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/BiasAdd_1Í
lstm_45/lstm_cell_45/BiasAdd_2BiasAdd'lstm_45/lstm_cell_45/MatMul_2:product:0%lstm_45/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/BiasAdd_2Í
lstm_45/lstm_cell_45/BiasAdd_3BiasAdd'lstm_45/lstm_cell_45/MatMul_3:product:0%lstm_45/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/BiasAdd_3®
lstm_45/lstm_cell_45/mulMullstm_45/zeros:output:0'lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul²
lstm_45/lstm_cell_45/mul_1Mullstm_45/zeros:output:0'lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_1²
lstm_45/lstm_cell_45/mul_2Mullstm_45/zeros:output:0'lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_2²
lstm_45/lstm_cell_45/mul_3Mullstm_45/zeros:output:0'lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_3¸
#lstm_45/lstm_cell_45/ReadVariableOpReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_45/lstm_cell_45/ReadVariableOp¥
(lstm_45/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_45/lstm_cell_45/strided_slice/stack©
*lstm_45/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_45/lstm_cell_45/strided_slice/stack_1©
*lstm_45/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_45/lstm_cell_45/strided_slice/stack_2ú
"lstm_45/lstm_cell_45/strided_sliceStridedSlice+lstm_45/lstm_cell_45/ReadVariableOp:value:01lstm_45/lstm_cell_45/strided_slice/stack:output:03lstm_45/lstm_cell_45/strided_slice/stack_1:output:03lstm_45/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_45/lstm_cell_45/strided_sliceÅ
lstm_45/lstm_cell_45/MatMul_4MatMullstm_45/lstm_cell_45/mul:z:0+lstm_45/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_4¿
lstm_45/lstm_cell_45/addAddV2%lstm_45/lstm_cell_45/BiasAdd:output:0'lstm_45/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add
lstm_45/lstm_cell_45/SigmoidSigmoidlstm_45/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/Sigmoid¼
%lstm_45/lstm_cell_45/ReadVariableOp_1ReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_45/lstm_cell_45/ReadVariableOp_1©
*lstm_45/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_45/lstm_cell_45/strided_slice_1/stack­
,lstm_45/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_45/lstm_cell_45/strided_slice_1/stack_1­
,lstm_45/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_45/lstm_cell_45/strided_slice_1/stack_2
$lstm_45/lstm_cell_45/strided_slice_1StridedSlice-lstm_45/lstm_cell_45/ReadVariableOp_1:value:03lstm_45/lstm_cell_45/strided_slice_1/stack:output:05lstm_45/lstm_cell_45/strided_slice_1/stack_1:output:05lstm_45/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_45/lstm_cell_45/strided_slice_1É
lstm_45/lstm_cell_45/MatMul_5MatMullstm_45/lstm_cell_45/mul_1:z:0-lstm_45/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_5Å
lstm_45/lstm_cell_45/add_1AddV2'lstm_45/lstm_cell_45/BiasAdd_1:output:0'lstm_45/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_1
lstm_45/lstm_cell_45/Sigmoid_1Sigmoidlstm_45/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/Sigmoid_1¯
lstm_45/lstm_cell_45/mul_4Mul"lstm_45/lstm_cell_45/Sigmoid_1:y:0lstm_45/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_4¼
%lstm_45/lstm_cell_45/ReadVariableOp_2ReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_45/lstm_cell_45/ReadVariableOp_2©
*lstm_45/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_45/lstm_cell_45/strided_slice_2/stack­
,lstm_45/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_45/lstm_cell_45/strided_slice_2/stack_1­
,lstm_45/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_45/lstm_cell_45/strided_slice_2/stack_2
$lstm_45/lstm_cell_45/strided_slice_2StridedSlice-lstm_45/lstm_cell_45/ReadVariableOp_2:value:03lstm_45/lstm_cell_45/strided_slice_2/stack:output:05lstm_45/lstm_cell_45/strided_slice_2/stack_1:output:05lstm_45/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_45/lstm_cell_45/strided_slice_2É
lstm_45/lstm_cell_45/MatMul_6MatMullstm_45/lstm_cell_45/mul_2:z:0-lstm_45/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_6Å
lstm_45/lstm_cell_45/add_2AddV2'lstm_45/lstm_cell_45/BiasAdd_2:output:0'lstm_45/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_2
lstm_45/lstm_cell_45/ReluRelulstm_45/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/Relu¼
lstm_45/lstm_cell_45/mul_5Mul lstm_45/lstm_cell_45/Sigmoid:y:0'lstm_45/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_5³
lstm_45/lstm_cell_45/add_3AddV2lstm_45/lstm_cell_45/mul_4:z:0lstm_45/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_3¼
%lstm_45/lstm_cell_45/ReadVariableOp_3ReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_45/lstm_cell_45/ReadVariableOp_3©
*lstm_45/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_45/lstm_cell_45/strided_slice_3/stack­
,lstm_45/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_45/lstm_cell_45/strided_slice_3/stack_1­
,lstm_45/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_45/lstm_cell_45/strided_slice_3/stack_2
$lstm_45/lstm_cell_45/strided_slice_3StridedSlice-lstm_45/lstm_cell_45/ReadVariableOp_3:value:03lstm_45/lstm_cell_45/strided_slice_3/stack:output:05lstm_45/lstm_cell_45/strided_slice_3/stack_1:output:05lstm_45/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_45/lstm_cell_45/strided_slice_3É
lstm_45/lstm_cell_45/MatMul_7MatMullstm_45/lstm_cell_45/mul_3:z:0-lstm_45/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_7Å
lstm_45/lstm_cell_45/add_4AddV2'lstm_45/lstm_cell_45/BiasAdd_3:output:0'lstm_45/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_4
lstm_45/lstm_cell_45/Sigmoid_2Sigmoidlstm_45/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/Sigmoid_2
lstm_45/lstm_cell_45/Relu_1Relulstm_45/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/Relu_1À
lstm_45/lstm_cell_45/mul_6Mul"lstm_45/lstm_cell_45/Sigmoid_2:y:0)lstm_45/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_6
%lstm_45/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_45/TensorArrayV2_1/element_shapeØ
lstm_45/TensorArrayV2_1TensorListReserve.lstm_45/TensorArrayV2_1/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_45/TensorArrayV2_1^
lstm_45/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/time
 lstm_45/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_45/while/maximum_iterationsz
lstm_45/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/while/loop_counterû
lstm_45/whileWhile#lstm_45/while/loop_counter:output:0)lstm_45/while/maximum_iterations:output:0lstm_45/time:output:0 lstm_45/TensorArrayV2_1:handle:0lstm_45/zeros:output:0lstm_45/zeros_1:output:0 lstm_45/strided_slice_1:output:0?lstm_45/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_45_lstm_cell_45_split_readvariableop_resource4lstm_45_lstm_cell_45_split_1_readvariableop_resource,lstm_45_lstm_cell_45_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_45_while_body_1556800*&
condR
lstm_45_while_cond_1556799*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_45/whileÅ
8lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_45/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_45/TensorArrayV2Stack/TensorListStackTensorListStacklstm_45/while:output:3Alstm_45/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_45/TensorArrayV2Stack/TensorListStack
lstm_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_45/strided_slice_3/stack
lstm_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_45/strided_slice_3/stack_1
lstm_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_3/stack_2Ê
lstm_45/strided_slice_3StridedSlice3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_45/strided_slice_3/stack:output:0(lstm_45/strided_slice_3/stack_1:output:0(lstm_45/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_45/strided_slice_3
lstm_45/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_45/transpose_1/permÅ
lstm_45/transpose_1	Transpose3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_45/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/transpose_1v
lstm_45/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_45/runtime¨
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_54/MatMul/ReadVariableOp¨
dense_54/MatMulMatMul lstm_45/strided_slice_3:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_54/MatMul§
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_54/BiasAdd/ReadVariableOp¥
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_54/BiasAdds
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_54/Relu¨
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_55/MatMul/ReadVariableOp£
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/MatMul§
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_55/BiasAdd/ReadVariableOp¥
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/BiasAddm
reshape_27/ShapeShapedense_55/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_27/Shape
reshape_27/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_27/strided_slice/stack
 reshape_27/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_27/strided_slice/stack_1
 reshape_27/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_27/strided_slice/stack_2¤
reshape_27/strided_sliceStridedSlicereshape_27/Shape:output:0'reshape_27/strided_slice/stack:output:0)reshape_27/strided_slice/stack_1:output:0)reshape_27/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_27/strided_slicez
reshape_27/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_27/Reshape/shape/1z
reshape_27/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_27/Reshape/shape/2×
reshape_27/Reshape/shapePack!reshape_27/strided_slice:output:0#reshape_27/Reshape/shape/1:output:0#reshape_27/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_27/Reshape/shape§
reshape_27/ReshapeReshapedense_55/BiasAdd:output:0!reshape_27/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_27/Reshapeò
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_45_lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/mulÇ
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mulz
IdentityIdentityreshape_27/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp$^lstm_45/lstm_cell_45/ReadVariableOp&^lstm_45/lstm_cell_45/ReadVariableOp_1&^lstm_45/lstm_cell_45/ReadVariableOp_2&^lstm_45/lstm_cell_45/ReadVariableOp_3>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*^lstm_45/lstm_cell_45/split/ReadVariableOp,^lstm_45/lstm_cell_45/split_1/ReadVariableOp^lstm_45/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2J
#lstm_45/lstm_cell_45/ReadVariableOp#lstm_45/lstm_cell_45/ReadVariableOp2N
%lstm_45/lstm_cell_45/ReadVariableOp_1%lstm_45/lstm_cell_45/ReadVariableOp_12N
%lstm_45/lstm_cell_45/ReadVariableOp_2%lstm_45/lstm_cell_45/ReadVariableOp_22N
%lstm_45/lstm_cell_45/ReadVariableOp_3%lstm_45/lstm_cell_45/ReadVariableOp_32~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_45/lstm_cell_45/split/ReadVariableOp)lstm_45/lstm_cell_45/split/ReadVariableOp2Z
+lstm_45/lstm_cell_45/split_1/ReadVariableOp+lstm_45/lstm_cell_45/split_1/ReadVariableOp2
lstm_45/whilelstm_45/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸v
ì
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1558764

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
dropout/ShapeÑ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÏîÄ2&
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
seed2Þ£ñ2(
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
seed2ÂÇ2(
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
seed2³¿2(
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
mul_6Ý
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
ReadVariableOp_3ReadVariableOp_32~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2,
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
Ë

è
lstm_45_while_cond_1556799,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3.
*lstm_45_while_less_lstm_45_strided_slice_1E
Alstm_45_while_lstm_45_while_cond_1556799___redundant_placeholder0E
Alstm_45_while_lstm_45_while_cond_1556799___redundant_placeholder1E
Alstm_45_while_lstm_45_while_cond_1556799___redundant_placeholder2E
Alstm_45_while_lstm_45_while_cond_1556799___redundant_placeholder3
lstm_45_while_identity

lstm_45/while/LessLesslstm_45_while_placeholder*lstm_45_while_less_lstm_45_strided_slice_1*
T0*
_output_shapes
: 2
lstm_45/while/Lessu
lstm_45/while/IdentityIdentitylstm_45/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_45/while/Identity"9
lstm_45_while_identitylstm_45/while/Identity:output:0*(
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
ïÍ
½
lstm_45_while_body_1557103,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3+
'lstm_45_while_lstm_45_strided_slice_1_0g
clstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_45_while_lstm_cell_45_split_readvariableop_resource_0:	K
<lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0:	G
4lstm_45_while_lstm_cell_45_readvariableop_resource_0:	 
lstm_45_while_identity
lstm_45_while_identity_1
lstm_45_while_identity_2
lstm_45_while_identity_3
lstm_45_while_identity_4
lstm_45_while_identity_5)
%lstm_45_while_lstm_45_strided_slice_1e
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorK
8lstm_45_while_lstm_cell_45_split_readvariableop_resource:	I
:lstm_45_while_lstm_cell_45_split_1_readvariableop_resource:	E
2lstm_45_while_lstm_cell_45_readvariableop_resource:	 ¢)lstm_45/while/lstm_cell_45/ReadVariableOp¢+lstm_45/while/lstm_cell_45/ReadVariableOp_1¢+lstm_45/while/lstm_cell_45/ReadVariableOp_2¢+lstm_45/while/lstm_cell_45/ReadVariableOp_3¢/lstm_45/while/lstm_cell_45/split/ReadVariableOp¢1lstm_45/while/lstm_cell_45/split_1/ReadVariableOpÓ
?lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_45/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0lstm_45_while_placeholderHlstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_45/while/TensorArrayV2Read/TensorListGetItem£
*lstm_45/while/lstm_cell_45/ones_like/ShapeShapelstm_45_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_45/while/lstm_cell_45/ones_like/Shape
*lstm_45/while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_45/while/lstm_cell_45/ones_like/Constð
$lstm_45/while/lstm_cell_45/ones_likeFill3lstm_45/while/lstm_cell_45/ones_like/Shape:output:03lstm_45/while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/ones_like
(lstm_45/while/lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2*
(lstm_45/while/lstm_cell_45/dropout/Constë
&lstm_45/while/lstm_cell_45/dropout/MulMul-lstm_45/while/lstm_cell_45/ones_like:output:01lstm_45/while/lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_45/while/lstm_cell_45/dropout/Mul±
(lstm_45/while/lstm_cell_45/dropout/ShapeShape-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_45/while/lstm_cell_45/dropout/Shape¡
?lstm_45/while/lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform1lstm_45/while/lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ë2A
?lstm_45/while/lstm_cell_45/dropout/random_uniform/RandomUniform«
1lstm_45/while/lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>23
1lstm_45/while/lstm_cell_45/dropout/GreaterEqual/yª
/lstm_45/while/lstm_cell_45/dropout/GreaterEqualGreaterEqualHlstm_45/while/lstm_cell_45/dropout/random_uniform/RandomUniform:output:0:lstm_45/while/lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_45/while/lstm_cell_45/dropout/GreaterEqualÐ
'lstm_45/while/lstm_cell_45/dropout/CastCast3lstm_45/while/lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_45/while/lstm_cell_45/dropout/Castæ
(lstm_45/while/lstm_cell_45/dropout/Mul_1Mul*lstm_45/while/lstm_cell_45/dropout/Mul:z:0+lstm_45/while/lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_45/while/lstm_cell_45/dropout/Mul_1
*lstm_45/while/lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_45/while/lstm_cell_45/dropout_1/Constñ
(lstm_45/while/lstm_cell_45/dropout_1/MulMul-lstm_45/while/lstm_cell_45/ones_like:output:03lstm_45/while/lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_45/while/lstm_cell_45/dropout_1/Mulµ
*lstm_45/while/lstm_cell_45/dropout_1/ShapeShape-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_45/while/lstm_cell_45/dropout_1/Shape¨
Alstm_45/while/lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_45/while/lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ô2C
Alstm_45/while/lstm_cell_45/dropout_1/random_uniform/RandomUniform¯
3lstm_45/while/lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_45/while/lstm_cell_45/dropout_1/GreaterEqual/y²
1lstm_45/while/lstm_cell_45/dropout_1/GreaterEqualGreaterEqualJlstm_45/while/lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:0<lstm_45/while/lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_45/while/lstm_cell_45/dropout_1/GreaterEqualÖ
)lstm_45/while/lstm_cell_45/dropout_1/CastCast5lstm_45/while/lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_45/while/lstm_cell_45/dropout_1/Castî
*lstm_45/while/lstm_cell_45/dropout_1/Mul_1Mul,lstm_45/while/lstm_cell_45/dropout_1/Mul:z:0-lstm_45/while/lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_45/while/lstm_cell_45/dropout_1/Mul_1
*lstm_45/while/lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_45/while/lstm_cell_45/dropout_2/Constñ
(lstm_45/while/lstm_cell_45/dropout_2/MulMul-lstm_45/while/lstm_cell_45/ones_like:output:03lstm_45/while/lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_45/while/lstm_cell_45/dropout_2/Mulµ
*lstm_45/while/lstm_cell_45/dropout_2/ShapeShape-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_45/while/lstm_cell_45/dropout_2/Shape¨
Alstm_45/while/lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_45/while/lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ð¹£2C
Alstm_45/while/lstm_cell_45/dropout_2/random_uniform/RandomUniform¯
3lstm_45/while/lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_45/while/lstm_cell_45/dropout_2/GreaterEqual/y²
1lstm_45/while/lstm_cell_45/dropout_2/GreaterEqualGreaterEqualJlstm_45/while/lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:0<lstm_45/while/lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_45/while/lstm_cell_45/dropout_2/GreaterEqualÖ
)lstm_45/while/lstm_cell_45/dropout_2/CastCast5lstm_45/while/lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_45/while/lstm_cell_45/dropout_2/Castî
*lstm_45/while/lstm_cell_45/dropout_2/Mul_1Mul,lstm_45/while/lstm_cell_45/dropout_2/Mul:z:0-lstm_45/while/lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_45/while/lstm_cell_45/dropout_2/Mul_1
*lstm_45/while/lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_45/while/lstm_cell_45/dropout_3/Constñ
(lstm_45/while/lstm_cell_45/dropout_3/MulMul-lstm_45/while/lstm_cell_45/ones_like:output:03lstm_45/while/lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_45/while/lstm_cell_45/dropout_3/Mulµ
*lstm_45/while/lstm_cell_45/dropout_3/ShapeShape-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_45/while/lstm_cell_45/dropout_3/Shape§
Alstm_45/while/lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_45/while/lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Çåd2C
Alstm_45/while/lstm_cell_45/dropout_3/random_uniform/RandomUniform¯
3lstm_45/while/lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_45/while/lstm_cell_45/dropout_3/GreaterEqual/y²
1lstm_45/while/lstm_cell_45/dropout_3/GreaterEqualGreaterEqualJlstm_45/while/lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:0<lstm_45/while/lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_45/while/lstm_cell_45/dropout_3/GreaterEqualÖ
)lstm_45/while/lstm_cell_45/dropout_3/CastCast5lstm_45/while/lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_45/while/lstm_cell_45/dropout_3/Castî
*lstm_45/while/lstm_cell_45/dropout_3/Mul_1Mul,lstm_45/while/lstm_cell_45/dropout_3/Mul:z:0-lstm_45/while/lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_45/while/lstm_cell_45/dropout_3/Mul_1
*lstm_45/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_45/while/lstm_cell_45/split/split_dimÞ
/lstm_45/while/lstm_cell_45/split/ReadVariableOpReadVariableOp:lstm_45_while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_45/while/lstm_cell_45/split/ReadVariableOp
 lstm_45/while/lstm_cell_45/splitSplit3lstm_45/while/lstm_cell_45/split/split_dim:output:07lstm_45/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_45/while/lstm_cell_45/splitç
!lstm_45/while/lstm_cell_45/MatMulMatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_45/while/lstm_cell_45/MatMulë
#lstm_45/while/lstm_cell_45/MatMul_1MatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_1ë
#lstm_45/while/lstm_cell_45/MatMul_2MatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_2ë
#lstm_45/while/lstm_cell_45/MatMul_3MatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_3
,lstm_45/while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_45/while/lstm_cell_45/split_1/split_dimà
1lstm_45/while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp<lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_45/while/lstm_cell_45/split_1/ReadVariableOp
"lstm_45/while/lstm_cell_45/split_1Split5lstm_45/while/lstm_cell_45/split_1/split_dim:output:09lstm_45/while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_45/while/lstm_cell_45/split_1ß
"lstm_45/while/lstm_cell_45/BiasAddBiasAdd+lstm_45/while/lstm_cell_45/MatMul:product:0+lstm_45/while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/while/lstm_cell_45/BiasAddå
$lstm_45/while/lstm_cell_45/BiasAdd_1BiasAdd-lstm_45/while/lstm_cell_45/MatMul_1:product:0+lstm_45/while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/BiasAdd_1å
$lstm_45/while/lstm_cell_45/BiasAdd_2BiasAdd-lstm_45/while/lstm_cell_45/MatMul_2:product:0+lstm_45/while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/BiasAdd_2å
$lstm_45/while/lstm_cell_45/BiasAdd_3BiasAdd-lstm_45/while/lstm_cell_45/MatMul_3:product:0+lstm_45/while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/BiasAdd_3Ä
lstm_45/while/lstm_cell_45/mulMullstm_45_while_placeholder_2,lstm_45/while/lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/while/lstm_cell_45/mulÊ
 lstm_45/while/lstm_cell_45/mul_1Mullstm_45_while_placeholder_2.lstm_45/while/lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_1Ê
 lstm_45/while/lstm_cell_45/mul_2Mullstm_45_while_placeholder_2.lstm_45/while/lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_2Ê
 lstm_45/while/lstm_cell_45/mul_3Mullstm_45_while_placeholder_2.lstm_45/while/lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_3Ì
)lstm_45/while/lstm_cell_45/ReadVariableOpReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_45/while/lstm_cell_45/ReadVariableOp±
.lstm_45/while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_45/while/lstm_cell_45/strided_slice/stackµ
0lstm_45/while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_45/while/lstm_cell_45/strided_slice/stack_1µ
0lstm_45/while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_45/while/lstm_cell_45/strided_slice/stack_2
(lstm_45/while/lstm_cell_45/strided_sliceStridedSlice1lstm_45/while/lstm_cell_45/ReadVariableOp:value:07lstm_45/while/lstm_cell_45/strided_slice/stack:output:09lstm_45/while/lstm_cell_45/strided_slice/stack_1:output:09lstm_45/while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_45/while/lstm_cell_45/strided_sliceÝ
#lstm_45/while/lstm_cell_45/MatMul_4MatMul"lstm_45/while/lstm_cell_45/mul:z:01lstm_45/while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_4×
lstm_45/while/lstm_cell_45/addAddV2+lstm_45/while/lstm_cell_45/BiasAdd:output:0-lstm_45/while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/while/lstm_cell_45/add©
"lstm_45/while/lstm_cell_45/SigmoidSigmoid"lstm_45/while/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/while/lstm_cell_45/SigmoidÐ
+lstm_45/while/lstm_cell_45/ReadVariableOp_1ReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_45/while/lstm_cell_45/ReadVariableOp_1µ
0lstm_45/while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_45/while/lstm_cell_45/strided_slice_1/stack¹
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_1¹
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_2ª
*lstm_45/while/lstm_cell_45/strided_slice_1StridedSlice3lstm_45/while/lstm_cell_45/ReadVariableOp_1:value:09lstm_45/while/lstm_cell_45/strided_slice_1/stack:output:0;lstm_45/while/lstm_cell_45/strided_slice_1/stack_1:output:0;lstm_45/while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_45/while/lstm_cell_45/strided_slice_1á
#lstm_45/while/lstm_cell_45/MatMul_5MatMul$lstm_45/while/lstm_cell_45/mul_1:z:03lstm_45/while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_5Ý
 lstm_45/while/lstm_cell_45/add_1AddV2-lstm_45/while/lstm_cell_45/BiasAdd_1:output:0-lstm_45/while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_1¯
$lstm_45/while/lstm_cell_45/Sigmoid_1Sigmoid$lstm_45/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/Sigmoid_1Ä
 lstm_45/while/lstm_cell_45/mul_4Mul(lstm_45/while/lstm_cell_45/Sigmoid_1:y:0lstm_45_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_4Ð
+lstm_45/while/lstm_cell_45/ReadVariableOp_2ReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_45/while/lstm_cell_45/ReadVariableOp_2µ
0lstm_45/while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_45/while/lstm_cell_45/strided_slice_2/stack¹
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_1¹
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_2ª
*lstm_45/while/lstm_cell_45/strided_slice_2StridedSlice3lstm_45/while/lstm_cell_45/ReadVariableOp_2:value:09lstm_45/while/lstm_cell_45/strided_slice_2/stack:output:0;lstm_45/while/lstm_cell_45/strided_slice_2/stack_1:output:0;lstm_45/while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_45/while/lstm_cell_45/strided_slice_2á
#lstm_45/while/lstm_cell_45/MatMul_6MatMul$lstm_45/while/lstm_cell_45/mul_2:z:03lstm_45/while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_6Ý
 lstm_45/while/lstm_cell_45/add_2AddV2-lstm_45/while/lstm_cell_45/BiasAdd_2:output:0-lstm_45/while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_2¢
lstm_45/while/lstm_cell_45/ReluRelu$lstm_45/while/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_45/while/lstm_cell_45/ReluÔ
 lstm_45/while/lstm_cell_45/mul_5Mul&lstm_45/while/lstm_cell_45/Sigmoid:y:0-lstm_45/while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_5Ë
 lstm_45/while/lstm_cell_45/add_3AddV2$lstm_45/while/lstm_cell_45/mul_4:z:0$lstm_45/while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_3Ð
+lstm_45/while/lstm_cell_45/ReadVariableOp_3ReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_45/while/lstm_cell_45/ReadVariableOp_3µ
0lstm_45/while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_45/while/lstm_cell_45/strided_slice_3/stack¹
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_1¹
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_2ª
*lstm_45/while/lstm_cell_45/strided_slice_3StridedSlice3lstm_45/while/lstm_cell_45/ReadVariableOp_3:value:09lstm_45/while/lstm_cell_45/strided_slice_3/stack:output:0;lstm_45/while/lstm_cell_45/strided_slice_3/stack_1:output:0;lstm_45/while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_45/while/lstm_cell_45/strided_slice_3á
#lstm_45/while/lstm_cell_45/MatMul_7MatMul$lstm_45/while/lstm_cell_45/mul_3:z:03lstm_45/while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_7Ý
 lstm_45/while/lstm_cell_45/add_4AddV2-lstm_45/while/lstm_cell_45/BiasAdd_3:output:0-lstm_45/while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_4¯
$lstm_45/while/lstm_cell_45/Sigmoid_2Sigmoid$lstm_45/while/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/Sigmoid_2¦
!lstm_45/while/lstm_cell_45/Relu_1Relu$lstm_45/while/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_45/while/lstm_cell_45/Relu_1Ø
 lstm_45/while/lstm_cell_45/mul_6Mul(lstm_45/while/lstm_cell_45/Sigmoid_2:y:0/lstm_45/while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_6
2lstm_45/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_45_while_placeholder_1lstm_45_while_placeholder$lstm_45/while/lstm_cell_45/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_45/while/TensorArrayV2Write/TensorListSetIteml
lstm_45/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_45/while/add/y
lstm_45/while/addAddV2lstm_45_while_placeholderlstm_45/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_45/while/addp
lstm_45/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_45/while/add_1/y
lstm_45/while/add_1AddV2(lstm_45_while_lstm_45_while_loop_counterlstm_45/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_45/while/add_1
lstm_45/while/IdentityIdentitylstm_45/while/add_1:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity¦
lstm_45/while/Identity_1Identity.lstm_45_while_lstm_45_while_maximum_iterations^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity_1
lstm_45/while/Identity_2Identitylstm_45/while/add:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity_2º
lstm_45/while/Identity_3IdentityBlstm_45/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity_3­
lstm_45/while/Identity_4Identity$lstm_45/while/lstm_cell_45/mul_6:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/while/Identity_4­
lstm_45/while/Identity_5Identity$lstm_45/while/lstm_cell_45/add_3:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/while/Identity_5
lstm_45/while/NoOpNoOp*^lstm_45/while/lstm_cell_45/ReadVariableOp,^lstm_45/while/lstm_cell_45/ReadVariableOp_1,^lstm_45/while/lstm_cell_45/ReadVariableOp_2,^lstm_45/while/lstm_cell_45/ReadVariableOp_30^lstm_45/while/lstm_cell_45/split/ReadVariableOp2^lstm_45/while/lstm_cell_45/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_45/while/NoOp"9
lstm_45_while_identitylstm_45/while/Identity:output:0"=
lstm_45_while_identity_1!lstm_45/while/Identity_1:output:0"=
lstm_45_while_identity_2!lstm_45/while/Identity_2:output:0"=
lstm_45_while_identity_3!lstm_45/while/Identity_3:output:0"=
lstm_45_while_identity_4!lstm_45/while/Identity_4:output:0"=
lstm_45_while_identity_5!lstm_45/while/Identity_5:output:0"P
%lstm_45_while_lstm_45_strided_slice_1'lstm_45_while_lstm_45_strided_slice_1_0"j
2lstm_45_while_lstm_cell_45_readvariableop_resource4lstm_45_while_lstm_cell_45_readvariableop_resource_0"z
:lstm_45_while_lstm_cell_45_split_1_readvariableop_resource<lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0"v
8lstm_45_while_lstm_cell_45_split_readvariableop_resource:lstm_45_while_lstm_cell_45_split_readvariableop_resource_0"È
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_45/while/lstm_cell_45/ReadVariableOp)lstm_45/while/lstm_cell_45/ReadVariableOp2Z
+lstm_45/while/lstm_cell_45/ReadVariableOp_1+lstm_45/while/lstm_cell_45/ReadVariableOp_12Z
+lstm_45/while/lstm_cell_45/ReadVariableOp_2+lstm_45/while/lstm_cell_45/ReadVariableOp_22Z
+lstm_45/while/lstm_cell_45/ReadVariableOp_3+lstm_45/while/lstm_cell_45/ReadVariableOp_32b
/lstm_45/while/lstm_cell_45/split/ReadVariableOp/lstm_45/while/lstm_cell_45/split/ReadVariableOp2f
1lstm_45/while/lstm_cell_45/split_1/ReadVariableOp1lstm_45/while/lstm_cell_45/split_1/ReadVariableOp: 
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
while_cond_1556317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1556317___redundant_placeholder05
1while_while_cond_1556317___redundant_placeholder15
1while_while_cond_1556317___redundant_placeholder25
1while_while_cond_1556317___redundant_placeholder3
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
Ð
ª
D__inference_lstm_45_layer_call_and_return_conditional_losses_1557890
inputs_0=
*lstm_cell_45_split_readvariableop_resource:	;
,lstm_cell_45_split_1_readvariableop_resource:	7
$lstm_cell_45_readvariableop_resource:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_45/ReadVariableOp¢lstm_cell_45/ReadVariableOp_1¢lstm_cell_45/ReadVariableOp_2¢lstm_cell_45/ReadVariableOp_3¢!lstm_cell_45/split/ReadVariableOp¢#lstm_cell_45/split_1/ReadVariableOp¢whileF
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
strided_slice_2z
lstm_cell_45/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_45/ones_like/Shape
lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_45/ones_like/Const¸
lstm_cell_45/ones_likeFill%lstm_cell_45/ones_like/Shape:output:0%lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/ones_like}
lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout/Const³
lstm_cell_45/dropout/MulMullstm_cell_45/ones_like:output:0#lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Mul
lstm_cell_45/dropout/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout/Shapeø
1lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÃÛ23
1lstm_cell_45/dropout/random_uniform/RandomUniform
#lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_45/dropout/GreaterEqual/yò
!lstm_cell_45/dropout/GreaterEqualGreaterEqual:lstm_cell_45/dropout/random_uniform/RandomUniform:output:0,lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_45/dropout/GreaterEqual¦
lstm_cell_45/dropout/CastCast%lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Cast®
lstm_cell_45/dropout/Mul_1Mullstm_cell_45/dropout/Mul:z:0lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Mul_1
lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_1/Const¹
lstm_cell_45/dropout_1/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Mul
lstm_cell_45/dropout_1/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_1/Shapeþ
3lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2íÒ25
3lstm_cell_45/dropout_1/random_uniform/RandomUniform
%lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_1/GreaterEqual/yú
#lstm_cell_45/dropout_1/GreaterEqualGreaterEqual<lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_1/GreaterEqual¬
lstm_cell_45/dropout_1/CastCast'lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Cast¶
lstm_cell_45/dropout_1/Mul_1Mullstm_cell_45/dropout_1/Mul:z:0lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Mul_1
lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_2/Const¹
lstm_cell_45/dropout_2/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Mul
lstm_cell_45/dropout_2/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_2/Shapeþ
3lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2íÈÔ25
3lstm_cell_45/dropout_2/random_uniform/RandomUniform
%lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_2/GreaterEqual/yú
#lstm_cell_45/dropout_2/GreaterEqualGreaterEqual<lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_2/GreaterEqual¬
lstm_cell_45/dropout_2/CastCast'lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Cast¶
lstm_cell_45/dropout_2/Mul_1Mullstm_cell_45/dropout_2/Mul:z:0lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Mul_1
lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_3/Const¹
lstm_cell_45/dropout_3/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Mul
lstm_cell_45/dropout_3/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_3/Shapeþ
3lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ú25
3lstm_cell_45/dropout_3/random_uniform/RandomUniform
%lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_3/GreaterEqual/yú
#lstm_cell_45/dropout_3/GreaterEqualGreaterEqual<lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_3/GreaterEqual¬
lstm_cell_45/dropout_3/CastCast'lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Cast¶
lstm_cell_45/dropout_3/Mul_1Mullstm_cell_45/dropout_3/Mul:z:0lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Mul_1~
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_45/split/split_dim²
!lstm_cell_45/split/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_45/split/ReadVariableOpÛ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0)lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_45/split
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul¡
lstm_cell_45/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_1¡
lstm_cell_45/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_2¡
lstm_cell_45/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_3
lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_45/split_1/split_dim´
#lstm_cell_45/split_1/ReadVariableOpReadVariableOp,lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_45/split_1/ReadVariableOpÓ
lstm_cell_45/split_1Split'lstm_cell_45/split_1/split_dim:output:0+lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_45/split_1§
lstm_cell_45/BiasAddBiasAddlstm_cell_45/MatMul:product:0lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd­
lstm_cell_45/BiasAdd_1BiasAddlstm_cell_45/MatMul_1:product:0lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_1­
lstm_cell_45/BiasAdd_2BiasAddlstm_cell_45/MatMul_2:product:0lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_2­
lstm_cell_45/BiasAdd_3BiasAddlstm_cell_45/MatMul_3:product:0lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_3
lstm_cell_45/mulMulzeros:output:0lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul
lstm_cell_45/mul_1Mulzeros:output:0 lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_1
lstm_cell_45/mul_2Mulzeros:output:0 lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_2
lstm_cell_45/mul_3Mulzeros:output:0 lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_3 
lstm_cell_45/ReadVariableOpReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp
 lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_45/strided_slice/stack
"lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice/stack_1
"lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_45/strided_slice/stack_2Ê
lstm_cell_45/strided_sliceStridedSlice#lstm_cell_45/ReadVariableOp:value:0)lstm_cell_45/strided_slice/stack:output:0+lstm_cell_45/strided_slice/stack_1:output:0+lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice¥
lstm_cell_45/MatMul_4MatMullstm_cell_45/mul:z:0#lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_4
lstm_cell_45/addAddV2lstm_cell_45/BiasAdd:output:0lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add
lstm_cell_45/SigmoidSigmoidlstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid¤
lstm_cell_45/ReadVariableOp_1ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_1
"lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice_1/stack
$lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_45/strided_slice_1/stack_1
$lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_1/stack_2Ö
lstm_cell_45/strided_slice_1StridedSlice%lstm_cell_45/ReadVariableOp_1:value:0+lstm_cell_45/strided_slice_1/stack:output:0-lstm_cell_45/strided_slice_1/stack_1:output:0-lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_1©
lstm_cell_45/MatMul_5MatMullstm_cell_45/mul_1:z:0%lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_5¥
lstm_cell_45/add_1AddV2lstm_cell_45/BiasAdd_1:output:0lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_1
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_1
lstm_cell_45/mul_4Mullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_4¤
lstm_cell_45/ReadVariableOp_2ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_2
"lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_45/strided_slice_2/stack
$lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_45/strided_slice_2/stack_1
$lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_2/stack_2Ö
lstm_cell_45/strided_slice_2StridedSlice%lstm_cell_45/ReadVariableOp_2:value:0+lstm_cell_45/strided_slice_2/stack:output:0-lstm_cell_45/strided_slice_2/stack_1:output:0-lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_2©
lstm_cell_45/MatMul_6MatMullstm_cell_45/mul_2:z:0%lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_6¥
lstm_cell_45/add_2AddV2lstm_cell_45/BiasAdd_2:output:0lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_2x
lstm_cell_45/ReluRelulstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu
lstm_cell_45/mul_5Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_5
lstm_cell_45/add_3AddV2lstm_cell_45/mul_4:z:0lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_3¤
lstm_cell_45/ReadVariableOp_3ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_3
"lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_45/strided_slice_3/stack
$lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_45/strided_slice_3/stack_1
$lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_3/stack_2Ö
lstm_cell_45/strided_slice_3StridedSlice%lstm_cell_45/ReadVariableOp_3:value:0+lstm_cell_45/strided_slice_3/stack:output:0-lstm_cell_45/strided_slice_3/stack_1:output:0-lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_3©
lstm_cell_45/MatMul_7MatMullstm_cell_45/mul_3:z:0%lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_7¥
lstm_cell_45/add_4AddV2lstm_cell_45/BiasAdd_3:output:0lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_4
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_2|
lstm_cell_45/Relu_1Relulstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu_1 
lstm_cell_45/mul_6Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_45_split_readvariableop_resource,lstm_cell_45_split_1_readvariableop_resource$lstm_cell_45_readvariableop_resource*
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
while_body_1557725*
condR
while_cond_1557724*K
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
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_45/ReadVariableOp^lstm_cell_45/ReadVariableOp_1^lstm_cell_45/ReadVariableOp_2^lstm_cell_45/ReadVariableOp_3"^lstm_cell_45/split/ReadVariableOp$^lstm_cell_45/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_45/ReadVariableOplstm_cell_45/ReadVariableOp2>
lstm_cell_45/ReadVariableOp_1lstm_cell_45/ReadVariableOp_12>
lstm_cell_45/ReadVariableOp_2lstm_cell_45/ReadVariableOp_22>
lstm_cell_45/ReadVariableOp_3lstm_cell_45/ReadVariableOp_32F
!lstm_cell_45/split/ReadVariableOp!lstm_cell_45/split/ReadVariableOp2J
#lstm_cell_45/split_1/ReadVariableOp#lstm_cell_45/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÜÏ
¨
D__inference_lstm_45_layer_call_and_return_conditional_losses_1558440

inputs=
*lstm_cell_45_split_readvariableop_resource:	;
,lstm_cell_45_split_1_readvariableop_resource:	7
$lstm_cell_45_readvariableop_resource:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_45/ReadVariableOp¢lstm_cell_45/ReadVariableOp_1¢lstm_cell_45/ReadVariableOp_2¢lstm_cell_45/ReadVariableOp_3¢!lstm_cell_45/split/ReadVariableOp¢#lstm_cell_45/split_1/ReadVariableOp¢whileD
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
strided_slice_2z
lstm_cell_45/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_45/ones_like/Shape
lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_45/ones_like/Const¸
lstm_cell_45/ones_likeFill%lstm_cell_45/ones_like/Shape:output:0%lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/ones_like}
lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout/Const³
lstm_cell_45/dropout/MulMullstm_cell_45/ones_like:output:0#lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Mul
lstm_cell_45/dropout/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout/Shapeø
1lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¢23
1lstm_cell_45/dropout/random_uniform/RandomUniform
#lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_45/dropout/GreaterEqual/yò
!lstm_cell_45/dropout/GreaterEqualGreaterEqual:lstm_cell_45/dropout/random_uniform/RandomUniform:output:0,lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_45/dropout/GreaterEqual¦
lstm_cell_45/dropout/CastCast%lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Cast®
lstm_cell_45/dropout/Mul_1Mullstm_cell_45/dropout/Mul:z:0lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout/Mul_1
lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_1/Const¹
lstm_cell_45/dropout_1/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Mul
lstm_cell_45/dropout_1/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_1/Shapeþ
3lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ùß£25
3lstm_cell_45/dropout_1/random_uniform/RandomUniform
%lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_1/GreaterEqual/yú
#lstm_cell_45/dropout_1/GreaterEqualGreaterEqual<lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_1/GreaterEqual¬
lstm_cell_45/dropout_1/CastCast'lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Cast¶
lstm_cell_45/dropout_1/Mul_1Mullstm_cell_45/dropout_1/Mul:z:0lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_1/Mul_1
lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_2/Const¹
lstm_cell_45/dropout_2/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Mul
lstm_cell_45/dropout_2/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_2/Shapeþ
3lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ï25
3lstm_cell_45/dropout_2/random_uniform/RandomUniform
%lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_2/GreaterEqual/yú
#lstm_cell_45/dropout_2/GreaterEqualGreaterEqual<lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_2/GreaterEqual¬
lstm_cell_45/dropout_2/CastCast'lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Cast¶
lstm_cell_45/dropout_2/Mul_1Mullstm_cell_45/dropout_2/Mul:z:0lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_2/Mul_1
lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_45/dropout_3/Const¹
lstm_cell_45/dropout_3/MulMullstm_cell_45/ones_like:output:0%lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Mul
lstm_cell_45/dropout_3/ShapeShapelstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_45/dropout_3/Shapeþ
3lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2÷å25
3lstm_cell_45/dropout_3/random_uniform/RandomUniform
%lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_45/dropout_3/GreaterEqual/yú
#lstm_cell_45/dropout_3/GreaterEqualGreaterEqual<lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_45/dropout_3/GreaterEqual¬
lstm_cell_45/dropout_3/CastCast'lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Cast¶
lstm_cell_45/dropout_3/Mul_1Mullstm_cell_45/dropout_3/Mul:z:0lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/dropout_3/Mul_1~
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_45/split/split_dim²
!lstm_cell_45/split/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_45/split/ReadVariableOpÛ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0)lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_45/split
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul¡
lstm_cell_45/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_1¡
lstm_cell_45/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_2¡
lstm_cell_45/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_3
lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_45/split_1/split_dim´
#lstm_cell_45/split_1/ReadVariableOpReadVariableOp,lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_45/split_1/ReadVariableOpÓ
lstm_cell_45/split_1Split'lstm_cell_45/split_1/split_dim:output:0+lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_45/split_1§
lstm_cell_45/BiasAddBiasAddlstm_cell_45/MatMul:product:0lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd­
lstm_cell_45/BiasAdd_1BiasAddlstm_cell_45/MatMul_1:product:0lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_1­
lstm_cell_45/BiasAdd_2BiasAddlstm_cell_45/MatMul_2:product:0lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_2­
lstm_cell_45/BiasAdd_3BiasAddlstm_cell_45/MatMul_3:product:0lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_3
lstm_cell_45/mulMulzeros:output:0lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul
lstm_cell_45/mul_1Mulzeros:output:0 lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_1
lstm_cell_45/mul_2Mulzeros:output:0 lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_2
lstm_cell_45/mul_3Mulzeros:output:0 lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_3 
lstm_cell_45/ReadVariableOpReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp
 lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_45/strided_slice/stack
"lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice/stack_1
"lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_45/strided_slice/stack_2Ê
lstm_cell_45/strided_sliceStridedSlice#lstm_cell_45/ReadVariableOp:value:0)lstm_cell_45/strided_slice/stack:output:0+lstm_cell_45/strided_slice/stack_1:output:0+lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice¥
lstm_cell_45/MatMul_4MatMullstm_cell_45/mul:z:0#lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_4
lstm_cell_45/addAddV2lstm_cell_45/BiasAdd:output:0lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add
lstm_cell_45/SigmoidSigmoidlstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid¤
lstm_cell_45/ReadVariableOp_1ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_1
"lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice_1/stack
$lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_45/strided_slice_1/stack_1
$lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_1/stack_2Ö
lstm_cell_45/strided_slice_1StridedSlice%lstm_cell_45/ReadVariableOp_1:value:0+lstm_cell_45/strided_slice_1/stack:output:0-lstm_cell_45/strided_slice_1/stack_1:output:0-lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_1©
lstm_cell_45/MatMul_5MatMullstm_cell_45/mul_1:z:0%lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_5¥
lstm_cell_45/add_1AddV2lstm_cell_45/BiasAdd_1:output:0lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_1
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_1
lstm_cell_45/mul_4Mullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_4¤
lstm_cell_45/ReadVariableOp_2ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_2
"lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_45/strided_slice_2/stack
$lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_45/strided_slice_2/stack_1
$lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_2/stack_2Ö
lstm_cell_45/strided_slice_2StridedSlice%lstm_cell_45/ReadVariableOp_2:value:0+lstm_cell_45/strided_slice_2/stack:output:0-lstm_cell_45/strided_slice_2/stack_1:output:0-lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_2©
lstm_cell_45/MatMul_6MatMullstm_cell_45/mul_2:z:0%lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_6¥
lstm_cell_45/add_2AddV2lstm_cell_45/BiasAdd_2:output:0lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_2x
lstm_cell_45/ReluRelulstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu
lstm_cell_45/mul_5Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_5
lstm_cell_45/add_3AddV2lstm_cell_45/mul_4:z:0lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_3¤
lstm_cell_45/ReadVariableOp_3ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_3
"lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_45/strided_slice_3/stack
$lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_45/strided_slice_3/stack_1
$lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_3/stack_2Ö
lstm_cell_45/strided_slice_3StridedSlice%lstm_cell_45/ReadVariableOp_3:value:0+lstm_cell_45/strided_slice_3/stack:output:0-lstm_cell_45/strided_slice_3/stack_1:output:0-lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_3©
lstm_cell_45/MatMul_7MatMullstm_cell_45/mul_3:z:0%lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_7¥
lstm_cell_45/add_4AddV2lstm_cell_45/BiasAdd_3:output:0lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_4
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_2|
lstm_cell_45/Relu_1Relulstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu_1 
lstm_cell_45/mul_6Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_45_split_readvariableop_resource,lstm_cell_45_split_1_readvariableop_resource$lstm_cell_45_readvariableop_resource*
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
while_body_1558275*
condR
while_cond_1558274*K
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
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_45/ReadVariableOp^lstm_cell_45/ReadVariableOp_1^lstm_cell_45/ReadVariableOp_2^lstm_cell_45/ReadVariableOp_3"^lstm_cell_45/split/ReadVariableOp$^lstm_cell_45/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_45/ReadVariableOplstm_cell_45/ReadVariableOp2>
lstm_cell_45/ReadVariableOp_1lstm_cell_45/ReadVariableOp_12>
lstm_cell_45/ReadVariableOp_2lstm_cell_45/ReadVariableOp_22>
lstm_cell_45/ReadVariableOp_3lstm_cell_45/ReadVariableOp_32F
!lstm_cell_45/split/ReadVariableOp!lstm_cell_45/split/ReadVariableOp2J
#lstm_cell_45/split_1/ReadVariableOp#lstm_cell_45/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
È
while_cond_1558274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558274___redundant_placeholder05
1while_while_cond_1558274___redundant_placeholder15
1while_while_cond_1558274___redundant_placeholder25
1while_while_cond_1558274___redundant_placeholder3
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
÷
ª
__inference_loss_fn_0_1558564F
8dense_55_bias_regularizer_square_readvariableop_resource:
identity¢/dense_55/bias/Regularizer/Square/ReadVariableOp×
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_55_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mulk
IdentityIdentity!dense_55/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp0^dense_55/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp
¢|

#__inference__traced_restore_1559010
file_prefix2
 assignvariableop_dense_54_kernel:  .
 assignvariableop_1_dense_54_bias: 4
"assignvariableop_2_dense_55_kernel: .
 assignvariableop_3_dense_55_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_45_lstm_cell_45_kernel:	L
9assignvariableop_10_lstm_45_lstm_cell_45_recurrent_kernel:	 <
-assignvariableop_11_lstm_45_lstm_cell_45_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_54_kernel_m:  6
(assignvariableop_15_adam_dense_54_bias_m: <
*assignvariableop_16_adam_dense_55_kernel_m: 6
(assignvariableop_17_adam_dense_55_bias_m:I
6assignvariableop_18_adam_lstm_45_lstm_cell_45_kernel_m:	S
@assignvariableop_19_adam_lstm_45_lstm_cell_45_recurrent_kernel_m:	 C
4assignvariableop_20_adam_lstm_45_lstm_cell_45_bias_m:	<
*assignvariableop_21_adam_dense_54_kernel_v:  6
(assignvariableop_22_adam_dense_54_bias_v: <
*assignvariableop_23_adam_dense_55_kernel_v: 6
(assignvariableop_24_adam_dense_55_bias_v:I
6assignvariableop_25_adam_lstm_45_lstm_cell_45_kernel_v:	S
@assignvariableop_26_adam_lstm_45_lstm_cell_45_recurrent_kernel_v:	 C
4assignvariableop_27_adam_lstm_45_lstm_cell_45_bias_v:	
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ö
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*â
valueØBÕB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOpAssignVariableOp assignvariableop_dense_54_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_54_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_55_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_55_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_45_lstm_cell_45_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_45_lstm_cell_45_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_45_lstm_cell_45_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_54_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_54_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_55_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_55_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_45_lstm_cell_45_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_45_lstm_cell_45_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_45_lstm_cell_45_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_54_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_54_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_55_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_55_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_45_lstm_cell_45_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_45_lstm_cell_45_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_45_lstm_cell_45_bias_vIdentity_27:output:0"/device:CPU:0*
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

ö
E__inference_dense_54_layer_call_and_return_conditional_losses_1556064

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
ò+
³
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556120

inputs"
lstm_45_1556046:	
lstm_45_1556048:	"
lstm_45_1556050:	 "
dense_54_1556065:  
dense_54_1556067: "
dense_55_1556087: 
dense_55_1556089:
identity¢ dense_54/StatefulPartitionedCall¢ dense_55/StatefulPartitionedCall¢/dense_55/bias/Regularizer/Square/ReadVariableOp¢lstm_45/StatefulPartitionedCall¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¥
lstm_45/StatefulPartitionedCallStatefulPartitionedCallinputslstm_45_1556046lstm_45_1556048lstm_45_1556050*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15560452!
lstm_45/StatefulPartitionedCall¹
 dense_54/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0dense_54_1556065dense_54_1556067*
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
GPU 2J 8 *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_15560642"
 dense_54/StatefulPartitionedCallº
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_1556087dense_55_1556089*
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
GPU 2J 8 *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_15560862"
 dense_55/StatefulPartitionedCall
reshape_27/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
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
G__inference_reshape_27_layer_call_and_return_conditional_losses_15561052
reshape_27/PartitionedCallÏ
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_45_1556046*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/mul¯
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_1556089*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul
IdentityIdentity#reshape_27/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp ^lstm_45/StatefulPartitionedCall>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é%
ê
while_body_1555447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_45_1555471_0:	+
while_lstm_cell_45_1555473_0:	/
while_lstm_cell_45_1555475_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_45_1555471:	)
while_lstm_cell_45_1555473:	-
while_lstm_cell_45_1555475:	 ¢*while/lstm_cell_45/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemå
*while/lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_45_1555471_0while_lstm_cell_45_1555473_0while_lstm_cell_45_1555475_0*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_15553692,
*while/lstm_cell_45/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_45/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_45/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_45/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_45_1555471while_lstm_cell_45_1555471_0":
while_lstm_cell_45_1555473while_lstm_cell_45_1555473_0":
while_lstm_cell_45_1555475while_lstm_cell_45_1555475_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_45/StatefulPartitionedCall*while/lstm_cell_45/StatefulPartitionedCall: 
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
ê	
ª
/__inference_sequential_18_layer_call_fn_1556137
input_19
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_15561202
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
input_19
Ý
Ë
__inference_loss_fn_1_1558809Y
Flstm_45_lstm_cell_45_kernel_regularizer_square_readvariableop_resource:	
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_45_lstm_cell_45_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muly
IdentityIdentity/lstm_45/lstm_cell_45/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp
ý
½
lstm_45_while_body_1556800,
(lstm_45_while_lstm_45_while_loop_counter2
.lstm_45_while_lstm_45_while_maximum_iterations
lstm_45_while_placeholder
lstm_45_while_placeholder_1
lstm_45_while_placeholder_2
lstm_45_while_placeholder_3+
'lstm_45_while_lstm_45_strided_slice_1_0g
clstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_45_while_lstm_cell_45_split_readvariableop_resource_0:	K
<lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0:	G
4lstm_45_while_lstm_cell_45_readvariableop_resource_0:	 
lstm_45_while_identity
lstm_45_while_identity_1
lstm_45_while_identity_2
lstm_45_while_identity_3
lstm_45_while_identity_4
lstm_45_while_identity_5)
%lstm_45_while_lstm_45_strided_slice_1e
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorK
8lstm_45_while_lstm_cell_45_split_readvariableop_resource:	I
:lstm_45_while_lstm_cell_45_split_1_readvariableop_resource:	E
2lstm_45_while_lstm_cell_45_readvariableop_resource:	 ¢)lstm_45/while/lstm_cell_45/ReadVariableOp¢+lstm_45/while/lstm_cell_45/ReadVariableOp_1¢+lstm_45/while/lstm_cell_45/ReadVariableOp_2¢+lstm_45/while/lstm_cell_45/ReadVariableOp_3¢/lstm_45/while/lstm_cell_45/split/ReadVariableOp¢1lstm_45/while/lstm_cell_45/split_1/ReadVariableOpÓ
?lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_45/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0lstm_45_while_placeholderHlstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_45/while/TensorArrayV2Read/TensorListGetItem£
*lstm_45/while/lstm_cell_45/ones_like/ShapeShapelstm_45_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_45/while/lstm_cell_45/ones_like/Shape
*lstm_45/while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_45/while/lstm_cell_45/ones_like/Constð
$lstm_45/while/lstm_cell_45/ones_likeFill3lstm_45/while/lstm_cell_45/ones_like/Shape:output:03lstm_45/while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/ones_like
*lstm_45/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_45/while/lstm_cell_45/split/split_dimÞ
/lstm_45/while/lstm_cell_45/split/ReadVariableOpReadVariableOp:lstm_45_while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_45/while/lstm_cell_45/split/ReadVariableOp
 lstm_45/while/lstm_cell_45/splitSplit3lstm_45/while/lstm_cell_45/split/split_dim:output:07lstm_45/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_45/while/lstm_cell_45/splitç
!lstm_45/while/lstm_cell_45/MatMulMatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_45/while/lstm_cell_45/MatMulë
#lstm_45/while/lstm_cell_45/MatMul_1MatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_1ë
#lstm_45/while/lstm_cell_45/MatMul_2MatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_2ë
#lstm_45/while/lstm_cell_45/MatMul_3MatMul8lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_45/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_3
,lstm_45/while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_45/while/lstm_cell_45/split_1/split_dimà
1lstm_45/while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp<lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_45/while/lstm_cell_45/split_1/ReadVariableOp
"lstm_45/while/lstm_cell_45/split_1Split5lstm_45/while/lstm_cell_45/split_1/split_dim:output:09lstm_45/while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_45/while/lstm_cell_45/split_1ß
"lstm_45/while/lstm_cell_45/BiasAddBiasAdd+lstm_45/while/lstm_cell_45/MatMul:product:0+lstm_45/while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/while/lstm_cell_45/BiasAddå
$lstm_45/while/lstm_cell_45/BiasAdd_1BiasAdd-lstm_45/while/lstm_cell_45/MatMul_1:product:0+lstm_45/while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/BiasAdd_1å
$lstm_45/while/lstm_cell_45/BiasAdd_2BiasAdd-lstm_45/while/lstm_cell_45/MatMul_2:product:0+lstm_45/while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/BiasAdd_2å
$lstm_45/while/lstm_cell_45/BiasAdd_3BiasAdd-lstm_45/while/lstm_cell_45/MatMul_3:product:0+lstm_45/while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/BiasAdd_3Å
lstm_45/while/lstm_cell_45/mulMullstm_45_while_placeholder_2-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/while/lstm_cell_45/mulÉ
 lstm_45/while/lstm_cell_45/mul_1Mullstm_45_while_placeholder_2-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_1É
 lstm_45/while/lstm_cell_45/mul_2Mullstm_45_while_placeholder_2-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_2É
 lstm_45/while/lstm_cell_45/mul_3Mullstm_45_while_placeholder_2-lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_3Ì
)lstm_45/while/lstm_cell_45/ReadVariableOpReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_45/while/lstm_cell_45/ReadVariableOp±
.lstm_45/while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_45/while/lstm_cell_45/strided_slice/stackµ
0lstm_45/while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_45/while/lstm_cell_45/strided_slice/stack_1µ
0lstm_45/while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_45/while/lstm_cell_45/strided_slice/stack_2
(lstm_45/while/lstm_cell_45/strided_sliceStridedSlice1lstm_45/while/lstm_cell_45/ReadVariableOp:value:07lstm_45/while/lstm_cell_45/strided_slice/stack:output:09lstm_45/while/lstm_cell_45/strided_slice/stack_1:output:09lstm_45/while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_45/while/lstm_cell_45/strided_sliceÝ
#lstm_45/while/lstm_cell_45/MatMul_4MatMul"lstm_45/while/lstm_cell_45/mul:z:01lstm_45/while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_4×
lstm_45/while/lstm_cell_45/addAddV2+lstm_45/while/lstm_cell_45/BiasAdd:output:0-lstm_45/while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/while/lstm_cell_45/add©
"lstm_45/while/lstm_cell_45/SigmoidSigmoid"lstm_45/while/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/while/lstm_cell_45/SigmoidÐ
+lstm_45/while/lstm_cell_45/ReadVariableOp_1ReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_45/while/lstm_cell_45/ReadVariableOp_1µ
0lstm_45/while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_45/while/lstm_cell_45/strided_slice_1/stack¹
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_1¹
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_45/while/lstm_cell_45/strided_slice_1/stack_2ª
*lstm_45/while/lstm_cell_45/strided_slice_1StridedSlice3lstm_45/while/lstm_cell_45/ReadVariableOp_1:value:09lstm_45/while/lstm_cell_45/strided_slice_1/stack:output:0;lstm_45/while/lstm_cell_45/strided_slice_1/stack_1:output:0;lstm_45/while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_45/while/lstm_cell_45/strided_slice_1á
#lstm_45/while/lstm_cell_45/MatMul_5MatMul$lstm_45/while/lstm_cell_45/mul_1:z:03lstm_45/while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_5Ý
 lstm_45/while/lstm_cell_45/add_1AddV2-lstm_45/while/lstm_cell_45/BiasAdd_1:output:0-lstm_45/while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_1¯
$lstm_45/while/lstm_cell_45/Sigmoid_1Sigmoid$lstm_45/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/Sigmoid_1Ä
 lstm_45/while/lstm_cell_45/mul_4Mul(lstm_45/while/lstm_cell_45/Sigmoid_1:y:0lstm_45_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_4Ð
+lstm_45/while/lstm_cell_45/ReadVariableOp_2ReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_45/while/lstm_cell_45/ReadVariableOp_2µ
0lstm_45/while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_45/while/lstm_cell_45/strided_slice_2/stack¹
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_1¹
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_45/while/lstm_cell_45/strided_slice_2/stack_2ª
*lstm_45/while/lstm_cell_45/strided_slice_2StridedSlice3lstm_45/while/lstm_cell_45/ReadVariableOp_2:value:09lstm_45/while/lstm_cell_45/strided_slice_2/stack:output:0;lstm_45/while/lstm_cell_45/strided_slice_2/stack_1:output:0;lstm_45/while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_45/while/lstm_cell_45/strided_slice_2á
#lstm_45/while/lstm_cell_45/MatMul_6MatMul$lstm_45/while/lstm_cell_45/mul_2:z:03lstm_45/while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_6Ý
 lstm_45/while/lstm_cell_45/add_2AddV2-lstm_45/while/lstm_cell_45/BiasAdd_2:output:0-lstm_45/while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_2¢
lstm_45/while/lstm_cell_45/ReluRelu$lstm_45/while/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_45/while/lstm_cell_45/ReluÔ
 lstm_45/while/lstm_cell_45/mul_5Mul&lstm_45/while/lstm_cell_45/Sigmoid:y:0-lstm_45/while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_5Ë
 lstm_45/while/lstm_cell_45/add_3AddV2$lstm_45/while/lstm_cell_45/mul_4:z:0$lstm_45/while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_3Ð
+lstm_45/while/lstm_cell_45/ReadVariableOp_3ReadVariableOp4lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_45/while/lstm_cell_45/ReadVariableOp_3µ
0lstm_45/while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_45/while/lstm_cell_45/strided_slice_3/stack¹
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_1¹
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_45/while/lstm_cell_45/strided_slice_3/stack_2ª
*lstm_45/while/lstm_cell_45/strided_slice_3StridedSlice3lstm_45/while/lstm_cell_45/ReadVariableOp_3:value:09lstm_45/while/lstm_cell_45/strided_slice_3/stack:output:0;lstm_45/while/lstm_cell_45/strided_slice_3/stack_1:output:0;lstm_45/while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_45/while/lstm_cell_45/strided_slice_3á
#lstm_45/while/lstm_cell_45/MatMul_7MatMul$lstm_45/while/lstm_cell_45/mul_3:z:03lstm_45/while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/while/lstm_cell_45/MatMul_7Ý
 lstm_45/while/lstm_cell_45/add_4AddV2-lstm_45/while/lstm_cell_45/BiasAdd_3:output:0-lstm_45/while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/add_4¯
$lstm_45/while/lstm_cell_45/Sigmoid_2Sigmoid$lstm_45/while/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/while/lstm_cell_45/Sigmoid_2¦
!lstm_45/while/lstm_cell_45/Relu_1Relu$lstm_45/while/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_45/while/lstm_cell_45/Relu_1Ø
 lstm_45/while/lstm_cell_45/mul_6Mul(lstm_45/while/lstm_cell_45/Sigmoid_2:y:0/lstm_45/while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/while/lstm_cell_45/mul_6
2lstm_45/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_45_while_placeholder_1lstm_45_while_placeholder$lstm_45/while/lstm_cell_45/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_45/while/TensorArrayV2Write/TensorListSetIteml
lstm_45/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_45/while/add/y
lstm_45/while/addAddV2lstm_45_while_placeholderlstm_45/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_45/while/addp
lstm_45/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_45/while/add_1/y
lstm_45/while/add_1AddV2(lstm_45_while_lstm_45_while_loop_counterlstm_45/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_45/while/add_1
lstm_45/while/IdentityIdentitylstm_45/while/add_1:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity¦
lstm_45/while/Identity_1Identity.lstm_45_while_lstm_45_while_maximum_iterations^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity_1
lstm_45/while/Identity_2Identitylstm_45/while/add:z:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity_2º
lstm_45/while/Identity_3IdentityBlstm_45/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_45/while/NoOp*
T0*
_output_shapes
: 2
lstm_45/while/Identity_3­
lstm_45/while/Identity_4Identity$lstm_45/while/lstm_cell_45/mul_6:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/while/Identity_4­
lstm_45/while/Identity_5Identity$lstm_45/while/lstm_cell_45/add_3:z:0^lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/while/Identity_5
lstm_45/while/NoOpNoOp*^lstm_45/while/lstm_cell_45/ReadVariableOp,^lstm_45/while/lstm_cell_45/ReadVariableOp_1,^lstm_45/while/lstm_cell_45/ReadVariableOp_2,^lstm_45/while/lstm_cell_45/ReadVariableOp_30^lstm_45/while/lstm_cell_45/split/ReadVariableOp2^lstm_45/while/lstm_cell_45/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_45/while/NoOp"9
lstm_45_while_identitylstm_45/while/Identity:output:0"=
lstm_45_while_identity_1!lstm_45/while/Identity_1:output:0"=
lstm_45_while_identity_2!lstm_45/while/Identity_2:output:0"=
lstm_45_while_identity_3!lstm_45/while/Identity_3:output:0"=
lstm_45_while_identity_4!lstm_45/while/Identity_4:output:0"=
lstm_45_while_identity_5!lstm_45/while/Identity_5:output:0"P
%lstm_45_while_lstm_45_strided_slice_1'lstm_45_while_lstm_45_strided_slice_1_0"j
2lstm_45_while_lstm_cell_45_readvariableop_resource4lstm_45_while_lstm_cell_45_readvariableop_resource_0"z
:lstm_45_while_lstm_cell_45_split_1_readvariableop_resource<lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0"v
8lstm_45_while_lstm_cell_45_split_readvariableop_resource:lstm_45_while_lstm_cell_45_split_readvariableop_resource_0"È
alstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensorclstm_45_while_tensorarrayv2read_tensorlistgetitem_lstm_45_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_45/while/lstm_cell_45/ReadVariableOp)lstm_45/while/lstm_cell_45/ReadVariableOp2Z
+lstm_45/while/lstm_cell_45/ReadVariableOp_1+lstm_45/while/lstm_cell_45/ReadVariableOp_12Z
+lstm_45/while/lstm_cell_45/ReadVariableOp_2+lstm_45/while/lstm_cell_45/ReadVariableOp_22Z
+lstm_45/while/lstm_cell_45/ReadVariableOp_3+lstm_45/while/lstm_cell_45/ReadVariableOp_32b
/lstm_45/while/lstm_cell_45/split/ReadVariableOp/lstm_45/while/lstm_cell_45/split/ReadVariableOp2f
1lstm_45/while/lstm_cell_45/split_1/ReadVariableOp1lstm_45/while/lstm_cell_45/split_1/ReadVariableOp: 
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
À
¸
)__inference_lstm_45_layer_call_fn_1558451
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15552252
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
°þ
	
"__inference__wrapped_model_1555012
input_19S
@sequential_18_lstm_45_lstm_cell_45_split_readvariableop_resource:	Q
Bsequential_18_lstm_45_lstm_cell_45_split_1_readvariableop_resource:	M
:sequential_18_lstm_45_lstm_cell_45_readvariableop_resource:	 G
5sequential_18_dense_54_matmul_readvariableop_resource:  D
6sequential_18_dense_54_biasadd_readvariableop_resource: G
5sequential_18_dense_55_matmul_readvariableop_resource: D
6sequential_18_dense_55_biasadd_readvariableop_resource:
identity¢-sequential_18/dense_54/BiasAdd/ReadVariableOp¢,sequential_18/dense_54/MatMul/ReadVariableOp¢-sequential_18/dense_55/BiasAdd/ReadVariableOp¢,sequential_18/dense_55/MatMul/ReadVariableOp¢1sequential_18/lstm_45/lstm_cell_45/ReadVariableOp¢3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_1¢3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_2¢3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_3¢7sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOp¢9sequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOp¢sequential_18/lstm_45/whiler
sequential_18/lstm_45/ShapeShapeinput_19*
T0*
_output_shapes
:2
sequential_18/lstm_45/Shape 
)sequential_18/lstm_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_18/lstm_45/strided_slice/stack¤
+sequential_18/lstm_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_18/lstm_45/strided_slice/stack_1¤
+sequential_18/lstm_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_18/lstm_45/strided_slice/stack_2æ
#sequential_18/lstm_45/strided_sliceStridedSlice$sequential_18/lstm_45/Shape:output:02sequential_18/lstm_45/strided_slice/stack:output:04sequential_18/lstm_45/strided_slice/stack_1:output:04sequential_18/lstm_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_18/lstm_45/strided_slice
!sequential_18/lstm_45/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_18/lstm_45/zeros/mul/yÄ
sequential_18/lstm_45/zeros/mulMul,sequential_18/lstm_45/strided_slice:output:0*sequential_18/lstm_45/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_18/lstm_45/zeros/mul
"sequential_18/lstm_45/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_18/lstm_45/zeros/Less/y¿
 sequential_18/lstm_45/zeros/LessLess#sequential_18/lstm_45/zeros/mul:z:0+sequential_18/lstm_45/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_18/lstm_45/zeros/Less
$sequential_18/lstm_45/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_18/lstm_45/zeros/packed/1Û
"sequential_18/lstm_45/zeros/packedPack,sequential_18/lstm_45/strided_slice:output:0-sequential_18/lstm_45/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_18/lstm_45/zeros/packed
!sequential_18/lstm_45/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_18/lstm_45/zeros/ConstÍ
sequential_18/lstm_45/zerosFill+sequential_18/lstm_45/zeros/packed:output:0*sequential_18/lstm_45/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_18/lstm_45/zeros
#sequential_18/lstm_45/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_18/lstm_45/zeros_1/mul/yÊ
!sequential_18/lstm_45/zeros_1/mulMul,sequential_18/lstm_45/strided_slice:output:0,sequential_18/lstm_45/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_18/lstm_45/zeros_1/mul
$sequential_18/lstm_45/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_18/lstm_45/zeros_1/Less/yÇ
"sequential_18/lstm_45/zeros_1/LessLess%sequential_18/lstm_45/zeros_1/mul:z:0-sequential_18/lstm_45/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_18/lstm_45/zeros_1/Less
&sequential_18/lstm_45/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_18/lstm_45/zeros_1/packed/1á
$sequential_18/lstm_45/zeros_1/packedPack,sequential_18/lstm_45/strided_slice:output:0/sequential_18/lstm_45/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_18/lstm_45/zeros_1/packed
#sequential_18/lstm_45/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_18/lstm_45/zeros_1/ConstÕ
sequential_18/lstm_45/zeros_1Fill-sequential_18/lstm_45/zeros_1/packed:output:0,sequential_18/lstm_45/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_18/lstm_45/zeros_1¡
$sequential_18/lstm_45/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_18/lstm_45/transpose/perm¾
sequential_18/lstm_45/transpose	Transposeinput_19-sequential_18/lstm_45/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_18/lstm_45/transpose
sequential_18/lstm_45/Shape_1Shape#sequential_18/lstm_45/transpose:y:0*
T0*
_output_shapes
:2
sequential_18/lstm_45/Shape_1¤
+sequential_18/lstm_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_18/lstm_45/strided_slice_1/stack¨
-sequential_18/lstm_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_45/strided_slice_1/stack_1¨
-sequential_18/lstm_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_45/strided_slice_1/stack_2ò
%sequential_18/lstm_45/strided_slice_1StridedSlice&sequential_18/lstm_45/Shape_1:output:04sequential_18/lstm_45/strided_slice_1/stack:output:06sequential_18/lstm_45/strided_slice_1/stack_1:output:06sequential_18/lstm_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_18/lstm_45/strided_slice_1±
1sequential_18/lstm_45/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_18/lstm_45/TensorArrayV2/element_shape
#sequential_18/lstm_45/TensorArrayV2TensorListReserve:sequential_18/lstm_45/TensorArrayV2/element_shape:output:0.sequential_18/lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_18/lstm_45/TensorArrayV2ë
Ksequential_18/lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_18/lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_18/lstm_45/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_18/lstm_45/transpose:y:0Tsequential_18/lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_18/lstm_45/TensorArrayUnstack/TensorListFromTensor¤
+sequential_18/lstm_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_18/lstm_45/strided_slice_2/stack¨
-sequential_18/lstm_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_45/strided_slice_2/stack_1¨
-sequential_18/lstm_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_45/strided_slice_2/stack_2
%sequential_18/lstm_45/strided_slice_2StridedSlice#sequential_18/lstm_45/transpose:y:04sequential_18/lstm_45/strided_slice_2/stack:output:06sequential_18/lstm_45/strided_slice_2/stack_1:output:06sequential_18/lstm_45/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_18/lstm_45/strided_slice_2¼
2sequential_18/lstm_45/lstm_cell_45/ones_like/ShapeShape$sequential_18/lstm_45/zeros:output:0*
T0*
_output_shapes
:24
2sequential_18/lstm_45/lstm_cell_45/ones_like/Shape­
2sequential_18/lstm_45/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2sequential_18/lstm_45/lstm_cell_45/ones_like/Const
,sequential_18/lstm_45/lstm_cell_45/ones_likeFill;sequential_18/lstm_45/lstm_cell_45/ones_like/Shape:output:0;sequential_18/lstm_45/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/lstm_cell_45/ones_likeª
2sequential_18/lstm_45/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_18/lstm_45/lstm_cell_45/split/split_dimô
7sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOpReadVariableOp@sequential_18_lstm_45_lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype029
7sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOp³
(sequential_18/lstm_45/lstm_cell_45/splitSplit;sequential_18/lstm_45/lstm_cell_45/split/split_dim:output:0?sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_18/lstm_45/lstm_cell_45/splitõ
)sequential_18/lstm_45/lstm_cell_45/MatMulMatMul.sequential_18/lstm_45/strided_slice_2:output:01sequential_18/lstm_45/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_18/lstm_45/lstm_cell_45/MatMulù
+sequential_18/lstm_45/lstm_cell_45/MatMul_1MatMul.sequential_18/lstm_45/strided_slice_2:output:01sequential_18/lstm_45/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_1ù
+sequential_18/lstm_45/lstm_cell_45/MatMul_2MatMul.sequential_18/lstm_45/strided_slice_2:output:01sequential_18/lstm_45/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_2ù
+sequential_18/lstm_45/lstm_cell_45/MatMul_3MatMul.sequential_18/lstm_45/strided_slice_2:output:01sequential_18/lstm_45/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_3®
4sequential_18/lstm_45/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_18/lstm_45/lstm_cell_45/split_1/split_dimö
9sequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOpReadVariableOpBsequential_18_lstm_45_lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02;
9sequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOp«
*sequential_18/lstm_45/lstm_cell_45/split_1Split=sequential_18/lstm_45/lstm_cell_45/split_1/split_dim:output:0Asequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_18/lstm_45/lstm_cell_45/split_1ÿ
*sequential_18/lstm_45/lstm_cell_45/BiasAddBiasAdd3sequential_18/lstm_45/lstm_cell_45/MatMul:product:03sequential_18/lstm_45/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_18/lstm_45/lstm_cell_45/BiasAdd
,sequential_18/lstm_45/lstm_cell_45/BiasAdd_1BiasAdd5sequential_18/lstm_45/lstm_cell_45/MatMul_1:product:03sequential_18/lstm_45/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/lstm_cell_45/BiasAdd_1
,sequential_18/lstm_45/lstm_cell_45/BiasAdd_2BiasAdd5sequential_18/lstm_45/lstm_cell_45/MatMul_2:product:03sequential_18/lstm_45/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/lstm_cell_45/BiasAdd_2
,sequential_18/lstm_45/lstm_cell_45/BiasAdd_3BiasAdd5sequential_18/lstm_45/lstm_cell_45/MatMul_3:product:03sequential_18/lstm_45/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/lstm_cell_45/BiasAdd_3æ
&sequential_18/lstm_45/lstm_cell_45/mulMul$sequential_18/lstm_45/zeros:output:05sequential_18/lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_18/lstm_45/lstm_cell_45/mulê
(sequential_18/lstm_45/lstm_cell_45/mul_1Mul$sequential_18/lstm_45/zeros:output:05sequential_18/lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/mul_1ê
(sequential_18/lstm_45/lstm_cell_45/mul_2Mul$sequential_18/lstm_45/zeros:output:05sequential_18/lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/mul_2ê
(sequential_18/lstm_45/lstm_cell_45/mul_3Mul$sequential_18/lstm_45/zeros:output:05sequential_18/lstm_45/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/mul_3â
1sequential_18/lstm_45/lstm_cell_45/ReadVariableOpReadVariableOp:sequential_18_lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype023
1sequential_18/lstm_45/lstm_cell_45/ReadVariableOpÁ
6sequential_18/lstm_45/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_18/lstm_45/lstm_cell_45/strided_slice/stackÅ
8sequential_18/lstm_45/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_18/lstm_45/lstm_cell_45/strided_slice/stack_1Å
8sequential_18/lstm_45/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_18/lstm_45/lstm_cell_45/strided_slice/stack_2Î
0sequential_18/lstm_45/lstm_cell_45/strided_sliceStridedSlice9sequential_18/lstm_45/lstm_cell_45/ReadVariableOp:value:0?sequential_18/lstm_45/lstm_cell_45/strided_slice/stack:output:0Asequential_18/lstm_45/lstm_cell_45/strided_slice/stack_1:output:0Asequential_18/lstm_45/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_18/lstm_45/lstm_cell_45/strided_sliceý
+sequential_18/lstm_45/lstm_cell_45/MatMul_4MatMul*sequential_18/lstm_45/lstm_cell_45/mul:z:09sequential_18/lstm_45/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_4÷
&sequential_18/lstm_45/lstm_cell_45/addAddV23sequential_18/lstm_45/lstm_cell_45/BiasAdd:output:05sequential_18/lstm_45/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_18/lstm_45/lstm_cell_45/addÁ
*sequential_18/lstm_45/lstm_cell_45/SigmoidSigmoid*sequential_18/lstm_45/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_18/lstm_45/lstm_cell_45/Sigmoidæ
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_1ReadVariableOp:sequential_18_lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_1Å
8sequential_18/lstm_45/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_18/lstm_45/lstm_cell_45/strided_slice_1/stackÉ
:sequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack_1É
:sequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack_2Ú
2sequential_18/lstm_45/lstm_cell_45/strided_slice_1StridedSlice;sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_1:value:0Asequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack:output:0Csequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack_1:output:0Csequential_18/lstm_45/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_18/lstm_45/lstm_cell_45/strided_slice_1
+sequential_18/lstm_45/lstm_cell_45/MatMul_5MatMul,sequential_18/lstm_45/lstm_cell_45/mul_1:z:0;sequential_18/lstm_45/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_5ý
(sequential_18/lstm_45/lstm_cell_45/add_1AddV25sequential_18/lstm_45/lstm_cell_45/BiasAdd_1:output:05sequential_18/lstm_45/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/add_1Ç
,sequential_18/lstm_45/lstm_cell_45/Sigmoid_1Sigmoid,sequential_18/lstm_45/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/lstm_cell_45/Sigmoid_1ç
(sequential_18/lstm_45/lstm_cell_45/mul_4Mul0sequential_18/lstm_45/lstm_cell_45/Sigmoid_1:y:0&sequential_18/lstm_45/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/mul_4æ
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_2ReadVariableOp:sequential_18_lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_2Å
8sequential_18/lstm_45/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_18/lstm_45/lstm_cell_45/strided_slice_2/stackÉ
:sequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack_1É
:sequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack_2Ú
2sequential_18/lstm_45/lstm_cell_45/strided_slice_2StridedSlice;sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_2:value:0Asequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack:output:0Csequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack_1:output:0Csequential_18/lstm_45/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_18/lstm_45/lstm_cell_45/strided_slice_2
+sequential_18/lstm_45/lstm_cell_45/MatMul_6MatMul,sequential_18/lstm_45/lstm_cell_45/mul_2:z:0;sequential_18/lstm_45/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_6ý
(sequential_18/lstm_45/lstm_cell_45/add_2AddV25sequential_18/lstm_45/lstm_cell_45/BiasAdd_2:output:05sequential_18/lstm_45/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/add_2º
'sequential_18/lstm_45/lstm_cell_45/ReluRelu,sequential_18/lstm_45/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_18/lstm_45/lstm_cell_45/Reluô
(sequential_18/lstm_45/lstm_cell_45/mul_5Mul.sequential_18/lstm_45/lstm_cell_45/Sigmoid:y:05sequential_18/lstm_45/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/mul_5ë
(sequential_18/lstm_45/lstm_cell_45/add_3AddV2,sequential_18/lstm_45/lstm_cell_45/mul_4:z:0,sequential_18/lstm_45/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/add_3æ
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_3ReadVariableOp:sequential_18_lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_3Å
8sequential_18/lstm_45/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_18/lstm_45/lstm_cell_45/strided_slice_3/stackÉ
:sequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack_1É
:sequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack_2Ú
2sequential_18/lstm_45/lstm_cell_45/strided_slice_3StridedSlice;sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_3:value:0Asequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack:output:0Csequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack_1:output:0Csequential_18/lstm_45/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_18/lstm_45/lstm_cell_45/strided_slice_3
+sequential_18/lstm_45/lstm_cell_45/MatMul_7MatMul,sequential_18/lstm_45/lstm_cell_45/mul_3:z:0;sequential_18/lstm_45/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_18/lstm_45/lstm_cell_45/MatMul_7ý
(sequential_18/lstm_45/lstm_cell_45/add_4AddV25sequential_18/lstm_45/lstm_cell_45/BiasAdd_3:output:05sequential_18/lstm_45/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/add_4Ç
,sequential_18/lstm_45/lstm_cell_45/Sigmoid_2Sigmoid,sequential_18/lstm_45/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/lstm_cell_45/Sigmoid_2¾
)sequential_18/lstm_45/lstm_cell_45/Relu_1Relu,sequential_18/lstm_45/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_18/lstm_45/lstm_cell_45/Relu_1ø
(sequential_18/lstm_45/lstm_cell_45/mul_6Mul0sequential_18/lstm_45/lstm_cell_45/Sigmoid_2:y:07sequential_18/lstm_45/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_18/lstm_45/lstm_cell_45/mul_6»
3sequential_18/lstm_45/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    25
3sequential_18/lstm_45/TensorArrayV2_1/element_shape
%sequential_18/lstm_45/TensorArrayV2_1TensorListReserve<sequential_18/lstm_45/TensorArrayV2_1/element_shape:output:0.sequential_18/lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_18/lstm_45/TensorArrayV2_1z
sequential_18/lstm_45/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_18/lstm_45/time«
.sequential_18/lstm_45/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_18/lstm_45/while/maximum_iterations
(sequential_18/lstm_45/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_18/lstm_45/while/loop_counterÍ
sequential_18/lstm_45/whileWhile1sequential_18/lstm_45/while/loop_counter:output:07sequential_18/lstm_45/while/maximum_iterations:output:0#sequential_18/lstm_45/time:output:0.sequential_18/lstm_45/TensorArrayV2_1:handle:0$sequential_18/lstm_45/zeros:output:0&sequential_18/lstm_45/zeros_1:output:0.sequential_18/lstm_45/strided_slice_1:output:0Msequential_18/lstm_45/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_18_lstm_45_lstm_cell_45_split_readvariableop_resourceBsequential_18_lstm_45_lstm_cell_45_split_1_readvariableop_resource:sequential_18_lstm_45_lstm_cell_45_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_18_lstm_45_while_body_1554863*4
cond,R*
(sequential_18_lstm_45_while_cond_1554862*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_18/lstm_45/whileá
Fsequential_18/lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2H
Fsequential_18/lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_18/lstm_45/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_18/lstm_45/while:output:3Osequential_18/lstm_45/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02:
8sequential_18/lstm_45/TensorArrayV2Stack/TensorListStack­
+sequential_18/lstm_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_18/lstm_45/strided_slice_3/stack¨
-sequential_18/lstm_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_18/lstm_45/strided_slice_3/stack_1¨
-sequential_18/lstm_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_45/strided_slice_3/stack_2
%sequential_18/lstm_45/strided_slice_3StridedSliceAsequential_18/lstm_45/TensorArrayV2Stack/TensorListStack:tensor:04sequential_18/lstm_45/strided_slice_3/stack:output:06sequential_18/lstm_45/strided_slice_3/stack_1:output:06sequential_18/lstm_45/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2'
%sequential_18/lstm_45/strided_slice_3¥
&sequential_18/lstm_45/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_18/lstm_45/transpose_1/permý
!sequential_18/lstm_45/transpose_1	TransposeAsequential_18/lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_18/lstm_45/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!sequential_18/lstm_45/transpose_1
sequential_18/lstm_45/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_18/lstm_45/runtimeÒ
,sequential_18/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_54_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_18/dense_54/MatMul/ReadVariableOpà
sequential_18/dense_54/MatMulMatMul.sequential_18/lstm_45/strided_slice_3:output:04sequential_18/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_18/dense_54/MatMulÑ
-sequential_18/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_18/dense_54/BiasAdd/ReadVariableOpÝ
sequential_18/dense_54/BiasAddBiasAdd'sequential_18/dense_54/MatMul:product:05sequential_18/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_18/dense_54/BiasAdd
sequential_18/dense_54/ReluRelu'sequential_18/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_18/dense_54/ReluÒ
,sequential_18/dense_55/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_55_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_18/dense_55/MatMul/ReadVariableOpÛ
sequential_18/dense_55/MatMulMatMul)sequential_18/dense_54/Relu:activations:04sequential_18/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_18/dense_55/MatMulÑ
-sequential_18/dense_55/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_55/BiasAdd/ReadVariableOpÝ
sequential_18/dense_55/BiasAddBiasAdd'sequential_18/dense_55/MatMul:product:05sequential_18/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_18/dense_55/BiasAdd
sequential_18/reshape_27/ShapeShape'sequential_18/dense_55/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_18/reshape_27/Shape¦
,sequential_18/reshape_27/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_18/reshape_27/strided_slice/stackª
.sequential_18/reshape_27/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_18/reshape_27/strided_slice/stack_1ª
.sequential_18/reshape_27/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_18/reshape_27/strided_slice/stack_2ø
&sequential_18/reshape_27/strided_sliceStridedSlice'sequential_18/reshape_27/Shape:output:05sequential_18/reshape_27/strided_slice/stack:output:07sequential_18/reshape_27/strided_slice/stack_1:output:07sequential_18/reshape_27/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_18/reshape_27/strided_slice
(sequential_18/reshape_27/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_18/reshape_27/Reshape/shape/1
(sequential_18/reshape_27/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_18/reshape_27/Reshape/shape/2
&sequential_18/reshape_27/Reshape/shapePack/sequential_18/reshape_27/strided_slice:output:01sequential_18/reshape_27/Reshape/shape/1:output:01sequential_18/reshape_27/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_18/reshape_27/Reshape/shapeß
 sequential_18/reshape_27/ReshapeReshape'sequential_18/dense_55/BiasAdd:output:0/sequential_18/reshape_27/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_18/reshape_27/Reshape
IdentityIdentity)sequential_18/reshape_27/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp.^sequential_18/dense_54/BiasAdd/ReadVariableOp-^sequential_18/dense_54/MatMul/ReadVariableOp.^sequential_18/dense_55/BiasAdd/ReadVariableOp-^sequential_18/dense_55/MatMul/ReadVariableOp2^sequential_18/lstm_45/lstm_cell_45/ReadVariableOp4^sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_14^sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_24^sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_38^sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOp:^sequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOp^sequential_18/lstm_45/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2^
-sequential_18/dense_54/BiasAdd/ReadVariableOp-sequential_18/dense_54/BiasAdd/ReadVariableOp2\
,sequential_18/dense_54/MatMul/ReadVariableOp,sequential_18/dense_54/MatMul/ReadVariableOp2^
-sequential_18/dense_55/BiasAdd/ReadVariableOp-sequential_18/dense_55/BiasAdd/ReadVariableOp2\
,sequential_18/dense_55/MatMul/ReadVariableOp,sequential_18/dense_55/MatMul/ReadVariableOp2f
1sequential_18/lstm_45/lstm_cell_45/ReadVariableOp1sequential_18/lstm_45/lstm_cell_45/ReadVariableOp2j
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_13sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_12j
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_23sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_22j
3sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_33sequential_18/lstm_45/lstm_cell_45/ReadVariableOp_32r
7sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOp7sequential_18/lstm_45/lstm_cell_45/split/ReadVariableOp2v
9sequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOp9sequential_18/lstm_45/lstm_cell_45/split_1/ReadVariableOp2:
sequential_18/lstm_45/whilesequential_18/lstm_45/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
¨
¥	
while_body_1555912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_45_split_readvariableop_resource_0:	C
4while_lstm_cell_45_split_1_readvariableop_resource_0:	?
,while_lstm_cell_45_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_45_split_readvariableop_resource:	A
2while_lstm_cell_45_split_1_readvariableop_resource:	=
*while_lstm_cell_45_readvariableop_resource:	 ¢!while/lstm_cell_45/ReadVariableOp¢#while/lstm_cell_45/ReadVariableOp_1¢#while/lstm_cell_45/ReadVariableOp_2¢#while/lstm_cell_45/ReadVariableOp_3¢'while/lstm_cell_45/split/ReadVariableOp¢)while/lstm_cell_45/split_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_45/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_45/ones_like/Shape
"while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_45/ones_like/ConstÐ
while/lstm_cell_45/ones_likeFill+while/lstm_cell_45/ones_like/Shape:output:0+while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/ones_like
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_45/split/split_dimÆ
'while/lstm_cell_45/split/ReadVariableOpReadVariableOp2while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_45/split/ReadVariableOpó
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_45/splitÇ
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMulË
while/lstm_cell_45/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_1Ë
while/lstm_cell_45/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_2Ë
while/lstm_cell_45/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_3
$while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_45/split_1/split_dimÈ
)while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_45/split_1/ReadVariableOpë
while/lstm_cell_45/split_1Split-while/lstm_cell_45/split_1/split_dim:output:01while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_45/split_1¿
while/lstm_cell_45/BiasAddBiasAdd#while/lstm_cell_45/MatMul:product:0#while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAddÅ
while/lstm_cell_45/BiasAdd_1BiasAdd%while/lstm_cell_45/MatMul_1:product:0#while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_1Å
while/lstm_cell_45/BiasAdd_2BiasAdd%while/lstm_cell_45/MatMul_2:product:0#while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_2Å
while/lstm_cell_45/BiasAdd_3BiasAdd%while/lstm_cell_45/MatMul_3:product:0#while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_3¥
while/lstm_cell_45/mulMulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul©
while/lstm_cell_45/mul_1Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_1©
while/lstm_cell_45/mul_2Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_2©
while/lstm_cell_45/mul_3Mulwhile_placeholder_2%while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_3´
!while/lstm_cell_45/ReadVariableOpReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_45/ReadVariableOp¡
&while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_45/strided_slice/stack¥
(while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice/stack_1¥
(while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_45/strided_slice/stack_2î
 while/lstm_cell_45/strided_sliceStridedSlice)while/lstm_cell_45/ReadVariableOp:value:0/while/lstm_cell_45/strided_slice/stack:output:01while/lstm_cell_45/strided_slice/stack_1:output:01while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_45/strided_slice½
while/lstm_cell_45/MatMul_4MatMulwhile/lstm_cell_45/mul:z:0)while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_4·
while/lstm_cell_45/addAddV2#while/lstm_cell_45/BiasAdd:output:0%while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add
while/lstm_cell_45/SigmoidSigmoidwhile/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid¸
#while/lstm_cell_45/ReadVariableOp_1ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_1¥
(while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice_1/stack©
*while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_45/strided_slice_1/stack_1©
*while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_1/stack_2ú
"while/lstm_cell_45/strided_slice_1StridedSlice+while/lstm_cell_45/ReadVariableOp_1:value:01while/lstm_cell_45/strided_slice_1/stack:output:03while/lstm_cell_45/strided_slice_1/stack_1:output:03while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_1Á
while/lstm_cell_45/MatMul_5MatMulwhile/lstm_cell_45/mul_1:z:0+while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_5½
while/lstm_cell_45/add_1AddV2%while/lstm_cell_45/BiasAdd_1:output:0%while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_1
while/lstm_cell_45/Sigmoid_1Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_1¤
while/lstm_cell_45/mul_4Mul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_4¸
#while/lstm_cell_45/ReadVariableOp_2ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_2¥
(while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_45/strided_slice_2/stack©
*while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_45/strided_slice_2/stack_1©
*while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_2/stack_2ú
"while/lstm_cell_45/strided_slice_2StridedSlice+while/lstm_cell_45/ReadVariableOp_2:value:01while/lstm_cell_45/strided_slice_2/stack:output:03while/lstm_cell_45/strided_slice_2/stack_1:output:03while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_2Á
while/lstm_cell_45/MatMul_6MatMulwhile/lstm_cell_45/mul_2:z:0+while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_6½
while/lstm_cell_45/add_2AddV2%while/lstm_cell_45/BiasAdd_2:output:0%while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_2
while/lstm_cell_45/ReluReluwhile/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu´
while/lstm_cell_45/mul_5Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_5«
while/lstm_cell_45/add_3AddV2while/lstm_cell_45/mul_4:z:0while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_3¸
#while/lstm_cell_45/ReadVariableOp_3ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_3¥
(while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_45/strided_slice_3/stack©
*while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_45/strided_slice_3/stack_1©
*while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_3/stack_2ú
"while/lstm_cell_45/strided_slice_3StridedSlice+while/lstm_cell_45/ReadVariableOp_3:value:01while/lstm_cell_45/strided_slice_3/stack:output:03while/lstm_cell_45/strided_slice_3/stack_1:output:03while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_3Á
while/lstm_cell_45/MatMul_7MatMulwhile/lstm_cell_45/mul_3:z:0+while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_7½
while/lstm_cell_45/add_4AddV2%while/lstm_cell_45/BiasAdd_3:output:0%while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_4
while/lstm_cell_45/Sigmoid_2Sigmoidwhile/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_2
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu_1¸
while/lstm_cell_45/mul_6Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_45/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_45/ReadVariableOp$^while/lstm_cell_45/ReadVariableOp_1$^while/lstm_cell_45/ReadVariableOp_2$^while/lstm_cell_45/ReadVariableOp_3(^while/lstm_cell_45/split/ReadVariableOp*^while/lstm_cell_45/split_1/ReadVariableOp*"
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
*while_lstm_cell_45_readvariableop_resource,while_lstm_cell_45_readvariableop_resource_0"j
2while_lstm_cell_45_split_1_readvariableop_resource4while_lstm_cell_45_split_1_readvariableop_resource_0"f
0while_lstm_cell_45_split_readvariableop_resource2while_lstm_cell_45_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_45/ReadVariableOp!while/lstm_cell_45/ReadVariableOp2J
#while/lstm_cell_45/ReadVariableOp_1#while/lstm_cell_45/ReadVariableOp_12J
#while/lstm_cell_45/ReadVariableOp_2#while/lstm_cell_45/ReadVariableOp_22J
#while/lstm_cell_45/ReadVariableOp_3#while/lstm_cell_45/ReadVariableOp_32R
'while/lstm_cell_45/split/ReadVariableOp'while/lstm_cell_45/split/ReadVariableOp2V
)while/lstm_cell_45/split_1/ReadVariableOp)while/lstm_cell_45/split_1/ReadVariableOp: 
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


J__inference_sequential_18_layer_call_and_return_conditional_losses_1557296

inputsE
2lstm_45_lstm_cell_45_split_readvariableop_resource:	C
4lstm_45_lstm_cell_45_split_1_readvariableop_resource:	?
,lstm_45_lstm_cell_45_readvariableop_resource:	 9
'dense_54_matmul_readvariableop_resource:  6
(dense_54_biasadd_readvariableop_resource: 9
'dense_55_matmul_readvariableop_resource: 6
(dense_55_biasadd_readvariableop_resource:
identity¢dense_54/BiasAdd/ReadVariableOp¢dense_54/MatMul/ReadVariableOp¢dense_55/BiasAdd/ReadVariableOp¢dense_55/MatMul/ReadVariableOp¢/dense_55/bias/Regularizer/Square/ReadVariableOp¢#lstm_45/lstm_cell_45/ReadVariableOp¢%lstm_45/lstm_cell_45/ReadVariableOp_1¢%lstm_45/lstm_cell_45/ReadVariableOp_2¢%lstm_45/lstm_cell_45/ReadVariableOp_3¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢)lstm_45/lstm_cell_45/split/ReadVariableOp¢+lstm_45/lstm_cell_45/split_1/ReadVariableOp¢lstm_45/whileT
lstm_45/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_45/Shape
lstm_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_45/strided_slice/stack
lstm_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_45/strided_slice/stack_1
lstm_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_45/strided_slice/stack_2
lstm_45/strided_sliceStridedSlicelstm_45/Shape:output:0$lstm_45/strided_slice/stack:output:0&lstm_45/strided_slice/stack_1:output:0&lstm_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_45/strided_slicel
lstm_45/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros/mul/y
lstm_45/zeros/mulMullstm_45/strided_slice:output:0lstm_45/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros/mulo
lstm_45/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_45/zeros/Less/y
lstm_45/zeros/LessLesslstm_45/zeros/mul:z:0lstm_45/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros/Lessr
lstm_45/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros/packed/1£
lstm_45/zeros/packedPacklstm_45/strided_slice:output:0lstm_45/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_45/zeros/packedo
lstm_45/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_45/zeros/Const
lstm_45/zerosFilllstm_45/zeros/packed:output:0lstm_45/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/zerosp
lstm_45/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros_1/mul/y
lstm_45/zeros_1/mulMullstm_45/strided_slice:output:0lstm_45/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros_1/muls
lstm_45/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_45/zeros_1/Less/y
lstm_45/zeros_1/LessLesslstm_45/zeros_1/mul:z:0lstm_45/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_45/zeros_1/Lessv
lstm_45/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/zeros_1/packed/1©
lstm_45/zeros_1/packedPacklstm_45/strided_slice:output:0!lstm_45/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_45/zeros_1/packeds
lstm_45/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_45/zeros_1/Const
lstm_45/zeros_1Filllstm_45/zeros_1/packed:output:0lstm_45/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/zeros_1
lstm_45/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_45/transpose/perm
lstm_45/transpose	Transposeinputslstm_45/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_45/transposeg
lstm_45/Shape_1Shapelstm_45/transpose:y:0*
T0*
_output_shapes
:2
lstm_45/Shape_1
lstm_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_45/strided_slice_1/stack
lstm_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_1/stack_1
lstm_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_1/stack_2
lstm_45/strided_slice_1StridedSlicelstm_45/Shape_1:output:0&lstm_45/strided_slice_1/stack:output:0(lstm_45/strided_slice_1/stack_1:output:0(lstm_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_45/strided_slice_1
#lstm_45/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_45/TensorArrayV2/element_shapeÒ
lstm_45/TensorArrayV2TensorListReserve,lstm_45/TensorArrayV2/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_45/TensorArrayV2Ï
=lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_45/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_45/transpose:y:0Flstm_45/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_45/TensorArrayUnstack/TensorListFromTensor
lstm_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_45/strided_slice_2/stack
lstm_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_2/stack_1
lstm_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_2/stack_2¬
lstm_45/strided_slice_2StridedSlicelstm_45/transpose:y:0&lstm_45/strided_slice_2/stack:output:0(lstm_45/strided_slice_2/stack_1:output:0(lstm_45/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_45/strided_slice_2
$lstm_45/lstm_cell_45/ones_like/ShapeShapelstm_45/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_45/lstm_cell_45/ones_like/Shape
$lstm_45/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_45/lstm_cell_45/ones_like/ConstØ
lstm_45/lstm_cell_45/ones_likeFill-lstm_45/lstm_cell_45/ones_like/Shape:output:0-lstm_45/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/ones_like
"lstm_45/lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"lstm_45/lstm_cell_45/dropout/ConstÓ
 lstm_45/lstm_cell_45/dropout/MulMul'lstm_45/lstm_cell_45/ones_like:output:0+lstm_45/lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_45/lstm_cell_45/dropout/Mul
"lstm_45/lstm_cell_45/dropout/ShapeShape'lstm_45/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_45/lstm_cell_45/dropout/Shape
9lstm_45/lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform+lstm_45/lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¼á2;
9lstm_45/lstm_cell_45/dropout/random_uniform/RandomUniform
+lstm_45/lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+lstm_45/lstm_cell_45/dropout/GreaterEqual/y
)lstm_45/lstm_cell_45/dropout/GreaterEqualGreaterEqualBlstm_45/lstm_cell_45/dropout/random_uniform/RandomUniform:output:04lstm_45/lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_45/lstm_cell_45/dropout/GreaterEqual¾
!lstm_45/lstm_cell_45/dropout/CastCast-lstm_45/lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_45/lstm_cell_45/dropout/CastÎ
"lstm_45/lstm_cell_45/dropout/Mul_1Mul$lstm_45/lstm_cell_45/dropout/Mul:z:0%lstm_45/lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/lstm_cell_45/dropout/Mul_1
$lstm_45/lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_45/lstm_cell_45/dropout_1/ConstÙ
"lstm_45/lstm_cell_45/dropout_1/MulMul'lstm_45/lstm_cell_45/ones_like:output:0-lstm_45/lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/lstm_cell_45/dropout_1/Mul£
$lstm_45/lstm_cell_45/dropout_1/ShapeShape'lstm_45/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_45/lstm_cell_45/dropout_1/Shape
;lstm_45/lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_45/lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ûN2=
;lstm_45/lstm_cell_45/dropout_1/random_uniform/RandomUniform£
-lstm_45/lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_45/lstm_cell_45/dropout_1/GreaterEqual/y
+lstm_45/lstm_cell_45/dropout_1/GreaterEqualGreaterEqualDlstm_45/lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:06lstm_45/lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_45/lstm_cell_45/dropout_1/GreaterEqualÄ
#lstm_45/lstm_cell_45/dropout_1/CastCast/lstm_45/lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/lstm_cell_45/dropout_1/CastÖ
$lstm_45/lstm_cell_45/dropout_1/Mul_1Mul&lstm_45/lstm_cell_45/dropout_1/Mul:z:0'lstm_45/lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/lstm_cell_45/dropout_1/Mul_1
$lstm_45/lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_45/lstm_cell_45/dropout_2/ConstÙ
"lstm_45/lstm_cell_45/dropout_2/MulMul'lstm_45/lstm_cell_45/ones_like:output:0-lstm_45/lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/lstm_cell_45/dropout_2/Mul£
$lstm_45/lstm_cell_45/dropout_2/ShapeShape'lstm_45/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_45/lstm_cell_45/dropout_2/Shape
;lstm_45/lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_45/lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2£©@2=
;lstm_45/lstm_cell_45/dropout_2/random_uniform/RandomUniform£
-lstm_45/lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_45/lstm_cell_45/dropout_2/GreaterEqual/y
+lstm_45/lstm_cell_45/dropout_2/GreaterEqualGreaterEqualDlstm_45/lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:06lstm_45/lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_45/lstm_cell_45/dropout_2/GreaterEqualÄ
#lstm_45/lstm_cell_45/dropout_2/CastCast/lstm_45/lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/lstm_cell_45/dropout_2/CastÖ
$lstm_45/lstm_cell_45/dropout_2/Mul_1Mul&lstm_45/lstm_cell_45/dropout_2/Mul:z:0'lstm_45/lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/lstm_cell_45/dropout_2/Mul_1
$lstm_45/lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_45/lstm_cell_45/dropout_3/ConstÙ
"lstm_45/lstm_cell_45/dropout_3/MulMul'lstm_45/lstm_cell_45/ones_like:output:0-lstm_45/lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_45/lstm_cell_45/dropout_3/Mul£
$lstm_45/lstm_cell_45/dropout_3/ShapeShape'lstm_45/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_45/lstm_cell_45/dropout_3/Shape
;lstm_45/lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_45/lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ôÔ2=
;lstm_45/lstm_cell_45/dropout_3/random_uniform/RandomUniform£
-lstm_45/lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_45/lstm_cell_45/dropout_3/GreaterEqual/y
+lstm_45/lstm_cell_45/dropout_3/GreaterEqualGreaterEqualDlstm_45/lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:06lstm_45/lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_45/lstm_cell_45/dropout_3/GreaterEqualÄ
#lstm_45/lstm_cell_45/dropout_3/CastCast/lstm_45/lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_45/lstm_cell_45/dropout_3/CastÖ
$lstm_45/lstm_cell_45/dropout_3/Mul_1Mul&lstm_45/lstm_cell_45/dropout_3/Mul:z:0'lstm_45/lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_45/lstm_cell_45/dropout_3/Mul_1
$lstm_45/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_45/lstm_cell_45/split/split_dimÊ
)lstm_45/lstm_cell_45/split/ReadVariableOpReadVariableOp2lstm_45_lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_45/lstm_cell_45/split/ReadVariableOpû
lstm_45/lstm_cell_45/splitSplit-lstm_45/lstm_cell_45/split/split_dim:output:01lstm_45/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_45/lstm_cell_45/split½
lstm_45/lstm_cell_45/MatMulMatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMulÁ
lstm_45/lstm_cell_45/MatMul_1MatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_1Á
lstm_45/lstm_cell_45/MatMul_2MatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_2Á
lstm_45/lstm_cell_45/MatMul_3MatMul lstm_45/strided_slice_2:output:0#lstm_45/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_3
&lstm_45/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_45/lstm_cell_45/split_1/split_dimÌ
+lstm_45/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4lstm_45_lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_45/lstm_cell_45/split_1/ReadVariableOpó
lstm_45/lstm_cell_45/split_1Split/lstm_45/lstm_cell_45/split_1/split_dim:output:03lstm_45/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_45/lstm_cell_45/split_1Ç
lstm_45/lstm_cell_45/BiasAddBiasAdd%lstm_45/lstm_cell_45/MatMul:product:0%lstm_45/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/BiasAddÍ
lstm_45/lstm_cell_45/BiasAdd_1BiasAdd'lstm_45/lstm_cell_45/MatMul_1:product:0%lstm_45/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/BiasAdd_1Í
lstm_45/lstm_cell_45/BiasAdd_2BiasAdd'lstm_45/lstm_cell_45/MatMul_2:product:0%lstm_45/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/BiasAdd_2Í
lstm_45/lstm_cell_45/BiasAdd_3BiasAdd'lstm_45/lstm_cell_45/MatMul_3:product:0%lstm_45/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/BiasAdd_3­
lstm_45/lstm_cell_45/mulMullstm_45/zeros:output:0&lstm_45/lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul³
lstm_45/lstm_cell_45/mul_1Mullstm_45/zeros:output:0(lstm_45/lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_1³
lstm_45/lstm_cell_45/mul_2Mullstm_45/zeros:output:0(lstm_45/lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_2³
lstm_45/lstm_cell_45/mul_3Mullstm_45/zeros:output:0(lstm_45/lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_3¸
#lstm_45/lstm_cell_45/ReadVariableOpReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_45/lstm_cell_45/ReadVariableOp¥
(lstm_45/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_45/lstm_cell_45/strided_slice/stack©
*lstm_45/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_45/lstm_cell_45/strided_slice/stack_1©
*lstm_45/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_45/lstm_cell_45/strided_slice/stack_2ú
"lstm_45/lstm_cell_45/strided_sliceStridedSlice+lstm_45/lstm_cell_45/ReadVariableOp:value:01lstm_45/lstm_cell_45/strided_slice/stack:output:03lstm_45/lstm_cell_45/strided_slice/stack_1:output:03lstm_45/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_45/lstm_cell_45/strided_sliceÅ
lstm_45/lstm_cell_45/MatMul_4MatMullstm_45/lstm_cell_45/mul:z:0+lstm_45/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_4¿
lstm_45/lstm_cell_45/addAddV2%lstm_45/lstm_cell_45/BiasAdd:output:0'lstm_45/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add
lstm_45/lstm_cell_45/SigmoidSigmoidlstm_45/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/Sigmoid¼
%lstm_45/lstm_cell_45/ReadVariableOp_1ReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_45/lstm_cell_45/ReadVariableOp_1©
*lstm_45/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_45/lstm_cell_45/strided_slice_1/stack­
,lstm_45/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_45/lstm_cell_45/strided_slice_1/stack_1­
,lstm_45/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_45/lstm_cell_45/strided_slice_1/stack_2
$lstm_45/lstm_cell_45/strided_slice_1StridedSlice-lstm_45/lstm_cell_45/ReadVariableOp_1:value:03lstm_45/lstm_cell_45/strided_slice_1/stack:output:05lstm_45/lstm_cell_45/strided_slice_1/stack_1:output:05lstm_45/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_45/lstm_cell_45/strided_slice_1É
lstm_45/lstm_cell_45/MatMul_5MatMullstm_45/lstm_cell_45/mul_1:z:0-lstm_45/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_5Å
lstm_45/lstm_cell_45/add_1AddV2'lstm_45/lstm_cell_45/BiasAdd_1:output:0'lstm_45/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_1
lstm_45/lstm_cell_45/Sigmoid_1Sigmoidlstm_45/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/Sigmoid_1¯
lstm_45/lstm_cell_45/mul_4Mul"lstm_45/lstm_cell_45/Sigmoid_1:y:0lstm_45/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_4¼
%lstm_45/lstm_cell_45/ReadVariableOp_2ReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_45/lstm_cell_45/ReadVariableOp_2©
*lstm_45/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_45/lstm_cell_45/strided_slice_2/stack­
,lstm_45/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_45/lstm_cell_45/strided_slice_2/stack_1­
,lstm_45/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_45/lstm_cell_45/strided_slice_2/stack_2
$lstm_45/lstm_cell_45/strided_slice_2StridedSlice-lstm_45/lstm_cell_45/ReadVariableOp_2:value:03lstm_45/lstm_cell_45/strided_slice_2/stack:output:05lstm_45/lstm_cell_45/strided_slice_2/stack_1:output:05lstm_45/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_45/lstm_cell_45/strided_slice_2É
lstm_45/lstm_cell_45/MatMul_6MatMullstm_45/lstm_cell_45/mul_2:z:0-lstm_45/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_6Å
lstm_45/lstm_cell_45/add_2AddV2'lstm_45/lstm_cell_45/BiasAdd_2:output:0'lstm_45/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_2
lstm_45/lstm_cell_45/ReluRelulstm_45/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/Relu¼
lstm_45/lstm_cell_45/mul_5Mul lstm_45/lstm_cell_45/Sigmoid:y:0'lstm_45/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_5³
lstm_45/lstm_cell_45/add_3AddV2lstm_45/lstm_cell_45/mul_4:z:0lstm_45/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_3¼
%lstm_45/lstm_cell_45/ReadVariableOp_3ReadVariableOp,lstm_45_lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_45/lstm_cell_45/ReadVariableOp_3©
*lstm_45/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_45/lstm_cell_45/strided_slice_3/stack­
,lstm_45/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_45/lstm_cell_45/strided_slice_3/stack_1­
,lstm_45/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_45/lstm_cell_45/strided_slice_3/stack_2
$lstm_45/lstm_cell_45/strided_slice_3StridedSlice-lstm_45/lstm_cell_45/ReadVariableOp_3:value:03lstm_45/lstm_cell_45/strided_slice_3/stack:output:05lstm_45/lstm_cell_45/strided_slice_3/stack_1:output:05lstm_45/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_45/lstm_cell_45/strided_slice_3É
lstm_45/lstm_cell_45/MatMul_7MatMullstm_45/lstm_cell_45/mul_3:z:0-lstm_45/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/MatMul_7Å
lstm_45/lstm_cell_45/add_4AddV2'lstm_45/lstm_cell_45/BiasAdd_3:output:0'lstm_45/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/add_4
lstm_45/lstm_cell_45/Sigmoid_2Sigmoidlstm_45/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_45/lstm_cell_45/Sigmoid_2
lstm_45/lstm_cell_45/Relu_1Relulstm_45/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/Relu_1À
lstm_45/lstm_cell_45/mul_6Mul"lstm_45/lstm_cell_45/Sigmoid_2:y:0)lstm_45/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/lstm_cell_45/mul_6
%lstm_45/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_45/TensorArrayV2_1/element_shapeØ
lstm_45/TensorArrayV2_1TensorListReserve.lstm_45/TensorArrayV2_1/element_shape:output:0 lstm_45/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_45/TensorArrayV2_1^
lstm_45/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/time
 lstm_45/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_45/while/maximum_iterationsz
lstm_45/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_45/while/loop_counterû
lstm_45/whileWhile#lstm_45/while/loop_counter:output:0)lstm_45/while/maximum_iterations:output:0lstm_45/time:output:0 lstm_45/TensorArrayV2_1:handle:0lstm_45/zeros:output:0lstm_45/zeros_1:output:0 lstm_45/strided_slice_1:output:0?lstm_45/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_45_lstm_cell_45_split_readvariableop_resource4lstm_45_lstm_cell_45_split_1_readvariableop_resource,lstm_45_lstm_cell_45_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_45_while_body_1557103*&
condR
lstm_45_while_cond_1557102*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_45/whileÅ
8lstm_45/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_45/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_45/TensorArrayV2Stack/TensorListStackTensorListStacklstm_45/while:output:3Alstm_45/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_45/TensorArrayV2Stack/TensorListStack
lstm_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_45/strided_slice_3/stack
lstm_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_45/strided_slice_3/stack_1
lstm_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_45/strided_slice_3/stack_2Ê
lstm_45/strided_slice_3StridedSlice3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_45/strided_slice_3/stack:output:0(lstm_45/strided_slice_3/stack_1:output:0(lstm_45/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_45/strided_slice_3
lstm_45/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_45/transpose_1/permÅ
lstm_45/transpose_1	Transpose3lstm_45/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_45/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_45/transpose_1v
lstm_45/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_45/runtime¨
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_54/MatMul/ReadVariableOp¨
dense_54/MatMulMatMul lstm_45/strided_slice_3:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_54/MatMul§
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_54/BiasAdd/ReadVariableOp¥
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_54/BiasAdds
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_54/Relu¨
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_55/MatMul/ReadVariableOp£
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/MatMul§
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_55/BiasAdd/ReadVariableOp¥
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_55/BiasAddm
reshape_27/ShapeShapedense_55/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_27/Shape
reshape_27/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_27/strided_slice/stack
 reshape_27/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_27/strided_slice/stack_1
 reshape_27/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_27/strided_slice/stack_2¤
reshape_27/strided_sliceStridedSlicereshape_27/Shape:output:0'reshape_27/strided_slice/stack:output:0)reshape_27/strided_slice/stack_1:output:0)reshape_27/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_27/strided_slicez
reshape_27/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_27/Reshape/shape/1z
reshape_27/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_27/Reshape/shape/2×
reshape_27/Reshape/shapePack!reshape_27/strided_slice:output:0#reshape_27/Reshape/shape/1:output:0#reshape_27/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_27/Reshape/shape§
reshape_27/ReshapeReshapedense_55/BiasAdd:output:0!reshape_27/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_27/Reshapeò
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_45_lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/mulÇ
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mulz
IdentityIdentityreshape_27/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp$^lstm_45/lstm_cell_45/ReadVariableOp&^lstm_45/lstm_cell_45/ReadVariableOp_1&^lstm_45/lstm_cell_45/ReadVariableOp_2&^lstm_45/lstm_cell_45/ReadVariableOp_3>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*^lstm_45/lstm_cell_45/split/ReadVariableOp,^lstm_45/lstm_cell_45/split_1/ReadVariableOp^lstm_45/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2J
#lstm_45/lstm_cell_45/ReadVariableOp#lstm_45/lstm_cell_45/ReadVariableOp2N
%lstm_45/lstm_cell_45/ReadVariableOp_1%lstm_45/lstm_cell_45/ReadVariableOp_12N
%lstm_45/lstm_cell_45/ReadVariableOp_2%lstm_45/lstm_cell_45/ReadVariableOp_22N
%lstm_45/lstm_cell_45/ReadVariableOp_3%lstm_45/lstm_cell_45/ReadVariableOp_32~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_45/lstm_cell_45/split/ReadVariableOp)lstm_45/lstm_cell_45/split/ReadVariableOp2Z
+lstm_45/lstm_cell_45/split_1/ReadVariableOp+lstm_45/lstm_cell_45/split_1/ReadVariableOp2
lstm_45/whilelstm_45/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

*__inference_dense_55_layer_call_fn_1558535

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallõ
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
GPU 2J 8 *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_15560862
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
¹
©
(sequential_18_lstm_45_while_body_1554863H
Dsequential_18_lstm_45_while_sequential_18_lstm_45_while_loop_counterN
Jsequential_18_lstm_45_while_sequential_18_lstm_45_while_maximum_iterations+
'sequential_18_lstm_45_while_placeholder-
)sequential_18_lstm_45_while_placeholder_1-
)sequential_18_lstm_45_while_placeholder_2-
)sequential_18_lstm_45_while_placeholder_3G
Csequential_18_lstm_45_while_sequential_18_lstm_45_strided_slice_1_0
sequential_18_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_45_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_18_lstm_45_while_lstm_cell_45_split_readvariableop_resource_0:	Y
Jsequential_18_lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0:	U
Bsequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource_0:	 (
$sequential_18_lstm_45_while_identity*
&sequential_18_lstm_45_while_identity_1*
&sequential_18_lstm_45_while_identity_2*
&sequential_18_lstm_45_while_identity_3*
&sequential_18_lstm_45_while_identity_4*
&sequential_18_lstm_45_while_identity_5E
Asequential_18_lstm_45_while_sequential_18_lstm_45_strided_slice_1
}sequential_18_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_45_tensorarrayunstack_tensorlistfromtensorY
Fsequential_18_lstm_45_while_lstm_cell_45_split_readvariableop_resource:	W
Hsequential_18_lstm_45_while_lstm_cell_45_split_1_readvariableop_resource:	S
@sequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource:	 ¢7sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp¢9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_1¢9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_2¢9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_3¢=sequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOp¢?sequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOpï
Msequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_18_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_45_tensorarrayunstack_tensorlistfromtensor_0'sequential_18_lstm_45_while_placeholderVsequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItemÍ
8sequential_18/lstm_45/while/lstm_cell_45/ones_like/ShapeShape)sequential_18_lstm_45_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_18/lstm_45/while/lstm_cell_45/ones_like/Shape¹
8sequential_18/lstm_45/while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_18/lstm_45/while/lstm_cell_45/ones_like/Const¨
2sequential_18/lstm_45/while/lstm_cell_45/ones_likeFillAsequential_18/lstm_45/while/lstm_cell_45/ones_like/Shape:output:0Asequential_18/lstm_45/while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_18/lstm_45/while/lstm_cell_45/ones_like¶
8sequential_18/lstm_45/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_18/lstm_45/while/lstm_cell_45/split/split_dim
=sequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOpReadVariableOpHsequential_18_lstm_45_while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02?
=sequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOpË
.sequential_18/lstm_45/while/lstm_cell_45/splitSplitAsequential_18/lstm_45/while/lstm_cell_45/split/split_dim:output:0Esequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_18/lstm_45/while/lstm_cell_45/split
/sequential_18/lstm_45/while/lstm_cell_45/MatMulMatMulFsequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_18/lstm_45/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_18/lstm_45/while/lstm_cell_45/MatMul£
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_1MatMulFsequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_18/lstm_45/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_1£
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_2MatMulFsequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_18/lstm_45/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_2£
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_3MatMulFsequential_18/lstm_45/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_18/lstm_45/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_3º
:sequential_18/lstm_45/while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_18/lstm_45/while/lstm_cell_45/split_1/split_dim
?sequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOpReadVariableOpJsequential_18_lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02A
?sequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOpÃ
0sequential_18/lstm_45/while/lstm_cell_45/split_1SplitCsequential_18/lstm_45/while/lstm_cell_45/split_1/split_dim:output:0Gsequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_18/lstm_45/while/lstm_cell_45/split_1
0sequential_18/lstm_45/while/lstm_cell_45/BiasAddBiasAdd9sequential_18/lstm_45/while/lstm_cell_45/MatMul:product:09sequential_18/lstm_45/while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_18/lstm_45/while/lstm_cell_45/BiasAdd
2sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_1BiasAdd;sequential_18/lstm_45/while/lstm_cell_45/MatMul_1:product:09sequential_18/lstm_45/while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_1
2sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_2BiasAdd;sequential_18/lstm_45/while/lstm_cell_45/MatMul_2:product:09sequential_18/lstm_45/while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_2
2sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_3BiasAdd;sequential_18/lstm_45/while/lstm_cell_45/MatMul_3:product:09sequential_18/lstm_45/while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_3ý
,sequential_18/lstm_45/while/lstm_cell_45/mulMul)sequential_18_lstm_45_while_placeholder_2;sequential_18/lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/while/lstm_cell_45/mul
.sequential_18/lstm_45/while/lstm_cell_45/mul_1Mul)sequential_18_lstm_45_while_placeholder_2;sequential_18/lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/mul_1
.sequential_18/lstm_45/while/lstm_cell_45/mul_2Mul)sequential_18_lstm_45_while_placeholder_2;sequential_18/lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/mul_2
.sequential_18/lstm_45/while/lstm_cell_45/mul_3Mul)sequential_18_lstm_45_while_placeholder_2;sequential_18/lstm_45/while/lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/mul_3ö
7sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOpReadVariableOpBsequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype029
7sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOpÍ
<sequential_18/lstm_45/while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_18/lstm_45/while/lstm_cell_45/strided_slice/stackÑ
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack_1Ñ
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack_2ò
6sequential_18/lstm_45/while/lstm_cell_45/strided_sliceStridedSlice?sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp:value:0Esequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack:output:0Gsequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack_1:output:0Gsequential_18/lstm_45/while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_18/lstm_45/while/lstm_cell_45/strided_slice
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_4MatMul0sequential_18/lstm_45/while/lstm_cell_45/mul:z:0?sequential_18/lstm_45/while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_4
,sequential_18/lstm_45/while/lstm_cell_45/addAddV29sequential_18/lstm_45/while/lstm_cell_45/BiasAdd:output:0;sequential_18/lstm_45/while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_18/lstm_45/while/lstm_cell_45/addÓ
0sequential_18/lstm_45/while/lstm_cell_45/SigmoidSigmoid0sequential_18/lstm_45/while/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_18/lstm_45/while/lstm_cell_45/Sigmoidú
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_1ReadVariableOpBsequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_1Ñ
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stackÕ
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack_1Õ
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack_2þ
8sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1StridedSliceAsequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_1:value:0Gsequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack:output:0Isequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack_1:output:0Isequential_18/lstm_45/while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_18/lstm_45/while/lstm_cell_45/strided_slice_1
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_5MatMul2sequential_18/lstm_45/while/lstm_cell_45/mul_1:z:0Asequential_18/lstm_45/while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_5
.sequential_18/lstm_45/while/lstm_cell_45/add_1AddV2;sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_1:output:0;sequential_18/lstm_45/while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/add_1Ù
2sequential_18/lstm_45/while/lstm_cell_45/Sigmoid_1Sigmoid2sequential_18/lstm_45/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_18/lstm_45/while/lstm_cell_45/Sigmoid_1ü
.sequential_18/lstm_45/while/lstm_cell_45/mul_4Mul6sequential_18/lstm_45/while/lstm_cell_45/Sigmoid_1:y:0)sequential_18_lstm_45_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/mul_4ú
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_2ReadVariableOpBsequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_2Ñ
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stackÕ
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack_1Õ
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack_2þ
8sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2StridedSliceAsequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_2:value:0Gsequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack:output:0Isequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack_1:output:0Isequential_18/lstm_45/while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_18/lstm_45/while/lstm_cell_45/strided_slice_2
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_6MatMul2sequential_18/lstm_45/while/lstm_cell_45/mul_2:z:0Asequential_18/lstm_45/while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_6
.sequential_18/lstm_45/while/lstm_cell_45/add_2AddV2;sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_2:output:0;sequential_18/lstm_45/while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/add_2Ì
-sequential_18/lstm_45/while/lstm_cell_45/ReluRelu2sequential_18/lstm_45/while/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_18/lstm_45/while/lstm_cell_45/Relu
.sequential_18/lstm_45/while/lstm_cell_45/mul_5Mul4sequential_18/lstm_45/while/lstm_cell_45/Sigmoid:y:0;sequential_18/lstm_45/while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/mul_5
.sequential_18/lstm_45/while/lstm_cell_45/add_3AddV22sequential_18/lstm_45/while/lstm_cell_45/mul_4:z:02sequential_18/lstm_45/while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/add_3ú
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_3ReadVariableOpBsequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_3Ñ
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stackÕ
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack_1Õ
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack_2þ
8sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3StridedSliceAsequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_3:value:0Gsequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack:output:0Isequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack_1:output:0Isequential_18/lstm_45/while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_18/lstm_45/while/lstm_cell_45/strided_slice_3
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_7MatMul2sequential_18/lstm_45/while/lstm_cell_45/mul_3:z:0Asequential_18/lstm_45/while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_18/lstm_45/while/lstm_cell_45/MatMul_7
.sequential_18/lstm_45/while/lstm_cell_45/add_4AddV2;sequential_18/lstm_45/while/lstm_cell_45/BiasAdd_3:output:0;sequential_18/lstm_45/while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/add_4Ù
2sequential_18/lstm_45/while/lstm_cell_45/Sigmoid_2Sigmoid2sequential_18/lstm_45/while/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_18/lstm_45/while/lstm_cell_45/Sigmoid_2Ð
/sequential_18/lstm_45/while/lstm_cell_45/Relu_1Relu2sequential_18/lstm_45/while/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_18/lstm_45/while/lstm_cell_45/Relu_1
.sequential_18/lstm_45/while/lstm_cell_45/mul_6Mul6sequential_18/lstm_45/while/lstm_cell_45/Sigmoid_2:y:0=sequential_18/lstm_45/while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_18/lstm_45/while/lstm_cell_45/mul_6Î
@sequential_18/lstm_45/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_18_lstm_45_while_placeholder_1'sequential_18_lstm_45_while_placeholder2sequential_18/lstm_45/while/lstm_cell_45/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_18/lstm_45/while/TensorArrayV2Write/TensorListSetItem
!sequential_18/lstm_45/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_18/lstm_45/while/add/yÁ
sequential_18/lstm_45/while/addAddV2'sequential_18_lstm_45_while_placeholder*sequential_18/lstm_45/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_18/lstm_45/while/add
#sequential_18/lstm_45/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_18/lstm_45/while/add_1/yä
!sequential_18/lstm_45/while/add_1AddV2Dsequential_18_lstm_45_while_sequential_18_lstm_45_while_loop_counter,sequential_18/lstm_45/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_18/lstm_45/while/add_1Ã
$sequential_18/lstm_45/while/IdentityIdentity%sequential_18/lstm_45/while/add_1:z:0!^sequential_18/lstm_45/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_18/lstm_45/while/Identityì
&sequential_18/lstm_45/while/Identity_1IdentityJsequential_18_lstm_45_while_sequential_18_lstm_45_while_maximum_iterations!^sequential_18/lstm_45/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_18/lstm_45/while/Identity_1Å
&sequential_18/lstm_45/while/Identity_2Identity#sequential_18/lstm_45/while/add:z:0!^sequential_18/lstm_45/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_18/lstm_45/while/Identity_2ò
&sequential_18/lstm_45/while/Identity_3IdentityPsequential_18/lstm_45/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_18/lstm_45/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_18/lstm_45/while/Identity_3å
&sequential_18/lstm_45/while/Identity_4Identity2sequential_18/lstm_45/while/lstm_cell_45/mul_6:z:0!^sequential_18/lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_18/lstm_45/while/Identity_4å
&sequential_18/lstm_45/while/Identity_5Identity2sequential_18/lstm_45/while/lstm_cell_45/add_3:z:0!^sequential_18/lstm_45/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_18/lstm_45/while/Identity_5ö
 sequential_18/lstm_45/while/NoOpNoOp8^sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp:^sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_1:^sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_2:^sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_3>^sequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOp@^sequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_18/lstm_45/while/NoOp"U
$sequential_18_lstm_45_while_identity-sequential_18/lstm_45/while/Identity:output:0"Y
&sequential_18_lstm_45_while_identity_1/sequential_18/lstm_45/while/Identity_1:output:0"Y
&sequential_18_lstm_45_while_identity_2/sequential_18/lstm_45/while/Identity_2:output:0"Y
&sequential_18_lstm_45_while_identity_3/sequential_18/lstm_45/while/Identity_3:output:0"Y
&sequential_18_lstm_45_while_identity_4/sequential_18/lstm_45/while/Identity_4:output:0"Y
&sequential_18_lstm_45_while_identity_5/sequential_18/lstm_45/while/Identity_5:output:0"
@sequential_18_lstm_45_while_lstm_cell_45_readvariableop_resourceBsequential_18_lstm_45_while_lstm_cell_45_readvariableop_resource_0"
Hsequential_18_lstm_45_while_lstm_cell_45_split_1_readvariableop_resourceJsequential_18_lstm_45_while_lstm_cell_45_split_1_readvariableop_resource_0"
Fsequential_18_lstm_45_while_lstm_cell_45_split_readvariableop_resourceHsequential_18_lstm_45_while_lstm_cell_45_split_readvariableop_resource_0"
Asequential_18_lstm_45_while_sequential_18_lstm_45_strided_slice_1Csequential_18_lstm_45_while_sequential_18_lstm_45_strided_slice_1_0"
}sequential_18_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_45_tensorarrayunstack_tensorlistfromtensorsequential_18_lstm_45_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_45_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2r
7sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp7sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp2v
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_19sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_12v
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_29sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_22v
9sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_39sequential_18/lstm_45/while/lstm_cell_45/ReadVariableOp_32~
=sequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOp=sequential_18/lstm_45/while/lstm_cell_45/split/ReadVariableOp2
?sequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOp?sequential_18/lstm_45/while/lstm_cell_45/split_1/ReadVariableOp: 
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
é%
ê
while_body_1555150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_45_1555174_0:	+
while_lstm_cell_45_1555176_0:	/
while_lstm_cell_45_1555178_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_45_1555174:	)
while_lstm_cell_45_1555176:	-
while_lstm_cell_45_1555178:	 ¢*while/lstm_cell_45/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemå
*while/lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_45_1555174_0while_lstm_cell_45_1555176_0while_lstm_cell_45_1555178_0*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_15551362,
*while/lstm_cell_45/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_45/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_45/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_45/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_45_1555174while_lstm_cell_45_1555174_0":
while_lstm_cell_45_1555176while_lstm_cell_45_1555176_0":
while_lstm_cell_45_1555178while_lstm_cell_45_1555178_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_45/StatefulPartitionedCall*while/lstm_cell_45/StatefulPartitionedCall: 
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
¦v
ê
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1555369

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
dropout/ShapeÑ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2·¶Ì2&
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
seed2Ü2(
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
seed2Êý2(
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
dropout_3/ShapeÕ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2§q2(
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
mul_6Ý
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
ReadVariableOp_3ReadVariableOp_32~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2,
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
á¡
¨
D__inference_lstm_45_layer_call_and_return_conditional_losses_1558133

inputs=
*lstm_cell_45_split_readvariableop_resource:	;
,lstm_cell_45_split_1_readvariableop_resource:	7
$lstm_cell_45_readvariableop_resource:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_45/ReadVariableOp¢lstm_cell_45/ReadVariableOp_1¢lstm_cell_45/ReadVariableOp_2¢lstm_cell_45/ReadVariableOp_3¢!lstm_cell_45/split/ReadVariableOp¢#lstm_cell_45/split_1/ReadVariableOp¢whileD
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
strided_slice_2z
lstm_cell_45/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_45/ones_like/Shape
lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_45/ones_like/Const¸
lstm_cell_45/ones_likeFill%lstm_cell_45/ones_like/Shape:output:0%lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/ones_like~
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_45/split/split_dim²
!lstm_cell_45/split/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_45/split/ReadVariableOpÛ
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0)lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_45/split
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul¡
lstm_cell_45/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_1¡
lstm_cell_45/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_2¡
lstm_cell_45/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_3
lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_45/split_1/split_dim´
#lstm_cell_45/split_1/ReadVariableOpReadVariableOp,lstm_cell_45_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_45/split_1/ReadVariableOpÓ
lstm_cell_45/split_1Split'lstm_cell_45/split_1/split_dim:output:0+lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_45/split_1§
lstm_cell_45/BiasAddBiasAddlstm_cell_45/MatMul:product:0lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd­
lstm_cell_45/BiasAdd_1BiasAddlstm_cell_45/MatMul_1:product:0lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_1­
lstm_cell_45/BiasAdd_2BiasAddlstm_cell_45/MatMul_2:product:0lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_2­
lstm_cell_45/BiasAdd_3BiasAddlstm_cell_45/MatMul_3:product:0lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/BiasAdd_3
lstm_cell_45/mulMulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul
lstm_cell_45/mul_1Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_1
lstm_cell_45/mul_2Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_2
lstm_cell_45/mul_3Mulzeros:output:0lstm_cell_45/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_3 
lstm_cell_45/ReadVariableOpReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp
 lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_45/strided_slice/stack
"lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice/stack_1
"lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_45/strided_slice/stack_2Ê
lstm_cell_45/strided_sliceStridedSlice#lstm_cell_45/ReadVariableOp:value:0)lstm_cell_45/strided_slice/stack:output:0+lstm_cell_45/strided_slice/stack_1:output:0+lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice¥
lstm_cell_45/MatMul_4MatMullstm_cell_45/mul:z:0#lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_4
lstm_cell_45/addAddV2lstm_cell_45/BiasAdd:output:0lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add
lstm_cell_45/SigmoidSigmoidlstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid¤
lstm_cell_45/ReadVariableOp_1ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_1
"lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_45/strided_slice_1/stack
$lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_45/strided_slice_1/stack_1
$lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_1/stack_2Ö
lstm_cell_45/strided_slice_1StridedSlice%lstm_cell_45/ReadVariableOp_1:value:0+lstm_cell_45/strided_slice_1/stack:output:0-lstm_cell_45/strided_slice_1/stack_1:output:0-lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_1©
lstm_cell_45/MatMul_5MatMullstm_cell_45/mul_1:z:0%lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_5¥
lstm_cell_45/add_1AddV2lstm_cell_45/BiasAdd_1:output:0lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_1
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_1
lstm_cell_45/mul_4Mullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_4¤
lstm_cell_45/ReadVariableOp_2ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_2
"lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_45/strided_slice_2/stack
$lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_45/strided_slice_2/stack_1
$lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_2/stack_2Ö
lstm_cell_45/strided_slice_2StridedSlice%lstm_cell_45/ReadVariableOp_2:value:0+lstm_cell_45/strided_slice_2/stack:output:0-lstm_cell_45/strided_slice_2/stack_1:output:0-lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_2©
lstm_cell_45/MatMul_6MatMullstm_cell_45/mul_2:z:0%lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_6¥
lstm_cell_45/add_2AddV2lstm_cell_45/BiasAdd_2:output:0lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_2x
lstm_cell_45/ReluRelulstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu
lstm_cell_45/mul_5Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_5
lstm_cell_45/add_3AddV2lstm_cell_45/mul_4:z:0lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_3¤
lstm_cell_45/ReadVariableOp_3ReadVariableOp$lstm_cell_45_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_45/ReadVariableOp_3
"lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_45/strided_slice_3/stack
$lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_45/strided_slice_3/stack_1
$lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_45/strided_slice_3/stack_2Ö
lstm_cell_45/strided_slice_3StridedSlice%lstm_cell_45/ReadVariableOp_3:value:0+lstm_cell_45/strided_slice_3/stack:output:0-lstm_cell_45/strided_slice_3/stack_1:output:0-lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_45/strided_slice_3©
lstm_cell_45/MatMul_7MatMullstm_cell_45/mul_3:z:0%lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/MatMul_7¥
lstm_cell_45/add_4AddV2lstm_cell_45/BiasAdd_3:output:0lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/add_4
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Sigmoid_2|
lstm_cell_45/Relu_1Relulstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/Relu_1 
lstm_cell_45/mul_6Mullstm_cell_45/Sigmoid_2:y:0!lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_45/mul_6
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_45_split_readvariableop_resource,lstm_cell_45_split_1_readvariableop_resource$lstm_cell_45_readvariableop_resource*
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
while_body_1558000*
condR
while_cond_1557999*K
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
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_45_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_45/ReadVariableOp^lstm_cell_45/ReadVariableOp_1^lstm_cell_45/ReadVariableOp_2^lstm_cell_45/ReadVariableOp_3"^lstm_cell_45/split/ReadVariableOp$^lstm_cell_45/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_45/ReadVariableOplstm_cell_45/ReadVariableOp2>
lstm_cell_45/ReadVariableOp_1lstm_cell_45/ReadVariableOp_12>
lstm_cell_45/ReadVariableOp_2lstm_cell_45/ReadVariableOp_22>
lstm_cell_45/ReadVariableOp_3lstm_cell_45/ReadVariableOp_32F
!lstm_cell_45/split/ReadVariableOp!lstm_cell_45/split/ReadVariableOp2J
#lstm_cell_45/split_1/ReadVariableOp#lstm_cell_45/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

c
G__inference_reshape_27_layer_call_and_return_conditional_losses_1556105

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
À
¸
)__inference_lstm_45_layer_call_fn_1558462
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15555222
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
Ú
È
while_cond_1557724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557724___redundant_placeholder05
1while_while_cond_1557724___redundant_placeholder15
1while_while_cond_1557724___redundant_placeholder25
1while_while_cond_1557724___redundant_placeholder3
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
ê	
ª
/__inference_sequential_18_layer_call_fn_1556583
input_19
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_15565472
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
input_19
Ú
È
while_cond_1555911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555911___redundant_placeholder05
1while_while_cond_1555911___redundant_placeholder15
1while_while_cond_1555911___redundant_placeholder25
1while_while_cond_1555911___redundant_placeholder3
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
í
¨
E__inference_dense_55_layer_call_and_return_conditional_losses_1556086

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_55/bias/Regularizer/Square/ReadVariableOp
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
BiasAdd¾
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ó

*__inference_dense_54_layer_call_fn_1558504

inputs
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallõ
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
GPU 2J 8 *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_15560642
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
ÍB
ã
 __inference__traced_save_1558916
file_prefix.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_45_lstm_cell_45_kernel_read_readvariableopD
@savev2_lstm_45_lstm_cell_45_recurrent_kernel_read_readvariableop8
4savev2_lstm_45_lstm_cell_45_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableop5
1savev2_adam_dense_55_kernel_m_read_readvariableop3
/savev2_adam_dense_55_bias_m_read_readvariableopA
=savev2_adam_lstm_45_lstm_cell_45_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_45_lstm_cell_45_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableop5
1savev2_adam_dense_55_kernel_v_read_readvariableop3
/savev2_adam_dense_55_bias_v_read_readvariableopA
=savev2_adam_lstm_45_lstm_cell_45_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_45_lstm_cell_45_bias_v_read_readvariableop
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
ShardedFilenameÐ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*â
valueØBÕB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÜ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_45_lstm_cell_45_kernel_read_readvariableop@savev2_lstm_45_lstm_cell_45_recurrent_kernel_read_readvariableop4savev2_lstm_45_lstm_cell_45_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop1savev2_adam_dense_55_kernel_m_read_readvariableop/savev2_adam_dense_55_bias_m_read_readvariableop=savev2_adam_lstm_45_lstm_cell_45_kernel_m_read_readvariableopGsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_45_lstm_cell_45_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableop1savev2_adam_dense_55_kernel_v_read_readvariableop/savev2_adam_dense_55_bias_v_read_readvariableop=savev2_adam_lstm_45_lstm_cell_45_kernel_v_read_readvariableopGsavev2_adam_lstm_45_lstm_cell_45_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_45_lstm_cell_45_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ø+
µ
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556651
input_19"
lstm_45_1556620:	
lstm_45_1556622:	"
lstm_45_1556624:	 "
dense_54_1556627:  
dense_54_1556629: "
dense_55_1556632: 
dense_55_1556634:
identity¢ dense_54/StatefulPartitionedCall¢ dense_55/StatefulPartitionedCall¢/dense_55/bias/Regularizer/Square/ReadVariableOp¢lstm_45/StatefulPartitionedCall¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp§
lstm_45/StatefulPartitionedCallStatefulPartitionedCallinput_19lstm_45_1556620lstm_45_1556622lstm_45_1556624*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_45_layer_call_and_return_conditional_losses_15564832!
lstm_45/StatefulPartitionedCall¹
 dense_54/StatefulPartitionedCallStatefulPartitionedCall(lstm_45/StatefulPartitionedCall:output:0dense_54_1556627dense_54_1556629*
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
GPU 2J 8 *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_15560642"
 dense_54/StatefulPartitionedCallº
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_1556632dense_55_1556634*
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
GPU 2J 8 *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_15560862"
 dense_55/StatefulPartitionedCall
reshape_27/PartitionedCallPartitionedCall)dense_55/StatefulPartitionedCall:output:0*
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
G__inference_reshape_27_layer_call_and_return_conditional_losses_15561052
reshape_27/PartitionedCallÏ
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_45_1556620*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/mul¯
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_1556634*
_output_shapes
:*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp¬
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_55/bias/Regularizer/Square
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const¶
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_55/bias/Regularizer/mul/x¸
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul
IdentityIdentity#reshape_27/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp ^lstm_45/StatefulPartitionedCall>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2B
lstm_45/StatefulPartitionedCalllstm_45/StatefulPartitionedCall2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
ü²
¥	
while_body_1557725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_45_split_readvariableop_resource_0:	C
4while_lstm_cell_45_split_1_readvariableop_resource_0:	?
,while_lstm_cell_45_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_45_split_readvariableop_resource:	A
2while_lstm_cell_45_split_1_readvariableop_resource:	=
*while_lstm_cell_45_readvariableop_resource:	 ¢!while/lstm_cell_45/ReadVariableOp¢#while/lstm_cell_45/ReadVariableOp_1¢#while/lstm_cell_45/ReadVariableOp_2¢#while/lstm_cell_45/ReadVariableOp_3¢'while/lstm_cell_45/split/ReadVariableOp¢)while/lstm_cell_45/split_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_45/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_45/ones_like/Shape
"while/lstm_cell_45/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_45/ones_like/ConstÐ
while/lstm_cell_45/ones_likeFill+while/lstm_cell_45/ones_like/Shape:output:0+while/lstm_cell_45/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/ones_like
 while/lstm_cell_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_45/dropout/ConstË
while/lstm_cell_45/dropout/MulMul%while/lstm_cell_45/ones_like:output:0)while/lstm_cell_45/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_45/dropout/Mul
 while/lstm_cell_45/dropout/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_45/dropout/Shape
7while/lstm_cell_45/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_45/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ó¢29
7while/lstm_cell_45/dropout/random_uniform/RandomUniform
)while/lstm_cell_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_45/dropout/GreaterEqual/y
'while/lstm_cell_45/dropout/GreaterEqualGreaterEqual@while/lstm_cell_45/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_45/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_45/dropout/GreaterEqual¸
while/lstm_cell_45/dropout/CastCast+while/lstm_cell_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_45/dropout/CastÆ
 while/lstm_cell_45/dropout/Mul_1Mul"while/lstm_cell_45/dropout/Mul:z:0#while/lstm_cell_45/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout/Mul_1
"while/lstm_cell_45/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_1/ConstÑ
 while/lstm_cell_45/dropout_1/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_1/Mul
"while/lstm_cell_45/dropout_1/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_1/Shape
9while/lstm_cell_45/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Óê2;
9while/lstm_cell_45/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_1/GreaterEqual/y
)while/lstm_cell_45/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_1/GreaterEqual¾
!while/lstm_cell_45/dropout_1/CastCast-while/lstm_cell_45/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_1/CastÎ
"while/lstm_cell_45/dropout_1/Mul_1Mul$while/lstm_cell_45/dropout_1/Mul:z:0%while/lstm_cell_45/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_1/Mul_1
"while/lstm_cell_45/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_2/ConstÑ
 while/lstm_cell_45/dropout_2/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_2/Mul
"while/lstm_cell_45/dropout_2/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_2/Shape
9while/lstm_cell_45/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¸ò2;
9while/lstm_cell_45/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_2/GreaterEqual/y
)while/lstm_cell_45/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_2/GreaterEqual¾
!while/lstm_cell_45/dropout_2/CastCast-while/lstm_cell_45/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_2/CastÎ
"while/lstm_cell_45/dropout_2/Mul_1Mul$while/lstm_cell_45/dropout_2/Mul:z:0%while/lstm_cell_45/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_2/Mul_1
"while/lstm_cell_45/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_45/dropout_3/ConstÑ
 while/lstm_cell_45/dropout_3/MulMul%while/lstm_cell_45/ones_like:output:0+while/lstm_cell_45/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_45/dropout_3/Mul
"while/lstm_cell_45/dropout_3/ShapeShape%while/lstm_cell_45/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_45/dropout_3/Shape
9while/lstm_cell_45/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_45/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÅÎ2;
9while/lstm_cell_45/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_45/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_45/dropout_3/GreaterEqual/y
)while/lstm_cell_45/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_45/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_45/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_45/dropout_3/GreaterEqual¾
!while/lstm_cell_45/dropout_3/CastCast-while/lstm_cell_45/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_45/dropout_3/CastÎ
"while/lstm_cell_45/dropout_3/Mul_1Mul$while/lstm_cell_45/dropout_3/Mul:z:0%while/lstm_cell_45/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_45/dropout_3/Mul_1
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_45/split/split_dimÆ
'while/lstm_cell_45/split/ReadVariableOpReadVariableOp2while_lstm_cell_45_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_45/split/ReadVariableOpó
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0/while/lstm_cell_45/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_45/splitÇ
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMulË
while/lstm_cell_45/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_1Ë
while/lstm_cell_45/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_2Ë
while/lstm_cell_45/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_3
$while/lstm_cell_45/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_45/split_1/split_dimÈ
)while/lstm_cell_45/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_45_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_45/split_1/ReadVariableOpë
while/lstm_cell_45/split_1Split-while/lstm_cell_45/split_1/split_dim:output:01while/lstm_cell_45/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_45/split_1¿
while/lstm_cell_45/BiasAddBiasAdd#while/lstm_cell_45/MatMul:product:0#while/lstm_cell_45/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAddÅ
while/lstm_cell_45/BiasAdd_1BiasAdd%while/lstm_cell_45/MatMul_1:product:0#while/lstm_cell_45/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_1Å
while/lstm_cell_45/BiasAdd_2BiasAdd%while/lstm_cell_45/MatMul_2:product:0#while/lstm_cell_45/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_2Å
while/lstm_cell_45/BiasAdd_3BiasAdd%while/lstm_cell_45/MatMul_3:product:0#while/lstm_cell_45/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/BiasAdd_3¤
while/lstm_cell_45/mulMulwhile_placeholder_2$while/lstm_cell_45/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mulª
while/lstm_cell_45/mul_1Mulwhile_placeholder_2&while/lstm_cell_45/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_1ª
while/lstm_cell_45/mul_2Mulwhile_placeholder_2&while/lstm_cell_45/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_2ª
while/lstm_cell_45/mul_3Mulwhile_placeholder_2&while/lstm_cell_45/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_3´
!while/lstm_cell_45/ReadVariableOpReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_45/ReadVariableOp¡
&while/lstm_cell_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_45/strided_slice/stack¥
(while/lstm_cell_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice/stack_1¥
(while/lstm_cell_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_45/strided_slice/stack_2î
 while/lstm_cell_45/strided_sliceStridedSlice)while/lstm_cell_45/ReadVariableOp:value:0/while/lstm_cell_45/strided_slice/stack:output:01while/lstm_cell_45/strided_slice/stack_1:output:01while/lstm_cell_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_45/strided_slice½
while/lstm_cell_45/MatMul_4MatMulwhile/lstm_cell_45/mul:z:0)while/lstm_cell_45/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_4·
while/lstm_cell_45/addAddV2#while/lstm_cell_45/BiasAdd:output:0%while/lstm_cell_45/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add
while/lstm_cell_45/SigmoidSigmoidwhile/lstm_cell_45/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid¸
#while/lstm_cell_45/ReadVariableOp_1ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_1¥
(while/lstm_cell_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_45/strided_slice_1/stack©
*while/lstm_cell_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_45/strided_slice_1/stack_1©
*while/lstm_cell_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_1/stack_2ú
"while/lstm_cell_45/strided_slice_1StridedSlice+while/lstm_cell_45/ReadVariableOp_1:value:01while/lstm_cell_45/strided_slice_1/stack:output:03while/lstm_cell_45/strided_slice_1/stack_1:output:03while/lstm_cell_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_1Á
while/lstm_cell_45/MatMul_5MatMulwhile/lstm_cell_45/mul_1:z:0+while/lstm_cell_45/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_5½
while/lstm_cell_45/add_1AddV2%while/lstm_cell_45/BiasAdd_1:output:0%while/lstm_cell_45/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_1
while/lstm_cell_45/Sigmoid_1Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_1¤
while/lstm_cell_45/mul_4Mul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_4¸
#while/lstm_cell_45/ReadVariableOp_2ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_2¥
(while/lstm_cell_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_45/strided_slice_2/stack©
*while/lstm_cell_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_45/strided_slice_2/stack_1©
*while/lstm_cell_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_2/stack_2ú
"while/lstm_cell_45/strided_slice_2StridedSlice+while/lstm_cell_45/ReadVariableOp_2:value:01while/lstm_cell_45/strided_slice_2/stack:output:03while/lstm_cell_45/strided_slice_2/stack_1:output:03while/lstm_cell_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_2Á
while/lstm_cell_45/MatMul_6MatMulwhile/lstm_cell_45/mul_2:z:0+while/lstm_cell_45/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_6½
while/lstm_cell_45/add_2AddV2%while/lstm_cell_45/BiasAdd_2:output:0%while/lstm_cell_45/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_2
while/lstm_cell_45/ReluReluwhile/lstm_cell_45/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu´
while/lstm_cell_45/mul_5Mulwhile/lstm_cell_45/Sigmoid:y:0%while/lstm_cell_45/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_5«
while/lstm_cell_45/add_3AddV2while/lstm_cell_45/mul_4:z:0while/lstm_cell_45/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_3¸
#while/lstm_cell_45/ReadVariableOp_3ReadVariableOp,while_lstm_cell_45_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_45/ReadVariableOp_3¥
(while/lstm_cell_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_45/strided_slice_3/stack©
*while/lstm_cell_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_45/strided_slice_3/stack_1©
*while/lstm_cell_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_45/strided_slice_3/stack_2ú
"while/lstm_cell_45/strided_slice_3StridedSlice+while/lstm_cell_45/ReadVariableOp_3:value:01while/lstm_cell_45/strided_slice_3/stack:output:03while/lstm_cell_45/strided_slice_3/stack_1:output:03while/lstm_cell_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_45/strided_slice_3Á
while/lstm_cell_45/MatMul_7MatMulwhile/lstm_cell_45/mul_3:z:0+while/lstm_cell_45/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/MatMul_7½
while/lstm_cell_45/add_4AddV2%while/lstm_cell_45/BiasAdd_3:output:0%while/lstm_cell_45/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/add_4
while/lstm_cell_45/Sigmoid_2Sigmoidwhile/lstm_cell_45/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Sigmoid_2
while/lstm_cell_45/Relu_1Reluwhile/lstm_cell_45/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/Relu_1¸
while/lstm_cell_45/mul_6Mul while/lstm_cell_45/Sigmoid_2:y:0'while/lstm_cell_45/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_45/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_45/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_45/ReadVariableOp$^while/lstm_cell_45/ReadVariableOp_1$^while/lstm_cell_45/ReadVariableOp_2$^while/lstm_cell_45/ReadVariableOp_3(^while/lstm_cell_45/split/ReadVariableOp*^while/lstm_cell_45/split_1/ReadVariableOp*"
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
*while_lstm_cell_45_readvariableop_resource,while_lstm_cell_45_readvariableop_resource_0"j
2while_lstm_cell_45_split_1_readvariableop_resource4while_lstm_cell_45_split_1_readvariableop_resource_0"f
0while_lstm_cell_45_split_readvariableop_resource2while_lstm_cell_45_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_45/ReadVariableOp!while/lstm_cell_45/ReadVariableOp2J
#while/lstm_cell_45/ReadVariableOp_1#while/lstm_cell_45/ReadVariableOp_12J
#while/lstm_cell_45/ReadVariableOp_2#while/lstm_cell_45/ReadVariableOp_22J
#while/lstm_cell_45/ReadVariableOp_3#while/lstm_cell_45/ReadVariableOp_32R
'while/lstm_cell_45/split/ReadVariableOp'while/lstm_cell_45/split/ReadVariableOp2V
)while/lstm_cell_45/split_1/ReadVariableOp)while/lstm_cell_45/split_1/ReadVariableOp: 
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
R
É
D__inference_lstm_45_layer_call_and_return_conditional_losses_1555225

inputs'
lstm_cell_45_1555137:	#
lstm_cell_45_1555139:	'
lstm_cell_45_1555141:	 
identity¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_45/StatefulPartitionedCall¢whileD
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
strided_slice_2¡
$lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_45_1555137lstm_cell_45_1555139lstm_cell_45_1555141*
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
GPU 2J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_15551362&
$lstm_cell_45/StatefulPartitionedCall
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
while/loop_counterÅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_45_1555137lstm_cell_45_1555139lstm_cell_45_1555141*
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
while_body_1555150*
condR
while_cond_1555149*K
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
runtimeÔ
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_45_1555137*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_45/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_45/StatefulPartitionedCall$lstm_cell_45/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ßR
ì
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1558651

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
mul_6Ý
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_45/lstm_cell_45/kernel/Regularizer/SquareSquareElstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_45/lstm_cell_45/kernel/Regularizer/Square¯
-lstm_45/lstm_cell_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_45/lstm_cell_45/kernel/Regularizer/Constî
+lstm_45/lstm_cell_45/kernel/Regularizer/SumSum2lstm_45/lstm_cell_45/kernel/Regularizer/Square:y:06lstm_45/lstm_cell_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/Sum£
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_45/lstm_cell_45/kernel/Regularizer/mul/xð
+lstm_45/lstm_cell_45/kernel/Regularizer/mulMul6lstm_45/lstm_cell_45/kernel/Regularizer/mul/x:output:04lstm_45/lstm_cell_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_45/lstm_cell_45/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
ReadVariableOp_3ReadVariableOp_32~
=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp=lstm_45/lstm_cell_45/kernel/Regularizer/Square/ReadVariableOp2,
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
while_cond_1557449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557449___redundant_placeholder05
1while_while_cond_1557449___redundant_placeholder15
1while_while_cond_1557449___redundant_placeholder25
1while_while_cond_1557449___redundant_placeholder3
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
Ú
È
while_cond_1555446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1555446___redundant_placeholder05
1while_while_cond_1555446___redundant_placeholder15
1while_while_cond_1555446___redundant_placeholder25
1while_while_cond_1555446___redundant_placeholder3
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
:"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
A
input_195
serving_default_input_19:0ÿÿÿÿÿÿÿÿÿB

reshape_274
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ý
è
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
*`&call_and_return_all_conditional_losses
a__call__
b_default_save_signature"
_tf_keras_sequential
Ã
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"
_tf_keras_rnn_layer
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"
_tf_keras_layer
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"
_tf_keras_layer
¥
trainable_variables
	variables
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
trainable_variables
)layer_metrics
	variables
*metrics

+layers
,non_trainable_variables
regularization_losses
-layer_regularization_losses
a__call__
b_default_save_signature
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
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
/trainable_variables
0	variables
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
trainable_variables
3layer_metrics
	variables
4metrics

5layers

6states
7non_trainable_variables
regularization_losses
8layer_regularization_losses
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
!:  2dense_54/kernel
: 2dense_54/bias
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
trainable_variables
9layer_metrics
:metrics
	variables

;layers
<non_trainable_variables
regularization_losses
=layer_regularization_losses
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_55/kernel
:2dense_55/bias
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
trainable_variables
>layer_metrics
?metrics
	variables

@layers
Anon_trainable_variables
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
trainable_variables
Clayer_metrics
Dmetrics
	variables

Elayers
Fnon_trainable_variables
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
.:,	2lstm_45/lstm_cell_45/kernel
8:6	 2%lstm_45/lstm_cell_45/recurrent_kernel
(:&2lstm_45/lstm_cell_45/bias
 "
trackable_dict_wrapper
'
H0"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
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
/trainable_variables
Ilayer_metrics
Jmetrics
0	variables

Klayers
Lnon_trainable_variables
1regularization_losses
Mlayer_regularization_losses
n__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
'
k0"
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
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
&:$  2Adam/dense_54/kernel/m
 : 2Adam/dense_54/bias/m
&:$ 2Adam/dense_55/kernel/m
 :2Adam/dense_55/bias/m
3:1	2"Adam/lstm_45/lstm_cell_45/kernel/m
=:;	 2,Adam/lstm_45/lstm_cell_45/recurrent_kernel/m
-:+2 Adam/lstm_45/lstm_cell_45/bias/m
&:$  2Adam/dense_54/kernel/v
 : 2Adam/dense_54/bias/v
&:$ 2Adam/dense_55/kernel/v
 :2Adam/dense_55/bias/v
3:1	2"Adam/lstm_45/lstm_cell_45/kernel/v
=:;	 2,Adam/lstm_45/lstm_cell_45/recurrent_kernel/v
-:+2 Adam/lstm_45/lstm_cell_45/bias/v
ö2ó
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556961
J__inference_sequential_18_layer_call_and_return_conditional_losses_1557296
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556617
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556651À
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
2
/__inference_sequential_18_layer_call_fn_1556137
/__inference_sequential_18_layer_call_fn_1557315
/__inference_sequential_18_layer_call_fn_1557334
/__inference_sequential_18_layer_call_fn_1556583À
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
"__inference__wrapped_model_1555012input_19"
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
ó2ð
D__inference_lstm_45_layer_call_and_return_conditional_losses_1557583
D__inference_lstm_45_layer_call_and_return_conditional_losses_1557890
D__inference_lstm_45_layer_call_and_return_conditional_losses_1558133
D__inference_lstm_45_layer_call_and_return_conditional_losses_1558440Õ
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
2
)__inference_lstm_45_layer_call_fn_1558451
)__inference_lstm_45_layer_call_fn_1558462
)__inference_lstm_45_layer_call_fn_1558473
)__inference_lstm_45_layer_call_fn_1558484Õ
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
ï2ì
E__inference_dense_54_layer_call_and_return_conditional_losses_1558495¢
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
*__inference_dense_54_layer_call_fn_1558504¢
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
E__inference_dense_55_layer_call_and_return_conditional_losses_1558526¢
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
*__inference_dense_55_layer_call_fn_1558535¢
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
G__inference_reshape_27_layer_call_and_return_conditional_losses_1558548¢
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
,__inference_reshape_27_layer_call_fn_1558553¢
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
__inference_loss_fn_0_1558564
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
%__inference_signature_wrapper_1556690input_19"
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
Ú2×
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1558651
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1558764¾
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
¤2¡
.__inference_lstm_cell_45_layer_call_fn_1558781
.__inference_lstm_cell_45_layer_call_fn_1558798¾
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
__inference_loss_fn_1_1558809
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
"__inference__wrapped_model_1555012}&('5¢2
+¢(
&#
input_19ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_27(%

reshape_27ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_54_layer_call_and_return_conditional_losses_1558495\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dense_54_layer_call_fn_1558504O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_55_layer_call_and_return_conditional_losses_1558526\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_55_layer_call_fn_1558535O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_1558564¢

¢ 
ª " <
__inference_loss_fn_1_1558809&¢

¢ 
ª " Å
D__inference_lstm_45_layer_call_and_return_conditional_losses_1557583}&('O¢L
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
 Å
D__inference_lstm_45_layer_call_and_return_conditional_losses_1557890}&('O¢L
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
 µ
D__inference_lstm_45_layer_call_and_return_conditional_losses_1558133m&('?¢<
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
 µ
D__inference_lstm_45_layer_call_and_return_conditional_losses_1558440m&('?¢<
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
 
)__inference_lstm_45_layer_call_fn_1558451p&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
)__inference_lstm_45_layer_call_fn_1558462p&('O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
)__inference_lstm_45_layer_call_fn_1558473`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
)__inference_lstm_45_layer_call_fn_1558484`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ë
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1558651ý&('¢}
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
 Ë
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1558764ý&('¢}
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
  
.__inference_lstm_cell_45_layer_call_fn_1558781í&('¢}
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
1/1ÿÿÿÿÿÿÿÿÿ  
.__inference_lstm_cell_45_layer_call_fn_1558798í&('¢}
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
G__inference_reshape_27_layer_call_and_return_conditional_losses_1558548\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_27_layer_call_fn_1558553O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556617s&('=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556651s&('=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_18_layer_call_and_return_conditional_losses_1556961q&(';¢8
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
J__inference_sequential_18_layer_call_and_return_conditional_losses_1557296q&(';¢8
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
/__inference_sequential_18_layer_call_fn_1556137f&('=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_18_layer_call_fn_1556583f&('=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_18_layer_call_fn_1557315d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_18_layer_call_fn_1557334d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
%__inference_signature_wrapper_1556690&('A¢>
¢ 
7ª4
2
input_19&#
input_19ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_27(%

reshape_27ÿÿÿÿÿÿÿÿÿ