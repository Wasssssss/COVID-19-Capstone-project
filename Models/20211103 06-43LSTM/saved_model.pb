??&
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??%
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:  *
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
: *
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

: *
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
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
?
lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_16/lstm_cell_16/kernel
?
/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_16/lstm_cell_16/recurrent_kernel
?
9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_16/lstm_cell_16/bias
?
-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/bias*
_output_shapes	
:?*
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
?
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_20/kernel/m
?
*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_21/kernel/m
?
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_16/lstm_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/m
?
6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
?
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_16/lstm_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/m
?
4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_20/kernel/v
?
*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_21/kernel/v
?
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_16/lstm_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/v
?
6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
?
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_16/lstm_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/v
?
4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?+
?
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
?
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
?

)layers
trainable_variables
	variables
*metrics
+layer_metrics
,layer_regularization_losses
-non_trainable_variables
regularization_losses
 
?
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
?

3layers
trainable_variables
	variables
4metrics
5layer_metrics
6layer_regularization_losses
7non_trainable_variables

8states
regularization_losses
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

9layers
trainable_variables
	variables
:metrics
;layer_metrics
<layer_regularization_losses
=non_trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

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
?

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
a_
VARIABLE_VALUElstm_16/lstm_cell_16/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_16/lstm_cell_16/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_16/lstm_cell_16/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
?

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
~|
VARIABLE_VALUEAdam/dense_20/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_20/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_8Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8lstm_16/lstm_cell_16/kernellstm_16/lstm_cell_16/bias%lstm_16/lstm_cell_16/recurrent_kerneldense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_607405
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp-lstm_16/lstm_cell_16/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8? *(
f#R!
__inference__traced_save_609631
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_20/kerneldense_20/biasdense_21/kerneldense_21/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biastotalcountAdam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_21/kernel/mAdam/dense_21/bias/m"Adam/lstm_16/lstm_cell_16/kernel/m,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m Adam/lstm_16/lstm_cell_16/bias/mAdam/dense_20/kernel/vAdam/dense_20/bias/vAdam/dense_21/kernel/vAdam/dense_21/bias/v"Adam/lstm_16/lstm_cell_16/kernel/v,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v Adam/lstm_16/lstm_cell_16/bias/v*(
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_609725??$
??
?	
while_body_608759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_16_split_readvariableop_resource_0:	?C
4while_lstm_cell_16_split_1_readvariableop_resource_0:	??
,while_lstm_cell_16_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_16_split_readvariableop_resource:	?A
2while_lstm_cell_16_split_1_readvariableop_resource:	?=
*while_lstm_cell_16_readvariableop_resource:	 ???!while/lstm_cell_16/ReadVariableOp?#while/lstm_cell_16/ReadVariableOp_1?#while/lstm_cell_16/ReadVariableOp_2?#while/lstm_cell_16/ReadVariableOp_3?'while/lstm_cell_16/split/ReadVariableOp?)while/lstm_cell_16/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_16/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_16/ones_like/Shape?
"while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_16/ones_like/Const?
while/lstm_cell_16/ones_likeFill+while/lstm_cell_16/ones_like/Shape:output:0+while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/ones_like?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
'while/lstm_cell_16/split/ReadVariableOpReadVariableOp2while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_16/split/ReadVariableOp?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul?
while/lstm_cell_16/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_2?
while/lstm_cell_16/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_3?
$while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_16/split_1/split_dim?
)while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_16/split_1/ReadVariableOp?
while/lstm_cell_16/split_1Split-while/lstm_cell_16/split_1/split_dim:output:01while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_16/split_1?
while/lstm_cell_16/BiasAddBiasAdd#while/lstm_cell_16/MatMul:product:0#while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd?
while/lstm_cell_16/BiasAdd_1BiasAdd%while/lstm_cell_16/MatMul_1:product:0#while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_1?
while/lstm_cell_16/BiasAdd_2BiasAdd%while/lstm_cell_16/MatMul_2:product:0#while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_2?
while/lstm_cell_16/BiasAdd_3BiasAdd%while/lstm_cell_16/MatMul_3:product:0#while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_3?
while/lstm_cell_16/mulMulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul?
while/lstm_cell_16/mul_1Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/mul_2Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_2?
while/lstm_cell_16/mul_3Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_3?
!while/lstm_cell_16/ReadVariableOpReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_16/ReadVariableOp?
&while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_16/strided_slice/stack?
(while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice/stack_1?
(while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_16/strided_slice/stack_2?
 while/lstm_cell_16/strided_sliceStridedSlice)while/lstm_cell_16/ReadVariableOp:value:0/while/lstm_cell_16/strided_slice/stack:output:01while/lstm_cell_16/strided_slice/stack_1:output:01while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_16/strided_slice?
while/lstm_cell_16/MatMul_4MatMulwhile/lstm_cell_16/mul:z:0)while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_4?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/BiasAdd:output:0%while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add?
while/lstm_cell_16/SigmoidSigmoidwhile/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid?
#while/lstm_cell_16/ReadVariableOp_1ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_1?
(while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice_1/stack?
*while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_16/strided_slice_1/stack_1?
*while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_1/stack_2?
"while/lstm_cell_16/strided_slice_1StridedSlice+while/lstm_cell_16/ReadVariableOp_1:value:01while/lstm_cell_16/strided_slice_1/stack:output:03while/lstm_cell_16/strided_slice_1/stack_1:output:03while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_1?
while/lstm_cell_16/MatMul_5MatMulwhile/lstm_cell_16/mul_1:z:0+while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_5?
while/lstm_cell_16/add_1AddV2%while/lstm_cell_16/BiasAdd_1:output:0%while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_1Sigmoidwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mul_4Mul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_4?
#while/lstm_cell_16/ReadVariableOp_2ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_2?
(while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_16/strided_slice_2/stack?
*while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_16/strided_slice_2/stack_1?
*while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_2/stack_2?
"while/lstm_cell_16/strided_slice_2StridedSlice+while/lstm_cell_16/ReadVariableOp_2:value:01while/lstm_cell_16/strided_slice_2/stack:output:03while/lstm_cell_16/strided_slice_2/stack_1:output:03while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_2?
while/lstm_cell_16/MatMul_6MatMulwhile/lstm_cell_16/mul_2:z:0+while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_6?
while/lstm_cell_16/add_2AddV2%while/lstm_cell_16/BiasAdd_2:output:0%while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_2?
while/lstm_cell_16/ReluReluwhile/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_5Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_5?
while/lstm_cell_16/add_3AddV2while/lstm_cell_16/mul_4:z:0while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_3?
#while/lstm_cell_16/ReadVariableOp_3ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_3?
(while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_16/strided_slice_3/stack?
*while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_16/strided_slice_3/stack_1?
*while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_3/stack_2?
"while/lstm_cell_16/strided_slice_3StridedSlice+while/lstm_cell_16/ReadVariableOp_3:value:01while/lstm_cell_16/strided_slice_3/stack:output:03while/lstm_cell_16/strided_slice_3/stack_1:output:03while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_3?
while/lstm_cell_16/MatMul_7MatMulwhile/lstm_cell_16/mul_3:z:0+while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_7?
while/lstm_cell_16/add_4AddV2%while/lstm_cell_16/BiasAdd_3:output:0%while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_4?
while/lstm_cell_16/Sigmoid_2Sigmoidwhile/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_6Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_6:z:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_16/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_16/ReadVariableOp$^while/lstm_cell_16/ReadVariableOp_1$^while/lstm_cell_16/ReadVariableOp_2$^while/lstm_cell_16/ReadVariableOp_3(^while/lstm_cell_16/split/ReadVariableOp*^while/lstm_cell_16/split_1/ReadVariableOp*"
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
*while_lstm_cell_16_readvariableop_resource,while_lstm_cell_16_readvariableop_resource_0"j
2while_lstm_cell_16_split_1_readvariableop_resource4while_lstm_cell_16_split_1_readvariableop_resource_0"f
0while_lstm_cell_16_split_readvariableop_resource2while_lstm_cell_16_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_16/ReadVariableOp!while/lstm_cell_16/ReadVariableOp2J
#while/lstm_cell_16/ReadVariableOp_1#while/lstm_cell_16/ReadVariableOp_12J
#while/lstm_cell_16/ReadVariableOp_2#while/lstm_cell_16/ReadVariableOp_22J
#while/lstm_cell_16/ReadVariableOp_3#while/lstm_cell_16/ReadVariableOp_32R
'while/lstm_cell_16/split/ReadVariableOp'while/lstm_cell_16/split/ReadVariableOp2V
)while/lstm_cell_16/split_1/ReadVariableOp)while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?	
while_body_607033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_16_split_readvariableop_resource_0:	?C
4while_lstm_cell_16_split_1_readvariableop_resource_0:	??
,while_lstm_cell_16_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_16_split_readvariableop_resource:	?A
2while_lstm_cell_16_split_1_readvariableop_resource:	?=
*while_lstm_cell_16_readvariableop_resource:	 ???!while/lstm_cell_16/ReadVariableOp?#while/lstm_cell_16/ReadVariableOp_1?#while/lstm_cell_16/ReadVariableOp_2?#while/lstm_cell_16/ReadVariableOp_3?'while/lstm_cell_16/split/ReadVariableOp?)while/lstm_cell_16/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_16/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_16/ones_like/Shape?
"while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_16/ones_like/Const?
while/lstm_cell_16/ones_likeFill+while/lstm_cell_16/ones_like/Shape:output:0+while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/ones_like?
 while/lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_16/dropout/Const?
while/lstm_cell_16/dropout/MulMul%while/lstm_cell_16/ones_like:output:0)while/lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_16/dropout/Mul?
 while/lstm_cell_16/dropout/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_16/dropout/Shape?
7while/lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_16/dropout/random_uniform/RandomUniform?
)while/lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_16/dropout/GreaterEqual/y?
'while/lstm_cell_16/dropout/GreaterEqualGreaterEqual@while/lstm_cell_16/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_16/dropout/GreaterEqual?
while/lstm_cell_16/dropout/CastCast+while/lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_16/dropout/Cast?
 while/lstm_cell_16/dropout/Mul_1Mul"while/lstm_cell_16/dropout/Mul:z:0#while/lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout/Mul_1?
"while/lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_1/Const?
 while/lstm_cell_16/dropout_1/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_1/Mul?
"while/lstm_cell_16/dropout_1/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_1/Shape?
9while/lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??_2;
9while/lstm_cell_16/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_1/GreaterEqual/y?
)while/lstm_cell_16/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_1/GreaterEqual?
!while/lstm_cell_16/dropout_1/CastCast-while/lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_1/Cast?
"while/lstm_cell_16/dropout_1/Mul_1Mul$while/lstm_cell_16/dropout_1/Mul:z:0%while/lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_1/Mul_1?
"while/lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_2/Const?
 while/lstm_cell_16/dropout_2/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_2/Mul?
"while/lstm_cell_16/dropout_2/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_2/Shape?
9while/lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??W2;
9while/lstm_cell_16/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_2/GreaterEqual/y?
)while/lstm_cell_16/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_2/GreaterEqual?
!while/lstm_cell_16/dropout_2/CastCast-while/lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_2/Cast?
"while/lstm_cell_16/dropout_2/Mul_1Mul$while/lstm_cell_16/dropout_2/Mul:z:0%while/lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_2/Mul_1?
"while/lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_3/Const?
 while/lstm_cell_16/dropout_3/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_3/Mul?
"while/lstm_cell_16/dropout_3/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_3/Shape?
9while/lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_16/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_3/GreaterEqual/y?
)while/lstm_cell_16/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_3/GreaterEqual?
!while/lstm_cell_16/dropout_3/CastCast-while/lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_3/Cast?
"while/lstm_cell_16/dropout_3/Mul_1Mul$while/lstm_cell_16/dropout_3/Mul:z:0%while/lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_3/Mul_1?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
'while/lstm_cell_16/split/ReadVariableOpReadVariableOp2while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_16/split/ReadVariableOp?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul?
while/lstm_cell_16/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_2?
while/lstm_cell_16/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_3?
$while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_16/split_1/split_dim?
)while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_16/split_1/ReadVariableOp?
while/lstm_cell_16/split_1Split-while/lstm_cell_16/split_1/split_dim:output:01while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_16/split_1?
while/lstm_cell_16/BiasAddBiasAdd#while/lstm_cell_16/MatMul:product:0#while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd?
while/lstm_cell_16/BiasAdd_1BiasAdd%while/lstm_cell_16/MatMul_1:product:0#while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_1?
while/lstm_cell_16/BiasAdd_2BiasAdd%while/lstm_cell_16/MatMul_2:product:0#while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_2?
while/lstm_cell_16/BiasAdd_3BiasAdd%while/lstm_cell_16/MatMul_3:product:0#while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_3?
while/lstm_cell_16/mulMulwhile_placeholder_2$while/lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul?
while/lstm_cell_16/mul_1Mulwhile_placeholder_2&while/lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/mul_2Mulwhile_placeholder_2&while/lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_2?
while/lstm_cell_16/mul_3Mulwhile_placeholder_2&while/lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_3?
!while/lstm_cell_16/ReadVariableOpReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_16/ReadVariableOp?
&while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_16/strided_slice/stack?
(while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice/stack_1?
(while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_16/strided_slice/stack_2?
 while/lstm_cell_16/strided_sliceStridedSlice)while/lstm_cell_16/ReadVariableOp:value:0/while/lstm_cell_16/strided_slice/stack:output:01while/lstm_cell_16/strided_slice/stack_1:output:01while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_16/strided_slice?
while/lstm_cell_16/MatMul_4MatMulwhile/lstm_cell_16/mul:z:0)while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_4?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/BiasAdd:output:0%while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add?
while/lstm_cell_16/SigmoidSigmoidwhile/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid?
#while/lstm_cell_16/ReadVariableOp_1ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_1?
(while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice_1/stack?
*while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_16/strided_slice_1/stack_1?
*while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_1/stack_2?
"while/lstm_cell_16/strided_slice_1StridedSlice+while/lstm_cell_16/ReadVariableOp_1:value:01while/lstm_cell_16/strided_slice_1/stack:output:03while/lstm_cell_16/strided_slice_1/stack_1:output:03while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_1?
while/lstm_cell_16/MatMul_5MatMulwhile/lstm_cell_16/mul_1:z:0+while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_5?
while/lstm_cell_16/add_1AddV2%while/lstm_cell_16/BiasAdd_1:output:0%while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_1Sigmoidwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mul_4Mul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_4?
#while/lstm_cell_16/ReadVariableOp_2ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_2?
(while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_16/strided_slice_2/stack?
*while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_16/strided_slice_2/stack_1?
*while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_2/stack_2?
"while/lstm_cell_16/strided_slice_2StridedSlice+while/lstm_cell_16/ReadVariableOp_2:value:01while/lstm_cell_16/strided_slice_2/stack:output:03while/lstm_cell_16/strided_slice_2/stack_1:output:03while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_2?
while/lstm_cell_16/MatMul_6MatMulwhile/lstm_cell_16/mul_2:z:0+while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_6?
while/lstm_cell_16/add_2AddV2%while/lstm_cell_16/BiasAdd_2:output:0%while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_2?
while/lstm_cell_16/ReluReluwhile/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_5Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_5?
while/lstm_cell_16/add_3AddV2while/lstm_cell_16/mul_4:z:0while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_3?
#while/lstm_cell_16/ReadVariableOp_3ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_3?
(while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_16/strided_slice_3/stack?
*while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_16/strided_slice_3/stack_1?
*while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_3/stack_2?
"while/lstm_cell_16/strided_slice_3StridedSlice+while/lstm_cell_16/ReadVariableOp_3:value:01while/lstm_cell_16/strided_slice_3/stack:output:03while/lstm_cell_16/strided_slice_3/stack_1:output:03while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_3?
while/lstm_cell_16/MatMul_7MatMulwhile/lstm_cell_16/mul_3:z:0+while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_7?
while/lstm_cell_16/add_4AddV2%while/lstm_cell_16/BiasAdd_3:output:0%while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_4?
while/lstm_cell_16/Sigmoid_2Sigmoidwhile/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_6Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_6:z:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_16/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_16/ReadVariableOp$^while/lstm_cell_16/ReadVariableOp_1$^while/lstm_cell_16/ReadVariableOp_2$^while/lstm_cell_16/ReadVariableOp_3(^while/lstm_cell_16/split/ReadVariableOp*^while/lstm_cell_16/split_1/ReadVariableOp*"
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
*while_lstm_cell_16_readvariableop_resource,while_lstm_cell_16_readvariableop_resource_0"j
2while_lstm_cell_16_split_1_readvariableop_resource4while_lstm_cell_16_split_1_readvariableop_resource_0"f
0while_lstm_cell_16_split_readvariableop_resource2while_lstm_cell_16_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_16/ReadVariableOp!while/lstm_cell_16/ReadVariableOp2J
#while/lstm_cell_16/ReadVariableOp_1#while/lstm_cell_16/ReadVariableOp_12J
#while/lstm_cell_16/ReadVariableOp_2#while/lstm_cell_16/ReadVariableOp_22J
#while/lstm_cell_16/ReadVariableOp_3#while/lstm_cell_16/ReadVariableOp_32R
'while/lstm_cell_16/split/ReadVariableOp'while/lstm_cell_16/split/ReadVariableOp2V
)while/lstm_cell_16/split_1/ReadVariableOp)while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?+
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_606835

inputs!
lstm_16_606761:	?
lstm_16_606763:	?!
lstm_16_606765:	 ?!
dense_20_606780:  
dense_20_606782: !
dense_21_606802: 
dense_21_606804:
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?/dense_21/bias/Regularizer/Square/ReadVariableOp?lstm_16/StatefulPartitionedCall?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
lstm_16/StatefulPartitionedCallStatefulPartitionedCallinputslstm_16_606761lstm_16_606763lstm_16_606765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6067602!
lstm_16/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_20_606780dense_20_606782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_6067792"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_606802dense_21_606804*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_6068012"
 dense_21/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_6068202
reshape_10/PartitionedCall?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_16_606761*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/mul?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_606804*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mul?
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall0^dense_21/bias/Regularizer/Square/ReadVariableOp ^lstm_16/StatefulPartitionedCall>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607366
input_8!
lstm_16_607335:	?
lstm_16_607337:	?!
lstm_16_607339:	 ?!
dense_20_607342:  
dense_20_607344: !
dense_21_607347: 
dense_21_607349:
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?/dense_21/bias/Regularizer/Square/ReadVariableOp?lstm_16/StatefulPartitionedCall?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
lstm_16/StatefulPartitionedCallStatefulPartitionedCallinput_8lstm_16_607335lstm_16_607337lstm_16_607339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6071982!
lstm_16/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_20_607342dense_20_607344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_6067792"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_607347dense_21_607349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_6068012"
 dense_21/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_6068202
reshape_10/PartitionedCall?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_16_607335*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/mul?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_607349*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mul?
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall0^dense_21/bias/Regularizer/Square/ReadVariableOp ^lstm_16/StatefulPartitionedCall>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
ޡ
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608892

inputs=
*lstm_cell_16_split_readvariableop_resource:	?;
,lstm_cell_16_split_1_readvariableop_resource:	?7
$lstm_cell_16_readvariableop_resource:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_16/ReadVariableOp?lstm_cell_16/ReadVariableOp_1?lstm_cell_16/ReadVariableOp_2?lstm_cell_16/ReadVariableOp_3?!lstm_cell_16/split/ReadVariableOp?#lstm_cell_16/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2z
lstm_cell_16/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_16/ones_like/Shape?
lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_16/ones_like/Const?
lstm_cell_16/ones_likeFill%lstm_cell_16/ones_like/Shape:output:0%lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/ones_like~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
!lstm_cell_16/split/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_16/split/ReadVariableOp?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0)lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_16/split?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul?
lstm_cell_16/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_1?
lstm_cell_16/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_2?
lstm_cell_16/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_3?
lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_16/split_1/split_dim?
#lstm_cell_16/split_1/ReadVariableOpReadVariableOp,lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_16/split_1/ReadVariableOp?
lstm_cell_16/split_1Split'lstm_cell_16/split_1/split_dim:output:0+lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_16/split_1?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/MatMul:product:0lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd?
lstm_cell_16/BiasAdd_1BiasAddlstm_cell_16/MatMul_1:product:0lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_1?
lstm_cell_16/BiasAdd_2BiasAddlstm_cell_16/MatMul_2:product:0lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_2?
lstm_cell_16/BiasAdd_3BiasAddlstm_cell_16/MatMul_3:product:0lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_3?
lstm_cell_16/mulMulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul?
lstm_cell_16/mul_1Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_1?
lstm_cell_16/mul_2Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_2?
lstm_cell_16/mul_3Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_3?
lstm_cell_16/ReadVariableOpReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp?
 lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_16/strided_slice/stack?
"lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice/stack_1?
"lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_16/strided_slice/stack_2?
lstm_cell_16/strided_sliceStridedSlice#lstm_cell_16/ReadVariableOp:value:0)lstm_cell_16/strided_slice/stack:output:0+lstm_cell_16/strided_slice/stack_1:output:0+lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice?
lstm_cell_16/MatMul_4MatMullstm_cell_16/mul:z:0#lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_4?
lstm_cell_16/addAddV2lstm_cell_16/BiasAdd:output:0lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add
lstm_cell_16/SigmoidSigmoidlstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid?
lstm_cell_16/ReadVariableOp_1ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_1?
"lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice_1/stack?
$lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_16/strided_slice_1/stack_1?
$lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_1/stack_2?
lstm_cell_16/strided_slice_1StridedSlice%lstm_cell_16/ReadVariableOp_1:value:0+lstm_cell_16/strided_slice_1/stack:output:0-lstm_cell_16/strided_slice_1/stack_1:output:0-lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_1?
lstm_cell_16/MatMul_5MatMullstm_cell_16/mul_1:z:0%lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_5?
lstm_cell_16/add_1AddV2lstm_cell_16/BiasAdd_1:output:0lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mul_4Mullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_4?
lstm_cell_16/ReadVariableOp_2ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_2?
"lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_16/strided_slice_2/stack?
$lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_16/strided_slice_2/stack_1?
$lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_2/stack_2?
lstm_cell_16/strided_slice_2StridedSlice%lstm_cell_16/ReadVariableOp_2:value:0+lstm_cell_16/strided_slice_2/stack:output:0-lstm_cell_16/strided_slice_2/stack_1:output:0-lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_2?
lstm_cell_16/MatMul_6MatMullstm_cell_16/mul_2:z:0%lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_6?
lstm_cell_16/add_2AddV2lstm_cell_16/BiasAdd_2:output:0lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_2x
lstm_cell_16/ReluRelulstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu?
lstm_cell_16/mul_5Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_5?
lstm_cell_16/add_3AddV2lstm_cell_16/mul_4:z:0lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_3?
lstm_cell_16/ReadVariableOp_3ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_3?
"lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_16/strided_slice_3/stack?
$lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_16/strided_slice_3/stack_1?
$lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_3/stack_2?
lstm_cell_16/strided_slice_3StridedSlice%lstm_cell_16/ReadVariableOp_3:value:0+lstm_cell_16/strided_slice_3/stack:output:0-lstm_cell_16/strided_slice_3/stack_1:output:0-lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_3?
lstm_cell_16/MatMul_7MatMullstm_cell_16/mul_3:z:0%lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_7?
lstm_cell_16/add_4AddV2lstm_cell_16/BiasAdd_3:output:0lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_4?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_6Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_16_split_readvariableop_resource,lstm_cell_16_split_1_readvariableop_resource$lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_608759*
condR
while_cond_608758*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_16/ReadVariableOp^lstm_cell_16/ReadVariableOp_1^lstm_cell_16/ReadVariableOp_2^lstm_cell_16/ReadVariableOp_3"^lstm_cell_16/split/ReadVariableOp$^lstm_cell_16/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_16/ReadVariableOplstm_cell_16/ReadVariableOp2>
lstm_cell_16/ReadVariableOp_1lstm_cell_16/ReadVariableOp_12>
lstm_cell_16/ReadVariableOp_2lstm_cell_16/ReadVariableOp_22>
lstm_cell_16/ReadVariableOp_3lstm_cell_16/ReadVariableOp_32F
!lstm_cell_16/split/ReadVariableOp!lstm_cell_16/split/ReadVariableOp2J
#lstm_cell_16/split_1/ReadVariableOp#lstm_cell_16/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
while_body_609034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_16_split_readvariableop_resource_0:	?C
4while_lstm_cell_16_split_1_readvariableop_resource_0:	??
,while_lstm_cell_16_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_16_split_readvariableop_resource:	?A
2while_lstm_cell_16_split_1_readvariableop_resource:	?=
*while_lstm_cell_16_readvariableop_resource:	 ???!while/lstm_cell_16/ReadVariableOp?#while/lstm_cell_16/ReadVariableOp_1?#while/lstm_cell_16/ReadVariableOp_2?#while/lstm_cell_16/ReadVariableOp_3?'while/lstm_cell_16/split/ReadVariableOp?)while/lstm_cell_16/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_16/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_16/ones_like/Shape?
"while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_16/ones_like/Const?
while/lstm_cell_16/ones_likeFill+while/lstm_cell_16/ones_like/Shape:output:0+while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/ones_like?
 while/lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_16/dropout/Const?
while/lstm_cell_16/dropout/MulMul%while/lstm_cell_16/ones_like:output:0)while/lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_16/dropout/Mul?
 while/lstm_cell_16/dropout/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_16/dropout/Shape?
7while/lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_16/dropout/random_uniform/RandomUniform?
)while/lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_16/dropout/GreaterEqual/y?
'while/lstm_cell_16/dropout/GreaterEqualGreaterEqual@while/lstm_cell_16/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_16/dropout/GreaterEqual?
while/lstm_cell_16/dropout/CastCast+while/lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_16/dropout/Cast?
 while/lstm_cell_16/dropout/Mul_1Mul"while/lstm_cell_16/dropout/Mul:z:0#while/lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout/Mul_1?
"while/lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_1/Const?
 while/lstm_cell_16/dropout_1/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_1/Mul?
"while/lstm_cell_16/dropout_1/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_1/Shape?
9while/lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_16/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_1/GreaterEqual/y?
)while/lstm_cell_16/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_1/GreaterEqual?
!while/lstm_cell_16/dropout_1/CastCast-while/lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_1/Cast?
"while/lstm_cell_16/dropout_1/Mul_1Mul$while/lstm_cell_16/dropout_1/Mul:z:0%while/lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_1/Mul_1?
"while/lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_2/Const?
 while/lstm_cell_16/dropout_2/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_2/Mul?
"while/lstm_cell_16/dropout_2/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_2/Shape?
9while/lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_16/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_2/GreaterEqual/y?
)while/lstm_cell_16/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_2/GreaterEqual?
!while/lstm_cell_16/dropout_2/CastCast-while/lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_2/Cast?
"while/lstm_cell_16/dropout_2/Mul_1Mul$while/lstm_cell_16/dropout_2/Mul:z:0%while/lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_2/Mul_1?
"while/lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_3/Const?
 while/lstm_cell_16/dropout_3/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_3/Mul?
"while/lstm_cell_16/dropout_3/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_3/Shape?
9while/lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_16/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_3/GreaterEqual/y?
)while/lstm_cell_16/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_3/GreaterEqual?
!while/lstm_cell_16/dropout_3/CastCast-while/lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_3/Cast?
"while/lstm_cell_16/dropout_3/Mul_1Mul$while/lstm_cell_16/dropout_3/Mul:z:0%while/lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_3/Mul_1?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
'while/lstm_cell_16/split/ReadVariableOpReadVariableOp2while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_16/split/ReadVariableOp?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul?
while/lstm_cell_16/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_2?
while/lstm_cell_16/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_3?
$while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_16/split_1/split_dim?
)while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_16/split_1/ReadVariableOp?
while/lstm_cell_16/split_1Split-while/lstm_cell_16/split_1/split_dim:output:01while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_16/split_1?
while/lstm_cell_16/BiasAddBiasAdd#while/lstm_cell_16/MatMul:product:0#while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd?
while/lstm_cell_16/BiasAdd_1BiasAdd%while/lstm_cell_16/MatMul_1:product:0#while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_1?
while/lstm_cell_16/BiasAdd_2BiasAdd%while/lstm_cell_16/MatMul_2:product:0#while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_2?
while/lstm_cell_16/BiasAdd_3BiasAdd%while/lstm_cell_16/MatMul_3:product:0#while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_3?
while/lstm_cell_16/mulMulwhile_placeholder_2$while/lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul?
while/lstm_cell_16/mul_1Mulwhile_placeholder_2&while/lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/mul_2Mulwhile_placeholder_2&while/lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_2?
while/lstm_cell_16/mul_3Mulwhile_placeholder_2&while/lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_3?
!while/lstm_cell_16/ReadVariableOpReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_16/ReadVariableOp?
&while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_16/strided_slice/stack?
(while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice/stack_1?
(while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_16/strided_slice/stack_2?
 while/lstm_cell_16/strided_sliceStridedSlice)while/lstm_cell_16/ReadVariableOp:value:0/while/lstm_cell_16/strided_slice/stack:output:01while/lstm_cell_16/strided_slice/stack_1:output:01while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_16/strided_slice?
while/lstm_cell_16/MatMul_4MatMulwhile/lstm_cell_16/mul:z:0)while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_4?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/BiasAdd:output:0%while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add?
while/lstm_cell_16/SigmoidSigmoidwhile/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid?
#while/lstm_cell_16/ReadVariableOp_1ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_1?
(while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice_1/stack?
*while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_16/strided_slice_1/stack_1?
*while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_1/stack_2?
"while/lstm_cell_16/strided_slice_1StridedSlice+while/lstm_cell_16/ReadVariableOp_1:value:01while/lstm_cell_16/strided_slice_1/stack:output:03while/lstm_cell_16/strided_slice_1/stack_1:output:03while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_1?
while/lstm_cell_16/MatMul_5MatMulwhile/lstm_cell_16/mul_1:z:0+while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_5?
while/lstm_cell_16/add_1AddV2%while/lstm_cell_16/BiasAdd_1:output:0%while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_1Sigmoidwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mul_4Mul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_4?
#while/lstm_cell_16/ReadVariableOp_2ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_2?
(while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_16/strided_slice_2/stack?
*while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_16/strided_slice_2/stack_1?
*while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_2/stack_2?
"while/lstm_cell_16/strided_slice_2StridedSlice+while/lstm_cell_16/ReadVariableOp_2:value:01while/lstm_cell_16/strided_slice_2/stack:output:03while/lstm_cell_16/strided_slice_2/stack_1:output:03while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_2?
while/lstm_cell_16/MatMul_6MatMulwhile/lstm_cell_16/mul_2:z:0+while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_6?
while/lstm_cell_16/add_2AddV2%while/lstm_cell_16/BiasAdd_2:output:0%while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_2?
while/lstm_cell_16/ReluReluwhile/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_5Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_5?
while/lstm_cell_16/add_3AddV2while/lstm_cell_16/mul_4:z:0while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_3?
#while/lstm_cell_16/ReadVariableOp_3ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_3?
(while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_16/strided_slice_3/stack?
*while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_16/strided_slice_3/stack_1?
*while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_3/stack_2?
"while/lstm_cell_16/strided_slice_3StridedSlice+while/lstm_cell_16/ReadVariableOp_3:value:01while/lstm_cell_16/strided_slice_3/stack:output:03while/lstm_cell_16/strided_slice_3/stack_1:output:03while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_3?
while/lstm_cell_16/MatMul_7MatMulwhile/lstm_cell_16/mul_3:z:0+while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_7?
while/lstm_cell_16/add_4AddV2%while/lstm_cell_16/BiasAdd_3:output:0%while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_4?
while/lstm_cell_16/Sigmoid_2Sigmoidwhile/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_6Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_6:z:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_16/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_16/ReadVariableOp$^while/lstm_cell_16/ReadVariableOp_1$^while/lstm_cell_16/ReadVariableOp_2$^while/lstm_cell_16/ReadVariableOp_3(^while/lstm_cell_16/split/ReadVariableOp*^while/lstm_cell_16/split_1/ReadVariableOp*"
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
*while_lstm_cell_16_readvariableop_resource,while_lstm_cell_16_readvariableop_resource_0"j
2while_lstm_cell_16_split_1_readvariableop_resource4while_lstm_cell_16_split_1_readvariableop_resource_0"f
0while_lstm_cell_16_split_readvariableop_resource2while_lstm_cell_16_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_16/ReadVariableOp!while/lstm_cell_16/ReadVariableOp2J
#while/lstm_cell_16/ReadVariableOp_1#while/lstm_cell_16/ReadVariableOp_12J
#while/lstm_cell_16/ReadVariableOp_2#while/lstm_cell_16/ReadVariableOp_22J
#while/lstm_cell_16/ReadVariableOp_3#while/lstm_cell_16/ReadVariableOp_32R
'while/lstm_cell_16/split/ReadVariableOp'while/lstm_cell_16/split/ReadVariableOp2V
)while/lstm_cell_16/split_1/ReadVariableOp)while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_16_layer_call_fn_608077
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6062372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
-__inference_lstm_cell_16_layer_call_fn_609319

inputs
states_0
states_1
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_6060842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?	
?
-__inference_sequential_7_layer_call_fn_606852
input_8
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6068352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
?
?
)__inference_dense_20_layer_call_fn_609208

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_6067792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
while_cond_608483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_608483___redundant_placeholder04
0while_while_cond_608483___redundant_placeholder14
0while_while_cond_608483___redundant_placeholder24
0while_while_cond_608483___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
D__inference_dense_21_layer_call_and_return_conditional_losses_606801

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_21/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_21/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?|
?
"__inference__traced_restore_609725
file_prefix2
 assignvariableop_dense_20_kernel:  .
 assignvariableop_1_dense_20_bias: 4
"assignvariableop_2_dense_21_kernel: .
 assignvariableop_3_dense_21_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_16_lstm_cell_16_kernel:	?L
9assignvariableop_10_lstm_16_lstm_cell_16_recurrent_kernel:	 ?<
-assignvariableop_11_lstm_16_lstm_cell_16_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_20_kernel_m:  6
(assignvariableop_15_adam_dense_20_bias_m: <
*assignvariableop_16_adam_dense_21_kernel_m: 6
(assignvariableop_17_adam_dense_21_bias_m:I
6assignvariableop_18_adam_lstm_16_lstm_cell_16_kernel_m:	?S
@assignvariableop_19_adam_lstm_16_lstm_cell_16_recurrent_kernel_m:	 ?C
4assignvariableop_20_adam_lstm_16_lstm_cell_16_bias_m:	?<
*assignvariableop_21_adam_dense_20_kernel_v:  6
(assignvariableop_22_adam_dense_20_bias_v: <
*assignvariableop_23_adam_dense_21_kernel_v: 6
(assignvariableop_24_adam_dense_21_bias_v:I
6assignvariableop_25_adam_lstm_16_lstm_cell_16_kernel_v:	?S
@assignvariableop_26_adam_lstm_16_lstm_cell_16_recurrent_kernel_v:	 ?C
4assignvariableop_27_adam_lstm_16_lstm_cell_16_bias_v:	?
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_16_lstm_cell_16_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_16_lstm_cell_16_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_16_lstm_cell_16_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_20_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_20_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_21_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_21_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_16_lstm_cell_16_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_16_lstm_cell_16_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_16_lstm_cell_16_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_20_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_20_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_21_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_21_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_16_lstm_cell_16_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_16_lstm_cell_16_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_16_lstm_cell_16_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28f
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_29?
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
??
?	
while_body_608209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_16_split_readvariableop_resource_0:	?C
4while_lstm_cell_16_split_1_readvariableop_resource_0:	??
,while_lstm_cell_16_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_16_split_readvariableop_resource:	?A
2while_lstm_cell_16_split_1_readvariableop_resource:	?=
*while_lstm_cell_16_readvariableop_resource:	 ???!while/lstm_cell_16/ReadVariableOp?#while/lstm_cell_16/ReadVariableOp_1?#while/lstm_cell_16/ReadVariableOp_2?#while/lstm_cell_16/ReadVariableOp_3?'while/lstm_cell_16/split/ReadVariableOp?)while/lstm_cell_16/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_16/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_16/ones_like/Shape?
"while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_16/ones_like/Const?
while/lstm_cell_16/ones_likeFill+while/lstm_cell_16/ones_like/Shape:output:0+while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/ones_like?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
'while/lstm_cell_16/split/ReadVariableOpReadVariableOp2while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_16/split/ReadVariableOp?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul?
while/lstm_cell_16/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_2?
while/lstm_cell_16/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_3?
$while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_16/split_1/split_dim?
)while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_16/split_1/ReadVariableOp?
while/lstm_cell_16/split_1Split-while/lstm_cell_16/split_1/split_dim:output:01while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_16/split_1?
while/lstm_cell_16/BiasAddBiasAdd#while/lstm_cell_16/MatMul:product:0#while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd?
while/lstm_cell_16/BiasAdd_1BiasAdd%while/lstm_cell_16/MatMul_1:product:0#while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_1?
while/lstm_cell_16/BiasAdd_2BiasAdd%while/lstm_cell_16/MatMul_2:product:0#while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_2?
while/lstm_cell_16/BiasAdd_3BiasAdd%while/lstm_cell_16/MatMul_3:product:0#while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_3?
while/lstm_cell_16/mulMulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul?
while/lstm_cell_16/mul_1Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/mul_2Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_2?
while/lstm_cell_16/mul_3Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_3?
!while/lstm_cell_16/ReadVariableOpReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_16/ReadVariableOp?
&while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_16/strided_slice/stack?
(while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice/stack_1?
(while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_16/strided_slice/stack_2?
 while/lstm_cell_16/strided_sliceStridedSlice)while/lstm_cell_16/ReadVariableOp:value:0/while/lstm_cell_16/strided_slice/stack:output:01while/lstm_cell_16/strided_slice/stack_1:output:01while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_16/strided_slice?
while/lstm_cell_16/MatMul_4MatMulwhile/lstm_cell_16/mul:z:0)while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_4?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/BiasAdd:output:0%while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add?
while/lstm_cell_16/SigmoidSigmoidwhile/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid?
#while/lstm_cell_16/ReadVariableOp_1ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_1?
(while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice_1/stack?
*while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_16/strided_slice_1/stack_1?
*while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_1/stack_2?
"while/lstm_cell_16/strided_slice_1StridedSlice+while/lstm_cell_16/ReadVariableOp_1:value:01while/lstm_cell_16/strided_slice_1/stack:output:03while/lstm_cell_16/strided_slice_1/stack_1:output:03while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_1?
while/lstm_cell_16/MatMul_5MatMulwhile/lstm_cell_16/mul_1:z:0+while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_5?
while/lstm_cell_16/add_1AddV2%while/lstm_cell_16/BiasAdd_1:output:0%while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_1Sigmoidwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mul_4Mul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_4?
#while/lstm_cell_16/ReadVariableOp_2ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_2?
(while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_16/strided_slice_2/stack?
*while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_16/strided_slice_2/stack_1?
*while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_2/stack_2?
"while/lstm_cell_16/strided_slice_2StridedSlice+while/lstm_cell_16/ReadVariableOp_2:value:01while/lstm_cell_16/strided_slice_2/stack:output:03while/lstm_cell_16/strided_slice_2/stack_1:output:03while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_2?
while/lstm_cell_16/MatMul_6MatMulwhile/lstm_cell_16/mul_2:z:0+while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_6?
while/lstm_cell_16/add_2AddV2%while/lstm_cell_16/BiasAdd_2:output:0%while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_2?
while/lstm_cell_16/ReluReluwhile/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_5Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_5?
while/lstm_cell_16/add_3AddV2while/lstm_cell_16/mul_4:z:0while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_3?
#while/lstm_cell_16/ReadVariableOp_3ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_3?
(while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_16/strided_slice_3/stack?
*while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_16/strided_slice_3/stack_1?
*while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_3/stack_2?
"while/lstm_cell_16/strided_slice_3StridedSlice+while/lstm_cell_16/ReadVariableOp_3:value:01while/lstm_cell_16/strided_slice_3/stack:output:03while/lstm_cell_16/strided_slice_3/stack_1:output:03while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_3?
while/lstm_cell_16/MatMul_7MatMulwhile/lstm_cell_16/mul_3:z:0+while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_7?
while/lstm_cell_16/add_4AddV2%while/lstm_cell_16/BiasAdd_3:output:0%while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_4?
while/lstm_cell_16/Sigmoid_2Sigmoidwhile/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_6Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_6:z:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_16/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_16/ReadVariableOp$^while/lstm_cell_16/ReadVariableOp_1$^while/lstm_cell_16/ReadVariableOp_2$^while/lstm_cell_16/ReadVariableOp_3(^while/lstm_cell_16/split/ReadVariableOp*^while/lstm_cell_16/split_1/ReadVariableOp*"
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
*while_lstm_cell_16_readvariableop_resource,while_lstm_cell_16_readvariableop_resource_0"j
2while_lstm_cell_16_split_1_readvariableop_resource4while_lstm_cell_16_split_1_readvariableop_resource_0"f
0while_lstm_cell_16_split_readvariableop_resource2while_lstm_cell_16_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_16/ReadVariableOp!while/lstm_cell_16/ReadVariableOp2J
#while/lstm_cell_16/ReadVariableOp_1#while/lstm_cell_16/ReadVariableOp_12J
#while/lstm_cell_16/ReadVariableOp_2#while/lstm_cell_16/ReadVariableOp_22J
#while/lstm_cell_16/ReadVariableOp_3#while/lstm_cell_16/ReadVariableOp_32R
'while/lstm_cell_16/split/ReadVariableOp'while/lstm_cell_16/split/ReadVariableOp2V
)while/lstm_cell_16/split_1/ReadVariableOp)while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
??
?	
while_body_608484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_16_split_readvariableop_resource_0:	?C
4while_lstm_cell_16_split_1_readvariableop_resource_0:	??
,while_lstm_cell_16_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_16_split_readvariableop_resource:	?A
2while_lstm_cell_16_split_1_readvariableop_resource:	?=
*while_lstm_cell_16_readvariableop_resource:	 ???!while/lstm_cell_16/ReadVariableOp?#while/lstm_cell_16/ReadVariableOp_1?#while/lstm_cell_16/ReadVariableOp_2?#while/lstm_cell_16/ReadVariableOp_3?'while/lstm_cell_16/split/ReadVariableOp?)while/lstm_cell_16/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_16/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_16/ones_like/Shape?
"while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_16/ones_like/Const?
while/lstm_cell_16/ones_likeFill+while/lstm_cell_16/ones_like/Shape:output:0+while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/ones_like?
 while/lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_16/dropout/Const?
while/lstm_cell_16/dropout/MulMul%while/lstm_cell_16/ones_like:output:0)while/lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_16/dropout/Mul?
 while/lstm_cell_16/dropout/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_16/dropout/Shape?
7while/lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??529
7while/lstm_cell_16/dropout/random_uniform/RandomUniform?
)while/lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_16/dropout/GreaterEqual/y?
'while/lstm_cell_16/dropout/GreaterEqualGreaterEqual@while/lstm_cell_16/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_16/dropout/GreaterEqual?
while/lstm_cell_16/dropout/CastCast+while/lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_16/dropout/Cast?
 while/lstm_cell_16/dropout/Mul_1Mul"while/lstm_cell_16/dropout/Mul:z:0#while/lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout/Mul_1?
"while/lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_1/Const?
 while/lstm_cell_16/dropout_1/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_1/Mul?
"while/lstm_cell_16/dropout_1/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_1/Shape?
9while/lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_16/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_1/GreaterEqual/y?
)while/lstm_cell_16/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_1/GreaterEqual?
!while/lstm_cell_16/dropout_1/CastCast-while/lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_1/Cast?
"while/lstm_cell_16/dropout_1/Mul_1Mul$while/lstm_cell_16/dropout_1/Mul:z:0%while/lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_1/Mul_1?
"while/lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_2/Const?
 while/lstm_cell_16/dropout_2/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_2/Mul?
"while/lstm_cell_16/dropout_2/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_2/Shape?
9while/lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ֻ?2;
9while/lstm_cell_16/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_2/GreaterEqual/y?
)while/lstm_cell_16/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_2/GreaterEqual?
!while/lstm_cell_16/dropout_2/CastCast-while/lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_2/Cast?
"while/lstm_cell_16/dropout_2/Mul_1Mul$while/lstm_cell_16/dropout_2/Mul:z:0%while/lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_2/Mul_1?
"while/lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_16/dropout_3/Const?
 while/lstm_cell_16/dropout_3/MulMul%while/lstm_cell_16/ones_like:output:0+while/lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_16/dropout_3/Mul?
"while/lstm_cell_16/dropout_3/ShapeShape%while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_16/dropout_3/Shape?
9while/lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_16/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_16/dropout_3/GreaterEqual/y?
)while/lstm_cell_16/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_16/dropout_3/GreaterEqual?
!while/lstm_cell_16/dropout_3/CastCast-while/lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_16/dropout_3/Cast?
"while/lstm_cell_16/dropout_3/Mul_1Mul$while/lstm_cell_16/dropout_3/Mul:z:0%while/lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_16/dropout_3/Mul_1?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
'while/lstm_cell_16/split/ReadVariableOpReadVariableOp2while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_16/split/ReadVariableOp?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul?
while/lstm_cell_16/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_2?
while/lstm_cell_16/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_3?
$while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_16/split_1/split_dim?
)while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_16/split_1/ReadVariableOp?
while/lstm_cell_16/split_1Split-while/lstm_cell_16/split_1/split_dim:output:01while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_16/split_1?
while/lstm_cell_16/BiasAddBiasAdd#while/lstm_cell_16/MatMul:product:0#while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd?
while/lstm_cell_16/BiasAdd_1BiasAdd%while/lstm_cell_16/MatMul_1:product:0#while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_1?
while/lstm_cell_16/BiasAdd_2BiasAdd%while/lstm_cell_16/MatMul_2:product:0#while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_2?
while/lstm_cell_16/BiasAdd_3BiasAdd%while/lstm_cell_16/MatMul_3:product:0#while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_3?
while/lstm_cell_16/mulMulwhile_placeholder_2$while/lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul?
while/lstm_cell_16/mul_1Mulwhile_placeholder_2&while/lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/mul_2Mulwhile_placeholder_2&while/lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_2?
while/lstm_cell_16/mul_3Mulwhile_placeholder_2&while/lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_3?
!while/lstm_cell_16/ReadVariableOpReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_16/ReadVariableOp?
&while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_16/strided_slice/stack?
(while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice/stack_1?
(while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_16/strided_slice/stack_2?
 while/lstm_cell_16/strided_sliceStridedSlice)while/lstm_cell_16/ReadVariableOp:value:0/while/lstm_cell_16/strided_slice/stack:output:01while/lstm_cell_16/strided_slice/stack_1:output:01while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_16/strided_slice?
while/lstm_cell_16/MatMul_4MatMulwhile/lstm_cell_16/mul:z:0)while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_4?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/BiasAdd:output:0%while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add?
while/lstm_cell_16/SigmoidSigmoidwhile/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid?
#while/lstm_cell_16/ReadVariableOp_1ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_1?
(while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice_1/stack?
*while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_16/strided_slice_1/stack_1?
*while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_1/stack_2?
"while/lstm_cell_16/strided_slice_1StridedSlice+while/lstm_cell_16/ReadVariableOp_1:value:01while/lstm_cell_16/strided_slice_1/stack:output:03while/lstm_cell_16/strided_slice_1/stack_1:output:03while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_1?
while/lstm_cell_16/MatMul_5MatMulwhile/lstm_cell_16/mul_1:z:0+while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_5?
while/lstm_cell_16/add_1AddV2%while/lstm_cell_16/BiasAdd_1:output:0%while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_1Sigmoidwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mul_4Mul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_4?
#while/lstm_cell_16/ReadVariableOp_2ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_2?
(while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_16/strided_slice_2/stack?
*while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_16/strided_slice_2/stack_1?
*while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_2/stack_2?
"while/lstm_cell_16/strided_slice_2StridedSlice+while/lstm_cell_16/ReadVariableOp_2:value:01while/lstm_cell_16/strided_slice_2/stack:output:03while/lstm_cell_16/strided_slice_2/stack_1:output:03while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_2?
while/lstm_cell_16/MatMul_6MatMulwhile/lstm_cell_16/mul_2:z:0+while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_6?
while/lstm_cell_16/add_2AddV2%while/lstm_cell_16/BiasAdd_2:output:0%while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_2?
while/lstm_cell_16/ReluReluwhile/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_5Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_5?
while/lstm_cell_16/add_3AddV2while/lstm_cell_16/mul_4:z:0while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_3?
#while/lstm_cell_16/ReadVariableOp_3ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_3?
(while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_16/strided_slice_3/stack?
*while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_16/strided_slice_3/stack_1?
*while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_3/stack_2?
"while/lstm_cell_16/strided_slice_3StridedSlice+while/lstm_cell_16/ReadVariableOp_3:value:01while/lstm_cell_16/strided_slice_3/stack:output:03while/lstm_cell_16/strided_slice_3/stack_1:output:03while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_3?
while/lstm_cell_16/MatMul_7MatMulwhile/lstm_cell_16/mul_3:z:0+while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_7?
while/lstm_cell_16/add_4AddV2%while/lstm_cell_16/BiasAdd_3:output:0%while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_4?
while/lstm_cell_16/Sigmoid_2Sigmoidwhile/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_6Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_6:z:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_16/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_16/ReadVariableOp$^while/lstm_cell_16/ReadVariableOp_1$^while/lstm_cell_16/ReadVariableOp_2$^while/lstm_cell_16/ReadVariableOp_3(^while/lstm_cell_16/split/ReadVariableOp*^while/lstm_cell_16/split_1/ReadVariableOp*"
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
*while_lstm_cell_16_readvariableop_resource,while_lstm_cell_16_readvariableop_resource_0"j
2while_lstm_cell_16_split_1_readvariableop_resource4while_lstm_cell_16_split_1_readvariableop_resource_0"f
0while_lstm_cell_16_split_readvariableop_resource2while_lstm_cell_16_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_16/ReadVariableOp!while/lstm_cell_16/ReadVariableOp2J
#while/lstm_cell_16/ReadVariableOp_1#while/lstm_cell_16/ReadVariableOp_12J
#while/lstm_cell_16/ReadVariableOp_2#while/lstm_cell_16/ReadVariableOp_22J
#while/lstm_cell_16/ReadVariableOp_3#while/lstm_cell_16/ReadVariableOp_32R
'while/lstm_cell_16/split/ReadVariableOp'while/lstm_cell_16/split/ReadVariableOp2V
)while/lstm_cell_16/split_1/ReadVariableOp)while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_606161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_606161___redundant_placeholder04
0while_while_cond_606161___redundant_placeholder14
0while_while_cond_606161___redundant_placeholder24
0while_while_cond_606161___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608649
inputs_0=
*lstm_cell_16_split_readvariableop_resource:	?;
,lstm_cell_16_split_1_readvariableop_resource:	?7
$lstm_cell_16_readvariableop_resource:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_16/ReadVariableOp?lstm_cell_16/ReadVariableOp_1?lstm_cell_16/ReadVariableOp_2?lstm_cell_16/ReadVariableOp_3?!lstm_cell_16/split/ReadVariableOp?#lstm_cell_16/split_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2z
lstm_cell_16/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_16/ones_like/Shape?
lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_16/ones_like/Const?
lstm_cell_16/ones_likeFill%lstm_cell_16/ones_like/Shape:output:0%lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/ones_like}
lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout/Const?
lstm_cell_16/dropout/MulMullstm_cell_16/ones_like:output:0#lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Mul?
lstm_cell_16/dropout/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout/Shape?
1lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_16/dropout/random_uniform/RandomUniform?
#lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_16/dropout/GreaterEqual/y?
!lstm_cell_16/dropout/GreaterEqualGreaterEqual:lstm_cell_16/dropout/random_uniform/RandomUniform:output:0,lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_16/dropout/GreaterEqual?
lstm_cell_16/dropout/CastCast%lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Cast?
lstm_cell_16/dropout/Mul_1Mullstm_cell_16/dropout/Mul:z:0lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Mul_1?
lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_1/Const?
lstm_cell_16/dropout_1/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Mul?
lstm_cell_16/dropout_1/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_1/Shape?
3lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_1/random_uniform/RandomUniform?
%lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_1/GreaterEqual/y?
#lstm_cell_16/dropout_1/GreaterEqualGreaterEqual<lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_1/GreaterEqual?
lstm_cell_16/dropout_1/CastCast'lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Cast?
lstm_cell_16/dropout_1/Mul_1Mullstm_cell_16/dropout_1/Mul:z:0lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Mul_1?
lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_2/Const?
lstm_cell_16/dropout_2/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Mul?
lstm_cell_16/dropout_2/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_2/Shape?
3lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_2/random_uniform/RandomUniform?
%lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_2/GreaterEqual/y?
#lstm_cell_16/dropout_2/GreaterEqualGreaterEqual<lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_2/GreaterEqual?
lstm_cell_16/dropout_2/CastCast'lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Cast?
lstm_cell_16/dropout_2/Mul_1Mullstm_cell_16/dropout_2/Mul:z:0lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Mul_1?
lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_3/Const?
lstm_cell_16/dropout_3/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Mul?
lstm_cell_16/dropout_3/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_3/Shape?
3lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_3/random_uniform/RandomUniform?
%lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_3/GreaterEqual/y?
#lstm_cell_16/dropout_3/GreaterEqualGreaterEqual<lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_3/GreaterEqual?
lstm_cell_16/dropout_3/CastCast'lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Cast?
lstm_cell_16/dropout_3/Mul_1Mullstm_cell_16/dropout_3/Mul:z:0lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Mul_1~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
!lstm_cell_16/split/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_16/split/ReadVariableOp?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0)lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_16/split?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul?
lstm_cell_16/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_1?
lstm_cell_16/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_2?
lstm_cell_16/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_3?
lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_16/split_1/split_dim?
#lstm_cell_16/split_1/ReadVariableOpReadVariableOp,lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_16/split_1/ReadVariableOp?
lstm_cell_16/split_1Split'lstm_cell_16/split_1/split_dim:output:0+lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_16/split_1?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/MatMul:product:0lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd?
lstm_cell_16/BiasAdd_1BiasAddlstm_cell_16/MatMul_1:product:0lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_1?
lstm_cell_16/BiasAdd_2BiasAddlstm_cell_16/MatMul_2:product:0lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_2?
lstm_cell_16/BiasAdd_3BiasAddlstm_cell_16/MatMul_3:product:0lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_3?
lstm_cell_16/mulMulzeros:output:0lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul?
lstm_cell_16/mul_1Mulzeros:output:0 lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_1?
lstm_cell_16/mul_2Mulzeros:output:0 lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_2?
lstm_cell_16/mul_3Mulzeros:output:0 lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_3?
lstm_cell_16/ReadVariableOpReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp?
 lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_16/strided_slice/stack?
"lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice/stack_1?
"lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_16/strided_slice/stack_2?
lstm_cell_16/strided_sliceStridedSlice#lstm_cell_16/ReadVariableOp:value:0)lstm_cell_16/strided_slice/stack:output:0+lstm_cell_16/strided_slice/stack_1:output:0+lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice?
lstm_cell_16/MatMul_4MatMullstm_cell_16/mul:z:0#lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_4?
lstm_cell_16/addAddV2lstm_cell_16/BiasAdd:output:0lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add
lstm_cell_16/SigmoidSigmoidlstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid?
lstm_cell_16/ReadVariableOp_1ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_1?
"lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice_1/stack?
$lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_16/strided_slice_1/stack_1?
$lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_1/stack_2?
lstm_cell_16/strided_slice_1StridedSlice%lstm_cell_16/ReadVariableOp_1:value:0+lstm_cell_16/strided_slice_1/stack:output:0-lstm_cell_16/strided_slice_1/stack_1:output:0-lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_1?
lstm_cell_16/MatMul_5MatMullstm_cell_16/mul_1:z:0%lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_5?
lstm_cell_16/add_1AddV2lstm_cell_16/BiasAdd_1:output:0lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mul_4Mullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_4?
lstm_cell_16/ReadVariableOp_2ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_2?
"lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_16/strided_slice_2/stack?
$lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_16/strided_slice_2/stack_1?
$lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_2/stack_2?
lstm_cell_16/strided_slice_2StridedSlice%lstm_cell_16/ReadVariableOp_2:value:0+lstm_cell_16/strided_slice_2/stack:output:0-lstm_cell_16/strided_slice_2/stack_1:output:0-lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_2?
lstm_cell_16/MatMul_6MatMullstm_cell_16/mul_2:z:0%lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_6?
lstm_cell_16/add_2AddV2lstm_cell_16/BiasAdd_2:output:0lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_2x
lstm_cell_16/ReluRelulstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu?
lstm_cell_16/mul_5Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_5?
lstm_cell_16/add_3AddV2lstm_cell_16/mul_4:z:0lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_3?
lstm_cell_16/ReadVariableOp_3ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_3?
"lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_16/strided_slice_3/stack?
$lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_16/strided_slice_3/stack_1?
$lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_3/stack_2?
lstm_cell_16/strided_slice_3StridedSlice%lstm_cell_16/ReadVariableOp_3:value:0+lstm_cell_16/strided_slice_3/stack:output:0-lstm_cell_16/strided_slice_3/stack_1:output:0-lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_3?
lstm_cell_16/MatMul_7MatMullstm_cell_16/mul_3:z:0%lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_7?
lstm_cell_16/add_4AddV2lstm_cell_16/BiasAdd_3:output:0lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_4?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_6Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_16_split_readvariableop_resource,lstm_cell_16_split_1_readvariableop_resource$lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_608484*
condR
while_cond_608483*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_16/ReadVariableOp^lstm_cell_16/ReadVariableOp_1^lstm_cell_16/ReadVariableOp_2^lstm_cell_16/ReadVariableOp_3"^lstm_cell_16/split/ReadVariableOp$^lstm_cell_16/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_16/ReadVariableOplstm_cell_16/ReadVariableOp2>
lstm_cell_16/ReadVariableOp_1lstm_cell_16/ReadVariableOp_12>
lstm_cell_16/ReadVariableOp_2lstm_cell_16/ReadVariableOp_22>
lstm_cell_16/ReadVariableOp_3lstm_cell_16/ReadVariableOp_32F
!lstm_cell_16/split/ReadVariableOp!lstm_cell_16/split/ReadVariableOp2J
#lstm_cell_16/split_1/ReadVariableOp#lstm_cell_16/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608342
inputs_0=
*lstm_cell_16_split_readvariableop_resource:	?;
,lstm_cell_16_split_1_readvariableop_resource:	?7
$lstm_cell_16_readvariableop_resource:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_16/ReadVariableOp?lstm_cell_16/ReadVariableOp_1?lstm_cell_16/ReadVariableOp_2?lstm_cell_16/ReadVariableOp_3?!lstm_cell_16/split/ReadVariableOp?#lstm_cell_16/split_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2z
lstm_cell_16/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_16/ones_like/Shape?
lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_16/ones_like/Const?
lstm_cell_16/ones_likeFill%lstm_cell_16/ones_like/Shape:output:0%lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/ones_like~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
!lstm_cell_16/split/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_16/split/ReadVariableOp?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0)lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_16/split?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul?
lstm_cell_16/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_1?
lstm_cell_16/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_2?
lstm_cell_16/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_3?
lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_16/split_1/split_dim?
#lstm_cell_16/split_1/ReadVariableOpReadVariableOp,lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_16/split_1/ReadVariableOp?
lstm_cell_16/split_1Split'lstm_cell_16/split_1/split_dim:output:0+lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_16/split_1?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/MatMul:product:0lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd?
lstm_cell_16/BiasAdd_1BiasAddlstm_cell_16/MatMul_1:product:0lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_1?
lstm_cell_16/BiasAdd_2BiasAddlstm_cell_16/MatMul_2:product:0lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_2?
lstm_cell_16/BiasAdd_3BiasAddlstm_cell_16/MatMul_3:product:0lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_3?
lstm_cell_16/mulMulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul?
lstm_cell_16/mul_1Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_1?
lstm_cell_16/mul_2Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_2?
lstm_cell_16/mul_3Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_3?
lstm_cell_16/ReadVariableOpReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp?
 lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_16/strided_slice/stack?
"lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice/stack_1?
"lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_16/strided_slice/stack_2?
lstm_cell_16/strided_sliceStridedSlice#lstm_cell_16/ReadVariableOp:value:0)lstm_cell_16/strided_slice/stack:output:0+lstm_cell_16/strided_slice/stack_1:output:0+lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice?
lstm_cell_16/MatMul_4MatMullstm_cell_16/mul:z:0#lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_4?
lstm_cell_16/addAddV2lstm_cell_16/BiasAdd:output:0lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add
lstm_cell_16/SigmoidSigmoidlstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid?
lstm_cell_16/ReadVariableOp_1ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_1?
"lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice_1/stack?
$lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_16/strided_slice_1/stack_1?
$lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_1/stack_2?
lstm_cell_16/strided_slice_1StridedSlice%lstm_cell_16/ReadVariableOp_1:value:0+lstm_cell_16/strided_slice_1/stack:output:0-lstm_cell_16/strided_slice_1/stack_1:output:0-lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_1?
lstm_cell_16/MatMul_5MatMullstm_cell_16/mul_1:z:0%lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_5?
lstm_cell_16/add_1AddV2lstm_cell_16/BiasAdd_1:output:0lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mul_4Mullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_4?
lstm_cell_16/ReadVariableOp_2ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_2?
"lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_16/strided_slice_2/stack?
$lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_16/strided_slice_2/stack_1?
$lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_2/stack_2?
lstm_cell_16/strided_slice_2StridedSlice%lstm_cell_16/ReadVariableOp_2:value:0+lstm_cell_16/strided_slice_2/stack:output:0-lstm_cell_16/strided_slice_2/stack_1:output:0-lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_2?
lstm_cell_16/MatMul_6MatMullstm_cell_16/mul_2:z:0%lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_6?
lstm_cell_16/add_2AddV2lstm_cell_16/BiasAdd_2:output:0lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_2x
lstm_cell_16/ReluRelulstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu?
lstm_cell_16/mul_5Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_5?
lstm_cell_16/add_3AddV2lstm_cell_16/mul_4:z:0lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_3?
lstm_cell_16/ReadVariableOp_3ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_3?
"lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_16/strided_slice_3/stack?
$lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_16/strided_slice_3/stack_1?
$lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_3/stack_2?
lstm_cell_16/strided_slice_3StridedSlice%lstm_cell_16/ReadVariableOp_3:value:0+lstm_cell_16/strided_slice_3/stack:output:0-lstm_cell_16/strided_slice_3/stack_1:output:0-lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_3?
lstm_cell_16/MatMul_7MatMullstm_cell_16/mul_3:z:0%lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_7?
lstm_cell_16/add_4AddV2lstm_cell_16/BiasAdd_3:output:0lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_4?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_6Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_16_split_readvariableop_resource,lstm_cell_16_split_1_readvariableop_resource$lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_608209*
condR
while_cond_608208*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_16/ReadVariableOp^lstm_cell_16/ReadVariableOp_1^lstm_cell_16/ReadVariableOp_2^lstm_cell_16/ReadVariableOp_3"^lstm_cell_16/split/ReadVariableOp$^lstm_cell_16/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_16/ReadVariableOplstm_cell_16/ReadVariableOp2>
lstm_cell_16/ReadVariableOp_1lstm_cell_16/ReadVariableOp_12>
lstm_cell_16/ReadVariableOp_2lstm_cell_16/ReadVariableOp_22>
lstm_cell_16/ReadVariableOp_3lstm_cell_16/ReadVariableOp_32F
!lstm_cell_16/split/ReadVariableOp!lstm_cell_16/split/ReadVariableOp2J
#lstm_cell_16/split_1/ReadVariableOp#lstm_cell_16/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?B
?
__inference__traced_save_609631
file_prefix.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableopD
@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop8
4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableop@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :  : : :: : : : : :	?:	 ?:?: : :  : : ::	?:	 ?:?:  : : ::	?:	 ?:?: 2(
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
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:
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
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:$ 

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
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: 
?
?
__inference_loss_fn_0_609279F
8dense_21_bias_regularizer_square_readvariableop_resource:
identity??/dense_21/bias/Regularizer/Square/ReadVariableOp?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_21_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mulk
IdentityIdentity!dense_21/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp0^dense_21/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp
?
?
-__inference_lstm_cell_16_layer_call_fn_609302

inputs
states_0
states_1
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_6058512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? 2

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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
while_cond_606626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_606626___redundant_placeholder04
0while_while_cond_606626___redundant_placeholder14
0while_while_cond_606626___redundant_placeholder24
0while_while_cond_606626___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
&sequential_7_lstm_16_while_cond_605577F
Bsequential_7_lstm_16_while_sequential_7_lstm_16_while_loop_counterL
Hsequential_7_lstm_16_while_sequential_7_lstm_16_while_maximum_iterations*
&sequential_7_lstm_16_while_placeholder,
(sequential_7_lstm_16_while_placeholder_1,
(sequential_7_lstm_16_while_placeholder_2,
(sequential_7_lstm_16_while_placeholder_3H
Dsequential_7_lstm_16_while_less_sequential_7_lstm_16_strided_slice_1^
Zsequential_7_lstm_16_while_sequential_7_lstm_16_while_cond_605577___redundant_placeholder0^
Zsequential_7_lstm_16_while_sequential_7_lstm_16_while_cond_605577___redundant_placeholder1^
Zsequential_7_lstm_16_while_sequential_7_lstm_16_while_cond_605577___redundant_placeholder2^
Zsequential_7_lstm_16_while_sequential_7_lstm_16_while_cond_605577___redundant_placeholder3'
#sequential_7_lstm_16_while_identity
?
sequential_7/lstm_16/while/LessLess&sequential_7_lstm_16_while_placeholderDsequential_7_lstm_16_while_less_sequential_7_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_7/lstm_16/while/Less?
#sequential_7/lstm_16/while/IdentityIdentity#sequential_7/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_7/lstm_16/while/Identity"S
#sequential_7_lstm_16_while_identity,sequential_7/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_609033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_609033___redundant_placeholder04
0while_while_cond_609033___redundant_placeholder14
0while_while_cond_609033___redundant_placeholder24
0while_while_cond_609033___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?R
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_605851

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_liked
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:????????? 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:????????? 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:????????? 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:????????? 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:????????? 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:????????? 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:????????? 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:????????? 2
	BiasAdd_3_
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:????????? 2
mulc
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_1c
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_2c
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
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
strided_slice/stack_2?
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
:????????? 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:????????? 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:????????? 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:????????? 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:????????? 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_6?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
??
?
!__inference__wrapped_model_605727
input_8R
?sequential_7_lstm_16_lstm_cell_16_split_readvariableop_resource:	?P
Asequential_7_lstm_16_lstm_cell_16_split_1_readvariableop_resource:	?L
9sequential_7_lstm_16_lstm_cell_16_readvariableop_resource:	 ?F
4sequential_7_dense_20_matmul_readvariableop_resource:  C
5sequential_7_dense_20_biasadd_readvariableop_resource: F
4sequential_7_dense_21_matmul_readvariableop_resource: C
5sequential_7_dense_21_biasadd_readvariableop_resource:
identity??,sequential_7/dense_20/BiasAdd/ReadVariableOp?+sequential_7/dense_20/MatMul/ReadVariableOp?,sequential_7/dense_21/BiasAdd/ReadVariableOp?+sequential_7/dense_21/MatMul/ReadVariableOp?0sequential_7/lstm_16/lstm_cell_16/ReadVariableOp?2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_1?2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_2?2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_3?6sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOp?8sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOp?sequential_7/lstm_16/whileo
sequential_7/lstm_16/ShapeShapeinput_8*
T0*
_output_shapes
:2
sequential_7/lstm_16/Shape?
(sequential_7/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_7/lstm_16/strided_slice/stack?
*sequential_7/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_7/lstm_16/strided_slice/stack_1?
*sequential_7/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_7/lstm_16/strided_slice/stack_2?
"sequential_7/lstm_16/strided_sliceStridedSlice#sequential_7/lstm_16/Shape:output:01sequential_7/lstm_16/strided_slice/stack:output:03sequential_7/lstm_16/strided_slice/stack_1:output:03sequential_7/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_7/lstm_16/strided_slice?
 sequential_7/lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential_7/lstm_16/zeros/mul/y?
sequential_7/lstm_16/zeros/mulMul+sequential_7/lstm_16/strided_slice:output:0)sequential_7/lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_7/lstm_16/zeros/mul?
!sequential_7/lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_7/lstm_16/zeros/Less/y?
sequential_7/lstm_16/zeros/LessLess"sequential_7/lstm_16/zeros/mul:z:0*sequential_7/lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_7/lstm_16/zeros/Less?
#sequential_7/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_7/lstm_16/zeros/packed/1?
!sequential_7/lstm_16/zeros/packedPack+sequential_7/lstm_16/strided_slice:output:0,sequential_7/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_7/lstm_16/zeros/packed?
 sequential_7/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_7/lstm_16/zeros/Const?
sequential_7/lstm_16/zerosFill*sequential_7/lstm_16/zeros/packed:output:0)sequential_7/lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_7/lstm_16/zeros?
"sequential_7/lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_7/lstm_16/zeros_1/mul/y?
 sequential_7/lstm_16/zeros_1/mulMul+sequential_7/lstm_16/strided_slice:output:0+sequential_7/lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_7/lstm_16/zeros_1/mul?
#sequential_7/lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_7/lstm_16/zeros_1/Less/y?
!sequential_7/lstm_16/zeros_1/LessLess$sequential_7/lstm_16/zeros_1/mul:z:0,sequential_7/lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_7/lstm_16/zeros_1/Less?
%sequential_7/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_7/lstm_16/zeros_1/packed/1?
#sequential_7/lstm_16/zeros_1/packedPack+sequential_7/lstm_16/strided_slice:output:0.sequential_7/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_7/lstm_16/zeros_1/packed?
"sequential_7/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_7/lstm_16/zeros_1/Const?
sequential_7/lstm_16/zeros_1Fill,sequential_7/lstm_16/zeros_1/packed:output:0+sequential_7/lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_7/lstm_16/zeros_1?
#sequential_7/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_7/lstm_16/transpose/perm?
sequential_7/lstm_16/transpose	Transposeinput_8,sequential_7/lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2 
sequential_7/lstm_16/transpose?
sequential_7/lstm_16/Shape_1Shape"sequential_7/lstm_16/transpose:y:0*
T0*
_output_shapes
:2
sequential_7/lstm_16/Shape_1?
*sequential_7/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_7/lstm_16/strided_slice_1/stack?
,sequential_7/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/lstm_16/strided_slice_1/stack_1?
,sequential_7/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/lstm_16/strided_slice_1/stack_2?
$sequential_7/lstm_16/strided_slice_1StridedSlice%sequential_7/lstm_16/Shape_1:output:03sequential_7/lstm_16/strided_slice_1/stack:output:05sequential_7/lstm_16/strided_slice_1/stack_1:output:05sequential_7/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_7/lstm_16/strided_slice_1?
0sequential_7/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_7/lstm_16/TensorArrayV2/element_shape?
"sequential_7/lstm_16/TensorArrayV2TensorListReserve9sequential_7/lstm_16/TensorArrayV2/element_shape:output:0-sequential_7/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_7/lstm_16/TensorArrayV2?
Jsequential_7/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jsequential_7/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_7/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_7/lstm_16/transpose:y:0Ssequential_7/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_7/lstm_16/TensorArrayUnstack/TensorListFromTensor?
*sequential_7/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_7/lstm_16/strided_slice_2/stack?
,sequential_7/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/lstm_16/strided_slice_2/stack_1?
,sequential_7/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/lstm_16/strided_slice_2/stack_2?
$sequential_7/lstm_16/strided_slice_2StridedSlice"sequential_7/lstm_16/transpose:y:03sequential_7/lstm_16/strided_slice_2/stack:output:05sequential_7/lstm_16/strided_slice_2/stack_1:output:05sequential_7/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_7/lstm_16/strided_slice_2?
1sequential_7/lstm_16/lstm_cell_16/ones_like/ShapeShape#sequential_7/lstm_16/zeros:output:0*
T0*
_output_shapes
:23
1sequential_7/lstm_16/lstm_cell_16/ones_like/Shape?
1sequential_7/lstm_16/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1sequential_7/lstm_16/lstm_cell_16/ones_like/Const?
+sequential_7/lstm_16/lstm_cell_16/ones_likeFill:sequential_7/lstm_16/lstm_cell_16/ones_like/Shape:output:0:sequential_7/lstm_16/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/lstm_cell_16/ones_like?
1sequential_7/lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_7/lstm_16/lstm_cell_16/split/split_dim?
6sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOpReadVariableOp?sequential_7_lstm_16_lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype028
6sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOp?
'sequential_7/lstm_16/lstm_cell_16/splitSplit:sequential_7/lstm_16/lstm_cell_16/split/split_dim:output:0>sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2)
'sequential_7/lstm_16/lstm_cell_16/split?
(sequential_7/lstm_16/lstm_cell_16/MatMulMatMul-sequential_7/lstm_16/strided_slice_2:output:00sequential_7/lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_7/lstm_16/lstm_cell_16/MatMul?
*sequential_7/lstm_16/lstm_cell_16/MatMul_1MatMul-sequential_7/lstm_16/strided_slice_2:output:00sequential_7/lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_1?
*sequential_7/lstm_16/lstm_cell_16/MatMul_2MatMul-sequential_7/lstm_16/strided_slice_2:output:00sequential_7/lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_2?
*sequential_7/lstm_16/lstm_cell_16/MatMul_3MatMul-sequential_7/lstm_16/strided_slice_2:output:00sequential_7/lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_3?
3sequential_7/lstm_16/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3sequential_7/lstm_16/lstm_cell_16/split_1/split_dim?
8sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOpReadVariableOpAsequential_7_lstm_16_lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOp?
)sequential_7/lstm_16/lstm_cell_16/split_1Split<sequential_7/lstm_16/lstm_cell_16/split_1/split_dim:output:0@sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2+
)sequential_7/lstm_16/lstm_cell_16/split_1?
)sequential_7/lstm_16/lstm_cell_16/BiasAddBiasAdd2sequential_7/lstm_16/lstm_cell_16/MatMul:product:02sequential_7/lstm_16/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_7/lstm_16/lstm_cell_16/BiasAdd?
+sequential_7/lstm_16/lstm_cell_16/BiasAdd_1BiasAdd4sequential_7/lstm_16/lstm_cell_16/MatMul_1:product:02sequential_7/lstm_16/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/lstm_cell_16/BiasAdd_1?
+sequential_7/lstm_16/lstm_cell_16/BiasAdd_2BiasAdd4sequential_7/lstm_16/lstm_cell_16/MatMul_2:product:02sequential_7/lstm_16/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/lstm_cell_16/BiasAdd_2?
+sequential_7/lstm_16/lstm_cell_16/BiasAdd_3BiasAdd4sequential_7/lstm_16/lstm_cell_16/MatMul_3:product:02sequential_7/lstm_16/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/lstm_cell_16/BiasAdd_3?
%sequential_7/lstm_16/lstm_cell_16/mulMul#sequential_7/lstm_16/zeros:output:04sequential_7/lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_7/lstm_16/lstm_cell_16/mul?
'sequential_7/lstm_16/lstm_cell_16/mul_1Mul#sequential_7/lstm_16/zeros:output:04sequential_7/lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/mul_1?
'sequential_7/lstm_16/lstm_cell_16/mul_2Mul#sequential_7/lstm_16/zeros:output:04sequential_7/lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/mul_2?
'sequential_7/lstm_16/lstm_cell_16/mul_3Mul#sequential_7/lstm_16/zeros:output:04sequential_7/lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/mul_3?
0sequential_7/lstm_16/lstm_cell_16/ReadVariableOpReadVariableOp9sequential_7_lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_7/lstm_16/lstm_cell_16/ReadVariableOp?
5sequential_7/lstm_16/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_7/lstm_16/lstm_cell_16/strided_slice/stack?
7sequential_7/lstm_16/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_7/lstm_16/lstm_cell_16/strided_slice/stack_1?
7sequential_7/lstm_16/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_7/lstm_16/lstm_cell_16/strided_slice/stack_2?
/sequential_7/lstm_16/lstm_cell_16/strided_sliceStridedSlice8sequential_7/lstm_16/lstm_cell_16/ReadVariableOp:value:0>sequential_7/lstm_16/lstm_cell_16/strided_slice/stack:output:0@sequential_7/lstm_16/lstm_cell_16/strided_slice/stack_1:output:0@sequential_7/lstm_16/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_7/lstm_16/lstm_cell_16/strided_slice?
*sequential_7/lstm_16/lstm_cell_16/MatMul_4MatMul)sequential_7/lstm_16/lstm_cell_16/mul:z:08sequential_7/lstm_16/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_4?
%sequential_7/lstm_16/lstm_cell_16/addAddV22sequential_7/lstm_16/lstm_cell_16/BiasAdd:output:04sequential_7/lstm_16/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_7/lstm_16/lstm_cell_16/add?
)sequential_7/lstm_16/lstm_cell_16/SigmoidSigmoid)sequential_7/lstm_16/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_7/lstm_16/lstm_cell_16/Sigmoid?
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_1ReadVariableOp9sequential_7_lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype024
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_1?
7sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack?
9sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2;
9sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack_1?
9sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack_2?
1sequential_7/lstm_16/lstm_cell_16/strided_slice_1StridedSlice:sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_1:value:0@sequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack:output:0Bsequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack_1:output:0Bsequential_7/lstm_16/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential_7/lstm_16/lstm_cell_16/strided_slice_1?
*sequential_7/lstm_16/lstm_cell_16/MatMul_5MatMul+sequential_7/lstm_16/lstm_cell_16/mul_1:z:0:sequential_7/lstm_16/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_5?
'sequential_7/lstm_16/lstm_cell_16/add_1AddV24sequential_7/lstm_16/lstm_cell_16/BiasAdd_1:output:04sequential_7/lstm_16/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/add_1?
+sequential_7/lstm_16/lstm_cell_16/Sigmoid_1Sigmoid+sequential_7/lstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/lstm_cell_16/Sigmoid_1?
'sequential_7/lstm_16/lstm_cell_16/mul_4Mul/sequential_7/lstm_16/lstm_cell_16/Sigmoid_1:y:0%sequential_7/lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/mul_4?
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_2ReadVariableOp9sequential_7_lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype024
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_2?
7sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack?
9sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2;
9sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack_1?
9sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack_2?
1sequential_7/lstm_16/lstm_cell_16/strided_slice_2StridedSlice:sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_2:value:0@sequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack:output:0Bsequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack_1:output:0Bsequential_7/lstm_16/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential_7/lstm_16/lstm_cell_16/strided_slice_2?
*sequential_7/lstm_16/lstm_cell_16/MatMul_6MatMul+sequential_7/lstm_16/lstm_cell_16/mul_2:z:0:sequential_7/lstm_16/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_6?
'sequential_7/lstm_16/lstm_cell_16/add_2AddV24sequential_7/lstm_16/lstm_cell_16/BiasAdd_2:output:04sequential_7/lstm_16/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/add_2?
&sequential_7/lstm_16/lstm_cell_16/ReluRelu+sequential_7/lstm_16/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2(
&sequential_7/lstm_16/lstm_cell_16/Relu?
'sequential_7/lstm_16/lstm_cell_16/mul_5Mul-sequential_7/lstm_16/lstm_cell_16/Sigmoid:y:04sequential_7/lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/mul_5?
'sequential_7/lstm_16/lstm_cell_16/add_3AddV2+sequential_7/lstm_16/lstm_cell_16/mul_4:z:0+sequential_7/lstm_16/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/add_3?
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_3ReadVariableOp9sequential_7_lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype024
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_3?
7sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   29
7sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack?
9sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack_1?
9sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack_2?
1sequential_7/lstm_16/lstm_cell_16/strided_slice_3StridedSlice:sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_3:value:0@sequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack:output:0Bsequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack_1:output:0Bsequential_7/lstm_16/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential_7/lstm_16/lstm_cell_16/strided_slice_3?
*sequential_7/lstm_16/lstm_cell_16/MatMul_7MatMul+sequential_7/lstm_16/lstm_cell_16/mul_3:z:0:sequential_7/lstm_16/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_7/lstm_16/lstm_cell_16/MatMul_7?
'sequential_7/lstm_16/lstm_cell_16/add_4AddV24sequential_7/lstm_16/lstm_cell_16/BiasAdd_3:output:04sequential_7/lstm_16/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/add_4?
+sequential_7/lstm_16/lstm_cell_16/Sigmoid_2Sigmoid+sequential_7/lstm_16/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/lstm_cell_16/Sigmoid_2?
(sequential_7/lstm_16/lstm_cell_16/Relu_1Relu+sequential_7/lstm_16/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_7/lstm_16/lstm_cell_16/Relu_1?
'sequential_7/lstm_16/lstm_cell_16/mul_6Mul/sequential_7/lstm_16/lstm_cell_16/Sigmoid_2:y:06sequential_7/lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2)
'sequential_7/lstm_16/lstm_cell_16/mul_6?
2sequential_7/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    24
2sequential_7/lstm_16/TensorArrayV2_1/element_shape?
$sequential_7/lstm_16/TensorArrayV2_1TensorListReserve;sequential_7/lstm_16/TensorArrayV2_1/element_shape:output:0-sequential_7/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_7/lstm_16/TensorArrayV2_1x
sequential_7/lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_7/lstm_16/time?
-sequential_7/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_7/lstm_16/while/maximum_iterations?
'sequential_7/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_7/lstm_16/while/loop_counter?
sequential_7/lstm_16/whileWhile0sequential_7/lstm_16/while/loop_counter:output:06sequential_7/lstm_16/while/maximum_iterations:output:0"sequential_7/lstm_16/time:output:0-sequential_7/lstm_16/TensorArrayV2_1:handle:0#sequential_7/lstm_16/zeros:output:0%sequential_7/lstm_16/zeros_1:output:0-sequential_7/lstm_16/strided_slice_1:output:0Lsequential_7/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_7_lstm_16_lstm_cell_16_split_readvariableop_resourceAsequential_7_lstm_16_lstm_cell_16_split_1_readvariableop_resource9sequential_7_lstm_16_lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_7_lstm_16_while_body_605578*2
cond*R(
&sequential_7_lstm_16_while_cond_605577*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_7/lstm_16/while?
Esequential_7/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2G
Esequential_7/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_7/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_7/lstm_16/while:output:3Nsequential_7/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype029
7sequential_7/lstm_16/TensorArrayV2Stack/TensorListStack?
*sequential_7/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_7/lstm_16/strided_slice_3/stack?
,sequential_7/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_7/lstm_16/strided_slice_3/stack_1?
,sequential_7/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_7/lstm_16/strided_slice_3/stack_2?
$sequential_7/lstm_16/strided_slice_3StridedSlice@sequential_7/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:03sequential_7/lstm_16/strided_slice_3/stack:output:05sequential_7/lstm_16/strided_slice_3/stack_1:output:05sequential_7/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2&
$sequential_7/lstm_16/strided_slice_3?
%sequential_7/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_7/lstm_16/transpose_1/perm?
 sequential_7/lstm_16/transpose_1	Transpose@sequential_7/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_7/lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2"
 sequential_7/lstm_16/transpose_1?
sequential_7/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_7/lstm_16/runtime?
+sequential_7/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_20_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential_7/dense_20/MatMul/ReadVariableOp?
sequential_7/dense_20/MatMulMatMul-sequential_7/lstm_16/strided_slice_3:output:03sequential_7/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_7/dense_20/MatMul?
,sequential_7/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_7/dense_20/BiasAdd/ReadVariableOp?
sequential_7/dense_20/BiasAddBiasAdd&sequential_7/dense_20/MatMul:product:04sequential_7/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_7/dense_20/BiasAdd?
sequential_7/dense_20/ReluRelu&sequential_7/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_7/dense_20/Relu?
+sequential_7/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_21_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_7/dense_21/MatMul/ReadVariableOp?
sequential_7/dense_21/MatMulMatMul(sequential_7/dense_20/Relu:activations:03sequential_7/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_21/MatMul?
,sequential_7/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_7/dense_21/BiasAdd/ReadVariableOp?
sequential_7/dense_21/BiasAddBiasAdd&sequential_7/dense_21/MatMul:product:04sequential_7/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_21/BiasAdd?
sequential_7/reshape_10/ShapeShape&sequential_7/dense_21/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential_7/reshape_10/Shape?
+sequential_7/reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_7/reshape_10/strided_slice/stack?
-sequential_7/reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_7/reshape_10/strided_slice/stack_1?
-sequential_7/reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_7/reshape_10/strided_slice/stack_2?
%sequential_7/reshape_10/strided_sliceStridedSlice&sequential_7/reshape_10/Shape:output:04sequential_7/reshape_10/strided_slice/stack:output:06sequential_7/reshape_10/strided_slice/stack_1:output:06sequential_7/reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_7/reshape_10/strided_slice?
'sequential_7/reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_7/reshape_10/Reshape/shape/1?
'sequential_7/reshape_10/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_7/reshape_10/Reshape/shape/2?
%sequential_7/reshape_10/Reshape/shapePack.sequential_7/reshape_10/strided_slice:output:00sequential_7/reshape_10/Reshape/shape/1:output:00sequential_7/reshape_10/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/reshape_10/Reshape/shape?
sequential_7/reshape_10/ReshapeReshape&sequential_7/dense_21/BiasAdd:output:0.sequential_7/reshape_10/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2!
sequential_7/reshape_10/Reshape?
IdentityIdentity(sequential_7/reshape_10/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp-^sequential_7/dense_20/BiasAdd/ReadVariableOp,^sequential_7/dense_20/MatMul/ReadVariableOp-^sequential_7/dense_21/BiasAdd/ReadVariableOp,^sequential_7/dense_21/MatMul/ReadVariableOp1^sequential_7/lstm_16/lstm_cell_16/ReadVariableOp3^sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_13^sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_23^sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_37^sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOp9^sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOp^sequential_7/lstm_16/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2\
,sequential_7/dense_20/BiasAdd/ReadVariableOp,sequential_7/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_20/MatMul/ReadVariableOp+sequential_7/dense_20/MatMul/ReadVariableOp2\
,sequential_7/dense_21/BiasAdd/ReadVariableOp,sequential_7/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_21/MatMul/ReadVariableOp+sequential_7/dense_21/MatMul/ReadVariableOp2d
0sequential_7/lstm_16/lstm_cell_16/ReadVariableOp0sequential_7/lstm_16/lstm_cell_16/ReadVariableOp2h
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_12sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_12h
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_22sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_22h
2sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_32sequential_7/lstm_16/lstm_cell_16/ReadVariableOp_32p
6sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOp6sequential_7/lstm_16/lstm_cell_16/split/ReadVariableOp2t
8sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOp8sequential_7/lstm_16/lstm_cell_16/split_1/ReadVariableOp28
sequential_7/lstm_16/whilesequential_7/lstm_16/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
?
?
while_cond_607032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_607032___redundant_placeholder04
0while_while_cond_607032___redundant_placeholder14
0while_while_cond_607032___redundant_placeholder24
0while_while_cond_607032___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
?
__inference_loss_fn_1_609524Y
Flstm_16_lstm_cell_16_kernel_regularizer_square_readvariableop_resource:	?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_16_lstm_cell_16_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muly
IdentityIdentity/lstm_16/lstm_cell_16/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp
?
?
)__inference_dense_21_layer_call_fn_609234

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_6068012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_lstm_16_layer_call_fn_608066
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6059402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
G
+__inference_reshape_10_layer_call_fn_609255

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_6068202
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?v
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_606084

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ν?2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ͫ?2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Mul_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:????????? 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:????????? 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:????????? 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:????????? 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:????????? 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:????????? 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:????????? 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:????????? 2
	BiasAdd_3^
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
muld
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_1d
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
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
strided_slice/stack_2?
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
:????????? 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:????????? 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:????????? 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:????????? 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:????????? 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_6?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?
?
D__inference_dense_21_layer_call_and_return_conditional_losses_609250

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_21/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_21/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
D__inference_dense_20_layer_call_and_return_conditional_losses_606779

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?	
while_body_606627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_16_split_readvariableop_resource_0:	?C
4while_lstm_cell_16_split_1_readvariableop_resource_0:	??
,while_lstm_cell_16_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_16_split_readvariableop_resource:	?A
2while_lstm_cell_16_split_1_readvariableop_resource:	?=
*while_lstm_cell_16_readvariableop_resource:	 ???!while/lstm_cell_16/ReadVariableOp?#while/lstm_cell_16/ReadVariableOp_1?#while/lstm_cell_16/ReadVariableOp_2?#while/lstm_cell_16/ReadVariableOp_3?'while/lstm_cell_16/split/ReadVariableOp?)while/lstm_cell_16/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_16/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_16/ones_like/Shape?
"while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_16/ones_like/Const?
while/lstm_cell_16/ones_likeFill+while/lstm_cell_16/ones_like/Shape:output:0+while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/ones_like?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
'while/lstm_cell_16/split/ReadVariableOpReadVariableOp2while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_16/split/ReadVariableOp?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul?
while/lstm_cell_16/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_2?
while/lstm_cell_16/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_3?
$while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_16/split_1/split_dim?
)while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_16/split_1/ReadVariableOp?
while/lstm_cell_16/split_1Split-while/lstm_cell_16/split_1/split_dim:output:01while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_16/split_1?
while/lstm_cell_16/BiasAddBiasAdd#while/lstm_cell_16/MatMul:product:0#while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd?
while/lstm_cell_16/BiasAdd_1BiasAdd%while/lstm_cell_16/MatMul_1:product:0#while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_1?
while/lstm_cell_16/BiasAdd_2BiasAdd%while/lstm_cell_16/MatMul_2:product:0#while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_2?
while/lstm_cell_16/BiasAdd_3BiasAdd%while/lstm_cell_16/MatMul_3:product:0#while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/BiasAdd_3?
while/lstm_cell_16/mulMulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul?
while/lstm_cell_16/mul_1Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/mul_2Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_2?
while/lstm_cell_16/mul_3Mulwhile_placeholder_2%while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_3?
!while/lstm_cell_16/ReadVariableOpReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_16/ReadVariableOp?
&while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_16/strided_slice/stack?
(while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice/stack_1?
(while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_16/strided_slice/stack_2?
 while/lstm_cell_16/strided_sliceStridedSlice)while/lstm_cell_16/ReadVariableOp:value:0/while/lstm_cell_16/strided_slice/stack:output:01while/lstm_cell_16/strided_slice/stack_1:output:01while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_16/strided_slice?
while/lstm_cell_16/MatMul_4MatMulwhile/lstm_cell_16/mul:z:0)while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_4?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/BiasAdd:output:0%while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add?
while/lstm_cell_16/SigmoidSigmoidwhile/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid?
#while/lstm_cell_16/ReadVariableOp_1ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_1?
(while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_16/strided_slice_1/stack?
*while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_16/strided_slice_1/stack_1?
*while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_1/stack_2?
"while/lstm_cell_16/strided_slice_1StridedSlice+while/lstm_cell_16/ReadVariableOp_1:value:01while/lstm_cell_16/strided_slice_1/stack:output:03while/lstm_cell_16/strided_slice_1/stack_1:output:03while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_1?
while/lstm_cell_16/MatMul_5MatMulwhile/lstm_cell_16/mul_1:z:0+while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_5?
while/lstm_cell_16/add_1AddV2%while/lstm_cell_16/BiasAdd_1:output:0%while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_1Sigmoidwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mul_4Mul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_4?
#while/lstm_cell_16/ReadVariableOp_2ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_2?
(while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_16/strided_slice_2/stack?
*while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_16/strided_slice_2/stack_1?
*while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_2/stack_2?
"while/lstm_cell_16/strided_slice_2StridedSlice+while/lstm_cell_16/ReadVariableOp_2:value:01while/lstm_cell_16/strided_slice_2/stack:output:03while/lstm_cell_16/strided_slice_2/stack_1:output:03while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_2?
while/lstm_cell_16/MatMul_6MatMulwhile/lstm_cell_16/mul_2:z:0+while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_6?
while/lstm_cell_16/add_2AddV2%while/lstm_cell_16/BiasAdd_2:output:0%while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_2?
while/lstm_cell_16/ReluReluwhile/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_5Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_5?
while/lstm_cell_16/add_3AddV2while/lstm_cell_16/mul_4:z:0while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_3?
#while/lstm_cell_16/ReadVariableOp_3ReadVariableOp,while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_16/ReadVariableOp_3?
(while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_16/strided_slice_3/stack?
*while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_16/strided_slice_3/stack_1?
*while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_16/strided_slice_3/stack_2?
"while/lstm_cell_16/strided_slice_3StridedSlice+while/lstm_cell_16/ReadVariableOp_3:value:01while/lstm_cell_16/strided_slice_3/stack:output:03while/lstm_cell_16/strided_slice_3/stack_1:output:03while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_16/strided_slice_3?
while/lstm_cell_16/MatMul_7MatMulwhile/lstm_cell_16/mul_3:z:0+while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/MatMul_7?
while/lstm_cell_16/add_4AddV2%while/lstm_cell_16/BiasAdd_3:output:0%while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/add_4?
while/lstm_cell_16/Sigmoid_2Sigmoidwhile/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_6Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_16/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_6:z:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_16/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_16/ReadVariableOp$^while/lstm_cell_16/ReadVariableOp_1$^while/lstm_cell_16/ReadVariableOp_2$^while/lstm_cell_16/ReadVariableOp_3(^while/lstm_cell_16/split/ReadVariableOp*^while/lstm_cell_16/split_1/ReadVariableOp*"
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
*while_lstm_cell_16_readvariableop_resource,while_lstm_cell_16_readvariableop_resource_0"j
2while_lstm_cell_16_split_1_readvariableop_resource4while_lstm_cell_16_split_1_readvariableop_resource_0"f
0while_lstm_cell_16_split_readvariableop_resource2while_lstm_cell_16_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_16/ReadVariableOp!while/lstm_cell_16/ReadVariableOp2J
#while/lstm_cell_16/ReadVariableOp_1#while/lstm_cell_16/ReadVariableOp_12J
#while/lstm_cell_16/ReadVariableOp_2#while/lstm_cell_16/ReadVariableOp_22J
#while/lstm_cell_16/ReadVariableOp_3#while/lstm_cell_16/ReadVariableOp_32R
'while/lstm_cell_16/split/ReadVariableOp'while/lstm_cell_16/split/ReadVariableOp2V
)while/lstm_cell_16/split_1/ReadVariableOp)while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_608758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_608758___redundant_placeholder04
0while_while_cond_608758___redundant_placeholder14
0while_while_cond_608758___redundant_placeholder24
0while_while_cond_608758___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_607198

inputs=
*lstm_cell_16_split_readvariableop_resource:	?;
,lstm_cell_16_split_1_readvariableop_resource:	?7
$lstm_cell_16_readvariableop_resource:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_16/ReadVariableOp?lstm_cell_16/ReadVariableOp_1?lstm_cell_16/ReadVariableOp_2?lstm_cell_16/ReadVariableOp_3?!lstm_cell_16/split/ReadVariableOp?#lstm_cell_16/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2z
lstm_cell_16/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_16/ones_like/Shape?
lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_16/ones_like/Const?
lstm_cell_16/ones_likeFill%lstm_cell_16/ones_like/Shape:output:0%lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/ones_like}
lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout/Const?
lstm_cell_16/dropout/MulMullstm_cell_16/ones_like:output:0#lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Mul?
lstm_cell_16/dropout/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout/Shape?
1lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_16/dropout/random_uniform/RandomUniform?
#lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_16/dropout/GreaterEqual/y?
!lstm_cell_16/dropout/GreaterEqualGreaterEqual:lstm_cell_16/dropout/random_uniform/RandomUniform:output:0,lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_16/dropout/GreaterEqual?
lstm_cell_16/dropout/CastCast%lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Cast?
lstm_cell_16/dropout/Mul_1Mullstm_cell_16/dropout/Mul:z:0lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Mul_1?
lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_1/Const?
lstm_cell_16/dropout_1/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Mul?
lstm_cell_16/dropout_1/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_1/Shape?
3lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_1/random_uniform/RandomUniform?
%lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_1/GreaterEqual/y?
#lstm_cell_16/dropout_1/GreaterEqualGreaterEqual<lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_1/GreaterEqual?
lstm_cell_16/dropout_1/CastCast'lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Cast?
lstm_cell_16/dropout_1/Mul_1Mullstm_cell_16/dropout_1/Mul:z:0lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Mul_1?
lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_2/Const?
lstm_cell_16/dropout_2/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Mul?
lstm_cell_16/dropout_2/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_2/Shape?
3lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_2/random_uniform/RandomUniform?
%lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_2/GreaterEqual/y?
#lstm_cell_16/dropout_2/GreaterEqualGreaterEqual<lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_2/GreaterEqual?
lstm_cell_16/dropout_2/CastCast'lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Cast?
lstm_cell_16/dropout_2/Mul_1Mullstm_cell_16/dropout_2/Mul:z:0lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Mul_1?
lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_3/Const?
lstm_cell_16/dropout_3/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Mul?
lstm_cell_16/dropout_3/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_3/Shape?
3lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_3/random_uniform/RandomUniform?
%lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_3/GreaterEqual/y?
#lstm_cell_16/dropout_3/GreaterEqualGreaterEqual<lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_3/GreaterEqual?
lstm_cell_16/dropout_3/CastCast'lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Cast?
lstm_cell_16/dropout_3/Mul_1Mullstm_cell_16/dropout_3/Mul:z:0lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Mul_1~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
!lstm_cell_16/split/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_16/split/ReadVariableOp?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0)lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_16/split?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul?
lstm_cell_16/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_1?
lstm_cell_16/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_2?
lstm_cell_16/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_3?
lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_16/split_1/split_dim?
#lstm_cell_16/split_1/ReadVariableOpReadVariableOp,lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_16/split_1/ReadVariableOp?
lstm_cell_16/split_1Split'lstm_cell_16/split_1/split_dim:output:0+lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_16/split_1?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/MatMul:product:0lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd?
lstm_cell_16/BiasAdd_1BiasAddlstm_cell_16/MatMul_1:product:0lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_1?
lstm_cell_16/BiasAdd_2BiasAddlstm_cell_16/MatMul_2:product:0lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_2?
lstm_cell_16/BiasAdd_3BiasAddlstm_cell_16/MatMul_3:product:0lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_3?
lstm_cell_16/mulMulzeros:output:0lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul?
lstm_cell_16/mul_1Mulzeros:output:0 lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_1?
lstm_cell_16/mul_2Mulzeros:output:0 lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_2?
lstm_cell_16/mul_3Mulzeros:output:0 lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_3?
lstm_cell_16/ReadVariableOpReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp?
 lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_16/strided_slice/stack?
"lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice/stack_1?
"lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_16/strided_slice/stack_2?
lstm_cell_16/strided_sliceStridedSlice#lstm_cell_16/ReadVariableOp:value:0)lstm_cell_16/strided_slice/stack:output:0+lstm_cell_16/strided_slice/stack_1:output:0+lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice?
lstm_cell_16/MatMul_4MatMullstm_cell_16/mul:z:0#lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_4?
lstm_cell_16/addAddV2lstm_cell_16/BiasAdd:output:0lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add
lstm_cell_16/SigmoidSigmoidlstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid?
lstm_cell_16/ReadVariableOp_1ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_1?
"lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice_1/stack?
$lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_16/strided_slice_1/stack_1?
$lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_1/stack_2?
lstm_cell_16/strided_slice_1StridedSlice%lstm_cell_16/ReadVariableOp_1:value:0+lstm_cell_16/strided_slice_1/stack:output:0-lstm_cell_16/strided_slice_1/stack_1:output:0-lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_1?
lstm_cell_16/MatMul_5MatMullstm_cell_16/mul_1:z:0%lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_5?
lstm_cell_16/add_1AddV2lstm_cell_16/BiasAdd_1:output:0lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mul_4Mullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_4?
lstm_cell_16/ReadVariableOp_2ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_2?
"lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_16/strided_slice_2/stack?
$lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_16/strided_slice_2/stack_1?
$lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_2/stack_2?
lstm_cell_16/strided_slice_2StridedSlice%lstm_cell_16/ReadVariableOp_2:value:0+lstm_cell_16/strided_slice_2/stack:output:0-lstm_cell_16/strided_slice_2/stack_1:output:0-lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_2?
lstm_cell_16/MatMul_6MatMullstm_cell_16/mul_2:z:0%lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_6?
lstm_cell_16/add_2AddV2lstm_cell_16/BiasAdd_2:output:0lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_2x
lstm_cell_16/ReluRelulstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu?
lstm_cell_16/mul_5Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_5?
lstm_cell_16/add_3AddV2lstm_cell_16/mul_4:z:0lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_3?
lstm_cell_16/ReadVariableOp_3ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_3?
"lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_16/strided_slice_3/stack?
$lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_16/strided_slice_3/stack_1?
$lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_3/stack_2?
lstm_cell_16/strided_slice_3StridedSlice%lstm_cell_16/ReadVariableOp_3:value:0+lstm_cell_16/strided_slice_3/stack:output:0-lstm_cell_16/strided_slice_3/stack_1:output:0-lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_3?
lstm_cell_16/MatMul_7MatMullstm_cell_16/mul_3:z:0%lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_7?
lstm_cell_16/add_4AddV2lstm_cell_16/BiasAdd_3:output:0lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_4?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_6Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_16_split_readvariableop_resource,lstm_cell_16_split_1_readvariableop_resource$lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_607033*
condR
while_cond_607032*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_16/ReadVariableOp^lstm_cell_16/ReadVariableOp_1^lstm_cell_16/ReadVariableOp_2^lstm_cell_16/ReadVariableOp_3"^lstm_cell_16/split/ReadVariableOp$^lstm_cell_16/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_16/ReadVariableOplstm_cell_16/ReadVariableOp2>
lstm_cell_16/ReadVariableOp_1lstm_cell_16/ReadVariableOp_12>
lstm_cell_16/ReadVariableOp_2lstm_cell_16/ReadVariableOp_22>
lstm_cell_16/ReadVariableOp_3lstm_cell_16/ReadVariableOp_32F
!lstm_cell_16/split/ReadVariableOp!lstm_cell_16/split/ReadVariableOp2J
#lstm_cell_16/split_1/ReadVariableOp#lstm_cell_16/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ƶ
?
&sequential_7_lstm_16_while_body_605578F
Bsequential_7_lstm_16_while_sequential_7_lstm_16_while_loop_counterL
Hsequential_7_lstm_16_while_sequential_7_lstm_16_while_maximum_iterations*
&sequential_7_lstm_16_while_placeholder,
(sequential_7_lstm_16_while_placeholder_1,
(sequential_7_lstm_16_while_placeholder_2,
(sequential_7_lstm_16_while_placeholder_3E
Asequential_7_lstm_16_while_sequential_7_lstm_16_strided_slice_1_0?
}sequential_7_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_16_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_7_lstm_16_while_lstm_cell_16_split_readvariableop_resource_0:	?X
Isequential_7_lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0:	?T
Asequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource_0:	 ?'
#sequential_7_lstm_16_while_identity)
%sequential_7_lstm_16_while_identity_1)
%sequential_7_lstm_16_while_identity_2)
%sequential_7_lstm_16_while_identity_3)
%sequential_7_lstm_16_while_identity_4)
%sequential_7_lstm_16_while_identity_5C
?sequential_7_lstm_16_while_sequential_7_lstm_16_strided_slice_1
{sequential_7_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_16_tensorarrayunstack_tensorlistfromtensorX
Esequential_7_lstm_16_while_lstm_cell_16_split_readvariableop_resource:	?V
Gsequential_7_lstm_16_while_lstm_cell_16_split_1_readvariableop_resource:	?R
?sequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource:	 ???6sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp?8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_1?8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_2?8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_3?<sequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOp?>sequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOp?
Lsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_7_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_16_tensorarrayunstack_tensorlistfromtensor_0&sequential_7_lstm_16_while_placeholderUsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02@
>sequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem?
7sequential_7/lstm_16/while/lstm_cell_16/ones_like/ShapeShape(sequential_7_lstm_16_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_7/lstm_16/while/lstm_cell_16/ones_like/Shape?
7sequential_7/lstm_16/while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_7/lstm_16/while/lstm_cell_16/ones_like/Const?
1sequential_7/lstm_16/while/lstm_cell_16/ones_likeFill@sequential_7/lstm_16/while/lstm_cell_16/ones_like/Shape:output:0@sequential_7/lstm_16/while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_7/lstm_16/while/lstm_cell_16/ones_like?
7sequential_7/lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_7/lstm_16/while/lstm_cell_16/split/split_dim?
<sequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOpReadVariableOpGsequential_7_lstm_16_while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02>
<sequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOp?
-sequential_7/lstm_16/while/lstm_cell_16/splitSplit@sequential_7/lstm_16/while/lstm_cell_16/split/split_dim:output:0Dsequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2/
-sequential_7/lstm_16/while/lstm_cell_16/split?
.sequential_7/lstm_16/while/lstm_cell_16/MatMulMatMulEsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_7/lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_7/lstm_16/while/lstm_cell_16/MatMul?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_1MatMulEsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_7/lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_1?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_2MatMulEsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_7/lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_2?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_3MatMulEsequential_7/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_7/lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_3?
9sequential_7/lstm_16/while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2;
9sequential_7/lstm_16/while/lstm_cell_16/split_1/split_dim?
>sequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOpReadVariableOpIsequential_7_lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02@
>sequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOp?
/sequential_7/lstm_16/while/lstm_cell_16/split_1SplitBsequential_7/lstm_16/while/lstm_cell_16/split_1/split_dim:output:0Fsequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split21
/sequential_7/lstm_16/while/lstm_cell_16/split_1?
/sequential_7/lstm_16/while/lstm_cell_16/BiasAddBiasAdd8sequential_7/lstm_16/while/lstm_cell_16/MatMul:product:08sequential_7/lstm_16/while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_7/lstm_16/while/lstm_cell_16/BiasAdd?
1sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_1BiasAdd:sequential_7/lstm_16/while/lstm_cell_16/MatMul_1:product:08sequential_7/lstm_16/while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 23
1sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_1?
1sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_2BiasAdd:sequential_7/lstm_16/while/lstm_cell_16/MatMul_2:product:08sequential_7/lstm_16/while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 23
1sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_2?
1sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_3BiasAdd:sequential_7/lstm_16/while/lstm_cell_16/MatMul_3:product:08sequential_7/lstm_16/while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 23
1sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_3?
+sequential_7/lstm_16/while/lstm_cell_16/mulMul(sequential_7_lstm_16_while_placeholder_2:sequential_7/lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/while/lstm_cell_16/mul?
-sequential_7/lstm_16/while/lstm_cell_16/mul_1Mul(sequential_7_lstm_16_while_placeholder_2:sequential_7/lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/mul_1?
-sequential_7/lstm_16/while/lstm_cell_16/mul_2Mul(sequential_7_lstm_16_while_placeholder_2:sequential_7/lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/mul_2?
-sequential_7/lstm_16/while/lstm_cell_16/mul_3Mul(sequential_7_lstm_16_while_placeholder_2:sequential_7/lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/mul_3?
6sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOpReadVariableOpAsequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp?
;sequential_7/lstm_16/while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack_1?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack_2?
5sequential_7/lstm_16/while/lstm_cell_16/strided_sliceStridedSlice>sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp:value:0Dsequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack:output:0Fsequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack_1:output:0Fsequential_7/lstm_16/while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_7/lstm_16/while/lstm_cell_16/strided_slice?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_4MatMul/sequential_7/lstm_16/while/lstm_cell_16/mul:z:0>sequential_7/lstm_16/while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_4?
+sequential_7/lstm_16/while/lstm_cell_16/addAddV28sequential_7/lstm_16/while/lstm_cell_16/BiasAdd:output:0:sequential_7/lstm_16/while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_7/lstm_16/while/lstm_cell_16/add?
/sequential_7/lstm_16/while/lstm_cell_16/SigmoidSigmoid/sequential_7/lstm_16/while/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_7/lstm_16/while/lstm_cell_16/Sigmoid?
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_1ReadVariableOpAsequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02:
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_1?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack?
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2A
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack_1?
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack_2?
7sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1StridedSlice@sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_1:value:0Fsequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack:output:0Hsequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack_1:output:0Hsequential_7/lstm_16/while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask29
7sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_5MatMul1sequential_7/lstm_16/while/lstm_cell_16/mul_1:z:0@sequential_7/lstm_16/while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_5?
-sequential_7/lstm_16/while/lstm_cell_16/add_1AddV2:sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_1:output:0:sequential_7/lstm_16/while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/add_1?
1sequential_7/lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid1sequential_7/lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 23
1sequential_7/lstm_16/while/lstm_cell_16/Sigmoid_1?
-sequential_7/lstm_16/while/lstm_cell_16/mul_4Mul5sequential_7/lstm_16/while/lstm_cell_16/Sigmoid_1:y:0(sequential_7_lstm_16_while_placeholder_3*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/mul_4?
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_2ReadVariableOpAsequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02:
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_2?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack?
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2A
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack_1?
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack_2?
7sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2StridedSlice@sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_2:value:0Fsequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack:output:0Hsequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack_1:output:0Hsequential_7/lstm_16/while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask29
7sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_6MatMul1sequential_7/lstm_16/while/lstm_cell_16/mul_2:z:0@sequential_7/lstm_16/while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_6?
-sequential_7/lstm_16/while/lstm_cell_16/add_2AddV2:sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_2:output:0:sequential_7/lstm_16/while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/add_2?
,sequential_7/lstm_16/while/lstm_cell_16/ReluRelu1sequential_7/lstm_16/while/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_7/lstm_16/while/lstm_cell_16/Relu?
-sequential_7/lstm_16/while/lstm_cell_16/mul_5Mul3sequential_7/lstm_16/while/lstm_cell_16/Sigmoid:y:0:sequential_7/lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/mul_5?
-sequential_7/lstm_16/while/lstm_cell_16/add_3AddV21sequential_7/lstm_16/while/lstm_cell_16/mul_4:z:01sequential_7/lstm_16/while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/add_3?
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_3ReadVariableOpAsequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02:
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_3?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2?
=sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack?
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2A
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack_1?
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack_2?
7sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3StridedSlice@sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_3:value:0Fsequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack:output:0Hsequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack_1:output:0Hsequential_7/lstm_16/while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask29
7sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3?
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_7MatMul1sequential_7/lstm_16/while/lstm_cell_16/mul_3:z:0@sequential_7/lstm_16/while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_7/lstm_16/while/lstm_cell_16/MatMul_7?
-sequential_7/lstm_16/while/lstm_cell_16/add_4AddV2:sequential_7/lstm_16/while/lstm_cell_16/BiasAdd_3:output:0:sequential_7/lstm_16/while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/add_4?
1sequential_7/lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid1sequential_7/lstm_16/while/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 23
1sequential_7/lstm_16/while/lstm_cell_16/Sigmoid_2?
.sequential_7/lstm_16/while/lstm_cell_16/Relu_1Relu1sequential_7/lstm_16/while/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_7/lstm_16/while/lstm_cell_16/Relu_1?
-sequential_7/lstm_16/while/lstm_cell_16/mul_6Mul5sequential_7/lstm_16/while/lstm_cell_16/Sigmoid_2:y:0<sequential_7/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2/
-sequential_7/lstm_16/while/lstm_cell_16/mul_6?
?sequential_7/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_7_lstm_16_while_placeholder_1&sequential_7_lstm_16_while_placeholder1sequential_7/lstm_16/while/lstm_cell_16/mul_6:z:0*
_output_shapes
: *
element_dtype02A
?sequential_7/lstm_16/while/TensorArrayV2Write/TensorListSetItem?
 sequential_7/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_7/lstm_16/while/add/y?
sequential_7/lstm_16/while/addAddV2&sequential_7_lstm_16_while_placeholder)sequential_7/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_7/lstm_16/while/add?
"sequential_7/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_7/lstm_16/while/add_1/y?
 sequential_7/lstm_16/while/add_1AddV2Bsequential_7_lstm_16_while_sequential_7_lstm_16_while_loop_counter+sequential_7/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_7/lstm_16/while/add_1?
#sequential_7/lstm_16/while/IdentityIdentity$sequential_7/lstm_16/while/add_1:z:0 ^sequential_7/lstm_16/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_7/lstm_16/while/Identity?
%sequential_7/lstm_16/while/Identity_1IdentityHsequential_7_lstm_16_while_sequential_7_lstm_16_while_maximum_iterations ^sequential_7/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_7/lstm_16/while/Identity_1?
%sequential_7/lstm_16/while/Identity_2Identity"sequential_7/lstm_16/while/add:z:0 ^sequential_7/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_7/lstm_16/while/Identity_2?
%sequential_7/lstm_16/while/Identity_3IdentityOsequential_7/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_7/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_7/lstm_16/while/Identity_3?
%sequential_7/lstm_16/while/Identity_4Identity1sequential_7/lstm_16/while/lstm_cell_16/mul_6:z:0 ^sequential_7/lstm_16/while/NoOp*
T0*'
_output_shapes
:????????? 2'
%sequential_7/lstm_16/while/Identity_4?
%sequential_7/lstm_16/while/Identity_5Identity1sequential_7/lstm_16/while/lstm_cell_16/add_3:z:0 ^sequential_7/lstm_16/while/NoOp*
T0*'
_output_shapes
:????????? 2'
%sequential_7/lstm_16/while/Identity_5?
sequential_7/lstm_16/while/NoOpNoOp7^sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp9^sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_19^sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_29^sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_3=^sequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOp?^sequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_7/lstm_16/while/NoOp"S
#sequential_7_lstm_16_while_identity,sequential_7/lstm_16/while/Identity:output:0"W
%sequential_7_lstm_16_while_identity_1.sequential_7/lstm_16/while/Identity_1:output:0"W
%sequential_7_lstm_16_while_identity_2.sequential_7/lstm_16/while/Identity_2:output:0"W
%sequential_7_lstm_16_while_identity_3.sequential_7/lstm_16/while/Identity_3:output:0"W
%sequential_7_lstm_16_while_identity_4.sequential_7/lstm_16/while/Identity_4:output:0"W
%sequential_7_lstm_16_while_identity_5.sequential_7/lstm_16/while/Identity_5:output:0"?
?sequential_7_lstm_16_while_lstm_cell_16_readvariableop_resourceAsequential_7_lstm_16_while_lstm_cell_16_readvariableop_resource_0"?
Gsequential_7_lstm_16_while_lstm_cell_16_split_1_readvariableop_resourceIsequential_7_lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0"?
Esequential_7_lstm_16_while_lstm_cell_16_split_readvariableop_resourceGsequential_7_lstm_16_while_lstm_cell_16_split_readvariableop_resource_0"?
?sequential_7_lstm_16_while_sequential_7_lstm_16_strided_slice_1Asequential_7_lstm_16_while_sequential_7_lstm_16_strided_slice_1_0"?
{sequential_7_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_16_tensorarrayunstack_tensorlistfromtensor}sequential_7_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2p
6sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp6sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp2t
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_18sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_12t
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_28sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_22t
8sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_38sequential_7/lstm_16/while/lstm_cell_16/ReadVariableOp_32|
<sequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOp<sequential_7/lstm_16/while/lstm_cell_16/split/ReadVariableOp2?
>sequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOp>sequential_7/lstm_16/while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_16_layer_call_fn_608099

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6071982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_606237

inputs&
lstm_cell_16_606149:	?"
lstm_cell_16_606151:	?&
lstm_cell_16_606153:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_16/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_606149lstm_cell_16_606151lstm_cell_16_606153*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_6060842&
$lstm_cell_16/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_606149lstm_cell_16_606151lstm_cell_16_606153*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_606162*
condR
while_cond_606161*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_16_606149*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?%
?
while_body_606162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_16_606186_0:	?*
while_lstm_cell_16_606188_0:	?.
while_lstm_cell_16_606190_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_16_606186:	?(
while_lstm_cell_16_606188:	?,
while_lstm_cell_16_606190:	 ???*while/lstm_cell_16/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_606186_0while_lstm_cell_16_606188_0while_lstm_cell_16_606190_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_6060842,
*while/lstm_cell_16/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
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
while_lstm_cell_16_606186while_lstm_cell_16_606186_0"8
while_lstm_cell_16_606188while_lstm_cell_16_606188_0"8
while_lstm_cell_16_606190while_lstm_cell_16_606190_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?	
?
$__inference_signature_wrapper_607405
input_8
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_6057272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
?	
?
-__inference_sequential_7_layer_call_fn_607298
input_8
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6072622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
??
?
lstm_16_while_body_607553,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_16_while_lstm_cell_16_split_readvariableop_resource_0:	?K
<lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0:	?G
4lstm_16_while_lstm_cell_16_readvariableop_resource_0:	 ?
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorK
8lstm_16_while_lstm_cell_16_split_readvariableop_resource:	?I
:lstm_16_while_lstm_cell_16_split_1_readvariableop_resource:	?E
2lstm_16_while_lstm_cell_16_readvariableop_resource:	 ???)lstm_16/while/lstm_cell_16/ReadVariableOp?+lstm_16/while/lstm_cell_16/ReadVariableOp_1?+lstm_16/while/lstm_cell_16/ReadVariableOp_2?+lstm_16/while/lstm_cell_16/ReadVariableOp_3?/lstm_16/while/lstm_cell_16/split/ReadVariableOp?1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp?
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_16/while/TensorArrayV2Read/TensorListGetItem?
*lstm_16/while/lstm_cell_16/ones_like/ShapeShapelstm_16_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_16/while/lstm_cell_16/ones_like/Shape?
*lstm_16/while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_16/while/lstm_cell_16/ones_like/Const?
$lstm_16/while/lstm_cell_16/ones_likeFill3lstm_16/while/lstm_cell_16/ones_like/Shape:output:03lstm_16/while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/ones_like?
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_16/while/lstm_cell_16/split/split_dim?
/lstm_16/while/lstm_cell_16/split/ReadVariableOpReadVariableOp:lstm_16_while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_16/while/lstm_cell_16/split/ReadVariableOp?
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:07lstm_16/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_16/while/lstm_cell_16/split?
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_16/while/lstm_cell_16/MatMul?
#lstm_16/while/lstm_cell_16/MatMul_1MatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_1?
#lstm_16/while/lstm_cell_16/MatMul_2MatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_2?
#lstm_16/while/lstm_cell_16/MatMul_3MatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_3?
,lstm_16/while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_16/while/lstm_cell_16/split_1/split_dim?
1lstm_16/while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp?
"lstm_16/while/lstm_cell_16/split_1Split5lstm_16/while/lstm_cell_16/split_1/split_dim:output:09lstm_16/while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_16/while/lstm_cell_16/split_1?
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd+lstm_16/while/lstm_cell_16/MatMul:product:0+lstm_16/while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/while/lstm_cell_16/BiasAdd?
$lstm_16/while/lstm_cell_16/BiasAdd_1BiasAdd-lstm_16/while/lstm_cell_16/MatMul_1:product:0+lstm_16/while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/BiasAdd_1?
$lstm_16/while/lstm_cell_16/BiasAdd_2BiasAdd-lstm_16/while/lstm_cell_16/MatMul_2:product:0+lstm_16/while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/BiasAdd_2?
$lstm_16/while/lstm_cell_16/BiasAdd_3BiasAdd-lstm_16/while/lstm_cell_16/MatMul_3:product:0+lstm_16/while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/BiasAdd_3?
lstm_16/while/lstm_cell_16/mulMullstm_16_while_placeholder_2-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/while/lstm_cell_16/mul?
 lstm_16/while/lstm_cell_16/mul_1Mullstm_16_while_placeholder_2-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_1?
 lstm_16/while/lstm_cell_16/mul_2Mullstm_16_while_placeholder_2-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_2?
 lstm_16/while/lstm_cell_16/mul_3Mullstm_16_while_placeholder_2-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_3?
)lstm_16/while/lstm_cell_16/ReadVariableOpReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_16/while/lstm_cell_16/ReadVariableOp?
.lstm_16/while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_16/while/lstm_cell_16/strided_slice/stack?
0lstm_16/while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_16/while/lstm_cell_16/strided_slice/stack_1?
0lstm_16/while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_16/while/lstm_cell_16/strided_slice/stack_2?
(lstm_16/while/lstm_cell_16/strided_sliceStridedSlice1lstm_16/while/lstm_cell_16/ReadVariableOp:value:07lstm_16/while/lstm_cell_16/strided_slice/stack:output:09lstm_16/while/lstm_cell_16/strided_slice/stack_1:output:09lstm_16/while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_16/while/lstm_cell_16/strided_slice?
#lstm_16/while/lstm_cell_16/MatMul_4MatMul"lstm_16/while/lstm_cell_16/mul:z:01lstm_16/while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_4?
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/BiasAdd:output:0-lstm_16/while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/while/lstm_cell_16/add?
"lstm_16/while/lstm_cell_16/SigmoidSigmoid"lstm_16/while/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/while/lstm_cell_16/Sigmoid?
+lstm_16/while/lstm_cell_16/ReadVariableOp_1ReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_16/while/lstm_cell_16/ReadVariableOp_1?
0lstm_16/while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_16/while/lstm_cell_16/strided_slice_1/stack?
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_1?
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_2?
*lstm_16/while/lstm_cell_16/strided_slice_1StridedSlice3lstm_16/while/lstm_cell_16/ReadVariableOp_1:value:09lstm_16/while/lstm_cell_16/strided_slice_1/stack:output:0;lstm_16/while/lstm_cell_16/strided_slice_1/stack_1:output:0;lstm_16/while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_16/while/lstm_cell_16/strided_slice_1?
#lstm_16/while/lstm_cell_16/MatMul_5MatMul$lstm_16/while/lstm_cell_16/mul_1:z:03lstm_16/while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_5?
 lstm_16/while/lstm_cell_16/add_1AddV2-lstm_16/while/lstm_cell_16/BiasAdd_1:output:0-lstm_16/while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_1?
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/Sigmoid_1?
 lstm_16/while/lstm_cell_16/mul_4Mul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_4?
+lstm_16/while/lstm_cell_16/ReadVariableOp_2ReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_16/while/lstm_cell_16/ReadVariableOp_2?
0lstm_16/while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_16/while/lstm_cell_16/strided_slice_2/stack?
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_1?
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_2?
*lstm_16/while/lstm_cell_16/strided_slice_2StridedSlice3lstm_16/while/lstm_cell_16/ReadVariableOp_2:value:09lstm_16/while/lstm_cell_16/strided_slice_2/stack:output:0;lstm_16/while/lstm_cell_16/strided_slice_2/stack_1:output:0;lstm_16/while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_16/while/lstm_cell_16/strided_slice_2?
#lstm_16/while/lstm_cell_16/MatMul_6MatMul$lstm_16/while/lstm_cell_16/mul_2:z:03lstm_16/while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_6?
 lstm_16/while/lstm_cell_16/add_2AddV2-lstm_16/while/lstm_cell_16/BiasAdd_2:output:0-lstm_16/while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_2?
lstm_16/while/lstm_cell_16/ReluRelu$lstm_16/while/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_16/while/lstm_cell_16/Relu?
 lstm_16/while/lstm_cell_16/mul_5Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_5?
 lstm_16/while/lstm_cell_16/add_3AddV2$lstm_16/while/lstm_cell_16/mul_4:z:0$lstm_16/while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_3?
+lstm_16/while/lstm_cell_16/ReadVariableOp_3ReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_16/while/lstm_cell_16/ReadVariableOp_3?
0lstm_16/while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_16/while/lstm_cell_16/strided_slice_3/stack?
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_1?
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_2?
*lstm_16/while/lstm_cell_16/strided_slice_3StridedSlice3lstm_16/while/lstm_cell_16/ReadVariableOp_3:value:09lstm_16/while/lstm_cell_16/strided_slice_3/stack:output:0;lstm_16/while/lstm_cell_16/strided_slice_3/stack_1:output:0;lstm_16/while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_16/while/lstm_cell_16/strided_slice_3?
#lstm_16/while/lstm_cell_16/MatMul_7MatMul$lstm_16/while/lstm_cell_16/mul_3:z:03lstm_16/while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_7?
 lstm_16/while/lstm_cell_16/add_4AddV2-lstm_16/while/lstm_cell_16/BiasAdd_3:output:0-lstm_16/while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_4?
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid$lstm_16/while/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/Sigmoid_2?
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_16/while/lstm_cell_16/Relu_1?
 lstm_16/while/lstm_cell_16/mul_6Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_6?
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder$lstm_16/while/lstm_cell_16/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_16/while/TensorArrayV2Write/TensorListSetIteml
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add/y?
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/addp
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add_1/y?
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/add_1?
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity?
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_1?
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_2?
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_3?
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_6:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_16/while/Identity_4?
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_3:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_16/while/Identity_5?
lstm_16/while/NoOpNoOp*^lstm_16/while/lstm_cell_16/ReadVariableOp,^lstm_16/while/lstm_cell_16/ReadVariableOp_1,^lstm_16/while/lstm_cell_16/ReadVariableOp_2,^lstm_16/while/lstm_cell_16/ReadVariableOp_30^lstm_16/while/lstm_cell_16/split/ReadVariableOp2^lstm_16/while/lstm_cell_16/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_16/while/NoOp"9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"j
2lstm_16_while_lstm_cell_16_readvariableop_resource4lstm_16_while_lstm_cell_16_readvariableop_resource_0"z
:lstm_16_while_lstm_cell_16_split_1_readvariableop_resource<lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0"v
8lstm_16_while_lstm_cell_16_split_readvariableop_resource:lstm_16_while_lstm_cell_16_split_readvariableop_resource_0"?
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_16/while/lstm_cell_16/ReadVariableOp)lstm_16/while/lstm_cell_16/ReadVariableOp2Z
+lstm_16/while/lstm_cell_16/ReadVariableOp_1+lstm_16/while/lstm_cell_16/ReadVariableOp_12Z
+lstm_16/while/lstm_cell_16/ReadVariableOp_2+lstm_16/while/lstm_cell_16/ReadVariableOp_22Z
+lstm_16/while/lstm_cell_16/ReadVariableOp_3+lstm_16/while/lstm_cell_16/ReadVariableOp_32b
/lstm_16/while/lstm_cell_16/split/ReadVariableOp/lstm_16/while/lstm_cell_16/split/ReadVariableOp2f
1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_16_layer_call_fn_608088

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6067602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_16_while_cond_607855,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1D
@lstm_16_while_lstm_16_while_cond_607855___redundant_placeholder0D
@lstm_16_while_lstm_16_while_cond_607855___redundant_placeholder1D
@lstm_16_while_lstm_16_while_cond_607855___redundant_placeholder2D
@lstm_16_while_lstm_16_while_cond_607855___redundant_placeholder3
lstm_16_while_identity
?
lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2
lstm_16/while/Lessu
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_16/while/Identity"9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?v
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_609513

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??]2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2݉?2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??P2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Mul_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:????????? 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:????????? 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:????????? 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:????????? 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:????????? 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:????????? 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:????????? 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:????????? 2
	BiasAdd_3`
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mulf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_1f
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
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
strided_slice/stack_2?
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
:????????? 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:????????? 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:????????? 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:????????? 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:????????? 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_6?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?
?
D__inference_dense_20_layer_call_and_return_conditional_losses_609219

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?R
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_609400

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
	ones_liked
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:????????? 2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:????????? 2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:????????? 2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:????????? 2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:????????? 2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:????????? 2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:????????? 2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:????????? 2
	BiasAdd_3a
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:????????? 2
mule
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_1e
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_2e
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
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
strided_slice/stack_2?
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
:????????? 2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:????????? 2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:????????? 2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:????????? 2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:????????? 2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:????????? 2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:????????? 2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:????????? 2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 ?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:????????? 2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:????????? 2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:????????? 2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mul_6?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_2?
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
states/1
?

?
lstm_16_while_cond_607552,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1D
@lstm_16_while_lstm_16_while_cond_607552___redundant_placeholder0D
@lstm_16_while_lstm_16_while_cond_607552___redundant_placeholder1D
@lstm_16_while_lstm_16_while_cond_607552___redundant_placeholder2D
@lstm_16_while_lstm_16_while_cond_607552___redundant_placeholder3
lstm_16_while_identity
?
lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2
lstm_16/while/Lessu
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_16/while/Identity"9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
?
b
F__inference_reshape_10_layer_call_and_return_conditional_losses_606820

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
strided_slice/stack_2?
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
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_7_layer_call_fn_607424

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6068352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607714

inputsE
2lstm_16_lstm_cell_16_split_readvariableop_resource:	?C
4lstm_16_lstm_cell_16_split_1_readvariableop_resource:	??
,lstm_16_lstm_cell_16_readvariableop_resource:	 ?9
'dense_20_matmul_readvariableop_resource:  6
(dense_20_biasadd_readvariableop_resource: 9
'dense_21_matmul_readvariableop_resource: 6
(dense_21_biasadd_readvariableop_resource:
identity??dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?/dense_21/bias/Regularizer/Square/ReadVariableOp?#lstm_16/lstm_cell_16/ReadVariableOp?%lstm_16/lstm_cell_16/ReadVariableOp_1?%lstm_16/lstm_cell_16/ReadVariableOp_2?%lstm_16/lstm_cell_16/ReadVariableOp_3?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?)lstm_16/lstm_cell_16/split/ReadVariableOp?+lstm_16/lstm_cell_16/split_1/ReadVariableOp?lstm_16/whileT
lstm_16/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_16/Shape?
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice/stack?
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_1?
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_2?
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slicel
lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros/mul/y?
lstm_16/zeros/mulMullstm_16/strided_slice:output:0lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/mulo
lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros/Less/y?
lstm_16/zeros/LessLesslstm_16/zeros/mul:z:0lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/Lessr
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros/packed/1?
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros/packedo
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros/Const?
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/zerosp
lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros_1/mul/y?
lstm_16/zeros_1/mulMullstm_16/strided_slice:output:0lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/muls
lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros_1/Less/y?
lstm_16/zeros_1/LessLesslstm_16/zeros_1/mul:z:0lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/Lessv
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros_1/packed/1?
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros_1/packeds
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros_1/Const?
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/zeros_1?
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose/perm?
lstm_16/transpose	Transposeinputslstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_16/transposeg
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:2
lstm_16/Shape_1?
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_1/stack?
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_1?
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_2?
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slice_1?
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_16/TensorArrayV2/element_shape?
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_16/TensorArrayUnstack/TensorListFromTensor?
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_2/stack?
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_1?
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_2?
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_16/strided_slice_2?
$lstm_16/lstm_cell_16/ones_like/ShapeShapelstm_16/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_16/lstm_cell_16/ones_like/Shape?
$lstm_16/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_16/lstm_cell_16/ones_like/Const?
lstm_16/lstm_cell_16/ones_likeFill-lstm_16/lstm_cell_16/ones_like/Shape:output:0-lstm_16/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/ones_like?
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_16/lstm_cell_16/split/split_dim?
)lstm_16/lstm_cell_16/split/ReadVariableOpReadVariableOp2lstm_16_lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_16/lstm_cell_16/split/ReadVariableOp?
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:01lstm_16/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_16/lstm_cell_16/split?
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul?
lstm_16/lstm_cell_16/MatMul_1MatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_1?
lstm_16/lstm_cell_16/MatMul_2MatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_2?
lstm_16/lstm_cell_16/MatMul_3MatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_3?
&lstm_16/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_16/lstm_cell_16/split_1/split_dim?
+lstm_16/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_16/lstm_cell_16/split_1/ReadVariableOp?
lstm_16/lstm_cell_16/split_1Split/lstm_16/lstm_cell_16/split_1/split_dim:output:03lstm_16/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_16/lstm_cell_16/split_1?
lstm_16/lstm_cell_16/BiasAddBiasAdd%lstm_16/lstm_cell_16/MatMul:product:0%lstm_16/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/BiasAdd?
lstm_16/lstm_cell_16/BiasAdd_1BiasAdd'lstm_16/lstm_cell_16/MatMul_1:product:0%lstm_16/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/BiasAdd_1?
lstm_16/lstm_cell_16/BiasAdd_2BiasAdd'lstm_16/lstm_cell_16/MatMul_2:product:0%lstm_16/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/BiasAdd_2?
lstm_16/lstm_cell_16/BiasAdd_3BiasAdd'lstm_16/lstm_cell_16/MatMul_3:product:0%lstm_16/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/BiasAdd_3?
lstm_16/lstm_cell_16/mulMullstm_16/zeros:output:0'lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul?
lstm_16/lstm_cell_16/mul_1Mullstm_16/zeros:output:0'lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_1?
lstm_16/lstm_cell_16/mul_2Mullstm_16/zeros:output:0'lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_2?
lstm_16/lstm_cell_16/mul_3Mullstm_16/zeros:output:0'lstm_16/lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_3?
#lstm_16/lstm_cell_16/ReadVariableOpReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_16/lstm_cell_16/ReadVariableOp?
(lstm_16/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_16/lstm_cell_16/strided_slice/stack?
*lstm_16/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_16/lstm_cell_16/strided_slice/stack_1?
*lstm_16/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_16/lstm_cell_16/strided_slice/stack_2?
"lstm_16/lstm_cell_16/strided_sliceStridedSlice+lstm_16/lstm_cell_16/ReadVariableOp:value:01lstm_16/lstm_cell_16/strided_slice/stack:output:03lstm_16/lstm_cell_16/strided_slice/stack_1:output:03lstm_16/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_16/lstm_cell_16/strided_slice?
lstm_16/lstm_cell_16/MatMul_4MatMullstm_16/lstm_cell_16/mul:z:0+lstm_16/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_4?
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/BiasAdd:output:0'lstm_16/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add?
lstm_16/lstm_cell_16/SigmoidSigmoidlstm_16/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/Sigmoid?
%lstm_16/lstm_cell_16/ReadVariableOp_1ReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_16/lstm_cell_16/ReadVariableOp_1?
*lstm_16/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_16/lstm_cell_16/strided_slice_1/stack?
,lstm_16/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_16/lstm_cell_16/strided_slice_1/stack_1?
,lstm_16/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_16/lstm_cell_16/strided_slice_1/stack_2?
$lstm_16/lstm_cell_16/strided_slice_1StridedSlice-lstm_16/lstm_cell_16/ReadVariableOp_1:value:03lstm_16/lstm_cell_16/strided_slice_1/stack:output:05lstm_16/lstm_cell_16/strided_slice_1/stack_1:output:05lstm_16/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_16/lstm_cell_16/strided_slice_1?
lstm_16/lstm_cell_16/MatMul_5MatMullstm_16/lstm_cell_16/mul_1:z:0-lstm_16/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_5?
lstm_16/lstm_cell_16/add_1AddV2'lstm_16/lstm_cell_16/BiasAdd_1:output:0'lstm_16/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_1?
lstm_16/lstm_cell_16/Sigmoid_1Sigmoidlstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/Sigmoid_1?
lstm_16/lstm_cell_16/mul_4Mul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_4?
%lstm_16/lstm_cell_16/ReadVariableOp_2ReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_16/lstm_cell_16/ReadVariableOp_2?
*lstm_16/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_16/lstm_cell_16/strided_slice_2/stack?
,lstm_16/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_16/lstm_cell_16/strided_slice_2/stack_1?
,lstm_16/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_16/lstm_cell_16/strided_slice_2/stack_2?
$lstm_16/lstm_cell_16/strided_slice_2StridedSlice-lstm_16/lstm_cell_16/ReadVariableOp_2:value:03lstm_16/lstm_cell_16/strided_slice_2/stack:output:05lstm_16/lstm_cell_16/strided_slice_2/stack_1:output:05lstm_16/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_16/lstm_cell_16/strided_slice_2?
lstm_16/lstm_cell_16/MatMul_6MatMullstm_16/lstm_cell_16/mul_2:z:0-lstm_16/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_6?
lstm_16/lstm_cell_16/add_2AddV2'lstm_16/lstm_cell_16/BiasAdd_2:output:0'lstm_16/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_2?
lstm_16/lstm_cell_16/ReluRelulstm_16/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/Relu?
lstm_16/lstm_cell_16/mul_5Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_5?
lstm_16/lstm_cell_16/add_3AddV2lstm_16/lstm_cell_16/mul_4:z:0lstm_16/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_3?
%lstm_16/lstm_cell_16/ReadVariableOp_3ReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_16/lstm_cell_16/ReadVariableOp_3?
*lstm_16/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_16/lstm_cell_16/strided_slice_3/stack?
,lstm_16/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_16/lstm_cell_16/strided_slice_3/stack_1?
,lstm_16/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_16/lstm_cell_16/strided_slice_3/stack_2?
$lstm_16/lstm_cell_16/strided_slice_3StridedSlice-lstm_16/lstm_cell_16/ReadVariableOp_3:value:03lstm_16/lstm_cell_16/strided_slice_3/stack:output:05lstm_16/lstm_cell_16/strided_slice_3/stack_1:output:05lstm_16/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_16/lstm_cell_16/strided_slice_3?
lstm_16/lstm_cell_16/MatMul_7MatMullstm_16/lstm_cell_16/mul_3:z:0-lstm_16/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_7?
lstm_16/lstm_cell_16/add_4AddV2'lstm_16/lstm_cell_16/BiasAdd_3:output:0'lstm_16/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_4?
lstm_16/lstm_cell_16/Sigmoid_2Sigmoidlstm_16/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/Sigmoid_2?
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/Relu_1?
lstm_16/lstm_cell_16/mul_6Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_6?
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_16/TensorArrayV2_1/element_shape?
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2_1^
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/time?
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_16/while/maximum_iterationsz
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/while/loop_counter?
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_16_lstm_cell_16_split_readvariableop_resource4lstm_16_lstm_cell_16_split_1_readvariableop_resource,lstm_16_lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_16_while_body_607553*%
condR
lstm_16_while_cond_607552*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_16/while?
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_16/TensorArrayV2Stack/TensorListStack?
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_16/strided_slice_3/stack?
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_16/strided_slice_3/stack_1?
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_3/stack_2?
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_16/strided_slice_3?
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose_1/perm?
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_16/transpose_1v
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/runtime?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMul lstm_16/strided_slice_3:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_20/BiasAdds
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_20/Relu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/BiasAddm
reshape_10/ShapeShapedense_21/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_10/Shape?
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_10/strided_slice/stack?
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_1?
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_2?
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_10/strided_slicez
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_10/Reshape/shape/1z
reshape_10/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_10/Reshape/shape/2?
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0#reshape_10/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_10/Reshape/shape?
reshape_10/ReshapeReshapedense_21/BiasAdd:output:0!reshape_10/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_10/Reshape?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_16_lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/mul?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mulz
IdentityIdentityreshape_10/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp0^dense_21/bias/Regularizer/Square/ReadVariableOp$^lstm_16/lstm_cell_16/ReadVariableOp&^lstm_16/lstm_cell_16/ReadVariableOp_1&^lstm_16/lstm_cell_16/ReadVariableOp_2&^lstm_16/lstm_cell_16/ReadVariableOp_3>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*^lstm_16/lstm_cell_16/split/ReadVariableOp,^lstm_16/lstm_cell_16/split_1/ReadVariableOp^lstm_16/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp2J
#lstm_16/lstm_cell_16/ReadVariableOp#lstm_16/lstm_cell_16/ReadVariableOp2N
%lstm_16/lstm_cell_16/ReadVariableOp_1%lstm_16/lstm_cell_16/ReadVariableOp_12N
%lstm_16/lstm_cell_16/ReadVariableOp_2%lstm_16/lstm_cell_16/ReadVariableOp_22N
%lstm_16/lstm_cell_16/ReadVariableOp_3%lstm_16/lstm_cell_16/ReadVariableOp_32~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_16/lstm_cell_16/split/ReadVariableOp)lstm_16/lstm_cell_16/split/ReadVariableOp2Z
+lstm_16/lstm_cell_16/split_1/ReadVariableOp+lstm_16/lstm_cell_16/split_1/ReadVariableOp2
lstm_16/whilelstm_16/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_608049

inputsE
2lstm_16_lstm_cell_16_split_readvariableop_resource:	?C
4lstm_16_lstm_cell_16_split_1_readvariableop_resource:	??
,lstm_16_lstm_cell_16_readvariableop_resource:	 ?9
'dense_20_matmul_readvariableop_resource:  6
(dense_20_biasadd_readvariableop_resource: 9
'dense_21_matmul_readvariableop_resource: 6
(dense_21_biasadd_readvariableop_resource:
identity??dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?/dense_21/bias/Regularizer/Square/ReadVariableOp?#lstm_16/lstm_cell_16/ReadVariableOp?%lstm_16/lstm_cell_16/ReadVariableOp_1?%lstm_16/lstm_cell_16/ReadVariableOp_2?%lstm_16/lstm_cell_16/ReadVariableOp_3?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?)lstm_16/lstm_cell_16/split/ReadVariableOp?+lstm_16/lstm_cell_16/split_1/ReadVariableOp?lstm_16/whileT
lstm_16/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_16/Shape?
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice/stack?
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_1?
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_2?
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slicel
lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros/mul/y?
lstm_16/zeros/mulMullstm_16/strided_slice:output:0lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/mulo
lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros/Less/y?
lstm_16/zeros/LessLesslstm_16/zeros/mul:z:0lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/Lessr
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros/packed/1?
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros/packedo
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros/Const?
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/zerosp
lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros_1/mul/y?
lstm_16/zeros_1/mulMullstm_16/strided_slice:output:0lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/muls
lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros_1/Less/y?
lstm_16/zeros_1/LessLesslstm_16/zeros_1/mul:z:0lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/Lessv
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/zeros_1/packed/1?
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros_1/packeds
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros_1/Const?
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/zeros_1?
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose/perm?
lstm_16/transpose	Transposeinputslstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_16/transposeg
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:2
lstm_16/Shape_1?
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_1/stack?
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_1?
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_2?
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slice_1?
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_16/TensorArrayV2/element_shape?
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_16/TensorArrayUnstack/TensorListFromTensor?
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_2/stack?
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_1?
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_2?
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_16/strided_slice_2?
$lstm_16/lstm_cell_16/ones_like/ShapeShapelstm_16/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_16/lstm_cell_16/ones_like/Shape?
$lstm_16/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_16/lstm_cell_16/ones_like/Const?
lstm_16/lstm_cell_16/ones_likeFill-lstm_16/lstm_cell_16/ones_like/Shape:output:0-lstm_16/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/ones_like?
"lstm_16/lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm_16/lstm_cell_16/dropout/Const?
 lstm_16/lstm_cell_16/dropout/MulMul'lstm_16/lstm_cell_16/ones_like:output:0+lstm_16/lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/lstm_cell_16/dropout/Mul?
"lstm_16/lstm_cell_16/dropout/ShapeShape'lstm_16/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_16/lstm_cell_16/dropout/Shape?
9lstm_16/lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform+lstm_16/lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9lstm_16/lstm_cell_16/dropout/random_uniform/RandomUniform?
+lstm_16/lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_16/lstm_cell_16/dropout/GreaterEqual/y?
)lstm_16/lstm_cell_16/dropout/GreaterEqualGreaterEqualBlstm_16/lstm_cell_16/dropout/random_uniform/RandomUniform:output:04lstm_16/lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_16/lstm_cell_16/dropout/GreaterEqual?
!lstm_16/lstm_cell_16/dropout/CastCast-lstm_16/lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_16/lstm_cell_16/dropout/Cast?
"lstm_16/lstm_cell_16/dropout/Mul_1Mul$lstm_16/lstm_cell_16/dropout/Mul:z:0%lstm_16/lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/lstm_cell_16/dropout/Mul_1?
$lstm_16/lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_16/lstm_cell_16/dropout_1/Const?
"lstm_16/lstm_cell_16/dropout_1/MulMul'lstm_16/lstm_cell_16/ones_like:output:0-lstm_16/lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/lstm_cell_16/dropout_1/Mul?
$lstm_16/lstm_cell_16/dropout_1/ShapeShape'lstm_16/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_16/lstm_cell_16/dropout_1/Shape?
;lstm_16/lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_16/lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_16/lstm_cell_16/dropout_1/random_uniform/RandomUniform?
-lstm_16/lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_16/lstm_cell_16/dropout_1/GreaterEqual/y?
+lstm_16/lstm_cell_16/dropout_1/GreaterEqualGreaterEqualDlstm_16/lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:06lstm_16/lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_16/lstm_cell_16/dropout_1/GreaterEqual?
#lstm_16/lstm_cell_16/dropout_1/CastCast/lstm_16/lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_16/lstm_cell_16/dropout_1/Cast?
$lstm_16/lstm_cell_16/dropout_1/Mul_1Mul&lstm_16/lstm_cell_16/dropout_1/Mul:z:0'lstm_16/lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/lstm_cell_16/dropout_1/Mul_1?
$lstm_16/lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_16/lstm_cell_16/dropout_2/Const?
"lstm_16/lstm_cell_16/dropout_2/MulMul'lstm_16/lstm_cell_16/ones_like:output:0-lstm_16/lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/lstm_cell_16/dropout_2/Mul?
$lstm_16/lstm_cell_16/dropout_2/ShapeShape'lstm_16/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_16/lstm_cell_16/dropout_2/Shape?
;lstm_16/lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_16/lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_16/lstm_cell_16/dropout_2/random_uniform/RandomUniform?
-lstm_16/lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_16/lstm_cell_16/dropout_2/GreaterEqual/y?
+lstm_16/lstm_cell_16/dropout_2/GreaterEqualGreaterEqualDlstm_16/lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:06lstm_16/lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_16/lstm_cell_16/dropout_2/GreaterEqual?
#lstm_16/lstm_cell_16/dropout_2/CastCast/lstm_16/lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_16/lstm_cell_16/dropout_2/Cast?
$lstm_16/lstm_cell_16/dropout_2/Mul_1Mul&lstm_16/lstm_cell_16/dropout_2/Mul:z:0'lstm_16/lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/lstm_cell_16/dropout_2/Mul_1?
$lstm_16/lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_16/lstm_cell_16/dropout_3/Const?
"lstm_16/lstm_cell_16/dropout_3/MulMul'lstm_16/lstm_cell_16/ones_like:output:0-lstm_16/lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/lstm_cell_16/dropout_3/Mul?
$lstm_16/lstm_cell_16/dropout_3/ShapeShape'lstm_16/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_16/lstm_cell_16/dropout_3/Shape?
;lstm_16/lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_16/lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_16/lstm_cell_16/dropout_3/random_uniform/RandomUniform?
-lstm_16/lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_16/lstm_cell_16/dropout_3/GreaterEqual/y?
+lstm_16/lstm_cell_16/dropout_3/GreaterEqualGreaterEqualDlstm_16/lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:06lstm_16/lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_16/lstm_cell_16/dropout_3/GreaterEqual?
#lstm_16/lstm_cell_16/dropout_3/CastCast/lstm_16/lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_16/lstm_cell_16/dropout_3/Cast?
$lstm_16/lstm_cell_16/dropout_3/Mul_1Mul&lstm_16/lstm_cell_16/dropout_3/Mul:z:0'lstm_16/lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/lstm_cell_16/dropout_3/Mul_1?
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_16/lstm_cell_16/split/split_dim?
)lstm_16/lstm_cell_16/split/ReadVariableOpReadVariableOp2lstm_16_lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_16/lstm_cell_16/split/ReadVariableOp?
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:01lstm_16/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_16/lstm_cell_16/split?
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul?
lstm_16/lstm_cell_16/MatMul_1MatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_1?
lstm_16/lstm_cell_16/MatMul_2MatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_2?
lstm_16/lstm_cell_16/MatMul_3MatMul lstm_16/strided_slice_2:output:0#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_3?
&lstm_16/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_16/lstm_cell_16/split_1/split_dim?
+lstm_16/lstm_cell_16/split_1/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_16/lstm_cell_16/split_1/ReadVariableOp?
lstm_16/lstm_cell_16/split_1Split/lstm_16/lstm_cell_16/split_1/split_dim:output:03lstm_16/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_16/lstm_cell_16/split_1?
lstm_16/lstm_cell_16/BiasAddBiasAdd%lstm_16/lstm_cell_16/MatMul:product:0%lstm_16/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/BiasAdd?
lstm_16/lstm_cell_16/BiasAdd_1BiasAdd'lstm_16/lstm_cell_16/MatMul_1:product:0%lstm_16/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/BiasAdd_1?
lstm_16/lstm_cell_16/BiasAdd_2BiasAdd'lstm_16/lstm_cell_16/MatMul_2:product:0%lstm_16/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/BiasAdd_2?
lstm_16/lstm_cell_16/BiasAdd_3BiasAdd'lstm_16/lstm_cell_16/MatMul_3:product:0%lstm_16/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/BiasAdd_3?
lstm_16/lstm_cell_16/mulMullstm_16/zeros:output:0&lstm_16/lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul?
lstm_16/lstm_cell_16/mul_1Mullstm_16/zeros:output:0(lstm_16/lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_1?
lstm_16/lstm_cell_16/mul_2Mullstm_16/zeros:output:0(lstm_16/lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_2?
lstm_16/lstm_cell_16/mul_3Mullstm_16/zeros:output:0(lstm_16/lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_3?
#lstm_16/lstm_cell_16/ReadVariableOpReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_16/lstm_cell_16/ReadVariableOp?
(lstm_16/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_16/lstm_cell_16/strided_slice/stack?
*lstm_16/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_16/lstm_cell_16/strided_slice/stack_1?
*lstm_16/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_16/lstm_cell_16/strided_slice/stack_2?
"lstm_16/lstm_cell_16/strided_sliceStridedSlice+lstm_16/lstm_cell_16/ReadVariableOp:value:01lstm_16/lstm_cell_16/strided_slice/stack:output:03lstm_16/lstm_cell_16/strided_slice/stack_1:output:03lstm_16/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_16/lstm_cell_16/strided_slice?
lstm_16/lstm_cell_16/MatMul_4MatMullstm_16/lstm_cell_16/mul:z:0+lstm_16/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_4?
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/BiasAdd:output:0'lstm_16/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add?
lstm_16/lstm_cell_16/SigmoidSigmoidlstm_16/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/Sigmoid?
%lstm_16/lstm_cell_16/ReadVariableOp_1ReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_16/lstm_cell_16/ReadVariableOp_1?
*lstm_16/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_16/lstm_cell_16/strided_slice_1/stack?
,lstm_16/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_16/lstm_cell_16/strided_slice_1/stack_1?
,lstm_16/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_16/lstm_cell_16/strided_slice_1/stack_2?
$lstm_16/lstm_cell_16/strided_slice_1StridedSlice-lstm_16/lstm_cell_16/ReadVariableOp_1:value:03lstm_16/lstm_cell_16/strided_slice_1/stack:output:05lstm_16/lstm_cell_16/strided_slice_1/stack_1:output:05lstm_16/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_16/lstm_cell_16/strided_slice_1?
lstm_16/lstm_cell_16/MatMul_5MatMullstm_16/lstm_cell_16/mul_1:z:0-lstm_16/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_5?
lstm_16/lstm_cell_16/add_1AddV2'lstm_16/lstm_cell_16/BiasAdd_1:output:0'lstm_16/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_1?
lstm_16/lstm_cell_16/Sigmoid_1Sigmoidlstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/Sigmoid_1?
lstm_16/lstm_cell_16/mul_4Mul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_4?
%lstm_16/lstm_cell_16/ReadVariableOp_2ReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_16/lstm_cell_16/ReadVariableOp_2?
*lstm_16/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_16/lstm_cell_16/strided_slice_2/stack?
,lstm_16/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_16/lstm_cell_16/strided_slice_2/stack_1?
,lstm_16/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_16/lstm_cell_16/strided_slice_2/stack_2?
$lstm_16/lstm_cell_16/strided_slice_2StridedSlice-lstm_16/lstm_cell_16/ReadVariableOp_2:value:03lstm_16/lstm_cell_16/strided_slice_2/stack:output:05lstm_16/lstm_cell_16/strided_slice_2/stack_1:output:05lstm_16/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_16/lstm_cell_16/strided_slice_2?
lstm_16/lstm_cell_16/MatMul_6MatMullstm_16/lstm_cell_16/mul_2:z:0-lstm_16/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_6?
lstm_16/lstm_cell_16/add_2AddV2'lstm_16/lstm_cell_16/BiasAdd_2:output:0'lstm_16/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_2?
lstm_16/lstm_cell_16/ReluRelulstm_16/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/Relu?
lstm_16/lstm_cell_16/mul_5Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_5?
lstm_16/lstm_cell_16/add_3AddV2lstm_16/lstm_cell_16/mul_4:z:0lstm_16/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_3?
%lstm_16/lstm_cell_16/ReadVariableOp_3ReadVariableOp,lstm_16_lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_16/lstm_cell_16/ReadVariableOp_3?
*lstm_16/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_16/lstm_cell_16/strided_slice_3/stack?
,lstm_16/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_16/lstm_cell_16/strided_slice_3/stack_1?
,lstm_16/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_16/lstm_cell_16/strided_slice_3/stack_2?
$lstm_16/lstm_cell_16/strided_slice_3StridedSlice-lstm_16/lstm_cell_16/ReadVariableOp_3:value:03lstm_16/lstm_cell_16/strided_slice_3/stack:output:05lstm_16/lstm_cell_16/strided_slice_3/stack_1:output:05lstm_16/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_16/lstm_cell_16/strided_slice_3?
lstm_16/lstm_cell_16/MatMul_7MatMullstm_16/lstm_cell_16/mul_3:z:0-lstm_16/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/MatMul_7?
lstm_16/lstm_cell_16/add_4AddV2'lstm_16/lstm_cell_16/BiasAdd_3:output:0'lstm_16/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/add_4?
lstm_16/lstm_cell_16/Sigmoid_2Sigmoidlstm_16/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/lstm_cell_16/Sigmoid_2?
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/Relu_1?
lstm_16/lstm_cell_16/mul_6Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_16/lstm_cell_16/mul_6?
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_16/TensorArrayV2_1/element_shape?
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2_1^
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/time?
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_16/while/maximum_iterationsz
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/while/loop_counter?
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_16_lstm_cell_16_split_readvariableop_resource4lstm_16_lstm_cell_16_split_1_readvariableop_resource,lstm_16_lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_16_while_body_607856*%
condR
lstm_16_while_cond_607855*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_16/while?
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_16/TensorArrayV2Stack/TensorListStack?
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_16/strided_slice_3/stack?
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_16/strided_slice_3/stack_1?
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_3/stack_2?
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_16/strided_slice_3?
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose_1/perm?
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_16/transpose_1v
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/runtime?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMul lstm_16/strided_slice_3:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_20/BiasAdds
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_20/Relu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/BiasAddm
reshape_10/ShapeShapedense_21/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_10/Shape?
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_10/strided_slice/stack?
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_1?
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_2?
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_10/strided_slicez
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_10/Reshape/shape/1z
reshape_10/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_10/Reshape/shape/2?
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0#reshape_10/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_10/Reshape/shape?
reshape_10/ReshapeReshapedense_21/BiasAdd:output:0!reshape_10/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_10/Reshape?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_16_lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/mul?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mulz
IdentityIdentityreshape_10/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp0^dense_21/bias/Regularizer/Square/ReadVariableOp$^lstm_16/lstm_cell_16/ReadVariableOp&^lstm_16/lstm_cell_16/ReadVariableOp_1&^lstm_16/lstm_cell_16/ReadVariableOp_2&^lstm_16/lstm_cell_16/ReadVariableOp_3>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*^lstm_16/lstm_cell_16/split/ReadVariableOp,^lstm_16/lstm_cell_16/split_1/ReadVariableOp^lstm_16/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp2J
#lstm_16/lstm_cell_16/ReadVariableOp#lstm_16/lstm_cell_16/ReadVariableOp2N
%lstm_16/lstm_cell_16/ReadVariableOp_1%lstm_16/lstm_cell_16/ReadVariableOp_12N
%lstm_16/lstm_cell_16/ReadVariableOp_2%lstm_16/lstm_cell_16/ReadVariableOp_22N
%lstm_16/lstm_cell_16/ReadVariableOp_3%lstm_16/lstm_cell_16/ReadVariableOp_32~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_16/lstm_cell_16/split/ReadVariableOp)lstm_16/lstm_cell_16/split/ReadVariableOp2Z
+lstm_16/lstm_cell_16/split_1/ReadVariableOp+lstm_16/lstm_cell_16/split_1/ReadVariableOp2
lstm_16/whilelstm_16/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_605865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_16_605889_0:	?*
while_lstm_cell_16_605891_0:	?.
while_lstm_cell_16_605893_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_16_605889:	?(
while_lstm_cell_16_605891:	?,
while_lstm_cell_16_605893:	 ???*while/lstm_cell_16/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_605889_0while_lstm_cell_16_605891_0while_lstm_cell_16_605893_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_6058512,
*while/lstm_cell_16/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
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
while_lstm_cell_16_605889while_lstm_cell_16_605889_0"8
while_lstm_cell_16_605891while_lstm_cell_16_605891_0"8
while_lstm_cell_16_605893while_lstm_cell_16_605893_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
?
b
F__inference_reshape_10_layer_call_and_return_conditional_losses_609268

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
strided_slice/stack_2?
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
Reshape/shape/2?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_605864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_605864___redundant_placeholder04
0while_while_cond_605864___redundant_placeholder14
0while_while_cond_605864___redundant_placeholder24
0while_while_cond_605864___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:
??
?
lstm_16_while_body_607856,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_16_while_lstm_cell_16_split_readvariableop_resource_0:	?K
<lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0:	?G
4lstm_16_while_lstm_cell_16_readvariableop_resource_0:	 ?
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorK
8lstm_16_while_lstm_cell_16_split_readvariableop_resource:	?I
:lstm_16_while_lstm_cell_16_split_1_readvariableop_resource:	?E
2lstm_16_while_lstm_cell_16_readvariableop_resource:	 ???)lstm_16/while/lstm_cell_16/ReadVariableOp?+lstm_16/while/lstm_cell_16/ReadVariableOp_1?+lstm_16/while/lstm_cell_16/ReadVariableOp_2?+lstm_16/while/lstm_cell_16/ReadVariableOp_3?/lstm_16/while/lstm_cell_16/split/ReadVariableOp?1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp?
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_16/while/TensorArrayV2Read/TensorListGetItem?
*lstm_16/while/lstm_cell_16/ones_like/ShapeShapelstm_16_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_16/while/lstm_cell_16/ones_like/Shape?
*lstm_16/while/lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_16/while/lstm_cell_16/ones_like/Const?
$lstm_16/while/lstm_cell_16/ones_likeFill3lstm_16/while/lstm_cell_16/ones_like/Shape:output:03lstm_16/while/lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/ones_like?
(lstm_16/while/lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2*
(lstm_16/while/lstm_cell_16/dropout/Const?
&lstm_16/while/lstm_cell_16/dropout/MulMul-lstm_16/while/lstm_cell_16/ones_like:output:01lstm_16/while/lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_16/while/lstm_cell_16/dropout/Mul?
(lstm_16/while/lstm_cell_16/dropout/ShapeShape-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_16/while/lstm_cell_16/dropout/Shape?
?lstm_16/while/lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform1lstm_16/while/lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2׋?2A
?lstm_16/while/lstm_cell_16/dropout/random_uniform/RandomUniform?
1lstm_16/while/lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_16/while/lstm_cell_16/dropout/GreaterEqual/y?
/lstm_16/while/lstm_cell_16/dropout/GreaterEqualGreaterEqualHlstm_16/while/lstm_cell_16/dropout/random_uniform/RandomUniform:output:0:lstm_16/while/lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_16/while/lstm_cell_16/dropout/GreaterEqual?
'lstm_16/while/lstm_cell_16/dropout/CastCast3lstm_16/while/lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_16/while/lstm_cell_16/dropout/Cast?
(lstm_16/while/lstm_cell_16/dropout/Mul_1Mul*lstm_16/while/lstm_cell_16/dropout/Mul:z:0+lstm_16/while/lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_16/while/lstm_cell_16/dropout/Mul_1?
*lstm_16/while/lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_16/while/lstm_cell_16/dropout_1/Const?
(lstm_16/while/lstm_cell_16/dropout_1/MulMul-lstm_16/while/lstm_cell_16/ones_like:output:03lstm_16/while/lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_16/while/lstm_cell_16/dropout_1/Mul?
*lstm_16/while/lstm_cell_16/dropout_1/ShapeShape-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_16/while/lstm_cell_16/dropout_1/Shape?
Alstm_16/while/lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_16/while/lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_16/while/lstm_cell_16/dropout_1/random_uniform/RandomUniform?
3lstm_16/while/lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_16/while/lstm_cell_16/dropout_1/GreaterEqual/y?
1lstm_16/while/lstm_cell_16/dropout_1/GreaterEqualGreaterEqualJlstm_16/while/lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:0<lstm_16/while/lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_16/while/lstm_cell_16/dropout_1/GreaterEqual?
)lstm_16/while/lstm_cell_16/dropout_1/CastCast5lstm_16/while/lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_16/while/lstm_cell_16/dropout_1/Cast?
*lstm_16/while/lstm_cell_16/dropout_1/Mul_1Mul,lstm_16/while/lstm_cell_16/dropout_1/Mul:z:0-lstm_16/while/lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_16/while/lstm_cell_16/dropout_1/Mul_1?
*lstm_16/while/lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_16/while/lstm_cell_16/dropout_2/Const?
(lstm_16/while/lstm_cell_16/dropout_2/MulMul-lstm_16/while/lstm_cell_16/ones_like:output:03lstm_16/while/lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_16/while/lstm_cell_16/dropout_2/Mul?
*lstm_16/while/lstm_cell_16/dropout_2/ShapeShape-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_16/while/lstm_cell_16/dropout_2/Shape?
Alstm_16/while/lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_16/while/lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ϱ?2C
Alstm_16/while/lstm_cell_16/dropout_2/random_uniform/RandomUniform?
3lstm_16/while/lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_16/while/lstm_cell_16/dropout_2/GreaterEqual/y?
1lstm_16/while/lstm_cell_16/dropout_2/GreaterEqualGreaterEqualJlstm_16/while/lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:0<lstm_16/while/lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_16/while/lstm_cell_16/dropout_2/GreaterEqual?
)lstm_16/while/lstm_cell_16/dropout_2/CastCast5lstm_16/while/lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_16/while/lstm_cell_16/dropout_2/Cast?
*lstm_16/while/lstm_cell_16/dropout_2/Mul_1Mul,lstm_16/while/lstm_cell_16/dropout_2/Mul:z:0-lstm_16/while/lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_16/while/lstm_cell_16/dropout_2/Mul_1?
*lstm_16/while/lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_16/while/lstm_cell_16/dropout_3/Const?
(lstm_16/while/lstm_cell_16/dropout_3/MulMul-lstm_16/while/lstm_cell_16/ones_like:output:03lstm_16/while/lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_16/while/lstm_cell_16/dropout_3/Mul?
*lstm_16/while/lstm_cell_16/dropout_3/ShapeShape-lstm_16/while/lstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_16/while/lstm_cell_16/dropout_3/Shape?
Alstm_16/while/lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_16/while/lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_16/while/lstm_cell_16/dropout_3/random_uniform/RandomUniform?
3lstm_16/while/lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_16/while/lstm_cell_16/dropout_3/GreaterEqual/y?
1lstm_16/while/lstm_cell_16/dropout_3/GreaterEqualGreaterEqualJlstm_16/while/lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:0<lstm_16/while/lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_16/while/lstm_cell_16/dropout_3/GreaterEqual?
)lstm_16/while/lstm_cell_16/dropout_3/CastCast5lstm_16/while/lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_16/while/lstm_cell_16/dropout_3/Cast?
*lstm_16/while/lstm_cell_16/dropout_3/Mul_1Mul,lstm_16/while/lstm_cell_16/dropout_3/Mul:z:0-lstm_16/while/lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_16/while/lstm_cell_16/dropout_3/Mul_1?
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_16/while/lstm_cell_16/split/split_dim?
/lstm_16/while/lstm_cell_16/split/ReadVariableOpReadVariableOp:lstm_16_while_lstm_cell_16_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_16/while/lstm_cell_16/split/ReadVariableOp?
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:07lstm_16/while/lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_16/while/lstm_cell_16/split?
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_16/while/lstm_cell_16/MatMul?
#lstm_16/while/lstm_cell_16/MatMul_1MatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_1?
#lstm_16/while/lstm_cell_16/MatMul_2MatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_2?
#lstm_16/while/lstm_cell_16/MatMul_3MatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_3?
,lstm_16/while/lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_16/while/lstm_cell_16/split_1/split_dim?
1lstm_16/while/lstm_cell_16/split_1/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp?
"lstm_16/while/lstm_cell_16/split_1Split5lstm_16/while/lstm_cell_16/split_1/split_dim:output:09lstm_16/while/lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_16/while/lstm_cell_16/split_1?
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd+lstm_16/while/lstm_cell_16/MatMul:product:0+lstm_16/while/lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/while/lstm_cell_16/BiasAdd?
$lstm_16/while/lstm_cell_16/BiasAdd_1BiasAdd-lstm_16/while/lstm_cell_16/MatMul_1:product:0+lstm_16/while/lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/BiasAdd_1?
$lstm_16/while/lstm_cell_16/BiasAdd_2BiasAdd-lstm_16/while/lstm_cell_16/MatMul_2:product:0+lstm_16/while/lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/BiasAdd_2?
$lstm_16/while/lstm_cell_16/BiasAdd_3BiasAdd-lstm_16/while/lstm_cell_16/MatMul_3:product:0+lstm_16/while/lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/BiasAdd_3?
lstm_16/while/lstm_cell_16/mulMullstm_16_while_placeholder_2,lstm_16/while/lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/while/lstm_cell_16/mul?
 lstm_16/while/lstm_cell_16/mul_1Mullstm_16_while_placeholder_2.lstm_16/while/lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_1?
 lstm_16/while/lstm_cell_16/mul_2Mullstm_16_while_placeholder_2.lstm_16/while/lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_2?
 lstm_16/while/lstm_cell_16/mul_3Mullstm_16_while_placeholder_2.lstm_16/while/lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_3?
)lstm_16/while/lstm_cell_16/ReadVariableOpReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_16/while/lstm_cell_16/ReadVariableOp?
.lstm_16/while/lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_16/while/lstm_cell_16/strided_slice/stack?
0lstm_16/while/lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_16/while/lstm_cell_16/strided_slice/stack_1?
0lstm_16/while/lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_16/while/lstm_cell_16/strided_slice/stack_2?
(lstm_16/while/lstm_cell_16/strided_sliceStridedSlice1lstm_16/while/lstm_cell_16/ReadVariableOp:value:07lstm_16/while/lstm_cell_16/strided_slice/stack:output:09lstm_16/while/lstm_cell_16/strided_slice/stack_1:output:09lstm_16/while/lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_16/while/lstm_cell_16/strided_slice?
#lstm_16/while/lstm_cell_16/MatMul_4MatMul"lstm_16/while/lstm_cell_16/mul:z:01lstm_16/while/lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_4?
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/BiasAdd:output:0-lstm_16/while/lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_16/while/lstm_cell_16/add?
"lstm_16/while/lstm_cell_16/SigmoidSigmoid"lstm_16/while/lstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_16/while/lstm_cell_16/Sigmoid?
+lstm_16/while/lstm_cell_16/ReadVariableOp_1ReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_16/while/lstm_cell_16/ReadVariableOp_1?
0lstm_16/while/lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_16/while/lstm_cell_16/strided_slice_1/stack?
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_1?
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_16/while/lstm_cell_16/strided_slice_1/stack_2?
*lstm_16/while/lstm_cell_16/strided_slice_1StridedSlice3lstm_16/while/lstm_cell_16/ReadVariableOp_1:value:09lstm_16/while/lstm_cell_16/strided_slice_1/stack:output:0;lstm_16/while/lstm_cell_16/strided_slice_1/stack_1:output:0;lstm_16/while/lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_16/while/lstm_cell_16/strided_slice_1?
#lstm_16/while/lstm_cell_16/MatMul_5MatMul$lstm_16/while/lstm_cell_16/mul_1:z:03lstm_16/while/lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_5?
 lstm_16/while/lstm_cell_16/add_1AddV2-lstm_16/while/lstm_cell_16/BiasAdd_1:output:0-lstm_16/while/lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_1?
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/Sigmoid_1?
 lstm_16/while/lstm_cell_16/mul_4Mul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_4?
+lstm_16/while/lstm_cell_16/ReadVariableOp_2ReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_16/while/lstm_cell_16/ReadVariableOp_2?
0lstm_16/while/lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_16/while/lstm_cell_16/strided_slice_2/stack?
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_1?
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_16/while/lstm_cell_16/strided_slice_2/stack_2?
*lstm_16/while/lstm_cell_16/strided_slice_2StridedSlice3lstm_16/while/lstm_cell_16/ReadVariableOp_2:value:09lstm_16/while/lstm_cell_16/strided_slice_2/stack:output:0;lstm_16/while/lstm_cell_16/strided_slice_2/stack_1:output:0;lstm_16/while/lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_16/while/lstm_cell_16/strided_slice_2?
#lstm_16/while/lstm_cell_16/MatMul_6MatMul$lstm_16/while/lstm_cell_16/mul_2:z:03lstm_16/while/lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_6?
 lstm_16/while/lstm_cell_16/add_2AddV2-lstm_16/while/lstm_cell_16/BiasAdd_2:output:0-lstm_16/while/lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_2?
lstm_16/while/lstm_cell_16/ReluRelu$lstm_16/while/lstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_16/while/lstm_cell_16/Relu?
 lstm_16/while/lstm_cell_16/mul_5Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_5?
 lstm_16/while/lstm_cell_16/add_3AddV2$lstm_16/while/lstm_cell_16/mul_4:z:0$lstm_16/while/lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_3?
+lstm_16/while/lstm_cell_16/ReadVariableOp_3ReadVariableOp4lstm_16_while_lstm_cell_16_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_16/while/lstm_cell_16/ReadVariableOp_3?
0lstm_16/while/lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_16/while/lstm_cell_16/strided_slice_3/stack?
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_1?
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_16/while/lstm_cell_16/strided_slice_3/stack_2?
*lstm_16/while/lstm_cell_16/strided_slice_3StridedSlice3lstm_16/while/lstm_cell_16/ReadVariableOp_3:value:09lstm_16/while/lstm_cell_16/strided_slice_3/stack:output:0;lstm_16/while/lstm_cell_16/strided_slice_3/stack_1:output:0;lstm_16/while/lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_16/while/lstm_cell_16/strided_slice_3?
#lstm_16/while/lstm_cell_16/MatMul_7MatMul$lstm_16/while/lstm_cell_16/mul_3:z:03lstm_16/while/lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_16/while/lstm_cell_16/MatMul_7?
 lstm_16/while/lstm_cell_16/add_4AddV2-lstm_16/while/lstm_cell_16/BiasAdd_3:output:0-lstm_16/while/lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/add_4?
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid$lstm_16/while/lstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_16/while/lstm_cell_16/Sigmoid_2?
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_16/while/lstm_cell_16/Relu_1?
 lstm_16/while/lstm_cell_16/mul_6Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_16/while/lstm_cell_16/mul_6?
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder$lstm_16/while/lstm_cell_16/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_16/while/TensorArrayV2Write/TensorListSetIteml
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add/y?
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/addp
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add_1/y?
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/add_1?
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity?
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_1?
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_2?
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_3?
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_6:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_16/while/Identity_4?
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_3:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_16/while/Identity_5?
lstm_16/while/NoOpNoOp*^lstm_16/while/lstm_cell_16/ReadVariableOp,^lstm_16/while/lstm_cell_16/ReadVariableOp_1,^lstm_16/while/lstm_cell_16/ReadVariableOp_2,^lstm_16/while/lstm_cell_16/ReadVariableOp_30^lstm_16/while/lstm_cell_16/split/ReadVariableOp2^lstm_16/while/lstm_cell_16/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_16/while/NoOp"9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"j
2lstm_16_while_lstm_cell_16_readvariableop_resource4lstm_16_while_lstm_cell_16_readvariableop_resource_0"z
:lstm_16_while_lstm_cell_16_split_1_readvariableop_resource<lstm_16_while_lstm_cell_16_split_1_readvariableop_resource_0"v
8lstm_16_while_lstm_cell_16_split_readvariableop_resource:lstm_16_while_lstm_cell_16_split_readvariableop_resource_0"?
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_16/while/lstm_cell_16/ReadVariableOp)lstm_16/while/lstm_cell_16/ReadVariableOp2Z
+lstm_16/while/lstm_cell_16/ReadVariableOp_1+lstm_16/while/lstm_cell_16/ReadVariableOp_12Z
+lstm_16/while/lstm_cell_16/ReadVariableOp_2+lstm_16/while/lstm_cell_16/ReadVariableOp_22Z
+lstm_16/while/lstm_cell_16/ReadVariableOp_3+lstm_16/while/lstm_cell_16/ReadVariableOp_32b
/lstm_16/while/lstm_cell_16/split/ReadVariableOp/lstm_16/while/lstm_cell_16/split/ReadVariableOp2f
1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp1lstm_16/while/lstm_cell_16/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
: 
ޡ
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_606760

inputs=
*lstm_cell_16_split_readvariableop_resource:	?;
,lstm_cell_16_split_1_readvariableop_resource:	?7
$lstm_cell_16_readvariableop_resource:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_16/ReadVariableOp?lstm_cell_16/ReadVariableOp_1?lstm_cell_16/ReadVariableOp_2?lstm_cell_16/ReadVariableOp_3?!lstm_cell_16/split/ReadVariableOp?#lstm_cell_16/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2z
lstm_cell_16/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_16/ones_like/Shape?
lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_16/ones_like/Const?
lstm_cell_16/ones_likeFill%lstm_cell_16/ones_like/Shape:output:0%lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/ones_like~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
!lstm_cell_16/split/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_16/split/ReadVariableOp?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0)lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_16/split?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul?
lstm_cell_16/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_1?
lstm_cell_16/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_2?
lstm_cell_16/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_3?
lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_16/split_1/split_dim?
#lstm_cell_16/split_1/ReadVariableOpReadVariableOp,lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_16/split_1/ReadVariableOp?
lstm_cell_16/split_1Split'lstm_cell_16/split_1/split_dim:output:0+lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_16/split_1?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/MatMul:product:0lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd?
lstm_cell_16/BiasAdd_1BiasAddlstm_cell_16/MatMul_1:product:0lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_1?
lstm_cell_16/BiasAdd_2BiasAddlstm_cell_16/MatMul_2:product:0lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_2?
lstm_cell_16/BiasAdd_3BiasAddlstm_cell_16/MatMul_3:product:0lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_3?
lstm_cell_16/mulMulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul?
lstm_cell_16/mul_1Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_1?
lstm_cell_16/mul_2Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_2?
lstm_cell_16/mul_3Mulzeros:output:0lstm_cell_16/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_3?
lstm_cell_16/ReadVariableOpReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp?
 lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_16/strided_slice/stack?
"lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice/stack_1?
"lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_16/strided_slice/stack_2?
lstm_cell_16/strided_sliceStridedSlice#lstm_cell_16/ReadVariableOp:value:0)lstm_cell_16/strided_slice/stack:output:0+lstm_cell_16/strided_slice/stack_1:output:0+lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice?
lstm_cell_16/MatMul_4MatMullstm_cell_16/mul:z:0#lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_4?
lstm_cell_16/addAddV2lstm_cell_16/BiasAdd:output:0lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add
lstm_cell_16/SigmoidSigmoidlstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid?
lstm_cell_16/ReadVariableOp_1ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_1?
"lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice_1/stack?
$lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_16/strided_slice_1/stack_1?
$lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_1/stack_2?
lstm_cell_16/strided_slice_1StridedSlice%lstm_cell_16/ReadVariableOp_1:value:0+lstm_cell_16/strided_slice_1/stack:output:0-lstm_cell_16/strided_slice_1/stack_1:output:0-lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_1?
lstm_cell_16/MatMul_5MatMullstm_cell_16/mul_1:z:0%lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_5?
lstm_cell_16/add_1AddV2lstm_cell_16/BiasAdd_1:output:0lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mul_4Mullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_4?
lstm_cell_16/ReadVariableOp_2ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_2?
"lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_16/strided_slice_2/stack?
$lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_16/strided_slice_2/stack_1?
$lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_2/stack_2?
lstm_cell_16/strided_slice_2StridedSlice%lstm_cell_16/ReadVariableOp_2:value:0+lstm_cell_16/strided_slice_2/stack:output:0-lstm_cell_16/strided_slice_2/stack_1:output:0-lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_2?
lstm_cell_16/MatMul_6MatMullstm_cell_16/mul_2:z:0%lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_6?
lstm_cell_16/add_2AddV2lstm_cell_16/BiasAdd_2:output:0lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_2x
lstm_cell_16/ReluRelulstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu?
lstm_cell_16/mul_5Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_5?
lstm_cell_16/add_3AddV2lstm_cell_16/mul_4:z:0lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_3?
lstm_cell_16/ReadVariableOp_3ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_3?
"lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_16/strided_slice_3/stack?
$lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_16/strided_slice_3/stack_1?
$lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_3/stack_2?
lstm_cell_16/strided_slice_3StridedSlice%lstm_cell_16/ReadVariableOp_3:value:0+lstm_cell_16/strided_slice_3/stack:output:0-lstm_cell_16/strided_slice_3/stack_1:output:0-lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_3?
lstm_cell_16/MatMul_7MatMullstm_cell_16/mul_3:z:0%lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_7?
lstm_cell_16/add_4AddV2lstm_cell_16/BiasAdd_3:output:0lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_4?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_6Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_16_split_readvariableop_resource,lstm_cell_16_split_1_readvariableop_resource$lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_606627*
condR
while_cond_606626*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_16/ReadVariableOp^lstm_cell_16/ReadVariableOp_1^lstm_cell_16/ReadVariableOp_2^lstm_cell_16/ReadVariableOp_3"^lstm_cell_16/split/ReadVariableOp$^lstm_cell_16/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_16/ReadVariableOplstm_cell_16/ReadVariableOp2>
lstm_cell_16/ReadVariableOp_1lstm_cell_16/ReadVariableOp_12>
lstm_cell_16/ReadVariableOp_2lstm_cell_16/ReadVariableOp_22>
lstm_cell_16/ReadVariableOp_3lstm_cell_16/ReadVariableOp_32F
!lstm_cell_16/split/ReadVariableOp!lstm_cell_16/split/ReadVariableOp2J
#lstm_cell_16/split_1/ReadVariableOp#lstm_cell_16/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607262

inputs!
lstm_16_607231:	?
lstm_16_607233:	?!
lstm_16_607235:	 ?!
dense_20_607238:  
dense_20_607240: !
dense_21_607243: 
dense_21_607245:
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?/dense_21/bias/Regularizer/Square/ReadVariableOp?lstm_16/StatefulPartitionedCall?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
lstm_16/StatefulPartitionedCallStatefulPartitionedCallinputslstm_16_607231lstm_16_607233lstm_16_607235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6071982!
lstm_16/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_20_607238dense_20_607240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_6067792"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_607243dense_21_607245*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_6068012"
 dense_21/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_6068202
reshape_10/PartitionedCall?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_16_607231*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/mul?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_607245*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mul?
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall0^dense_21/bias/Regularizer/Square/ReadVariableOp ^lstm_16/StatefulPartitionedCall>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_609199

inputs=
*lstm_cell_16_split_readvariableop_resource:	?;
,lstm_cell_16_split_1_readvariableop_resource:	?7
$lstm_cell_16_readvariableop_resource:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_16/ReadVariableOp?lstm_cell_16/ReadVariableOp_1?lstm_cell_16/ReadVariableOp_2?lstm_cell_16/ReadVariableOp_3?!lstm_cell_16/split/ReadVariableOp?#lstm_cell_16/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
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
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2z
lstm_cell_16/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_16/ones_like/Shape?
lstm_cell_16/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_16/ones_like/Const?
lstm_cell_16/ones_likeFill%lstm_cell_16/ones_like/Shape:output:0%lstm_cell_16/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/ones_like}
lstm_cell_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout/Const?
lstm_cell_16/dropout/MulMullstm_cell_16/ones_like:output:0#lstm_cell_16/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Mul?
lstm_cell_16/dropout/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout/Shape?
1lstm_cell_16/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_16/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_16/dropout/random_uniform/RandomUniform?
#lstm_cell_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_16/dropout/GreaterEqual/y?
!lstm_cell_16/dropout/GreaterEqualGreaterEqual:lstm_cell_16/dropout/random_uniform/RandomUniform:output:0,lstm_cell_16/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_16/dropout/GreaterEqual?
lstm_cell_16/dropout/CastCast%lstm_cell_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Cast?
lstm_cell_16/dropout/Mul_1Mullstm_cell_16/dropout/Mul:z:0lstm_cell_16/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout/Mul_1?
lstm_cell_16/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_1/Const?
lstm_cell_16/dropout_1/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Mul?
lstm_cell_16/dropout_1/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_1/Shape?
3lstm_cell_16/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??Z25
3lstm_cell_16/dropout_1/random_uniform/RandomUniform?
%lstm_cell_16/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_1/GreaterEqual/y?
#lstm_cell_16/dropout_1/GreaterEqualGreaterEqual<lstm_cell_16/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_1/GreaterEqual?
lstm_cell_16/dropout_1/CastCast'lstm_cell_16/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Cast?
lstm_cell_16/dropout_1/Mul_1Mullstm_cell_16/dropout_1/Mul:z:0lstm_cell_16/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_1/Mul_1?
lstm_cell_16/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_2/Const?
lstm_cell_16/dropout_2/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Mul?
lstm_cell_16/dropout_2/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_2/Shape?
3lstm_cell_16/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??k25
3lstm_cell_16/dropout_2/random_uniform/RandomUniform?
%lstm_cell_16/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_2/GreaterEqual/y?
#lstm_cell_16/dropout_2/GreaterEqualGreaterEqual<lstm_cell_16/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_2/GreaterEqual?
lstm_cell_16/dropout_2/CastCast'lstm_cell_16/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Cast?
lstm_cell_16/dropout_2/Mul_1Mullstm_cell_16/dropout_2/Mul:z:0lstm_cell_16/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_2/Mul_1?
lstm_cell_16/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_16/dropout_3/Const?
lstm_cell_16/dropout_3/MulMullstm_cell_16/ones_like:output:0%lstm_cell_16/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Mul?
lstm_cell_16/dropout_3/ShapeShapelstm_cell_16/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_16/dropout_3/Shape?
3lstm_cell_16/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_16/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_16/dropout_3/random_uniform/RandomUniform?
%lstm_cell_16/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_16/dropout_3/GreaterEqual/y?
#lstm_cell_16/dropout_3/GreaterEqualGreaterEqual<lstm_cell_16/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_16/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_16/dropout_3/GreaterEqual?
lstm_cell_16/dropout_3/CastCast'lstm_cell_16/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Cast?
lstm_cell_16/dropout_3/Mul_1Mullstm_cell_16/dropout_3/Mul:z:0lstm_cell_16/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/dropout_3/Mul_1~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
!lstm_cell_16/split/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_16/split/ReadVariableOp?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0)lstm_cell_16/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_16/split?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0lstm_cell_16/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul?
lstm_cell_16/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_16/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_1?
lstm_cell_16/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_16/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_2?
lstm_cell_16/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_16/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_3?
lstm_cell_16/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_16/split_1/split_dim?
#lstm_cell_16/split_1/ReadVariableOpReadVariableOp,lstm_cell_16_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_16/split_1/ReadVariableOp?
lstm_cell_16/split_1Split'lstm_cell_16/split_1/split_dim:output:0+lstm_cell_16/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_16/split_1?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/MatMul:product:0lstm_cell_16/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd?
lstm_cell_16/BiasAdd_1BiasAddlstm_cell_16/MatMul_1:product:0lstm_cell_16/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_1?
lstm_cell_16/BiasAdd_2BiasAddlstm_cell_16/MatMul_2:product:0lstm_cell_16/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_2?
lstm_cell_16/BiasAdd_3BiasAddlstm_cell_16/MatMul_3:product:0lstm_cell_16/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/BiasAdd_3?
lstm_cell_16/mulMulzeros:output:0lstm_cell_16/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul?
lstm_cell_16/mul_1Mulzeros:output:0 lstm_cell_16/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_1?
lstm_cell_16/mul_2Mulzeros:output:0 lstm_cell_16/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_2?
lstm_cell_16/mul_3Mulzeros:output:0 lstm_cell_16/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_3?
lstm_cell_16/ReadVariableOpReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp?
 lstm_cell_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_16/strided_slice/stack?
"lstm_cell_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice/stack_1?
"lstm_cell_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_16/strided_slice/stack_2?
lstm_cell_16/strided_sliceStridedSlice#lstm_cell_16/ReadVariableOp:value:0)lstm_cell_16/strided_slice/stack:output:0+lstm_cell_16/strided_slice/stack_1:output:0+lstm_cell_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice?
lstm_cell_16/MatMul_4MatMullstm_cell_16/mul:z:0#lstm_cell_16/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_4?
lstm_cell_16/addAddV2lstm_cell_16/BiasAdd:output:0lstm_cell_16/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add
lstm_cell_16/SigmoidSigmoidlstm_cell_16/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid?
lstm_cell_16/ReadVariableOp_1ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_1?
"lstm_cell_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_16/strided_slice_1/stack?
$lstm_cell_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_16/strided_slice_1/stack_1?
$lstm_cell_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_1/stack_2?
lstm_cell_16/strided_slice_1StridedSlice%lstm_cell_16/ReadVariableOp_1:value:0+lstm_cell_16/strided_slice_1/stack:output:0-lstm_cell_16/strided_slice_1/stack_1:output:0-lstm_cell_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_1?
lstm_cell_16/MatMul_5MatMullstm_cell_16/mul_1:z:0%lstm_cell_16/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_5?
lstm_cell_16/add_1AddV2lstm_cell_16/BiasAdd_1:output:0lstm_cell_16/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mul_4Mullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_4?
lstm_cell_16/ReadVariableOp_2ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_2?
"lstm_cell_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_16/strided_slice_2/stack?
$lstm_cell_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_16/strided_slice_2/stack_1?
$lstm_cell_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_2/stack_2?
lstm_cell_16/strided_slice_2StridedSlice%lstm_cell_16/ReadVariableOp_2:value:0+lstm_cell_16/strided_slice_2/stack:output:0-lstm_cell_16/strided_slice_2/stack_1:output:0-lstm_cell_16/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_2?
lstm_cell_16/MatMul_6MatMullstm_cell_16/mul_2:z:0%lstm_cell_16/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_6?
lstm_cell_16/add_2AddV2lstm_cell_16/BiasAdd_2:output:0lstm_cell_16/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_2x
lstm_cell_16/ReluRelulstm_cell_16/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu?
lstm_cell_16/mul_5Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_5?
lstm_cell_16/add_3AddV2lstm_cell_16/mul_4:z:0lstm_cell_16/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_3?
lstm_cell_16/ReadVariableOp_3ReadVariableOp$lstm_cell_16_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_16/ReadVariableOp_3?
"lstm_cell_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_16/strided_slice_3/stack?
$lstm_cell_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_16/strided_slice_3/stack_1?
$lstm_cell_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_16/strided_slice_3/stack_2?
lstm_cell_16/strided_slice_3StridedSlice%lstm_cell_16/ReadVariableOp_3:value:0+lstm_cell_16/strided_slice_3/stack:output:0-lstm_cell_16/strided_slice_3/stack_1:output:0-lstm_cell_16/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_16/strided_slice_3?
lstm_cell_16/MatMul_7MatMullstm_cell_16/mul_3:z:0%lstm_cell_16/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/MatMul_7?
lstm_cell_16/add_4AddV2lstm_cell_16/BiasAdd_3:output:0lstm_cell_16/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/add_4?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_6Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_16/mul_6?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_16_split_readvariableop_resource,lstm_cell_16_split_1_readvariableop_resource$lstm_cell_16_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_609034*
condR
while_cond_609033*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_16_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_16/ReadVariableOp^lstm_cell_16/ReadVariableOp_1^lstm_cell_16/ReadVariableOp_2^lstm_cell_16/ReadVariableOp_3"^lstm_cell_16/split/ReadVariableOp$^lstm_cell_16/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_16/ReadVariableOplstm_cell_16/ReadVariableOp2>
lstm_cell_16/ReadVariableOp_1lstm_cell_16/ReadVariableOp_12>
lstm_cell_16/ReadVariableOp_2lstm_cell_16/ReadVariableOp_22>
lstm_cell_16/ReadVariableOp_3lstm_cell_16/ReadVariableOp_32F
!lstm_cell_16/split/ReadVariableOp!lstm_cell_16/split/ReadVariableOp2J
#lstm_cell_16/split_1/ReadVariableOp#lstm_cell_16/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_605940

inputs&
lstm_cell_16_605852:	?"
lstm_cell_16_605854:	?&
lstm_cell_16_605856:	 ?
identity??=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_16/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:????????? 2
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
B :?2
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
zeros_1/packed/1?
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
:????????? 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_605852lstm_cell_16_605854lstm_cell_16_605856*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_6058512&
$lstm_cell_16/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_605852lstm_cell_16_605854lstm_cell_16_605856*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_605865*
condR
while_cond_605864*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :?????????????????? *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_16_605852*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_7_layer_call_fn_607443

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_6072622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607332
input_8!
lstm_16_607301:	?
lstm_16_607303:	?!
lstm_16_607305:	 ?!
dense_20_607308:  
dense_20_607310: !
dense_21_607313: 
dense_21_607315:
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?/dense_21/bias/Regularizer/Square/ReadVariableOp?lstm_16/StatefulPartitionedCall?=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
lstm_16/StatefulPartitionedCallStatefulPartitionedCallinput_8lstm_16_607301lstm_16_607303lstm_16_607305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_6067602!
lstm_16/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_20_607308dense_20_607310*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_6067792"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_607313dense_21_607315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_6068012"
 dense_21/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_6068202
reshape_10/PartitionedCall?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_16_607301*
_output_shapes
:	?*
dtype02?
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp?
.lstm_16/lstm_cell_16/kernel/Regularizer/SquareSquareElstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_16/lstm_cell_16/kernel/Regularizer/Square?
-lstm_16/lstm_cell_16/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_16/lstm_cell_16/kernel/Regularizer/Const?
+lstm_16/lstm_cell_16/kernel/Regularizer/SumSum2lstm_16/lstm_cell_16/kernel/Regularizer/Square:y:06lstm_16/lstm_cell_16/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/Sum?
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_16/lstm_cell_16/kernel/Regularizer/mul/x?
+lstm_16/lstm_cell_16/kernel/Regularizer/mulMul6lstm_16/lstm_cell_16/kernel/Regularizer/mul/x:output:04lstm_16/lstm_cell_16/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_16/lstm_cell_16/kernel/Regularizer/mul?
/dense_21/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_607315*
_output_shapes
:*
dtype021
/dense_21/bias/Regularizer/Square/ReadVariableOp?
 dense_21/bias/Regularizer/SquareSquare7dense_21/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_21/bias/Regularizer/Square?
dense_21/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_21/bias/Regularizer/Const?
dense_21/bias/Regularizer/SumSum$dense_21/bias/Regularizer/Square:y:0(dense_21/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/Sum?
dense_21/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_21/bias/Regularizer/mul/x?
dense_21/bias/Regularizer/mulMul(dense_21/bias/Regularizer/mul/x:output:0&dense_21/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_21/bias/Regularizer/mul?
IdentityIdentity#reshape_10/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall0^dense_21/bias/Regularizer/Square/ReadVariableOp ^lstm_16/StatefulPartitionedCall>^lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2b
/dense_21/bias/Regularizer/Square/ReadVariableOp/dense_21/bias/Regularizer/Square/ReadVariableOp2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2~
=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp=lstm_16/lstm_cell_16/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_8
?
?
while_cond_608208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_608208___redundant_placeholder04
0while_while_cond_608208___redundant_placeholder14
0while_while_cond_608208___redundant_placeholder24
0while_while_cond_608208___redundant_placeholder3
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
@: : : : :????????? :????????? : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:????????? :-)
'
_output_shapes
:????????? :

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_84
serving_default_input_8:0?????????B

reshape_104
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
?
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
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?
trainable_variables
	variables
regularization_losses
 	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
?
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
?

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
?
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
?

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
!:  2dense_20/kernel
: 2dense_20/bias
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
?

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
!: 2dense_21/kernel
:2dense_21/bias
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
?

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
?

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
.:,	?2lstm_16/lstm_cell_16/kernel
8:6	 ?2%lstm_16/lstm_cell_16/recurrent_kernel
(:&?2lstm_16/lstm_cell_16/bias
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
?

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
&:$  2Adam/dense_20/kernel/m
 : 2Adam/dense_20/bias/m
&:$ 2Adam/dense_21/kernel/m
 :2Adam/dense_21/bias/m
3:1	?2"Adam/lstm_16/lstm_cell_16/kernel/m
=:;	 ?2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
-:+?2 Adam/lstm_16/lstm_cell_16/bias/m
&:$  2Adam/dense_20/kernel/v
 : 2Adam/dense_20/bias/v
&:$ 2Adam/dense_21/kernel/v
 :2Adam/dense_21/bias/v
3:1	?2"Adam/lstm_16/lstm_cell_16/kernel/v
=:;	 ?2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
-:+?2 Adam/lstm_16/lstm_cell_16/bias/v
?B?
!__inference__wrapped_model_605727input_8"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_sequential_7_layer_call_fn_606852
-__inference_sequential_7_layer_call_fn_607424
-__inference_sequential_7_layer_call_fn_607443
-__inference_sequential_7_layer_call_fn_607298?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607714
H__inference_sequential_7_layer_call_and_return_conditional_losses_608049
H__inference_sequential_7_layer_call_and_return_conditional_losses_607332
H__inference_sequential_7_layer_call_and_return_conditional_losses_607366?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_16_layer_call_fn_608066
(__inference_lstm_16_layer_call_fn_608077
(__inference_lstm_16_layer_call_fn_608088
(__inference_lstm_16_layer_call_fn_608099?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608342
C__inference_lstm_16_layer_call_and_return_conditional_losses_608649
C__inference_lstm_16_layer_call_and_return_conditional_losses_608892
C__inference_lstm_16_layer_call_and_return_conditional_losses_609199?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_20_layer_call_fn_609208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_20_layer_call_and_return_conditional_losses_609219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_21_layer_call_fn_609234?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_21_layer_call_and_return_conditional_losses_609250?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_reshape_10_layer_call_fn_609255?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_reshape_10_layer_call_and_return_conditional_losses_609268?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_609279?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_607405input_8"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_lstm_cell_16_layer_call_fn_609302
-__inference_lstm_cell_16_layer_call_fn_609319?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_609400
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_609513?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference_loss_fn_1_609524?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? ?
!__inference__wrapped_model_605727|&('4?1
*?'
%?"
input_8?????????
? ";?8
6

reshape_10(?%

reshape_10??????????
D__inference_dense_20_layer_call_and_return_conditional_losses_609219\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? |
)__inference_dense_20_layer_call_fn_609208O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
D__inference_dense_21_layer_call_and_return_conditional_losses_609250\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
)__inference_dense_21_layer_call_fn_609234O/?,
%?"
 ?
inputs????????? 
? "??????????;
__inference_loss_fn_0_609279?

? 
? "? ;
__inference_loss_fn_1_609524&?

? 
? "? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608342}&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0????????? 
? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608649}&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0????????? 
? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_608892m&('??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0????????? 
? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_609199m&('??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0????????? 
? ?
(__inference_lstm_16_layer_call_fn_608066p&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "?????????? ?
(__inference_lstm_16_layer_call_fn_608077p&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "?????????? ?
(__inference_lstm_16_layer_call_fn_608088`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
(__inference_lstm_16_layer_call_fn_608099`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_609400?&('??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_609513?&('??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "s?p
i?f
?
0/0????????? 
E?B
?
0/1/0????????? 
?
0/1/1????????? 
? ?
-__inference_lstm_cell_16_layer_call_fn_609302?&('??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p 
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
-__inference_lstm_cell_16_layer_call_fn_609319?&('??}
v?s
 ?
inputs?????????
K?H
"?
states/0????????? 
"?
states/1????????? 
p
? "c?`
?
0????????? 
A?>
?
1/0????????? 
?
1/1????????? ?
F__inference_reshape_10_layer_call_and_return_conditional_losses_609268\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ~
+__inference_reshape_10_layer_call_fn_609255O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_sequential_7_layer_call_and_return_conditional_losses_607332r&('<?9
2?/
%?"
input_8?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607366r&('<?9
2?/
%?"
input_8?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_607714q&(';?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_7_layer_call_and_return_conditional_losses_608049q&(';?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
-__inference_sequential_7_layer_call_fn_606852e&('<?9
2?/
%?"
input_8?????????
p 

 
? "???????????
-__inference_sequential_7_layer_call_fn_607298e&('<?9
2?/
%?"
input_8?????????
p

 
? "???????????
-__inference_sequential_7_layer_call_fn_607424d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_7_layer_call_fn_607443d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_607405?&('??<
? 
5?2
0
input_8%?"
input_8?????????";?8
6

reshape_10(?%

reshape_10?????????