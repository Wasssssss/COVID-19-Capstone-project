î&
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ëÎ%
z
dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_74/kernel
s
#dense_74/kernel/Read/ReadVariableOpReadVariableOpdense_74/kernel*
_output_shapes

:  *
dtype0
r
dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_74/bias
k
!dense_74/bias/Read/ReadVariableOpReadVariableOpdense_74/bias*
_output_shapes
: *
dtype0
z
dense_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_75/kernel
s
#dense_75/kernel/Read/ReadVariableOpReadVariableOpdense_75/kernel*
_output_shapes

: *
dtype0
r
dense_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_75/bias
k
!dense_75/bias/Read/ReadVariableOpReadVariableOpdense_75/bias*
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
lstm_61/lstm_cell_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_61/lstm_cell_61/kernel

/lstm_61/lstm_cell_61/kernel/Read/ReadVariableOpReadVariableOplstm_61/lstm_cell_61/kernel*
_output_shapes
:	*
dtype0
§
%lstm_61/lstm_cell_61/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_61/lstm_cell_61/recurrent_kernel
 
9lstm_61/lstm_cell_61/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_61/lstm_cell_61/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_61/lstm_cell_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_61/lstm_cell_61/bias

-lstm_61/lstm_cell_61/bias/Read/ReadVariableOpReadVariableOplstm_61/lstm_cell_61/bias*
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
Adam/dense_74/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_74/kernel/m

*Adam/dense_74/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_74/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_74/bias/m
y
(Adam/dense_74/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/m*
_output_shapes
: *
dtype0

Adam/dense_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_75/kernel/m

*Adam/dense_75/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_75/bias/m
y
(Adam/dense_75/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_61/lstm_cell_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_61/lstm_cell_61/kernel/m

6Adam/lstm_61/lstm_cell_61/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_61/lstm_cell_61/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_61/lstm_cell_61/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m
®
@Adam/lstm_61/lstm_cell_61/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_61/lstm_cell_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_61/lstm_cell_61/bias/m

4Adam/lstm_61/lstm_cell_61/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_61/lstm_cell_61/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_74/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_74/kernel/v

*Adam/dense_74/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_74/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_74/bias/v
y
(Adam/dense_74/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/v*
_output_shapes
: *
dtype0

Adam/dense_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_75/kernel/v

*Adam/dense_75/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_75/bias/v
y
(Adam/dense_75/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_61/lstm_cell_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_61/lstm_cell_61/kernel/v

6Adam/lstm_61/lstm_cell_61/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_61/lstm_cell_61/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_61/lstm_cell_61/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v
®
@Adam/lstm_61/lstm_cell_61/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_61/lstm_cell_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_61/lstm_cell_61/bias/v

4Adam/lstm_61/lstm_cell_61/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_61/lstm_cell_61/bias/v*
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
[Y
VARIABLE_VALUEdense_74/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_74/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEdense_75/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_75/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
a_
VARIABLE_VALUElstm_61/lstm_cell_61/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_61/lstm_cell_61/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_61/lstm_cell_61/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
~|
VARIABLE_VALUEAdam/dense_74/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_74/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_75/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_75/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_61/lstm_cell_61/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_61/lstm_cell_61/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_61/lstm_cell_61/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_74/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_74/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_75/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_75/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_61/lstm_cell_61/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_61/lstm_cell_61/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_61/lstm_cell_61/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_26Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_26lstm_61/lstm_cell_61/kernellstm_61/lstm_cell_61/bias%lstm_61/lstm_cell_61/recurrent_kerneldense_74/kerneldense_74/biasdense_75/kerneldense_75/bias*
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
%__inference_signature_wrapper_1991278
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_74/kernel/Read/ReadVariableOp!dense_74/bias/Read/ReadVariableOp#dense_75/kernel/Read/ReadVariableOp!dense_75/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_61/lstm_cell_61/kernel/Read/ReadVariableOp9lstm_61/lstm_cell_61/recurrent_kernel/Read/ReadVariableOp-lstm_61/lstm_cell_61/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_74/kernel/m/Read/ReadVariableOp(Adam/dense_74/bias/m/Read/ReadVariableOp*Adam/dense_75/kernel/m/Read/ReadVariableOp(Adam/dense_75/bias/m/Read/ReadVariableOp6Adam/lstm_61/lstm_cell_61/kernel/m/Read/ReadVariableOp@Adam/lstm_61/lstm_cell_61/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_61/lstm_cell_61/bias/m/Read/ReadVariableOp*Adam/dense_74/kernel/v/Read/ReadVariableOp(Adam/dense_74/bias/v/Read/ReadVariableOp*Adam/dense_75/kernel/v/Read/ReadVariableOp(Adam/dense_75/bias/v/Read/ReadVariableOp6Adam/lstm_61/lstm_cell_61/kernel/v/Read/ReadVariableOp@Adam/lstm_61/lstm_cell_61/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_61/lstm_cell_61/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_1993504
Å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_74/kerneldense_74/biasdense_75/kerneldense_75/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_61/lstm_cell_61/kernel%lstm_61/lstm_cell_61/recurrent_kernellstm_61/lstm_cell_61/biastotalcountAdam/dense_74/kernel/mAdam/dense_74/bias/mAdam/dense_75/kernel/mAdam/dense_75/bias/m"Adam/lstm_61/lstm_cell_61/kernel/m,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m Adam/lstm_61/lstm_cell_61/bias/mAdam/dense_74/kernel/vAdam/dense_74/bias/vAdam/dense_75/kernel/vAdam/dense_75/bias/v"Adam/lstm_61/lstm_cell_61/kernel/v,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v Adam/lstm_61/lstm_cell_61/bias/v*(
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
#__inference__traced_restore_1993598èÏ$
Ú
È
while_cond_1990905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1990905___redundant_placeholder05
1while_while_cond_1990905___redundant_placeholder15
1while_while_cond_1990905___redundant_placeholder25
1while_while_cond_1990905___redundant_placeholder3
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
é%
ê
while_body_1989738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_61_1989762_0:	+
while_lstm_cell_61_1989764_0:	/
while_lstm_cell_61_1989766_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_61_1989762:	)
while_lstm_cell_61_1989764:	-
while_lstm_cell_61_1989766:	 ¢*while/lstm_cell_61/StatefulPartitionedCallÃ
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
*while/lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_61_1989762_0while_lstm_cell_61_1989764_0while_lstm_cell_61_1989766_0*
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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_19897242,
*while/lstm_cell_61/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_61/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_61/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_61/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_61/StatefulPartitionedCall*"
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
while_lstm_cell_61_1989762while_lstm_cell_61_1989762_0":
while_lstm_cell_61_1989764while_lstm_cell_61_1989764_0":
while_lstm_cell_61_1989766while_lstm_cell_61_1989766_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_61/StatefulPartitionedCall*while/lstm_cell_61/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
·v
ì
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1993386

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
seed2©Û2&
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
dropout_1/ShapeÖ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ö>2(
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
seed2îÿæ2(
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
seed2îü2(
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2,
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
Ð
ª
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992522
inputs_0=
*lstm_cell_61_split_readvariableop_resource:	;
,lstm_cell_61_split_1_readvariableop_resource:	7
$lstm_cell_61_readvariableop_resource:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_61/ReadVariableOp¢lstm_cell_61/ReadVariableOp_1¢lstm_cell_61/ReadVariableOp_2¢lstm_cell_61/ReadVariableOp_3¢!lstm_cell_61/split/ReadVariableOp¢#lstm_cell_61/split_1/ReadVariableOp¢whileF
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
lstm_cell_61/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_61/ones_like/Shape
lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_61/ones_like/Const¸
lstm_cell_61/ones_likeFill%lstm_cell_61/ones_like/Shape:output:0%lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/ones_like}
lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout/Const³
lstm_cell_61/dropout/MulMullstm_cell_61/ones_like:output:0#lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Mul
lstm_cell_61/dropout/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout/Shapeø
1lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2û²ã23
1lstm_cell_61/dropout/random_uniform/RandomUniform
#lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_61/dropout/GreaterEqual/yò
!lstm_cell_61/dropout/GreaterEqualGreaterEqual:lstm_cell_61/dropout/random_uniform/RandomUniform:output:0,lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_61/dropout/GreaterEqual¦
lstm_cell_61/dropout/CastCast%lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Cast®
lstm_cell_61/dropout/Mul_1Mullstm_cell_61/dropout/Mul:z:0lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Mul_1
lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_1/Const¹
lstm_cell_61/dropout_1/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Mul
lstm_cell_61/dropout_1/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_1/Shapeþ
3lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2±ð25
3lstm_cell_61/dropout_1/random_uniform/RandomUniform
%lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_1/GreaterEqual/yú
#lstm_cell_61/dropout_1/GreaterEqualGreaterEqual<lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_1/GreaterEqual¬
lstm_cell_61/dropout_1/CastCast'lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Cast¶
lstm_cell_61/dropout_1/Mul_1Mullstm_cell_61/dropout_1/Mul:z:0lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Mul_1
lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_2/Const¹
lstm_cell_61/dropout_2/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Mul
lstm_cell_61/dropout_2/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_2/Shapeþ
3lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2½25
3lstm_cell_61/dropout_2/random_uniform/RandomUniform
%lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_2/GreaterEqual/yú
#lstm_cell_61/dropout_2/GreaterEqualGreaterEqual<lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_2/GreaterEqual¬
lstm_cell_61/dropout_2/CastCast'lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Cast¶
lstm_cell_61/dropout_2/Mul_1Mullstm_cell_61/dropout_2/Mul:z:0lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Mul_1
lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_3/Const¹
lstm_cell_61/dropout_3/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Mul
lstm_cell_61/dropout_3/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_3/Shapeþ
3lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2êÉ25
3lstm_cell_61/dropout_3/random_uniform/RandomUniform
%lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_3/GreaterEqual/yú
#lstm_cell_61/dropout_3/GreaterEqualGreaterEqual<lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_3/GreaterEqual¬
lstm_cell_61/dropout_3/CastCast'lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Cast¶
lstm_cell_61/dropout_3/Mul_1Mullstm_cell_61/dropout_3/Mul:z:0lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Mul_1~
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_61/split/split_dim²
!lstm_cell_61/split/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_61/split/ReadVariableOpÛ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0)lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_61/split
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul¡
lstm_cell_61/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_1¡
lstm_cell_61/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_2¡
lstm_cell_61/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_3
lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_61/split_1/split_dim´
#lstm_cell_61/split_1/ReadVariableOpReadVariableOp,lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_61/split_1/ReadVariableOpÓ
lstm_cell_61/split_1Split'lstm_cell_61/split_1/split_dim:output:0+lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_61/split_1§
lstm_cell_61/BiasAddBiasAddlstm_cell_61/MatMul:product:0lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd­
lstm_cell_61/BiasAdd_1BiasAddlstm_cell_61/MatMul_1:product:0lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_1­
lstm_cell_61/BiasAdd_2BiasAddlstm_cell_61/MatMul_2:product:0lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_2­
lstm_cell_61/BiasAdd_3BiasAddlstm_cell_61/MatMul_3:product:0lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_3
lstm_cell_61/mulMulzeros:output:0lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul
lstm_cell_61/mul_1Mulzeros:output:0 lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_1
lstm_cell_61/mul_2Mulzeros:output:0 lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_2
lstm_cell_61/mul_3Mulzeros:output:0 lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_3 
lstm_cell_61/ReadVariableOpReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp
 lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_61/strided_slice/stack
"lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice/stack_1
"lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_61/strided_slice/stack_2Ê
lstm_cell_61/strided_sliceStridedSlice#lstm_cell_61/ReadVariableOp:value:0)lstm_cell_61/strided_slice/stack:output:0+lstm_cell_61/strided_slice/stack_1:output:0+lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice¥
lstm_cell_61/MatMul_4MatMullstm_cell_61/mul:z:0#lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_4
lstm_cell_61/addAddV2lstm_cell_61/BiasAdd:output:0lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add
lstm_cell_61/SigmoidSigmoidlstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid¤
lstm_cell_61/ReadVariableOp_1ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_1
"lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice_1/stack
$lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_61/strided_slice_1/stack_1
$lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_1/stack_2Ö
lstm_cell_61/strided_slice_1StridedSlice%lstm_cell_61/ReadVariableOp_1:value:0+lstm_cell_61/strided_slice_1/stack:output:0-lstm_cell_61/strided_slice_1/stack_1:output:0-lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_1©
lstm_cell_61/MatMul_5MatMullstm_cell_61/mul_1:z:0%lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_5¥
lstm_cell_61/add_1AddV2lstm_cell_61/BiasAdd_1:output:0lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_1
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_1
lstm_cell_61/mul_4Mullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_4¤
lstm_cell_61/ReadVariableOp_2ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_2
"lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_61/strided_slice_2/stack
$lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_61/strided_slice_2/stack_1
$lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_2/stack_2Ö
lstm_cell_61/strided_slice_2StridedSlice%lstm_cell_61/ReadVariableOp_2:value:0+lstm_cell_61/strided_slice_2/stack:output:0-lstm_cell_61/strided_slice_2/stack_1:output:0-lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_2©
lstm_cell_61/MatMul_6MatMullstm_cell_61/mul_2:z:0%lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_6¥
lstm_cell_61/add_2AddV2lstm_cell_61/BiasAdd_2:output:0lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_2x
lstm_cell_61/ReluRelulstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu
lstm_cell_61/mul_5Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_5
lstm_cell_61/add_3AddV2lstm_cell_61/mul_4:z:0lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_3¤
lstm_cell_61/ReadVariableOp_3ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_3
"lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_61/strided_slice_3/stack
$lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_61/strided_slice_3/stack_1
$lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_3/stack_2Ö
lstm_cell_61/strided_slice_3StridedSlice%lstm_cell_61/ReadVariableOp_3:value:0+lstm_cell_61/strided_slice_3/stack:output:0-lstm_cell_61/strided_slice_3/stack_1:output:0-lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_3©
lstm_cell_61/MatMul_7MatMullstm_cell_61/mul_3:z:0%lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_7¥
lstm_cell_61/add_4AddV2lstm_cell_61/BiasAdd_3:output:0lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_4
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_2|
lstm_cell_61/Relu_1Relulstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu_1 
lstm_cell_61/mul_6Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_61_split_readvariableop_resource,lstm_cell_61_split_1_readvariableop_resource$lstm_cell_61_readvariableop_resource*
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
while_body_1992357*
condR
while_cond_1992356*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_61/ReadVariableOp^lstm_cell_61/ReadVariableOp_1^lstm_cell_61/ReadVariableOp_2^lstm_cell_61/ReadVariableOp_3"^lstm_cell_61/split/ReadVariableOp$^lstm_cell_61/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_61/ReadVariableOplstm_cell_61/ReadVariableOp2>
lstm_cell_61/ReadVariableOp_1lstm_cell_61/ReadVariableOp_12>
lstm_cell_61/ReadVariableOp_2lstm_cell_61/ReadVariableOp_22>
lstm_cell_61/ReadVariableOp_3lstm_cell_61/ReadVariableOp_32F
!lstm_cell_61/split/ReadVariableOp!lstm_cell_61/split/ReadVariableOp2J
#lstm_cell_61/split_1/ReadVariableOp#lstm_cell_61/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
÷
ª
__inference_loss_fn_0_1993152F
8dense_75_bias_regularizer_square_readvariableop_resource:
identity¢/dense_75/bias/Regularizer/Square/ReadVariableOp×
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_75_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mulk
IdentityIdentity!dense_75/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp0^dense_75/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp
í
¨
E__inference_dense_75_layer_call_and_return_conditional_losses_1993123

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_75/bias/Regularizer/Square/ReadVariableOp
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
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_75/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
á

J__inference_sequential_25_layer_call_and_return_conditional_losses_1991587

inputsE
2lstm_61_lstm_cell_61_split_readvariableop_resource:	C
4lstm_61_lstm_cell_61_split_1_readvariableop_resource:	?
,lstm_61_lstm_cell_61_readvariableop_resource:	 9
'dense_74_matmul_readvariableop_resource:  6
(dense_74_biasadd_readvariableop_resource: 9
'dense_75_matmul_readvariableop_resource: 6
(dense_75_biasadd_readvariableop_resource:
identity¢dense_74/BiasAdd/ReadVariableOp¢dense_74/MatMul/ReadVariableOp¢dense_75/BiasAdd/ReadVariableOp¢dense_75/MatMul/ReadVariableOp¢/dense_75/bias/Regularizer/Square/ReadVariableOp¢#lstm_61/lstm_cell_61/ReadVariableOp¢%lstm_61/lstm_cell_61/ReadVariableOp_1¢%lstm_61/lstm_cell_61/ReadVariableOp_2¢%lstm_61/lstm_cell_61/ReadVariableOp_3¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢)lstm_61/lstm_cell_61/split/ReadVariableOp¢+lstm_61/lstm_cell_61/split_1/ReadVariableOp¢lstm_61/whileT
lstm_61/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_61/Shape
lstm_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_61/strided_slice/stack
lstm_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_61/strided_slice/stack_1
lstm_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_61/strided_slice/stack_2
lstm_61/strided_sliceStridedSlicelstm_61/Shape:output:0$lstm_61/strided_slice/stack:output:0&lstm_61/strided_slice/stack_1:output:0&lstm_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_61/strided_slicel
lstm_61/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros/mul/y
lstm_61/zeros/mulMullstm_61/strided_slice:output:0lstm_61/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros/mulo
lstm_61/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_61/zeros/Less/y
lstm_61/zeros/LessLesslstm_61/zeros/mul:z:0lstm_61/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros/Lessr
lstm_61/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros/packed/1£
lstm_61/zeros/packedPacklstm_61/strided_slice:output:0lstm_61/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_61/zeros/packedo
lstm_61/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_61/zeros/Const
lstm_61/zerosFilllstm_61/zeros/packed:output:0lstm_61/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/zerosp
lstm_61/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros_1/mul/y
lstm_61/zeros_1/mulMullstm_61/strided_slice:output:0lstm_61/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros_1/muls
lstm_61/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_61/zeros_1/Less/y
lstm_61/zeros_1/LessLesslstm_61/zeros_1/mul:z:0lstm_61/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros_1/Lessv
lstm_61/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros_1/packed/1©
lstm_61/zeros_1/packedPacklstm_61/strided_slice:output:0!lstm_61/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_61/zeros_1/packeds
lstm_61/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_61/zeros_1/Const
lstm_61/zeros_1Filllstm_61/zeros_1/packed:output:0lstm_61/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/zeros_1
lstm_61/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_61/transpose/perm
lstm_61/transpose	Transposeinputslstm_61/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/transposeg
lstm_61/Shape_1Shapelstm_61/transpose:y:0*
T0*
_output_shapes
:2
lstm_61/Shape_1
lstm_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_61/strided_slice_1/stack
lstm_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_1/stack_1
lstm_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_1/stack_2
lstm_61/strided_slice_1StridedSlicelstm_61/Shape_1:output:0&lstm_61/strided_slice_1/stack:output:0(lstm_61/strided_slice_1/stack_1:output:0(lstm_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_61/strided_slice_1
#lstm_61/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_61/TensorArrayV2/element_shapeÒ
lstm_61/TensorArrayV2TensorListReserve,lstm_61/TensorArrayV2/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_61/TensorArrayV2Ï
=lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_61/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_61/transpose:y:0Flstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_61/TensorArrayUnstack/TensorListFromTensor
lstm_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_61/strided_slice_2/stack
lstm_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_2/stack_1
lstm_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_2/stack_2¬
lstm_61/strided_slice_2StridedSlicelstm_61/transpose:y:0&lstm_61/strided_slice_2/stack:output:0(lstm_61/strided_slice_2/stack_1:output:0(lstm_61/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_61/strided_slice_2
$lstm_61/lstm_cell_61/ones_like/ShapeShapelstm_61/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_61/lstm_cell_61/ones_like/Shape
$lstm_61/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_61/lstm_cell_61/ones_like/ConstØ
lstm_61/lstm_cell_61/ones_likeFill-lstm_61/lstm_cell_61/ones_like/Shape:output:0-lstm_61/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/ones_like
$lstm_61/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_61/lstm_cell_61/split/split_dimÊ
)lstm_61/lstm_cell_61/split/ReadVariableOpReadVariableOp2lstm_61_lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_61/lstm_cell_61/split/ReadVariableOpû
lstm_61/lstm_cell_61/splitSplit-lstm_61/lstm_cell_61/split/split_dim:output:01lstm_61/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_61/lstm_cell_61/split½
lstm_61/lstm_cell_61/MatMulMatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMulÁ
lstm_61/lstm_cell_61/MatMul_1MatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_1Á
lstm_61/lstm_cell_61/MatMul_2MatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_2Á
lstm_61/lstm_cell_61/MatMul_3MatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_3
&lstm_61/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_61/lstm_cell_61/split_1/split_dimÌ
+lstm_61/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4lstm_61_lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_61/lstm_cell_61/split_1/ReadVariableOpó
lstm_61/lstm_cell_61/split_1Split/lstm_61/lstm_cell_61/split_1/split_dim:output:03lstm_61/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_61/lstm_cell_61/split_1Ç
lstm_61/lstm_cell_61/BiasAddBiasAdd%lstm_61/lstm_cell_61/MatMul:product:0%lstm_61/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/BiasAddÍ
lstm_61/lstm_cell_61/BiasAdd_1BiasAdd'lstm_61/lstm_cell_61/MatMul_1:product:0%lstm_61/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/BiasAdd_1Í
lstm_61/lstm_cell_61/BiasAdd_2BiasAdd'lstm_61/lstm_cell_61/MatMul_2:product:0%lstm_61/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/BiasAdd_2Í
lstm_61/lstm_cell_61/BiasAdd_3BiasAdd'lstm_61/lstm_cell_61/MatMul_3:product:0%lstm_61/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/BiasAdd_3®
lstm_61/lstm_cell_61/mulMullstm_61/zeros:output:0'lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul²
lstm_61/lstm_cell_61/mul_1Mullstm_61/zeros:output:0'lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_1²
lstm_61/lstm_cell_61/mul_2Mullstm_61/zeros:output:0'lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_2²
lstm_61/lstm_cell_61/mul_3Mullstm_61/zeros:output:0'lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_3¸
#lstm_61/lstm_cell_61/ReadVariableOpReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_61/lstm_cell_61/ReadVariableOp¥
(lstm_61/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_61/lstm_cell_61/strided_slice/stack©
*lstm_61/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_61/lstm_cell_61/strided_slice/stack_1©
*lstm_61/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_61/lstm_cell_61/strided_slice/stack_2ú
"lstm_61/lstm_cell_61/strided_sliceStridedSlice+lstm_61/lstm_cell_61/ReadVariableOp:value:01lstm_61/lstm_cell_61/strided_slice/stack:output:03lstm_61/lstm_cell_61/strided_slice/stack_1:output:03lstm_61/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_61/lstm_cell_61/strided_sliceÅ
lstm_61/lstm_cell_61/MatMul_4MatMullstm_61/lstm_cell_61/mul:z:0+lstm_61/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_4¿
lstm_61/lstm_cell_61/addAddV2%lstm_61/lstm_cell_61/BiasAdd:output:0'lstm_61/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add
lstm_61/lstm_cell_61/SigmoidSigmoidlstm_61/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/Sigmoid¼
%lstm_61/lstm_cell_61/ReadVariableOp_1ReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_61/lstm_cell_61/ReadVariableOp_1©
*lstm_61/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_61/lstm_cell_61/strided_slice_1/stack­
,lstm_61/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_61/lstm_cell_61/strided_slice_1/stack_1­
,lstm_61/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_61/lstm_cell_61/strided_slice_1/stack_2
$lstm_61/lstm_cell_61/strided_slice_1StridedSlice-lstm_61/lstm_cell_61/ReadVariableOp_1:value:03lstm_61/lstm_cell_61/strided_slice_1/stack:output:05lstm_61/lstm_cell_61/strided_slice_1/stack_1:output:05lstm_61/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_61/lstm_cell_61/strided_slice_1É
lstm_61/lstm_cell_61/MatMul_5MatMullstm_61/lstm_cell_61/mul_1:z:0-lstm_61/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_5Å
lstm_61/lstm_cell_61/add_1AddV2'lstm_61/lstm_cell_61/BiasAdd_1:output:0'lstm_61/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_1
lstm_61/lstm_cell_61/Sigmoid_1Sigmoidlstm_61/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/Sigmoid_1¯
lstm_61/lstm_cell_61/mul_4Mul"lstm_61/lstm_cell_61/Sigmoid_1:y:0lstm_61/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_4¼
%lstm_61/lstm_cell_61/ReadVariableOp_2ReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_61/lstm_cell_61/ReadVariableOp_2©
*lstm_61/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_61/lstm_cell_61/strided_slice_2/stack­
,lstm_61/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_61/lstm_cell_61/strided_slice_2/stack_1­
,lstm_61/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_61/lstm_cell_61/strided_slice_2/stack_2
$lstm_61/lstm_cell_61/strided_slice_2StridedSlice-lstm_61/lstm_cell_61/ReadVariableOp_2:value:03lstm_61/lstm_cell_61/strided_slice_2/stack:output:05lstm_61/lstm_cell_61/strided_slice_2/stack_1:output:05lstm_61/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_61/lstm_cell_61/strided_slice_2É
lstm_61/lstm_cell_61/MatMul_6MatMullstm_61/lstm_cell_61/mul_2:z:0-lstm_61/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_6Å
lstm_61/lstm_cell_61/add_2AddV2'lstm_61/lstm_cell_61/BiasAdd_2:output:0'lstm_61/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_2
lstm_61/lstm_cell_61/ReluRelulstm_61/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/Relu¼
lstm_61/lstm_cell_61/mul_5Mul lstm_61/lstm_cell_61/Sigmoid:y:0'lstm_61/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_5³
lstm_61/lstm_cell_61/add_3AddV2lstm_61/lstm_cell_61/mul_4:z:0lstm_61/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_3¼
%lstm_61/lstm_cell_61/ReadVariableOp_3ReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_61/lstm_cell_61/ReadVariableOp_3©
*lstm_61/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_61/lstm_cell_61/strided_slice_3/stack­
,lstm_61/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_61/lstm_cell_61/strided_slice_3/stack_1­
,lstm_61/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_61/lstm_cell_61/strided_slice_3/stack_2
$lstm_61/lstm_cell_61/strided_slice_3StridedSlice-lstm_61/lstm_cell_61/ReadVariableOp_3:value:03lstm_61/lstm_cell_61/strided_slice_3/stack:output:05lstm_61/lstm_cell_61/strided_slice_3/stack_1:output:05lstm_61/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_61/lstm_cell_61/strided_slice_3É
lstm_61/lstm_cell_61/MatMul_7MatMullstm_61/lstm_cell_61/mul_3:z:0-lstm_61/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_7Å
lstm_61/lstm_cell_61/add_4AddV2'lstm_61/lstm_cell_61/BiasAdd_3:output:0'lstm_61/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_4
lstm_61/lstm_cell_61/Sigmoid_2Sigmoidlstm_61/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/Sigmoid_2
lstm_61/lstm_cell_61/Relu_1Relulstm_61/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/Relu_1À
lstm_61/lstm_cell_61/mul_6Mul"lstm_61/lstm_cell_61/Sigmoid_2:y:0)lstm_61/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_6
%lstm_61/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_61/TensorArrayV2_1/element_shapeØ
lstm_61/TensorArrayV2_1TensorListReserve.lstm_61/TensorArrayV2_1/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_61/TensorArrayV2_1^
lstm_61/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/time
 lstm_61/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_61/while/maximum_iterationsz
lstm_61/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/while/loop_counterû
lstm_61/whileWhile#lstm_61/while/loop_counter:output:0)lstm_61/while/maximum_iterations:output:0lstm_61/time:output:0 lstm_61/TensorArrayV2_1:handle:0lstm_61/zeros:output:0lstm_61/zeros_1:output:0 lstm_61/strided_slice_1:output:0?lstm_61/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_61_lstm_cell_61_split_readvariableop_resource4lstm_61_lstm_cell_61_split_1_readvariableop_resource,lstm_61_lstm_cell_61_readvariableop_resource*
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
lstm_61_while_body_1991426*&
condR
lstm_61_while_cond_1991425*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_61/whileÅ
8lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_61/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_61/TensorArrayV2Stack/TensorListStackTensorListStacklstm_61/while:output:3Alstm_61/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_61/TensorArrayV2Stack/TensorListStack
lstm_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_61/strided_slice_3/stack
lstm_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_61/strided_slice_3/stack_1
lstm_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_3/stack_2Ê
lstm_61/strided_slice_3StridedSlice3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_61/strided_slice_3/stack:output:0(lstm_61/strided_slice_3/stack_1:output:0(lstm_61/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_61/strided_slice_3
lstm_61/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_61/transpose_1/permÅ
lstm_61/transpose_1	Transpose3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_61/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/transpose_1v
lstm_61/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_61/runtime¨
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_74/MatMul/ReadVariableOp¨
dense_74/MatMulMatMul lstm_61/strided_slice_3:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_74/MatMul§
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_74/BiasAdd/ReadVariableOp¥
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_74/BiasAdds
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_74/Relu¨
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_75/MatMul/ReadVariableOp£
dense_75/MatMulMatMuldense_74/Relu:activations:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_75/MatMul§
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_75/BiasAdd/ReadVariableOp¥
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_75/BiasAddm
reshape_37/ShapeShapedense_75/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_37/Shape
reshape_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_37/strided_slice/stack
 reshape_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_1
 reshape_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_2¤
reshape_37/strided_sliceStridedSlicereshape_37/Shape:output:0'reshape_37/strided_slice/stack:output:0)reshape_37/strided_slice/stack_1:output:0)reshape_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_37/strided_slicez
reshape_37/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/1z
reshape_37/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/2×
reshape_37/Reshape/shapePack!reshape_37/strided_slice:output:0#reshape_37/Reshape/shape/1:output:0#reshape_37/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_37/Reshape/shape§
reshape_37/ReshapeReshapedense_75/BiasAdd:output:0!reshape_37/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_37/Reshapeò
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_61_lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/mulÇ
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mulz
IdentityIdentityreshape_37/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp0^dense_75/bias/Regularizer/Square/ReadVariableOp$^lstm_61/lstm_cell_61/ReadVariableOp&^lstm_61/lstm_cell_61/ReadVariableOp_1&^lstm_61/lstm_cell_61/ReadVariableOp_2&^lstm_61/lstm_cell_61/ReadVariableOp_3>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*^lstm_61/lstm_cell_61/split/ReadVariableOp,^lstm_61/lstm_cell_61/split_1/ReadVariableOp^lstm_61/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp2J
#lstm_61/lstm_cell_61/ReadVariableOp#lstm_61/lstm_cell_61/ReadVariableOp2N
%lstm_61/lstm_cell_61/ReadVariableOp_1%lstm_61/lstm_cell_61/ReadVariableOp_12N
%lstm_61/lstm_cell_61/ReadVariableOp_2%lstm_61/lstm_cell_61/ReadVariableOp_22N
%lstm_61/lstm_cell_61/ReadVariableOp_3%lstm_61/lstm_cell_61/ReadVariableOp_32~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_61/lstm_cell_61/split/ReadVariableOp)lstm_61/lstm_cell_61/split/ReadVariableOp2Z
+lstm_61/lstm_cell_61/split_1/ReadVariableOp+lstm_61/lstm_cell_61/split_1/ReadVariableOp2
lstm_61/whilelstm_61/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
¥	
while_body_1992632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_61_split_readvariableop_resource_0:	C
4while_lstm_cell_61_split_1_readvariableop_resource_0:	?
,while_lstm_cell_61_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_61_split_readvariableop_resource:	A
2while_lstm_cell_61_split_1_readvariableop_resource:	=
*while_lstm_cell_61_readvariableop_resource:	 ¢!while/lstm_cell_61/ReadVariableOp¢#while/lstm_cell_61/ReadVariableOp_1¢#while/lstm_cell_61/ReadVariableOp_2¢#while/lstm_cell_61/ReadVariableOp_3¢'while/lstm_cell_61/split/ReadVariableOp¢)while/lstm_cell_61/split_1/ReadVariableOpÃ
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
"while/lstm_cell_61/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_61/ones_like/Shape
"while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_61/ones_like/ConstÐ
while/lstm_cell_61/ones_likeFill+while/lstm_cell_61/ones_like/Shape:output:0+while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/ones_like
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_61/split/split_dimÆ
'while/lstm_cell_61/split/ReadVariableOpReadVariableOp2while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_61/split/ReadVariableOpó
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_61/splitÇ
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMulË
while/lstm_cell_61/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_1Ë
while/lstm_cell_61/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_2Ë
while/lstm_cell_61/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_3
$while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_61/split_1/split_dimÈ
)while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_61/split_1/ReadVariableOpë
while/lstm_cell_61/split_1Split-while/lstm_cell_61/split_1/split_dim:output:01while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_61/split_1¿
while/lstm_cell_61/BiasAddBiasAdd#while/lstm_cell_61/MatMul:product:0#while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAddÅ
while/lstm_cell_61/BiasAdd_1BiasAdd%while/lstm_cell_61/MatMul_1:product:0#while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_1Å
while/lstm_cell_61/BiasAdd_2BiasAdd%while/lstm_cell_61/MatMul_2:product:0#while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_2Å
while/lstm_cell_61/BiasAdd_3BiasAdd%while/lstm_cell_61/MatMul_3:product:0#while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_3¥
while/lstm_cell_61/mulMulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul©
while/lstm_cell_61/mul_1Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_1©
while/lstm_cell_61/mul_2Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_2©
while/lstm_cell_61/mul_3Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_3´
!while/lstm_cell_61/ReadVariableOpReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_61/ReadVariableOp¡
&while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_61/strided_slice/stack¥
(while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice/stack_1¥
(while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_61/strided_slice/stack_2î
 while/lstm_cell_61/strided_sliceStridedSlice)while/lstm_cell_61/ReadVariableOp:value:0/while/lstm_cell_61/strided_slice/stack:output:01while/lstm_cell_61/strided_slice/stack_1:output:01while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_61/strided_slice½
while/lstm_cell_61/MatMul_4MatMulwhile/lstm_cell_61/mul:z:0)while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_4·
while/lstm_cell_61/addAddV2#while/lstm_cell_61/BiasAdd:output:0%while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add
while/lstm_cell_61/SigmoidSigmoidwhile/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid¸
#while/lstm_cell_61/ReadVariableOp_1ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_1¥
(while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice_1/stack©
*while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_61/strided_slice_1/stack_1©
*while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_1/stack_2ú
"while/lstm_cell_61/strided_slice_1StridedSlice+while/lstm_cell_61/ReadVariableOp_1:value:01while/lstm_cell_61/strided_slice_1/stack:output:03while/lstm_cell_61/strided_slice_1/stack_1:output:03while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_1Á
while/lstm_cell_61/MatMul_5MatMulwhile/lstm_cell_61/mul_1:z:0+while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_5½
while/lstm_cell_61/add_1AddV2%while/lstm_cell_61/BiasAdd_1:output:0%while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_1
while/lstm_cell_61/Sigmoid_1Sigmoidwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_1¤
while/lstm_cell_61/mul_4Mul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_4¸
#while/lstm_cell_61/ReadVariableOp_2ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_2¥
(while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_61/strided_slice_2/stack©
*while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_61/strided_slice_2/stack_1©
*while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_2/stack_2ú
"while/lstm_cell_61/strided_slice_2StridedSlice+while/lstm_cell_61/ReadVariableOp_2:value:01while/lstm_cell_61/strided_slice_2/stack:output:03while/lstm_cell_61/strided_slice_2/stack_1:output:03while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_2Á
while/lstm_cell_61/MatMul_6MatMulwhile/lstm_cell_61/mul_2:z:0+while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_6½
while/lstm_cell_61/add_2AddV2%while/lstm_cell_61/BiasAdd_2:output:0%while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_2
while/lstm_cell_61/ReluReluwhile/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu´
while/lstm_cell_61/mul_5Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_5«
while/lstm_cell_61/add_3AddV2while/lstm_cell_61/mul_4:z:0while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_3¸
#while/lstm_cell_61/ReadVariableOp_3ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_3¥
(while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_61/strided_slice_3/stack©
*while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_61/strided_slice_3/stack_1©
*while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_3/stack_2ú
"while/lstm_cell_61/strided_slice_3StridedSlice+while/lstm_cell_61/ReadVariableOp_3:value:01while/lstm_cell_61/strided_slice_3/stack:output:03while/lstm_cell_61/strided_slice_3/stack_1:output:03while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_3Á
while/lstm_cell_61/MatMul_7MatMulwhile/lstm_cell_61/mul_3:z:0+while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_7½
while/lstm_cell_61/add_4AddV2%while/lstm_cell_61/BiasAdd_3:output:0%while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_4
while/lstm_cell_61/Sigmoid_2Sigmoidwhile/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_2
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu_1¸
while/lstm_cell_61/mul_6Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_61/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_61/ReadVariableOp$^while/lstm_cell_61/ReadVariableOp_1$^while/lstm_cell_61/ReadVariableOp_2$^while/lstm_cell_61/ReadVariableOp_3(^while/lstm_cell_61/split/ReadVariableOp*^while/lstm_cell_61/split_1/ReadVariableOp*"
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
*while_lstm_cell_61_readvariableop_resource,while_lstm_cell_61_readvariableop_resource_0"j
2while_lstm_cell_61_split_1_readvariableop_resource4while_lstm_cell_61_split_1_readvariableop_resource_0"f
0while_lstm_cell_61_split_readvariableop_resource2while_lstm_cell_61_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_61/ReadVariableOp!while/lstm_cell_61/ReadVariableOp2J
#while/lstm_cell_61/ReadVariableOp_1#while/lstm_cell_61/ReadVariableOp_12J
#while/lstm_cell_61/ReadVariableOp_2#while/lstm_cell_61/ReadVariableOp_22J
#while/lstm_cell_61/ReadVariableOp_3#while/lstm_cell_61/ReadVariableOp_32R
'while/lstm_cell_61/split/ReadVariableOp'while/lstm_cell_61/split/ReadVariableOp2V
)while/lstm_cell_61/split_1/ReadVariableOp)while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ý
Ë
__inference_loss_fn_1_1993397Y
Flstm_61_lstm_cell_61_kernel_regularizer_square_readvariableop_resource:	
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_61_lstm_cell_61_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muly
IdentityIdentity/lstm_61/lstm_cell_61/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp
Ú
È
while_cond_1990499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1990499___redundant_placeholder05
1while_while_cond_1990499___redundant_placeholder15
1while_while_cond_1990499___redundant_placeholder25
1while_while_cond_1990499___redundant_placeholder3
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
ä	
¨
/__inference_sequential_25_layer_call_fn_1991316

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
J__inference_sequential_25_layer_call_and_return_conditional_losses_19911352
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
á¡
¨
D__inference_lstm_61_layer_call_and_return_conditional_losses_1990633

inputs=
*lstm_cell_61_split_readvariableop_resource:	;
,lstm_cell_61_split_1_readvariableop_resource:	7
$lstm_cell_61_readvariableop_resource:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_61/ReadVariableOp¢lstm_cell_61/ReadVariableOp_1¢lstm_cell_61/ReadVariableOp_2¢lstm_cell_61/ReadVariableOp_3¢!lstm_cell_61/split/ReadVariableOp¢#lstm_cell_61/split_1/ReadVariableOp¢whileD
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
lstm_cell_61/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_61/ones_like/Shape
lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_61/ones_like/Const¸
lstm_cell_61/ones_likeFill%lstm_cell_61/ones_like/Shape:output:0%lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/ones_like~
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_61/split/split_dim²
!lstm_cell_61/split/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_61/split/ReadVariableOpÛ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0)lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_61/split
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul¡
lstm_cell_61/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_1¡
lstm_cell_61/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_2¡
lstm_cell_61/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_3
lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_61/split_1/split_dim´
#lstm_cell_61/split_1/ReadVariableOpReadVariableOp,lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_61/split_1/ReadVariableOpÓ
lstm_cell_61/split_1Split'lstm_cell_61/split_1/split_dim:output:0+lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_61/split_1§
lstm_cell_61/BiasAddBiasAddlstm_cell_61/MatMul:product:0lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd­
lstm_cell_61/BiasAdd_1BiasAddlstm_cell_61/MatMul_1:product:0lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_1­
lstm_cell_61/BiasAdd_2BiasAddlstm_cell_61/MatMul_2:product:0lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_2­
lstm_cell_61/BiasAdd_3BiasAddlstm_cell_61/MatMul_3:product:0lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_3
lstm_cell_61/mulMulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul
lstm_cell_61/mul_1Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_1
lstm_cell_61/mul_2Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_2
lstm_cell_61/mul_3Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_3 
lstm_cell_61/ReadVariableOpReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp
 lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_61/strided_slice/stack
"lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice/stack_1
"lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_61/strided_slice/stack_2Ê
lstm_cell_61/strided_sliceStridedSlice#lstm_cell_61/ReadVariableOp:value:0)lstm_cell_61/strided_slice/stack:output:0+lstm_cell_61/strided_slice/stack_1:output:0+lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice¥
lstm_cell_61/MatMul_4MatMullstm_cell_61/mul:z:0#lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_4
lstm_cell_61/addAddV2lstm_cell_61/BiasAdd:output:0lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add
lstm_cell_61/SigmoidSigmoidlstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid¤
lstm_cell_61/ReadVariableOp_1ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_1
"lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice_1/stack
$lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_61/strided_slice_1/stack_1
$lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_1/stack_2Ö
lstm_cell_61/strided_slice_1StridedSlice%lstm_cell_61/ReadVariableOp_1:value:0+lstm_cell_61/strided_slice_1/stack:output:0-lstm_cell_61/strided_slice_1/stack_1:output:0-lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_1©
lstm_cell_61/MatMul_5MatMullstm_cell_61/mul_1:z:0%lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_5¥
lstm_cell_61/add_1AddV2lstm_cell_61/BiasAdd_1:output:0lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_1
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_1
lstm_cell_61/mul_4Mullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_4¤
lstm_cell_61/ReadVariableOp_2ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_2
"lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_61/strided_slice_2/stack
$lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_61/strided_slice_2/stack_1
$lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_2/stack_2Ö
lstm_cell_61/strided_slice_2StridedSlice%lstm_cell_61/ReadVariableOp_2:value:0+lstm_cell_61/strided_slice_2/stack:output:0-lstm_cell_61/strided_slice_2/stack_1:output:0-lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_2©
lstm_cell_61/MatMul_6MatMullstm_cell_61/mul_2:z:0%lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_6¥
lstm_cell_61/add_2AddV2lstm_cell_61/BiasAdd_2:output:0lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_2x
lstm_cell_61/ReluRelulstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu
lstm_cell_61/mul_5Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_5
lstm_cell_61/add_3AddV2lstm_cell_61/mul_4:z:0lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_3¤
lstm_cell_61/ReadVariableOp_3ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_3
"lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_61/strided_slice_3/stack
$lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_61/strided_slice_3/stack_1
$lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_3/stack_2Ö
lstm_cell_61/strided_slice_3StridedSlice%lstm_cell_61/ReadVariableOp_3:value:0+lstm_cell_61/strided_slice_3/stack:output:0-lstm_cell_61/strided_slice_3/stack_1:output:0-lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_3©
lstm_cell_61/MatMul_7MatMullstm_cell_61/mul_3:z:0%lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_7¥
lstm_cell_61/add_4AddV2lstm_cell_61/BiasAdd_3:output:0lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_4
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_2|
lstm_cell_61/Relu_1Relulstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu_1 
lstm_cell_61/mul_6Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_61_split_readvariableop_resource,lstm_cell_61_split_1_readvariableop_resource$lstm_cell_61_readvariableop_resource*
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
while_body_1990500*
condR
while_cond_1990499*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_61/ReadVariableOp^lstm_cell_61/ReadVariableOp_1^lstm_cell_61/ReadVariableOp_2^lstm_cell_61/ReadVariableOp_3"^lstm_cell_61/split/ReadVariableOp$^lstm_cell_61/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_61/ReadVariableOplstm_cell_61/ReadVariableOp2>
lstm_cell_61/ReadVariableOp_1lstm_cell_61/ReadVariableOp_12>
lstm_cell_61/ReadVariableOp_2lstm_cell_61/ReadVariableOp_22>
lstm_cell_61/ReadVariableOp_3lstm_cell_61/ReadVariableOp_32F
!lstm_cell_61/split/ReadVariableOp!lstm_cell_61/split/ReadVariableOp2J
#lstm_cell_61/split_1/ReadVariableOp#lstm_cell_61/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢|

#__inference__traced_restore_1993598
file_prefix2
 assignvariableop_dense_74_kernel:  .
 assignvariableop_1_dense_74_bias: 4
"assignvariableop_2_dense_75_kernel: .
 assignvariableop_3_dense_75_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_61_lstm_cell_61_kernel:	L
9assignvariableop_10_lstm_61_lstm_cell_61_recurrent_kernel:	 <
-assignvariableop_11_lstm_61_lstm_cell_61_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_74_kernel_m:  6
(assignvariableop_15_adam_dense_74_bias_m: <
*assignvariableop_16_adam_dense_75_kernel_m: 6
(assignvariableop_17_adam_dense_75_bias_m:I
6assignvariableop_18_adam_lstm_61_lstm_cell_61_kernel_m:	S
@assignvariableop_19_adam_lstm_61_lstm_cell_61_recurrent_kernel_m:	 C
4assignvariableop_20_adam_lstm_61_lstm_cell_61_bias_m:	<
*assignvariableop_21_adam_dense_74_kernel_v:  6
(assignvariableop_22_adam_dense_74_bias_v: <
*assignvariableop_23_adam_dense_75_kernel_v: 6
(assignvariableop_24_adam_dense_75_bias_v:I
6assignvariableop_25_adam_lstm_61_lstm_cell_61_kernel_v:	S
@assignvariableop_26_adam_lstm_61_lstm_cell_61_recurrent_kernel_v:	 C
4assignvariableop_27_adam_lstm_61_lstm_cell_61_bias_v:	
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
AssignVariableOpAssignVariableOp assignvariableop_dense_74_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_74_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_75_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_75_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_61_lstm_cell_61_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_61_lstm_cell_61_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_61_lstm_cell_61_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_74_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_74_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_75_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_75_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_61_lstm_cell_61_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_61_lstm_cell_61_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_61_lstm_cell_61_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_74_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_74_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_75_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_75_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_61_lstm_cell_61_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_61_lstm_cell_61_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_61_lstm_cell_61_bias_vIdentity_27:output:0"/device:CPU:0*
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
¨
¥	
while_body_1990500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_61_split_readvariableop_resource_0:	C
4while_lstm_cell_61_split_1_readvariableop_resource_0:	?
,while_lstm_cell_61_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_61_split_readvariableop_resource:	A
2while_lstm_cell_61_split_1_readvariableop_resource:	=
*while_lstm_cell_61_readvariableop_resource:	 ¢!while/lstm_cell_61/ReadVariableOp¢#while/lstm_cell_61/ReadVariableOp_1¢#while/lstm_cell_61/ReadVariableOp_2¢#while/lstm_cell_61/ReadVariableOp_3¢'while/lstm_cell_61/split/ReadVariableOp¢)while/lstm_cell_61/split_1/ReadVariableOpÃ
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
"while/lstm_cell_61/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_61/ones_like/Shape
"while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_61/ones_like/ConstÐ
while/lstm_cell_61/ones_likeFill+while/lstm_cell_61/ones_like/Shape:output:0+while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/ones_like
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_61/split/split_dimÆ
'while/lstm_cell_61/split/ReadVariableOpReadVariableOp2while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_61/split/ReadVariableOpó
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_61/splitÇ
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMulË
while/lstm_cell_61/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_1Ë
while/lstm_cell_61/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_2Ë
while/lstm_cell_61/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_3
$while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_61/split_1/split_dimÈ
)while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_61/split_1/ReadVariableOpë
while/lstm_cell_61/split_1Split-while/lstm_cell_61/split_1/split_dim:output:01while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_61/split_1¿
while/lstm_cell_61/BiasAddBiasAdd#while/lstm_cell_61/MatMul:product:0#while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAddÅ
while/lstm_cell_61/BiasAdd_1BiasAdd%while/lstm_cell_61/MatMul_1:product:0#while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_1Å
while/lstm_cell_61/BiasAdd_2BiasAdd%while/lstm_cell_61/MatMul_2:product:0#while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_2Å
while/lstm_cell_61/BiasAdd_3BiasAdd%while/lstm_cell_61/MatMul_3:product:0#while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_3¥
while/lstm_cell_61/mulMulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul©
while/lstm_cell_61/mul_1Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_1©
while/lstm_cell_61/mul_2Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_2©
while/lstm_cell_61/mul_3Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_3´
!while/lstm_cell_61/ReadVariableOpReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_61/ReadVariableOp¡
&while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_61/strided_slice/stack¥
(while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice/stack_1¥
(while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_61/strided_slice/stack_2î
 while/lstm_cell_61/strided_sliceStridedSlice)while/lstm_cell_61/ReadVariableOp:value:0/while/lstm_cell_61/strided_slice/stack:output:01while/lstm_cell_61/strided_slice/stack_1:output:01while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_61/strided_slice½
while/lstm_cell_61/MatMul_4MatMulwhile/lstm_cell_61/mul:z:0)while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_4·
while/lstm_cell_61/addAddV2#while/lstm_cell_61/BiasAdd:output:0%while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add
while/lstm_cell_61/SigmoidSigmoidwhile/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid¸
#while/lstm_cell_61/ReadVariableOp_1ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_1¥
(while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice_1/stack©
*while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_61/strided_slice_1/stack_1©
*while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_1/stack_2ú
"while/lstm_cell_61/strided_slice_1StridedSlice+while/lstm_cell_61/ReadVariableOp_1:value:01while/lstm_cell_61/strided_slice_1/stack:output:03while/lstm_cell_61/strided_slice_1/stack_1:output:03while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_1Á
while/lstm_cell_61/MatMul_5MatMulwhile/lstm_cell_61/mul_1:z:0+while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_5½
while/lstm_cell_61/add_1AddV2%while/lstm_cell_61/BiasAdd_1:output:0%while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_1
while/lstm_cell_61/Sigmoid_1Sigmoidwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_1¤
while/lstm_cell_61/mul_4Mul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_4¸
#while/lstm_cell_61/ReadVariableOp_2ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_2¥
(while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_61/strided_slice_2/stack©
*while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_61/strided_slice_2/stack_1©
*while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_2/stack_2ú
"while/lstm_cell_61/strided_slice_2StridedSlice+while/lstm_cell_61/ReadVariableOp_2:value:01while/lstm_cell_61/strided_slice_2/stack:output:03while/lstm_cell_61/strided_slice_2/stack_1:output:03while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_2Á
while/lstm_cell_61/MatMul_6MatMulwhile/lstm_cell_61/mul_2:z:0+while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_6½
while/lstm_cell_61/add_2AddV2%while/lstm_cell_61/BiasAdd_2:output:0%while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_2
while/lstm_cell_61/ReluReluwhile/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu´
while/lstm_cell_61/mul_5Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_5«
while/lstm_cell_61/add_3AddV2while/lstm_cell_61/mul_4:z:0while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_3¸
#while/lstm_cell_61/ReadVariableOp_3ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_3¥
(while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_61/strided_slice_3/stack©
*while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_61/strided_slice_3/stack_1©
*while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_3/stack_2ú
"while/lstm_cell_61/strided_slice_3StridedSlice+while/lstm_cell_61/ReadVariableOp_3:value:01while/lstm_cell_61/strided_slice_3/stack:output:03while/lstm_cell_61/strided_slice_3/stack_1:output:03while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_3Á
while/lstm_cell_61/MatMul_7MatMulwhile/lstm_cell_61/mul_3:z:0+while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_7½
while/lstm_cell_61/add_4AddV2%while/lstm_cell_61/BiasAdd_3:output:0%while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_4
while/lstm_cell_61/Sigmoid_2Sigmoidwhile/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_2
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu_1¸
while/lstm_cell_61/mul_6Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_61/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_61/ReadVariableOp$^while/lstm_cell_61/ReadVariableOp_1$^while/lstm_cell_61/ReadVariableOp_2$^while/lstm_cell_61/ReadVariableOp_3(^while/lstm_cell_61/split/ReadVariableOp*^while/lstm_cell_61/split_1/ReadVariableOp*"
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
*while_lstm_cell_61_readvariableop_resource,while_lstm_cell_61_readvariableop_resource_0"j
2while_lstm_cell_61_split_1_readvariableop_resource4while_lstm_cell_61_split_1_readvariableop_resource_0"f
0while_lstm_cell_61_split_readvariableop_resource2while_lstm_cell_61_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_61/ReadVariableOp!while/lstm_cell_61/ReadVariableOp2J
#while/lstm_cell_61/ReadVariableOp_1#while/lstm_cell_61/ReadVariableOp_12J
#while/lstm_cell_61/ReadVariableOp_2#while/lstm_cell_61/ReadVariableOp_22J
#while/lstm_cell_61/ReadVariableOp_3#while/lstm_cell_61/ReadVariableOp_32R
'while/lstm_cell_61/split/ReadVariableOp'while/lstm_cell_61/split/ReadVariableOp2V
)while/lstm_cell_61/split_1/ReadVariableOp)while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

c
G__inference_reshape_37_layer_call_and_return_conditional_losses_1990693

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
°þ
	
"__inference__wrapped_model_1989600
input_26S
@sequential_25_lstm_61_lstm_cell_61_split_readvariableop_resource:	Q
Bsequential_25_lstm_61_lstm_cell_61_split_1_readvariableop_resource:	M
:sequential_25_lstm_61_lstm_cell_61_readvariableop_resource:	 G
5sequential_25_dense_74_matmul_readvariableop_resource:  D
6sequential_25_dense_74_biasadd_readvariableop_resource: G
5sequential_25_dense_75_matmul_readvariableop_resource: D
6sequential_25_dense_75_biasadd_readvariableop_resource:
identity¢-sequential_25/dense_74/BiasAdd/ReadVariableOp¢,sequential_25/dense_74/MatMul/ReadVariableOp¢-sequential_25/dense_75/BiasAdd/ReadVariableOp¢,sequential_25/dense_75/MatMul/ReadVariableOp¢1sequential_25/lstm_61/lstm_cell_61/ReadVariableOp¢3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_1¢3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_2¢3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_3¢7sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOp¢9sequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOp¢sequential_25/lstm_61/whiler
sequential_25/lstm_61/ShapeShapeinput_26*
T0*
_output_shapes
:2
sequential_25/lstm_61/Shape 
)sequential_25/lstm_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_25/lstm_61/strided_slice/stack¤
+sequential_25/lstm_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_25/lstm_61/strided_slice/stack_1¤
+sequential_25/lstm_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_25/lstm_61/strided_slice/stack_2æ
#sequential_25/lstm_61/strided_sliceStridedSlice$sequential_25/lstm_61/Shape:output:02sequential_25/lstm_61/strided_slice/stack:output:04sequential_25/lstm_61/strided_slice/stack_1:output:04sequential_25/lstm_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_25/lstm_61/strided_slice
!sequential_25/lstm_61/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_25/lstm_61/zeros/mul/yÄ
sequential_25/lstm_61/zeros/mulMul,sequential_25/lstm_61/strided_slice:output:0*sequential_25/lstm_61/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_25/lstm_61/zeros/mul
"sequential_25/lstm_61/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_25/lstm_61/zeros/Less/y¿
 sequential_25/lstm_61/zeros/LessLess#sequential_25/lstm_61/zeros/mul:z:0+sequential_25/lstm_61/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_25/lstm_61/zeros/Less
$sequential_25/lstm_61/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_25/lstm_61/zeros/packed/1Û
"sequential_25/lstm_61/zeros/packedPack,sequential_25/lstm_61/strided_slice:output:0-sequential_25/lstm_61/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_25/lstm_61/zeros/packed
!sequential_25/lstm_61/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_25/lstm_61/zeros/ConstÍ
sequential_25/lstm_61/zerosFill+sequential_25/lstm_61/zeros/packed:output:0*sequential_25/lstm_61/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_25/lstm_61/zeros
#sequential_25/lstm_61/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_25/lstm_61/zeros_1/mul/yÊ
!sequential_25/lstm_61/zeros_1/mulMul,sequential_25/lstm_61/strided_slice:output:0,sequential_25/lstm_61/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_25/lstm_61/zeros_1/mul
$sequential_25/lstm_61/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_25/lstm_61/zeros_1/Less/yÇ
"sequential_25/lstm_61/zeros_1/LessLess%sequential_25/lstm_61/zeros_1/mul:z:0-sequential_25/lstm_61/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_25/lstm_61/zeros_1/Less
&sequential_25/lstm_61/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_25/lstm_61/zeros_1/packed/1á
$sequential_25/lstm_61/zeros_1/packedPack,sequential_25/lstm_61/strided_slice:output:0/sequential_25/lstm_61/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_25/lstm_61/zeros_1/packed
#sequential_25/lstm_61/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_25/lstm_61/zeros_1/ConstÕ
sequential_25/lstm_61/zeros_1Fill-sequential_25/lstm_61/zeros_1/packed:output:0,sequential_25/lstm_61/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_25/lstm_61/zeros_1¡
$sequential_25/lstm_61/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_25/lstm_61/transpose/perm¾
sequential_25/lstm_61/transpose	Transposeinput_26-sequential_25/lstm_61/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_25/lstm_61/transpose
sequential_25/lstm_61/Shape_1Shape#sequential_25/lstm_61/transpose:y:0*
T0*
_output_shapes
:2
sequential_25/lstm_61/Shape_1¤
+sequential_25/lstm_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_25/lstm_61/strided_slice_1/stack¨
-sequential_25/lstm_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_25/lstm_61/strided_slice_1/stack_1¨
-sequential_25/lstm_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_25/lstm_61/strided_slice_1/stack_2ò
%sequential_25/lstm_61/strided_slice_1StridedSlice&sequential_25/lstm_61/Shape_1:output:04sequential_25/lstm_61/strided_slice_1/stack:output:06sequential_25/lstm_61/strided_slice_1/stack_1:output:06sequential_25/lstm_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_25/lstm_61/strided_slice_1±
1sequential_25/lstm_61/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_25/lstm_61/TensorArrayV2/element_shape
#sequential_25/lstm_61/TensorArrayV2TensorListReserve:sequential_25/lstm_61/TensorArrayV2/element_shape:output:0.sequential_25/lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_25/lstm_61/TensorArrayV2ë
Ksequential_25/lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_25/lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_25/lstm_61/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_25/lstm_61/transpose:y:0Tsequential_25/lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_25/lstm_61/TensorArrayUnstack/TensorListFromTensor¤
+sequential_25/lstm_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_25/lstm_61/strided_slice_2/stack¨
-sequential_25/lstm_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_25/lstm_61/strided_slice_2/stack_1¨
-sequential_25/lstm_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_25/lstm_61/strided_slice_2/stack_2
%sequential_25/lstm_61/strided_slice_2StridedSlice#sequential_25/lstm_61/transpose:y:04sequential_25/lstm_61/strided_slice_2/stack:output:06sequential_25/lstm_61/strided_slice_2/stack_1:output:06sequential_25/lstm_61/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_25/lstm_61/strided_slice_2¼
2sequential_25/lstm_61/lstm_cell_61/ones_like/ShapeShape$sequential_25/lstm_61/zeros:output:0*
T0*
_output_shapes
:24
2sequential_25/lstm_61/lstm_cell_61/ones_like/Shape­
2sequential_25/lstm_61/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2sequential_25/lstm_61/lstm_cell_61/ones_like/Const
,sequential_25/lstm_61/lstm_cell_61/ones_likeFill;sequential_25/lstm_61/lstm_cell_61/ones_like/Shape:output:0;sequential_25/lstm_61/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/lstm_cell_61/ones_likeª
2sequential_25/lstm_61/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_25/lstm_61/lstm_cell_61/split/split_dimô
7sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOpReadVariableOp@sequential_25_lstm_61_lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype029
7sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOp³
(sequential_25/lstm_61/lstm_cell_61/splitSplit;sequential_25/lstm_61/lstm_cell_61/split/split_dim:output:0?sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_25/lstm_61/lstm_cell_61/splitõ
)sequential_25/lstm_61/lstm_cell_61/MatMulMatMul.sequential_25/lstm_61/strided_slice_2:output:01sequential_25/lstm_61/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_25/lstm_61/lstm_cell_61/MatMulù
+sequential_25/lstm_61/lstm_cell_61/MatMul_1MatMul.sequential_25/lstm_61/strided_slice_2:output:01sequential_25/lstm_61/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_1ù
+sequential_25/lstm_61/lstm_cell_61/MatMul_2MatMul.sequential_25/lstm_61/strided_slice_2:output:01sequential_25/lstm_61/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_2ù
+sequential_25/lstm_61/lstm_cell_61/MatMul_3MatMul.sequential_25/lstm_61/strided_slice_2:output:01sequential_25/lstm_61/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_3®
4sequential_25/lstm_61/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_25/lstm_61/lstm_cell_61/split_1/split_dimö
9sequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOpReadVariableOpBsequential_25_lstm_61_lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02;
9sequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOp«
*sequential_25/lstm_61/lstm_cell_61/split_1Split=sequential_25/lstm_61/lstm_cell_61/split_1/split_dim:output:0Asequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_25/lstm_61/lstm_cell_61/split_1ÿ
*sequential_25/lstm_61/lstm_cell_61/BiasAddBiasAdd3sequential_25/lstm_61/lstm_cell_61/MatMul:product:03sequential_25/lstm_61/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_25/lstm_61/lstm_cell_61/BiasAdd
,sequential_25/lstm_61/lstm_cell_61/BiasAdd_1BiasAdd5sequential_25/lstm_61/lstm_cell_61/MatMul_1:product:03sequential_25/lstm_61/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/lstm_cell_61/BiasAdd_1
,sequential_25/lstm_61/lstm_cell_61/BiasAdd_2BiasAdd5sequential_25/lstm_61/lstm_cell_61/MatMul_2:product:03sequential_25/lstm_61/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/lstm_cell_61/BiasAdd_2
,sequential_25/lstm_61/lstm_cell_61/BiasAdd_3BiasAdd5sequential_25/lstm_61/lstm_cell_61/MatMul_3:product:03sequential_25/lstm_61/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/lstm_cell_61/BiasAdd_3æ
&sequential_25/lstm_61/lstm_cell_61/mulMul$sequential_25/lstm_61/zeros:output:05sequential_25/lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_25/lstm_61/lstm_cell_61/mulê
(sequential_25/lstm_61/lstm_cell_61/mul_1Mul$sequential_25/lstm_61/zeros:output:05sequential_25/lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/mul_1ê
(sequential_25/lstm_61/lstm_cell_61/mul_2Mul$sequential_25/lstm_61/zeros:output:05sequential_25/lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/mul_2ê
(sequential_25/lstm_61/lstm_cell_61/mul_3Mul$sequential_25/lstm_61/zeros:output:05sequential_25/lstm_61/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/mul_3â
1sequential_25/lstm_61/lstm_cell_61/ReadVariableOpReadVariableOp:sequential_25_lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype023
1sequential_25/lstm_61/lstm_cell_61/ReadVariableOpÁ
6sequential_25/lstm_61/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_25/lstm_61/lstm_cell_61/strided_slice/stackÅ
8sequential_25/lstm_61/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_25/lstm_61/lstm_cell_61/strided_slice/stack_1Å
8sequential_25/lstm_61/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_25/lstm_61/lstm_cell_61/strided_slice/stack_2Î
0sequential_25/lstm_61/lstm_cell_61/strided_sliceStridedSlice9sequential_25/lstm_61/lstm_cell_61/ReadVariableOp:value:0?sequential_25/lstm_61/lstm_cell_61/strided_slice/stack:output:0Asequential_25/lstm_61/lstm_cell_61/strided_slice/stack_1:output:0Asequential_25/lstm_61/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_25/lstm_61/lstm_cell_61/strided_sliceý
+sequential_25/lstm_61/lstm_cell_61/MatMul_4MatMul*sequential_25/lstm_61/lstm_cell_61/mul:z:09sequential_25/lstm_61/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_4÷
&sequential_25/lstm_61/lstm_cell_61/addAddV23sequential_25/lstm_61/lstm_cell_61/BiasAdd:output:05sequential_25/lstm_61/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_25/lstm_61/lstm_cell_61/addÁ
*sequential_25/lstm_61/lstm_cell_61/SigmoidSigmoid*sequential_25/lstm_61/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_25/lstm_61/lstm_cell_61/Sigmoidæ
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_1ReadVariableOp:sequential_25_lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_1Å
8sequential_25/lstm_61/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_25/lstm_61/lstm_cell_61/strided_slice_1/stackÉ
:sequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack_1É
:sequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack_2Ú
2sequential_25/lstm_61/lstm_cell_61/strided_slice_1StridedSlice;sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_1:value:0Asequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack:output:0Csequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack_1:output:0Csequential_25/lstm_61/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_25/lstm_61/lstm_cell_61/strided_slice_1
+sequential_25/lstm_61/lstm_cell_61/MatMul_5MatMul,sequential_25/lstm_61/lstm_cell_61/mul_1:z:0;sequential_25/lstm_61/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_5ý
(sequential_25/lstm_61/lstm_cell_61/add_1AddV25sequential_25/lstm_61/lstm_cell_61/BiasAdd_1:output:05sequential_25/lstm_61/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/add_1Ç
,sequential_25/lstm_61/lstm_cell_61/Sigmoid_1Sigmoid,sequential_25/lstm_61/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/lstm_cell_61/Sigmoid_1ç
(sequential_25/lstm_61/lstm_cell_61/mul_4Mul0sequential_25/lstm_61/lstm_cell_61/Sigmoid_1:y:0&sequential_25/lstm_61/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/mul_4æ
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_2ReadVariableOp:sequential_25_lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_2Å
8sequential_25/lstm_61/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_25/lstm_61/lstm_cell_61/strided_slice_2/stackÉ
:sequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack_1É
:sequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack_2Ú
2sequential_25/lstm_61/lstm_cell_61/strided_slice_2StridedSlice;sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_2:value:0Asequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack:output:0Csequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack_1:output:0Csequential_25/lstm_61/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_25/lstm_61/lstm_cell_61/strided_slice_2
+sequential_25/lstm_61/lstm_cell_61/MatMul_6MatMul,sequential_25/lstm_61/lstm_cell_61/mul_2:z:0;sequential_25/lstm_61/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_6ý
(sequential_25/lstm_61/lstm_cell_61/add_2AddV25sequential_25/lstm_61/lstm_cell_61/BiasAdd_2:output:05sequential_25/lstm_61/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/add_2º
'sequential_25/lstm_61/lstm_cell_61/ReluRelu,sequential_25/lstm_61/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_25/lstm_61/lstm_cell_61/Reluô
(sequential_25/lstm_61/lstm_cell_61/mul_5Mul.sequential_25/lstm_61/lstm_cell_61/Sigmoid:y:05sequential_25/lstm_61/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/mul_5ë
(sequential_25/lstm_61/lstm_cell_61/add_3AddV2,sequential_25/lstm_61/lstm_cell_61/mul_4:z:0,sequential_25/lstm_61/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/add_3æ
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_3ReadVariableOp:sequential_25_lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_3Å
8sequential_25/lstm_61/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_25/lstm_61/lstm_cell_61/strided_slice_3/stackÉ
:sequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack_1É
:sequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack_2Ú
2sequential_25/lstm_61/lstm_cell_61/strided_slice_3StridedSlice;sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_3:value:0Asequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack:output:0Csequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack_1:output:0Csequential_25/lstm_61/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_25/lstm_61/lstm_cell_61/strided_slice_3
+sequential_25/lstm_61/lstm_cell_61/MatMul_7MatMul,sequential_25/lstm_61/lstm_cell_61/mul_3:z:0;sequential_25/lstm_61/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_25/lstm_61/lstm_cell_61/MatMul_7ý
(sequential_25/lstm_61/lstm_cell_61/add_4AddV25sequential_25/lstm_61/lstm_cell_61/BiasAdd_3:output:05sequential_25/lstm_61/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/add_4Ç
,sequential_25/lstm_61/lstm_cell_61/Sigmoid_2Sigmoid,sequential_25/lstm_61/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/lstm_cell_61/Sigmoid_2¾
)sequential_25/lstm_61/lstm_cell_61/Relu_1Relu,sequential_25/lstm_61/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_25/lstm_61/lstm_cell_61/Relu_1ø
(sequential_25/lstm_61/lstm_cell_61/mul_6Mul0sequential_25/lstm_61/lstm_cell_61/Sigmoid_2:y:07sequential_25/lstm_61/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_25/lstm_61/lstm_cell_61/mul_6»
3sequential_25/lstm_61/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    25
3sequential_25/lstm_61/TensorArrayV2_1/element_shape
%sequential_25/lstm_61/TensorArrayV2_1TensorListReserve<sequential_25/lstm_61/TensorArrayV2_1/element_shape:output:0.sequential_25/lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_25/lstm_61/TensorArrayV2_1z
sequential_25/lstm_61/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_25/lstm_61/time«
.sequential_25/lstm_61/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_25/lstm_61/while/maximum_iterations
(sequential_25/lstm_61/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_25/lstm_61/while/loop_counterÍ
sequential_25/lstm_61/whileWhile1sequential_25/lstm_61/while/loop_counter:output:07sequential_25/lstm_61/while/maximum_iterations:output:0#sequential_25/lstm_61/time:output:0.sequential_25/lstm_61/TensorArrayV2_1:handle:0$sequential_25/lstm_61/zeros:output:0&sequential_25/lstm_61/zeros_1:output:0.sequential_25/lstm_61/strided_slice_1:output:0Msequential_25/lstm_61/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_25_lstm_61_lstm_cell_61_split_readvariableop_resourceBsequential_25_lstm_61_lstm_cell_61_split_1_readvariableop_resource:sequential_25_lstm_61_lstm_cell_61_readvariableop_resource*
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
(sequential_25_lstm_61_while_body_1989451*4
cond,R*
(sequential_25_lstm_61_while_cond_1989450*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_25/lstm_61/whileá
Fsequential_25/lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2H
Fsequential_25/lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_25/lstm_61/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_25/lstm_61/while:output:3Osequential_25/lstm_61/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02:
8sequential_25/lstm_61/TensorArrayV2Stack/TensorListStack­
+sequential_25/lstm_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_25/lstm_61/strided_slice_3/stack¨
-sequential_25/lstm_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_25/lstm_61/strided_slice_3/stack_1¨
-sequential_25/lstm_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_25/lstm_61/strided_slice_3/stack_2
%sequential_25/lstm_61/strided_slice_3StridedSliceAsequential_25/lstm_61/TensorArrayV2Stack/TensorListStack:tensor:04sequential_25/lstm_61/strided_slice_3/stack:output:06sequential_25/lstm_61/strided_slice_3/stack_1:output:06sequential_25/lstm_61/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2'
%sequential_25/lstm_61/strided_slice_3¥
&sequential_25/lstm_61/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_25/lstm_61/transpose_1/permý
!sequential_25/lstm_61/transpose_1	TransposeAsequential_25/lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_25/lstm_61/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!sequential_25/lstm_61/transpose_1
sequential_25/lstm_61/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_25/lstm_61/runtimeÒ
,sequential_25/dense_74/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_74_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_25/dense_74/MatMul/ReadVariableOpà
sequential_25/dense_74/MatMulMatMul.sequential_25/lstm_61/strided_slice_3:output:04sequential_25/dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_25/dense_74/MatMulÑ
-sequential_25/dense_74/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_74_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_25/dense_74/BiasAdd/ReadVariableOpÝ
sequential_25/dense_74/BiasAddBiasAdd'sequential_25/dense_74/MatMul:product:05sequential_25/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_25/dense_74/BiasAdd
sequential_25/dense_74/ReluRelu'sequential_25/dense_74/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_25/dense_74/ReluÒ
,sequential_25/dense_75/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_75_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_25/dense_75/MatMul/ReadVariableOpÛ
sequential_25/dense_75/MatMulMatMul)sequential_25/dense_74/Relu:activations:04sequential_25/dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_25/dense_75/MatMulÑ
-sequential_25/dense_75/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_25/dense_75/BiasAdd/ReadVariableOpÝ
sequential_25/dense_75/BiasAddBiasAdd'sequential_25/dense_75/MatMul:product:05sequential_25/dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_25/dense_75/BiasAdd
sequential_25/reshape_37/ShapeShape'sequential_25/dense_75/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_25/reshape_37/Shape¦
,sequential_25/reshape_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_25/reshape_37/strided_slice/stackª
.sequential_25/reshape_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_25/reshape_37/strided_slice/stack_1ª
.sequential_25/reshape_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_25/reshape_37/strided_slice/stack_2ø
&sequential_25/reshape_37/strided_sliceStridedSlice'sequential_25/reshape_37/Shape:output:05sequential_25/reshape_37/strided_slice/stack:output:07sequential_25/reshape_37/strided_slice/stack_1:output:07sequential_25/reshape_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_25/reshape_37/strided_slice
(sequential_25/reshape_37/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_25/reshape_37/Reshape/shape/1
(sequential_25/reshape_37/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_25/reshape_37/Reshape/shape/2
&sequential_25/reshape_37/Reshape/shapePack/sequential_25/reshape_37/strided_slice:output:01sequential_25/reshape_37/Reshape/shape/1:output:01sequential_25/reshape_37/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_25/reshape_37/Reshape/shapeß
 sequential_25/reshape_37/ReshapeReshape'sequential_25/dense_75/BiasAdd:output:0/sequential_25/reshape_37/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_25/reshape_37/Reshape
IdentityIdentity)sequential_25/reshape_37/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp.^sequential_25/dense_74/BiasAdd/ReadVariableOp-^sequential_25/dense_74/MatMul/ReadVariableOp.^sequential_25/dense_75/BiasAdd/ReadVariableOp-^sequential_25/dense_75/MatMul/ReadVariableOp2^sequential_25/lstm_61/lstm_cell_61/ReadVariableOp4^sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_14^sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_24^sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_38^sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOp:^sequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOp^sequential_25/lstm_61/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2^
-sequential_25/dense_74/BiasAdd/ReadVariableOp-sequential_25/dense_74/BiasAdd/ReadVariableOp2\
,sequential_25/dense_74/MatMul/ReadVariableOp,sequential_25/dense_74/MatMul/ReadVariableOp2^
-sequential_25/dense_75/BiasAdd/ReadVariableOp-sequential_25/dense_75/BiasAdd/ReadVariableOp2\
,sequential_25/dense_75/MatMul/ReadVariableOp,sequential_25/dense_75/MatMul/ReadVariableOp2f
1sequential_25/lstm_61/lstm_cell_61/ReadVariableOp1sequential_25/lstm_61/lstm_cell_61/ReadVariableOp2j
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_13sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_12j
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_23sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_22j
3sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_33sequential_25/lstm_61/lstm_cell_61/ReadVariableOp_32r
7sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOp7sequential_25/lstm_61/lstm_cell_61/split/ReadVariableOp2v
9sequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOp9sequential_25/lstm_61/lstm_cell_61/split_1/ReadVariableOp2:
sequential_25/lstm_61/whilesequential_25/lstm_61/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_26
ý
½
lstm_61_while_body_1991426,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3+
'lstm_61_while_lstm_61_strided_slice_1_0g
clstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_61_while_lstm_cell_61_split_readvariableop_resource_0:	K
<lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0:	G
4lstm_61_while_lstm_cell_61_readvariableop_resource_0:	 
lstm_61_while_identity
lstm_61_while_identity_1
lstm_61_while_identity_2
lstm_61_while_identity_3
lstm_61_while_identity_4
lstm_61_while_identity_5)
%lstm_61_while_lstm_61_strided_slice_1e
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorK
8lstm_61_while_lstm_cell_61_split_readvariableop_resource:	I
:lstm_61_while_lstm_cell_61_split_1_readvariableop_resource:	E
2lstm_61_while_lstm_cell_61_readvariableop_resource:	 ¢)lstm_61/while/lstm_cell_61/ReadVariableOp¢+lstm_61/while/lstm_cell_61/ReadVariableOp_1¢+lstm_61/while/lstm_cell_61/ReadVariableOp_2¢+lstm_61/while/lstm_cell_61/ReadVariableOp_3¢/lstm_61/while/lstm_cell_61/split/ReadVariableOp¢1lstm_61/while/lstm_cell_61/split_1/ReadVariableOpÓ
?lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_61/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0lstm_61_while_placeholderHlstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_61/while/TensorArrayV2Read/TensorListGetItem£
*lstm_61/while/lstm_cell_61/ones_like/ShapeShapelstm_61_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_61/while/lstm_cell_61/ones_like/Shape
*lstm_61/while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_61/while/lstm_cell_61/ones_like/Constð
$lstm_61/while/lstm_cell_61/ones_likeFill3lstm_61/while/lstm_cell_61/ones_like/Shape:output:03lstm_61/while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/ones_like
*lstm_61/while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_61/while/lstm_cell_61/split/split_dimÞ
/lstm_61/while/lstm_cell_61/split/ReadVariableOpReadVariableOp:lstm_61_while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_61/while/lstm_cell_61/split/ReadVariableOp
 lstm_61/while/lstm_cell_61/splitSplit3lstm_61/while/lstm_cell_61/split/split_dim:output:07lstm_61/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_61/while/lstm_cell_61/splitç
!lstm_61/while/lstm_cell_61/MatMulMatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_61/while/lstm_cell_61/MatMulë
#lstm_61/while/lstm_cell_61/MatMul_1MatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_1ë
#lstm_61/while/lstm_cell_61/MatMul_2MatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_2ë
#lstm_61/while/lstm_cell_61/MatMul_3MatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_3
,lstm_61/while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_61/while/lstm_cell_61/split_1/split_dimà
1lstm_61/while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp<lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_61/while/lstm_cell_61/split_1/ReadVariableOp
"lstm_61/while/lstm_cell_61/split_1Split5lstm_61/while/lstm_cell_61/split_1/split_dim:output:09lstm_61/while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_61/while/lstm_cell_61/split_1ß
"lstm_61/while/lstm_cell_61/BiasAddBiasAdd+lstm_61/while/lstm_cell_61/MatMul:product:0+lstm_61/while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/while/lstm_cell_61/BiasAddå
$lstm_61/while/lstm_cell_61/BiasAdd_1BiasAdd-lstm_61/while/lstm_cell_61/MatMul_1:product:0+lstm_61/while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/BiasAdd_1å
$lstm_61/while/lstm_cell_61/BiasAdd_2BiasAdd-lstm_61/while/lstm_cell_61/MatMul_2:product:0+lstm_61/while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/BiasAdd_2å
$lstm_61/while/lstm_cell_61/BiasAdd_3BiasAdd-lstm_61/while/lstm_cell_61/MatMul_3:product:0+lstm_61/while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/BiasAdd_3Å
lstm_61/while/lstm_cell_61/mulMullstm_61_while_placeholder_2-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/while/lstm_cell_61/mulÉ
 lstm_61/while/lstm_cell_61/mul_1Mullstm_61_while_placeholder_2-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_1É
 lstm_61/while/lstm_cell_61/mul_2Mullstm_61_while_placeholder_2-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_2É
 lstm_61/while/lstm_cell_61/mul_3Mullstm_61_while_placeholder_2-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_3Ì
)lstm_61/while/lstm_cell_61/ReadVariableOpReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_61/while/lstm_cell_61/ReadVariableOp±
.lstm_61/while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_61/while/lstm_cell_61/strided_slice/stackµ
0lstm_61/while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_61/while/lstm_cell_61/strided_slice/stack_1µ
0lstm_61/while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_61/while/lstm_cell_61/strided_slice/stack_2
(lstm_61/while/lstm_cell_61/strided_sliceStridedSlice1lstm_61/while/lstm_cell_61/ReadVariableOp:value:07lstm_61/while/lstm_cell_61/strided_slice/stack:output:09lstm_61/while/lstm_cell_61/strided_slice/stack_1:output:09lstm_61/while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_61/while/lstm_cell_61/strided_sliceÝ
#lstm_61/while/lstm_cell_61/MatMul_4MatMul"lstm_61/while/lstm_cell_61/mul:z:01lstm_61/while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_4×
lstm_61/while/lstm_cell_61/addAddV2+lstm_61/while/lstm_cell_61/BiasAdd:output:0-lstm_61/while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/while/lstm_cell_61/add©
"lstm_61/while/lstm_cell_61/SigmoidSigmoid"lstm_61/while/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/while/lstm_cell_61/SigmoidÐ
+lstm_61/while/lstm_cell_61/ReadVariableOp_1ReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_61/while/lstm_cell_61/ReadVariableOp_1µ
0lstm_61/while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_61/while/lstm_cell_61/strided_slice_1/stack¹
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_1¹
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_2ª
*lstm_61/while/lstm_cell_61/strided_slice_1StridedSlice3lstm_61/while/lstm_cell_61/ReadVariableOp_1:value:09lstm_61/while/lstm_cell_61/strided_slice_1/stack:output:0;lstm_61/while/lstm_cell_61/strided_slice_1/stack_1:output:0;lstm_61/while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_61/while/lstm_cell_61/strided_slice_1á
#lstm_61/while/lstm_cell_61/MatMul_5MatMul$lstm_61/while/lstm_cell_61/mul_1:z:03lstm_61/while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_5Ý
 lstm_61/while/lstm_cell_61/add_1AddV2-lstm_61/while/lstm_cell_61/BiasAdd_1:output:0-lstm_61/while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_1¯
$lstm_61/while/lstm_cell_61/Sigmoid_1Sigmoid$lstm_61/while/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/Sigmoid_1Ä
 lstm_61/while/lstm_cell_61/mul_4Mul(lstm_61/while/lstm_cell_61/Sigmoid_1:y:0lstm_61_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_4Ð
+lstm_61/while/lstm_cell_61/ReadVariableOp_2ReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_61/while/lstm_cell_61/ReadVariableOp_2µ
0lstm_61/while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_61/while/lstm_cell_61/strided_slice_2/stack¹
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_1¹
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_2ª
*lstm_61/while/lstm_cell_61/strided_slice_2StridedSlice3lstm_61/while/lstm_cell_61/ReadVariableOp_2:value:09lstm_61/while/lstm_cell_61/strided_slice_2/stack:output:0;lstm_61/while/lstm_cell_61/strided_slice_2/stack_1:output:0;lstm_61/while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_61/while/lstm_cell_61/strided_slice_2á
#lstm_61/while/lstm_cell_61/MatMul_6MatMul$lstm_61/while/lstm_cell_61/mul_2:z:03lstm_61/while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_6Ý
 lstm_61/while/lstm_cell_61/add_2AddV2-lstm_61/while/lstm_cell_61/BiasAdd_2:output:0-lstm_61/while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_2¢
lstm_61/while/lstm_cell_61/ReluRelu$lstm_61/while/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_61/while/lstm_cell_61/ReluÔ
 lstm_61/while/lstm_cell_61/mul_5Mul&lstm_61/while/lstm_cell_61/Sigmoid:y:0-lstm_61/while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_5Ë
 lstm_61/while/lstm_cell_61/add_3AddV2$lstm_61/while/lstm_cell_61/mul_4:z:0$lstm_61/while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_3Ð
+lstm_61/while/lstm_cell_61/ReadVariableOp_3ReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_61/while/lstm_cell_61/ReadVariableOp_3µ
0lstm_61/while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_61/while/lstm_cell_61/strided_slice_3/stack¹
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_1¹
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_2ª
*lstm_61/while/lstm_cell_61/strided_slice_3StridedSlice3lstm_61/while/lstm_cell_61/ReadVariableOp_3:value:09lstm_61/while/lstm_cell_61/strided_slice_3/stack:output:0;lstm_61/while/lstm_cell_61/strided_slice_3/stack_1:output:0;lstm_61/while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_61/while/lstm_cell_61/strided_slice_3á
#lstm_61/while/lstm_cell_61/MatMul_7MatMul$lstm_61/while/lstm_cell_61/mul_3:z:03lstm_61/while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_7Ý
 lstm_61/while/lstm_cell_61/add_4AddV2-lstm_61/while/lstm_cell_61/BiasAdd_3:output:0-lstm_61/while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_4¯
$lstm_61/while/lstm_cell_61/Sigmoid_2Sigmoid$lstm_61/while/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/Sigmoid_2¦
!lstm_61/while/lstm_cell_61/Relu_1Relu$lstm_61/while/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_61/while/lstm_cell_61/Relu_1Ø
 lstm_61/while/lstm_cell_61/mul_6Mul(lstm_61/while/lstm_cell_61/Sigmoid_2:y:0/lstm_61/while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_6
2lstm_61/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_61_while_placeholder_1lstm_61_while_placeholder$lstm_61/while/lstm_cell_61/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_61/while/TensorArrayV2Write/TensorListSetIteml
lstm_61/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/while/add/y
lstm_61/while/addAddV2lstm_61_while_placeholderlstm_61/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_61/while/addp
lstm_61/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/while/add_1/y
lstm_61/while/add_1AddV2(lstm_61_while_lstm_61_while_loop_counterlstm_61/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_61/while/add_1
lstm_61/while/IdentityIdentitylstm_61/while/add_1:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity¦
lstm_61/while/Identity_1Identity.lstm_61_while_lstm_61_while_maximum_iterations^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity_1
lstm_61/while/Identity_2Identitylstm_61/while/add:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity_2º
lstm_61/while/Identity_3IdentityBlstm_61/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity_3­
lstm_61/while/Identity_4Identity$lstm_61/while/lstm_cell_61/mul_6:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/while/Identity_4­
lstm_61/while/Identity_5Identity$lstm_61/while/lstm_cell_61/add_3:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/while/Identity_5
lstm_61/while/NoOpNoOp*^lstm_61/while/lstm_cell_61/ReadVariableOp,^lstm_61/while/lstm_cell_61/ReadVariableOp_1,^lstm_61/while/lstm_cell_61/ReadVariableOp_2,^lstm_61/while/lstm_cell_61/ReadVariableOp_30^lstm_61/while/lstm_cell_61/split/ReadVariableOp2^lstm_61/while/lstm_cell_61/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_61/while/NoOp"9
lstm_61_while_identitylstm_61/while/Identity:output:0"=
lstm_61_while_identity_1!lstm_61/while/Identity_1:output:0"=
lstm_61_while_identity_2!lstm_61/while/Identity_2:output:0"=
lstm_61_while_identity_3!lstm_61/while/Identity_3:output:0"=
lstm_61_while_identity_4!lstm_61/while/Identity_4:output:0"=
lstm_61_while_identity_5!lstm_61/while/Identity_5:output:0"P
%lstm_61_while_lstm_61_strided_slice_1'lstm_61_while_lstm_61_strided_slice_1_0"j
2lstm_61_while_lstm_cell_61_readvariableop_resource4lstm_61_while_lstm_cell_61_readvariableop_resource_0"z
:lstm_61_while_lstm_cell_61_split_1_readvariableop_resource<lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0"v
8lstm_61_while_lstm_cell_61_split_readvariableop_resource:lstm_61_while_lstm_cell_61_split_readvariableop_resource_0"È
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_61/while/lstm_cell_61/ReadVariableOp)lstm_61/while/lstm_cell_61/ReadVariableOp2Z
+lstm_61/while/lstm_cell_61/ReadVariableOp_1+lstm_61/while/lstm_cell_61/ReadVariableOp_12Z
+lstm_61/while/lstm_cell_61/ReadVariableOp_2+lstm_61/while/lstm_cell_61/ReadVariableOp_22Z
+lstm_61/while/lstm_cell_61/ReadVariableOp_3+lstm_61/while/lstm_cell_61/ReadVariableOp_32b
/lstm_61/while/lstm_cell_61/split/ReadVariableOp/lstm_61/while/lstm_cell_61/split/ReadVariableOp2f
1lstm_61/while/lstm_cell_61/split_1/ReadVariableOp1lstm_61/while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 

J__inference_sequential_25_layer_call_and_return_conditional_losses_1991922

inputsE
2lstm_61_lstm_cell_61_split_readvariableop_resource:	C
4lstm_61_lstm_cell_61_split_1_readvariableop_resource:	?
,lstm_61_lstm_cell_61_readvariableop_resource:	 9
'dense_74_matmul_readvariableop_resource:  6
(dense_74_biasadd_readvariableop_resource: 9
'dense_75_matmul_readvariableop_resource: 6
(dense_75_biasadd_readvariableop_resource:
identity¢dense_74/BiasAdd/ReadVariableOp¢dense_74/MatMul/ReadVariableOp¢dense_75/BiasAdd/ReadVariableOp¢dense_75/MatMul/ReadVariableOp¢/dense_75/bias/Regularizer/Square/ReadVariableOp¢#lstm_61/lstm_cell_61/ReadVariableOp¢%lstm_61/lstm_cell_61/ReadVariableOp_1¢%lstm_61/lstm_cell_61/ReadVariableOp_2¢%lstm_61/lstm_cell_61/ReadVariableOp_3¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢)lstm_61/lstm_cell_61/split/ReadVariableOp¢+lstm_61/lstm_cell_61/split_1/ReadVariableOp¢lstm_61/whileT
lstm_61/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_61/Shape
lstm_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_61/strided_slice/stack
lstm_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_61/strided_slice/stack_1
lstm_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_61/strided_slice/stack_2
lstm_61/strided_sliceStridedSlicelstm_61/Shape:output:0$lstm_61/strided_slice/stack:output:0&lstm_61/strided_slice/stack_1:output:0&lstm_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_61/strided_slicel
lstm_61/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros/mul/y
lstm_61/zeros/mulMullstm_61/strided_slice:output:0lstm_61/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros/mulo
lstm_61/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_61/zeros/Less/y
lstm_61/zeros/LessLesslstm_61/zeros/mul:z:0lstm_61/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros/Lessr
lstm_61/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros/packed/1£
lstm_61/zeros/packedPacklstm_61/strided_slice:output:0lstm_61/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_61/zeros/packedo
lstm_61/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_61/zeros/Const
lstm_61/zerosFilllstm_61/zeros/packed:output:0lstm_61/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/zerosp
lstm_61/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros_1/mul/y
lstm_61/zeros_1/mulMullstm_61/strided_slice:output:0lstm_61/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros_1/muls
lstm_61/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_61/zeros_1/Less/y
lstm_61/zeros_1/LessLesslstm_61/zeros_1/mul:z:0lstm_61/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_61/zeros_1/Lessv
lstm_61/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/zeros_1/packed/1©
lstm_61/zeros_1/packedPacklstm_61/strided_slice:output:0!lstm_61/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_61/zeros_1/packeds
lstm_61/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_61/zeros_1/Const
lstm_61/zeros_1Filllstm_61/zeros_1/packed:output:0lstm_61/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/zeros_1
lstm_61/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_61/transpose/perm
lstm_61/transpose	Transposeinputslstm_61/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_61/transposeg
lstm_61/Shape_1Shapelstm_61/transpose:y:0*
T0*
_output_shapes
:2
lstm_61/Shape_1
lstm_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_61/strided_slice_1/stack
lstm_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_1/stack_1
lstm_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_1/stack_2
lstm_61/strided_slice_1StridedSlicelstm_61/Shape_1:output:0&lstm_61/strided_slice_1/stack:output:0(lstm_61/strided_slice_1/stack_1:output:0(lstm_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_61/strided_slice_1
#lstm_61/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_61/TensorArrayV2/element_shapeÒ
lstm_61/TensorArrayV2TensorListReserve,lstm_61/TensorArrayV2/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_61/TensorArrayV2Ï
=lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_61/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_61/transpose:y:0Flstm_61/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_61/TensorArrayUnstack/TensorListFromTensor
lstm_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_61/strided_slice_2/stack
lstm_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_2/stack_1
lstm_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_2/stack_2¬
lstm_61/strided_slice_2StridedSlicelstm_61/transpose:y:0&lstm_61/strided_slice_2/stack:output:0(lstm_61/strided_slice_2/stack_1:output:0(lstm_61/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_61/strided_slice_2
$lstm_61/lstm_cell_61/ones_like/ShapeShapelstm_61/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_61/lstm_cell_61/ones_like/Shape
$lstm_61/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_61/lstm_cell_61/ones_like/ConstØ
lstm_61/lstm_cell_61/ones_likeFill-lstm_61/lstm_cell_61/ones_like/Shape:output:0-lstm_61/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/ones_like
"lstm_61/lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"lstm_61/lstm_cell_61/dropout/ConstÓ
 lstm_61/lstm_cell_61/dropout/MulMul'lstm_61/lstm_cell_61/ones_like:output:0+lstm_61/lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/lstm_cell_61/dropout/Mul
"lstm_61/lstm_cell_61/dropout/ShapeShape'lstm_61/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_61/lstm_cell_61/dropout/Shape
9lstm_61/lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform+lstm_61/lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ê¤B2;
9lstm_61/lstm_cell_61/dropout/random_uniform/RandomUniform
+lstm_61/lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+lstm_61/lstm_cell_61/dropout/GreaterEqual/y
)lstm_61/lstm_cell_61/dropout/GreaterEqualGreaterEqualBlstm_61/lstm_cell_61/dropout/random_uniform/RandomUniform:output:04lstm_61/lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_61/lstm_cell_61/dropout/GreaterEqual¾
!lstm_61/lstm_cell_61/dropout/CastCast-lstm_61/lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_61/lstm_cell_61/dropout/CastÎ
"lstm_61/lstm_cell_61/dropout/Mul_1Mul$lstm_61/lstm_cell_61/dropout/Mul:z:0%lstm_61/lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/lstm_cell_61/dropout/Mul_1
$lstm_61/lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_61/lstm_cell_61/dropout_1/ConstÙ
"lstm_61/lstm_cell_61/dropout_1/MulMul'lstm_61/lstm_cell_61/ones_like:output:0-lstm_61/lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/lstm_cell_61/dropout_1/Mul£
$lstm_61/lstm_cell_61/dropout_1/ShapeShape'lstm_61/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_61/lstm_cell_61/dropout_1/Shape
;lstm_61/lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_61/lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2êÑÙ2=
;lstm_61/lstm_cell_61/dropout_1/random_uniform/RandomUniform£
-lstm_61/lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_61/lstm_cell_61/dropout_1/GreaterEqual/y
+lstm_61/lstm_cell_61/dropout_1/GreaterEqualGreaterEqualDlstm_61/lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:06lstm_61/lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_61/lstm_cell_61/dropout_1/GreaterEqualÄ
#lstm_61/lstm_cell_61/dropout_1/CastCast/lstm_61/lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/lstm_cell_61/dropout_1/CastÖ
$lstm_61/lstm_cell_61/dropout_1/Mul_1Mul&lstm_61/lstm_cell_61/dropout_1/Mul:z:0'lstm_61/lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/lstm_cell_61/dropout_1/Mul_1
$lstm_61/lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_61/lstm_cell_61/dropout_2/ConstÙ
"lstm_61/lstm_cell_61/dropout_2/MulMul'lstm_61/lstm_cell_61/ones_like:output:0-lstm_61/lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/lstm_cell_61/dropout_2/Mul£
$lstm_61/lstm_cell_61/dropout_2/ShapeShape'lstm_61/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_61/lstm_cell_61/dropout_2/Shape
;lstm_61/lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_61/lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2õÂ2=
;lstm_61/lstm_cell_61/dropout_2/random_uniform/RandomUniform£
-lstm_61/lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_61/lstm_cell_61/dropout_2/GreaterEqual/y
+lstm_61/lstm_cell_61/dropout_2/GreaterEqualGreaterEqualDlstm_61/lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:06lstm_61/lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_61/lstm_cell_61/dropout_2/GreaterEqualÄ
#lstm_61/lstm_cell_61/dropout_2/CastCast/lstm_61/lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/lstm_cell_61/dropout_2/CastÖ
$lstm_61/lstm_cell_61/dropout_2/Mul_1Mul&lstm_61/lstm_cell_61/dropout_2/Mul:z:0'lstm_61/lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/lstm_cell_61/dropout_2/Mul_1
$lstm_61/lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_61/lstm_cell_61/dropout_3/ConstÙ
"lstm_61/lstm_cell_61/dropout_3/MulMul'lstm_61/lstm_cell_61/ones_like:output:0-lstm_61/lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/lstm_cell_61/dropout_3/Mul£
$lstm_61/lstm_cell_61/dropout_3/ShapeShape'lstm_61/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_61/lstm_cell_61/dropout_3/Shape
;lstm_61/lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_61/lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ùòÉ2=
;lstm_61/lstm_cell_61/dropout_3/random_uniform/RandomUniform£
-lstm_61/lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_61/lstm_cell_61/dropout_3/GreaterEqual/y
+lstm_61/lstm_cell_61/dropout_3/GreaterEqualGreaterEqualDlstm_61/lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:06lstm_61/lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_61/lstm_cell_61/dropout_3/GreaterEqualÄ
#lstm_61/lstm_cell_61/dropout_3/CastCast/lstm_61/lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/lstm_cell_61/dropout_3/CastÖ
$lstm_61/lstm_cell_61/dropout_3/Mul_1Mul&lstm_61/lstm_cell_61/dropout_3/Mul:z:0'lstm_61/lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/lstm_cell_61/dropout_3/Mul_1
$lstm_61/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_61/lstm_cell_61/split/split_dimÊ
)lstm_61/lstm_cell_61/split/ReadVariableOpReadVariableOp2lstm_61_lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_61/lstm_cell_61/split/ReadVariableOpû
lstm_61/lstm_cell_61/splitSplit-lstm_61/lstm_cell_61/split/split_dim:output:01lstm_61/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_61/lstm_cell_61/split½
lstm_61/lstm_cell_61/MatMulMatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMulÁ
lstm_61/lstm_cell_61/MatMul_1MatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_1Á
lstm_61/lstm_cell_61/MatMul_2MatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_2Á
lstm_61/lstm_cell_61/MatMul_3MatMul lstm_61/strided_slice_2:output:0#lstm_61/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_3
&lstm_61/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_61/lstm_cell_61/split_1/split_dimÌ
+lstm_61/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4lstm_61_lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_61/lstm_cell_61/split_1/ReadVariableOpó
lstm_61/lstm_cell_61/split_1Split/lstm_61/lstm_cell_61/split_1/split_dim:output:03lstm_61/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_61/lstm_cell_61/split_1Ç
lstm_61/lstm_cell_61/BiasAddBiasAdd%lstm_61/lstm_cell_61/MatMul:product:0%lstm_61/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/BiasAddÍ
lstm_61/lstm_cell_61/BiasAdd_1BiasAdd'lstm_61/lstm_cell_61/MatMul_1:product:0%lstm_61/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/BiasAdd_1Í
lstm_61/lstm_cell_61/BiasAdd_2BiasAdd'lstm_61/lstm_cell_61/MatMul_2:product:0%lstm_61/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/BiasAdd_2Í
lstm_61/lstm_cell_61/BiasAdd_3BiasAdd'lstm_61/lstm_cell_61/MatMul_3:product:0%lstm_61/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/BiasAdd_3­
lstm_61/lstm_cell_61/mulMullstm_61/zeros:output:0&lstm_61/lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul³
lstm_61/lstm_cell_61/mul_1Mullstm_61/zeros:output:0(lstm_61/lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_1³
lstm_61/lstm_cell_61/mul_2Mullstm_61/zeros:output:0(lstm_61/lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_2³
lstm_61/lstm_cell_61/mul_3Mullstm_61/zeros:output:0(lstm_61/lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_3¸
#lstm_61/lstm_cell_61/ReadVariableOpReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_61/lstm_cell_61/ReadVariableOp¥
(lstm_61/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_61/lstm_cell_61/strided_slice/stack©
*lstm_61/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_61/lstm_cell_61/strided_slice/stack_1©
*lstm_61/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_61/lstm_cell_61/strided_slice/stack_2ú
"lstm_61/lstm_cell_61/strided_sliceStridedSlice+lstm_61/lstm_cell_61/ReadVariableOp:value:01lstm_61/lstm_cell_61/strided_slice/stack:output:03lstm_61/lstm_cell_61/strided_slice/stack_1:output:03lstm_61/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_61/lstm_cell_61/strided_sliceÅ
lstm_61/lstm_cell_61/MatMul_4MatMullstm_61/lstm_cell_61/mul:z:0+lstm_61/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_4¿
lstm_61/lstm_cell_61/addAddV2%lstm_61/lstm_cell_61/BiasAdd:output:0'lstm_61/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add
lstm_61/lstm_cell_61/SigmoidSigmoidlstm_61/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/Sigmoid¼
%lstm_61/lstm_cell_61/ReadVariableOp_1ReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_61/lstm_cell_61/ReadVariableOp_1©
*lstm_61/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_61/lstm_cell_61/strided_slice_1/stack­
,lstm_61/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_61/lstm_cell_61/strided_slice_1/stack_1­
,lstm_61/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_61/lstm_cell_61/strided_slice_1/stack_2
$lstm_61/lstm_cell_61/strided_slice_1StridedSlice-lstm_61/lstm_cell_61/ReadVariableOp_1:value:03lstm_61/lstm_cell_61/strided_slice_1/stack:output:05lstm_61/lstm_cell_61/strided_slice_1/stack_1:output:05lstm_61/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_61/lstm_cell_61/strided_slice_1É
lstm_61/lstm_cell_61/MatMul_5MatMullstm_61/lstm_cell_61/mul_1:z:0-lstm_61/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_5Å
lstm_61/lstm_cell_61/add_1AddV2'lstm_61/lstm_cell_61/BiasAdd_1:output:0'lstm_61/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_1
lstm_61/lstm_cell_61/Sigmoid_1Sigmoidlstm_61/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/Sigmoid_1¯
lstm_61/lstm_cell_61/mul_4Mul"lstm_61/lstm_cell_61/Sigmoid_1:y:0lstm_61/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_4¼
%lstm_61/lstm_cell_61/ReadVariableOp_2ReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_61/lstm_cell_61/ReadVariableOp_2©
*lstm_61/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_61/lstm_cell_61/strided_slice_2/stack­
,lstm_61/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_61/lstm_cell_61/strided_slice_2/stack_1­
,lstm_61/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_61/lstm_cell_61/strided_slice_2/stack_2
$lstm_61/lstm_cell_61/strided_slice_2StridedSlice-lstm_61/lstm_cell_61/ReadVariableOp_2:value:03lstm_61/lstm_cell_61/strided_slice_2/stack:output:05lstm_61/lstm_cell_61/strided_slice_2/stack_1:output:05lstm_61/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_61/lstm_cell_61/strided_slice_2É
lstm_61/lstm_cell_61/MatMul_6MatMullstm_61/lstm_cell_61/mul_2:z:0-lstm_61/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_6Å
lstm_61/lstm_cell_61/add_2AddV2'lstm_61/lstm_cell_61/BiasAdd_2:output:0'lstm_61/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_2
lstm_61/lstm_cell_61/ReluRelulstm_61/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/Relu¼
lstm_61/lstm_cell_61/mul_5Mul lstm_61/lstm_cell_61/Sigmoid:y:0'lstm_61/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_5³
lstm_61/lstm_cell_61/add_3AddV2lstm_61/lstm_cell_61/mul_4:z:0lstm_61/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_3¼
%lstm_61/lstm_cell_61/ReadVariableOp_3ReadVariableOp,lstm_61_lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_61/lstm_cell_61/ReadVariableOp_3©
*lstm_61/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_61/lstm_cell_61/strided_slice_3/stack­
,lstm_61/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_61/lstm_cell_61/strided_slice_3/stack_1­
,lstm_61/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_61/lstm_cell_61/strided_slice_3/stack_2
$lstm_61/lstm_cell_61/strided_slice_3StridedSlice-lstm_61/lstm_cell_61/ReadVariableOp_3:value:03lstm_61/lstm_cell_61/strided_slice_3/stack:output:05lstm_61/lstm_cell_61/strided_slice_3/stack_1:output:05lstm_61/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_61/lstm_cell_61/strided_slice_3É
lstm_61/lstm_cell_61/MatMul_7MatMullstm_61/lstm_cell_61/mul_3:z:0-lstm_61/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/MatMul_7Å
lstm_61/lstm_cell_61/add_4AddV2'lstm_61/lstm_cell_61/BiasAdd_3:output:0'lstm_61/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/add_4
lstm_61/lstm_cell_61/Sigmoid_2Sigmoidlstm_61/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/lstm_cell_61/Sigmoid_2
lstm_61/lstm_cell_61/Relu_1Relulstm_61/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/Relu_1À
lstm_61/lstm_cell_61/mul_6Mul"lstm_61/lstm_cell_61/Sigmoid_2:y:0)lstm_61/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/lstm_cell_61/mul_6
%lstm_61/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_61/TensorArrayV2_1/element_shapeØ
lstm_61/TensorArrayV2_1TensorListReserve.lstm_61/TensorArrayV2_1/element_shape:output:0 lstm_61/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_61/TensorArrayV2_1^
lstm_61/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/time
 lstm_61/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_61/while/maximum_iterationsz
lstm_61/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_61/while/loop_counterû
lstm_61/whileWhile#lstm_61/while/loop_counter:output:0)lstm_61/while/maximum_iterations:output:0lstm_61/time:output:0 lstm_61/TensorArrayV2_1:handle:0lstm_61/zeros:output:0lstm_61/zeros_1:output:0 lstm_61/strided_slice_1:output:0?lstm_61/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_61_lstm_cell_61_split_readvariableop_resource4lstm_61_lstm_cell_61_split_1_readvariableop_resource,lstm_61_lstm_cell_61_readvariableop_resource*
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
lstm_61_while_body_1991729*&
condR
lstm_61_while_cond_1991728*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_61/whileÅ
8lstm_61/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_61/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_61/TensorArrayV2Stack/TensorListStackTensorListStacklstm_61/while:output:3Alstm_61/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_61/TensorArrayV2Stack/TensorListStack
lstm_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_61/strided_slice_3/stack
lstm_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_61/strided_slice_3/stack_1
lstm_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_61/strided_slice_3/stack_2Ê
lstm_61/strided_slice_3StridedSlice3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_61/strided_slice_3/stack:output:0(lstm_61/strided_slice_3/stack_1:output:0(lstm_61/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_61/strided_slice_3
lstm_61/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_61/transpose_1/permÅ
lstm_61/transpose_1	Transpose3lstm_61/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_61/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/transpose_1v
lstm_61/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_61/runtime¨
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_74/MatMul/ReadVariableOp¨
dense_74/MatMulMatMul lstm_61/strided_slice_3:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_74/MatMul§
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_74/BiasAdd/ReadVariableOp¥
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_74/BiasAdds
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_74/Relu¨
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_75/MatMul/ReadVariableOp£
dense_75/MatMulMatMuldense_74/Relu:activations:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_75/MatMul§
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_75/BiasAdd/ReadVariableOp¥
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_75/BiasAddm
reshape_37/ShapeShapedense_75/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_37/Shape
reshape_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_37/strided_slice/stack
 reshape_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_1
 reshape_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_37/strided_slice/stack_2¤
reshape_37/strided_sliceStridedSlicereshape_37/Shape:output:0'reshape_37/strided_slice/stack:output:0)reshape_37/strided_slice/stack_1:output:0)reshape_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_37/strided_slicez
reshape_37/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/1z
reshape_37/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_37/Reshape/shape/2×
reshape_37/Reshape/shapePack!reshape_37/strided_slice:output:0#reshape_37/Reshape/shape/1:output:0#reshape_37/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_37/Reshape/shape§
reshape_37/ReshapeReshapedense_75/BiasAdd:output:0!reshape_37/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_37/Reshapeò
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_61_lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/mulÇ
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mulz
IdentityIdentityreshape_37/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp0^dense_75/bias/Regularizer/Square/ReadVariableOp$^lstm_61/lstm_cell_61/ReadVariableOp&^lstm_61/lstm_cell_61/ReadVariableOp_1&^lstm_61/lstm_cell_61/ReadVariableOp_2&^lstm_61/lstm_cell_61/ReadVariableOp_3>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*^lstm_61/lstm_cell_61/split/ReadVariableOp,^lstm_61/lstm_cell_61/split_1/ReadVariableOp^lstm_61/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp2J
#lstm_61/lstm_cell_61/ReadVariableOp#lstm_61/lstm_cell_61/ReadVariableOp2N
%lstm_61/lstm_cell_61/ReadVariableOp_1%lstm_61/lstm_cell_61/ReadVariableOp_12N
%lstm_61/lstm_cell_61/ReadVariableOp_2%lstm_61/lstm_cell_61/ReadVariableOp_22N
%lstm_61/lstm_cell_61/ReadVariableOp_3%lstm_61/lstm_cell_61/ReadVariableOp_32~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_61/lstm_cell_61/split/ReadVariableOp)lstm_61/lstm_cell_61/split/ReadVariableOp2Z
+lstm_61/lstm_cell_61/split_1/ReadVariableOp+lstm_61/lstm_cell_61/split_1/ReadVariableOp2
lstm_61/whilelstm_61/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
È
while_cond_1989737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1989737___redundant_placeholder05
1while_while_cond_1989737___redundant_placeholder15
1while_while_cond_1989737___redundant_placeholder25
1while_while_cond_1989737___redundant_placeholder3
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
/__inference_sequential_25_layer_call_fn_1990725
input_26
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_26unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_19907082
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
input_26
ßR
ì
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1993273

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2,
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
ÙÏ
¨
D__inference_lstm_61_layer_call_and_return_conditional_losses_1991071

inputs=
*lstm_cell_61_split_readvariableop_resource:	;
,lstm_cell_61_split_1_readvariableop_resource:	7
$lstm_cell_61_readvariableop_resource:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_61/ReadVariableOp¢lstm_cell_61/ReadVariableOp_1¢lstm_cell_61/ReadVariableOp_2¢lstm_cell_61/ReadVariableOp_3¢!lstm_cell_61/split/ReadVariableOp¢#lstm_cell_61/split_1/ReadVariableOp¢whileD
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
lstm_cell_61/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_61/ones_like/Shape
lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_61/ones_like/Const¸
lstm_cell_61/ones_likeFill%lstm_cell_61/ones_like/Shape:output:0%lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/ones_like}
lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout/Const³
lstm_cell_61/dropout/MulMullstm_cell_61/ones_like:output:0#lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Mul
lstm_cell_61/dropout/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout/Shape÷
1lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÀS23
1lstm_cell_61/dropout/random_uniform/RandomUniform
#lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_61/dropout/GreaterEqual/yò
!lstm_cell_61/dropout/GreaterEqualGreaterEqual:lstm_cell_61/dropout/random_uniform/RandomUniform:output:0,lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_61/dropout/GreaterEqual¦
lstm_cell_61/dropout/CastCast%lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Cast®
lstm_cell_61/dropout/Mul_1Mullstm_cell_61/dropout/Mul:z:0lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Mul_1
lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_1/Const¹
lstm_cell_61/dropout_1/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Mul
lstm_cell_61/dropout_1/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_1/Shapeþ
3lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ç¦Ð25
3lstm_cell_61/dropout_1/random_uniform/RandomUniform
%lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_1/GreaterEqual/yú
#lstm_cell_61/dropout_1/GreaterEqualGreaterEqual<lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_1/GreaterEqual¬
lstm_cell_61/dropout_1/CastCast'lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Cast¶
lstm_cell_61/dropout_1/Mul_1Mullstm_cell_61/dropout_1/Mul:z:0lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Mul_1
lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_2/Const¹
lstm_cell_61/dropout_2/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Mul
lstm_cell_61/dropout_2/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_2/Shapeý
3lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2µù^25
3lstm_cell_61/dropout_2/random_uniform/RandomUniform
%lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_2/GreaterEqual/yú
#lstm_cell_61/dropout_2/GreaterEqualGreaterEqual<lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_2/GreaterEqual¬
lstm_cell_61/dropout_2/CastCast'lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Cast¶
lstm_cell_61/dropout_2/Mul_1Mullstm_cell_61/dropout_2/Mul:z:0lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Mul_1
lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_3/Const¹
lstm_cell_61/dropout_3/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Mul
lstm_cell_61/dropout_3/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_3/Shapeý
3lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2âÀ~25
3lstm_cell_61/dropout_3/random_uniform/RandomUniform
%lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_3/GreaterEqual/yú
#lstm_cell_61/dropout_3/GreaterEqualGreaterEqual<lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_3/GreaterEqual¬
lstm_cell_61/dropout_3/CastCast'lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Cast¶
lstm_cell_61/dropout_3/Mul_1Mullstm_cell_61/dropout_3/Mul:z:0lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Mul_1~
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_61/split/split_dim²
!lstm_cell_61/split/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_61/split/ReadVariableOpÛ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0)lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_61/split
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul¡
lstm_cell_61/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_1¡
lstm_cell_61/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_2¡
lstm_cell_61/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_3
lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_61/split_1/split_dim´
#lstm_cell_61/split_1/ReadVariableOpReadVariableOp,lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_61/split_1/ReadVariableOpÓ
lstm_cell_61/split_1Split'lstm_cell_61/split_1/split_dim:output:0+lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_61/split_1§
lstm_cell_61/BiasAddBiasAddlstm_cell_61/MatMul:product:0lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd­
lstm_cell_61/BiasAdd_1BiasAddlstm_cell_61/MatMul_1:product:0lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_1­
lstm_cell_61/BiasAdd_2BiasAddlstm_cell_61/MatMul_2:product:0lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_2­
lstm_cell_61/BiasAdd_3BiasAddlstm_cell_61/MatMul_3:product:0lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_3
lstm_cell_61/mulMulzeros:output:0lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul
lstm_cell_61/mul_1Mulzeros:output:0 lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_1
lstm_cell_61/mul_2Mulzeros:output:0 lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_2
lstm_cell_61/mul_3Mulzeros:output:0 lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_3 
lstm_cell_61/ReadVariableOpReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp
 lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_61/strided_slice/stack
"lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice/stack_1
"lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_61/strided_slice/stack_2Ê
lstm_cell_61/strided_sliceStridedSlice#lstm_cell_61/ReadVariableOp:value:0)lstm_cell_61/strided_slice/stack:output:0+lstm_cell_61/strided_slice/stack_1:output:0+lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice¥
lstm_cell_61/MatMul_4MatMullstm_cell_61/mul:z:0#lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_4
lstm_cell_61/addAddV2lstm_cell_61/BiasAdd:output:0lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add
lstm_cell_61/SigmoidSigmoidlstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid¤
lstm_cell_61/ReadVariableOp_1ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_1
"lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice_1/stack
$lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_61/strided_slice_1/stack_1
$lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_1/stack_2Ö
lstm_cell_61/strided_slice_1StridedSlice%lstm_cell_61/ReadVariableOp_1:value:0+lstm_cell_61/strided_slice_1/stack:output:0-lstm_cell_61/strided_slice_1/stack_1:output:0-lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_1©
lstm_cell_61/MatMul_5MatMullstm_cell_61/mul_1:z:0%lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_5¥
lstm_cell_61/add_1AddV2lstm_cell_61/BiasAdd_1:output:0lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_1
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_1
lstm_cell_61/mul_4Mullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_4¤
lstm_cell_61/ReadVariableOp_2ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_2
"lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_61/strided_slice_2/stack
$lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_61/strided_slice_2/stack_1
$lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_2/stack_2Ö
lstm_cell_61/strided_slice_2StridedSlice%lstm_cell_61/ReadVariableOp_2:value:0+lstm_cell_61/strided_slice_2/stack:output:0-lstm_cell_61/strided_slice_2/stack_1:output:0-lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_2©
lstm_cell_61/MatMul_6MatMullstm_cell_61/mul_2:z:0%lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_6¥
lstm_cell_61/add_2AddV2lstm_cell_61/BiasAdd_2:output:0lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_2x
lstm_cell_61/ReluRelulstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu
lstm_cell_61/mul_5Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_5
lstm_cell_61/add_3AddV2lstm_cell_61/mul_4:z:0lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_3¤
lstm_cell_61/ReadVariableOp_3ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_3
"lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_61/strided_slice_3/stack
$lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_61/strided_slice_3/stack_1
$lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_3/stack_2Ö
lstm_cell_61/strided_slice_3StridedSlice%lstm_cell_61/ReadVariableOp_3:value:0+lstm_cell_61/strided_slice_3/stack:output:0-lstm_cell_61/strided_slice_3/stack_1:output:0-lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_3©
lstm_cell_61/MatMul_7MatMullstm_cell_61/mul_3:z:0%lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_7¥
lstm_cell_61/add_4AddV2lstm_cell_61/BiasAdd_3:output:0lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_4
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_2|
lstm_cell_61/Relu_1Relulstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu_1 
lstm_cell_61/mul_6Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_61_split_readvariableop_resource,lstm_cell_61_split_1_readvariableop_resource$lstm_cell_61_readvariableop_resource*
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
while_body_1990906*
condR
while_cond_1990905*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_61/ReadVariableOp^lstm_cell_61/ReadVariableOp_1^lstm_cell_61/ReadVariableOp_2^lstm_cell_61/ReadVariableOp_3"^lstm_cell_61/split/ReadVariableOp$^lstm_cell_61/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_61/ReadVariableOplstm_cell_61/ReadVariableOp2>
lstm_cell_61/ReadVariableOp_1lstm_cell_61/ReadVariableOp_12>
lstm_cell_61/ReadVariableOp_2lstm_cell_61/ReadVariableOp_22>
lstm_cell_61/ReadVariableOp_3lstm_cell_61/ReadVariableOp_32F
!lstm_cell_61/split/ReadVariableOp!lstm_cell_61/split/ReadVariableOp2J
#lstm_cell_61/split_1/ReadVariableOp#lstm_cell_61/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
¸
)__inference_lstm_61_layer_call_fn_1991939
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19898132
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
Ë

è
lstm_61_while_cond_1991425,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3.
*lstm_61_while_less_lstm_61_strided_slice_1E
Alstm_61_while_lstm_61_while_cond_1991425___redundant_placeholder0E
Alstm_61_while_lstm_61_while_cond_1991425___redundant_placeholder1E
Alstm_61_while_lstm_61_while_cond_1991425___redundant_placeholder2E
Alstm_61_while_lstm_61_while_cond_1991425___redundant_placeholder3
lstm_61_while_identity

lstm_61/while/LessLesslstm_61_while_placeholder*lstm_61_while_less_lstm_61_strided_slice_1*
T0*
_output_shapes
: 2
lstm_61/while/Lessu
lstm_61/while/IdentityIdentitylstm_61/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_61/while/Identity"9
lstm_61_while_identitylstm_61/while/Identity:output:0*(
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
ð

(sequential_25_lstm_61_while_cond_1989450H
Dsequential_25_lstm_61_while_sequential_25_lstm_61_while_loop_counterN
Jsequential_25_lstm_61_while_sequential_25_lstm_61_while_maximum_iterations+
'sequential_25_lstm_61_while_placeholder-
)sequential_25_lstm_61_while_placeholder_1-
)sequential_25_lstm_61_while_placeholder_2-
)sequential_25_lstm_61_while_placeholder_3J
Fsequential_25_lstm_61_while_less_sequential_25_lstm_61_strided_slice_1a
]sequential_25_lstm_61_while_sequential_25_lstm_61_while_cond_1989450___redundant_placeholder0a
]sequential_25_lstm_61_while_sequential_25_lstm_61_while_cond_1989450___redundant_placeholder1a
]sequential_25_lstm_61_while_sequential_25_lstm_61_while_cond_1989450___redundant_placeholder2a
]sequential_25_lstm_61_while_sequential_25_lstm_61_while_cond_1989450___redundant_placeholder3(
$sequential_25_lstm_61_while_identity
Þ
 sequential_25/lstm_61/while/LessLess'sequential_25_lstm_61_while_placeholderFsequential_25_lstm_61_while_less_sequential_25_lstm_61_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_25/lstm_61/while/Less
$sequential_25/lstm_61/while/IdentityIdentity$sequential_25/lstm_61/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_25/lstm_61/while/Identity"U
$sequential_25_lstm_61_while_identity-sequential_25/lstm_61/while/Identity:output:0*(
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
while_cond_1992081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1992081___redundant_placeholder05
1while_while_cond_1992081___redundant_placeholder15
1while_while_cond_1992081___redundant_placeholder25
1while_while_cond_1992081___redundant_placeholder3
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
while_cond_1992356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1992356___redundant_placeholder05
1while_while_cond_1992356___redundant_placeholder15
1while_while_cond_1992356___redundant_placeholder25
1while_while_cond_1992356___redundant_placeholder3
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

ö
E__inference_dense_74_layer_call_and_return_conditional_losses_1993092

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
while_cond_1992631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1992631___redundant_placeholder05
1while_while_cond_1992631___redundant_placeholder15
1while_while_cond_1992631___redundant_placeholder25
1while_while_cond_1992631___redundant_placeholder3
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
ÍB
ã
 __inference__traced_save_1993504
file_prefix.
*savev2_dense_74_kernel_read_readvariableop,
(savev2_dense_74_bias_read_readvariableop.
*savev2_dense_75_kernel_read_readvariableop,
(savev2_dense_75_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_61_lstm_cell_61_kernel_read_readvariableopD
@savev2_lstm_61_lstm_cell_61_recurrent_kernel_read_readvariableop8
4savev2_lstm_61_lstm_cell_61_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_74_kernel_m_read_readvariableop3
/savev2_adam_dense_74_bias_m_read_readvariableop5
1savev2_adam_dense_75_kernel_m_read_readvariableop3
/savev2_adam_dense_75_bias_m_read_readvariableopA
=savev2_adam_lstm_61_lstm_cell_61_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_61_lstm_cell_61_bias_m_read_readvariableop5
1savev2_adam_dense_74_kernel_v_read_readvariableop3
/savev2_adam_dense_74_bias_v_read_readvariableop5
1savev2_adam_dense_75_kernel_v_read_readvariableop3
/savev2_adam_dense_75_bias_v_read_readvariableopA
=savev2_adam_lstm_61_lstm_cell_61_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_61_lstm_cell_61_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_74_kernel_read_readvariableop(savev2_dense_74_bias_read_readvariableop*savev2_dense_75_kernel_read_readvariableop(savev2_dense_75_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_61_lstm_cell_61_kernel_read_readvariableop@savev2_lstm_61_lstm_cell_61_recurrent_kernel_read_readvariableop4savev2_lstm_61_lstm_cell_61_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_74_kernel_m_read_readvariableop/savev2_adam_dense_74_bias_m_read_readvariableop1savev2_adam_dense_75_kernel_m_read_readvariableop/savev2_adam_dense_75_bias_m_read_readvariableop=savev2_adam_lstm_61_lstm_cell_61_kernel_m_read_readvariableopGsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_61_lstm_cell_61_bias_m_read_readvariableop1savev2_adam_dense_74_kernel_v_read_readvariableop/savev2_adam_dense_74_bias_v_read_readvariableop1savev2_adam_dense_75_kernel_v_read_readvariableop/savev2_adam_dense_75_bias_v_read_readvariableop=savev2_adam_lstm_61_lstm_cell_61_kernel_v_read_readvariableopGsavev2_adam_lstm_61_lstm_cell_61_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_61_lstm_cell_61_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
û²
¥	
while_body_1992357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_61_split_readvariableop_resource_0:	C
4while_lstm_cell_61_split_1_readvariableop_resource_0:	?
,while_lstm_cell_61_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_61_split_readvariableop_resource:	A
2while_lstm_cell_61_split_1_readvariableop_resource:	=
*while_lstm_cell_61_readvariableop_resource:	 ¢!while/lstm_cell_61/ReadVariableOp¢#while/lstm_cell_61/ReadVariableOp_1¢#while/lstm_cell_61/ReadVariableOp_2¢#while/lstm_cell_61/ReadVariableOp_3¢'while/lstm_cell_61/split/ReadVariableOp¢)while/lstm_cell_61/split_1/ReadVariableOpÃ
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
"while/lstm_cell_61/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_61/ones_like/Shape
"while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_61/ones_like/ConstÐ
while/lstm_cell_61/ones_likeFill+while/lstm_cell_61/ones_like/Shape:output:0+while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/ones_like
 while/lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_61/dropout/ConstË
while/lstm_cell_61/dropout/MulMul%while/lstm_cell_61/ones_like:output:0)while/lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_61/dropout/Mul
 while/lstm_cell_61/dropout/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_61/dropout/Shape
7while/lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¨ÏÌ29
7while/lstm_cell_61/dropout/random_uniform/RandomUniform
)while/lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_61/dropout/GreaterEqual/y
'while/lstm_cell_61/dropout/GreaterEqualGreaterEqual@while/lstm_cell_61/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_61/dropout/GreaterEqual¸
while/lstm_cell_61/dropout/CastCast+while/lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_61/dropout/CastÆ
 while/lstm_cell_61/dropout/Mul_1Mul"while/lstm_cell_61/dropout/Mul:z:0#while/lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout/Mul_1
"while/lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_1/ConstÑ
 while/lstm_cell_61/dropout_1/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_1/Mul
"while/lstm_cell_61/dropout_1/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_1/Shape
9while/lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Üíß2;
9while/lstm_cell_61/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_1/GreaterEqual/y
)while/lstm_cell_61/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_1/GreaterEqual¾
!while/lstm_cell_61/dropout_1/CastCast-while/lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_1/CastÎ
"while/lstm_cell_61/dropout_1/Mul_1Mul$while/lstm_cell_61/dropout_1/Mul:z:0%while/lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_1/Mul_1
"while/lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_2/ConstÑ
 while/lstm_cell_61/dropout_2/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_2/Mul
"while/lstm_cell_61/dropout_2/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_2/Shape
9while/lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2è¯¾2;
9while/lstm_cell_61/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_2/GreaterEqual/y
)while/lstm_cell_61/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_2/GreaterEqual¾
!while/lstm_cell_61/dropout_2/CastCast-while/lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_2/CastÎ
"while/lstm_cell_61/dropout_2/Mul_1Mul$while/lstm_cell_61/dropout_2/Mul:z:0%while/lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_2/Mul_1
"while/lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_3/ConstÑ
 while/lstm_cell_61/dropout_3/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_3/Mul
"while/lstm_cell_61/dropout_3/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_3/Shape
9while/lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÊÔD2;
9while/lstm_cell_61/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_3/GreaterEqual/y
)while/lstm_cell_61/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_3/GreaterEqual¾
!while/lstm_cell_61/dropout_3/CastCast-while/lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_3/CastÎ
"while/lstm_cell_61/dropout_3/Mul_1Mul$while/lstm_cell_61/dropout_3/Mul:z:0%while/lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_3/Mul_1
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_61/split/split_dimÆ
'while/lstm_cell_61/split/ReadVariableOpReadVariableOp2while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_61/split/ReadVariableOpó
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_61/splitÇ
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMulË
while/lstm_cell_61/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_1Ë
while/lstm_cell_61/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_2Ë
while/lstm_cell_61/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_3
$while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_61/split_1/split_dimÈ
)while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_61/split_1/ReadVariableOpë
while/lstm_cell_61/split_1Split-while/lstm_cell_61/split_1/split_dim:output:01while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_61/split_1¿
while/lstm_cell_61/BiasAddBiasAdd#while/lstm_cell_61/MatMul:product:0#while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAddÅ
while/lstm_cell_61/BiasAdd_1BiasAdd%while/lstm_cell_61/MatMul_1:product:0#while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_1Å
while/lstm_cell_61/BiasAdd_2BiasAdd%while/lstm_cell_61/MatMul_2:product:0#while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_2Å
while/lstm_cell_61/BiasAdd_3BiasAdd%while/lstm_cell_61/MatMul_3:product:0#while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_3¤
while/lstm_cell_61/mulMulwhile_placeholder_2$while/lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mulª
while/lstm_cell_61/mul_1Mulwhile_placeholder_2&while/lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_1ª
while/lstm_cell_61/mul_2Mulwhile_placeholder_2&while/lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_2ª
while/lstm_cell_61/mul_3Mulwhile_placeholder_2&while/lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_3´
!while/lstm_cell_61/ReadVariableOpReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_61/ReadVariableOp¡
&while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_61/strided_slice/stack¥
(while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice/stack_1¥
(while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_61/strided_slice/stack_2î
 while/lstm_cell_61/strided_sliceStridedSlice)while/lstm_cell_61/ReadVariableOp:value:0/while/lstm_cell_61/strided_slice/stack:output:01while/lstm_cell_61/strided_slice/stack_1:output:01while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_61/strided_slice½
while/lstm_cell_61/MatMul_4MatMulwhile/lstm_cell_61/mul:z:0)while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_4·
while/lstm_cell_61/addAddV2#while/lstm_cell_61/BiasAdd:output:0%while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add
while/lstm_cell_61/SigmoidSigmoidwhile/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid¸
#while/lstm_cell_61/ReadVariableOp_1ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_1¥
(while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice_1/stack©
*while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_61/strided_slice_1/stack_1©
*while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_1/stack_2ú
"while/lstm_cell_61/strided_slice_1StridedSlice+while/lstm_cell_61/ReadVariableOp_1:value:01while/lstm_cell_61/strided_slice_1/stack:output:03while/lstm_cell_61/strided_slice_1/stack_1:output:03while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_1Á
while/lstm_cell_61/MatMul_5MatMulwhile/lstm_cell_61/mul_1:z:0+while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_5½
while/lstm_cell_61/add_1AddV2%while/lstm_cell_61/BiasAdd_1:output:0%while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_1
while/lstm_cell_61/Sigmoid_1Sigmoidwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_1¤
while/lstm_cell_61/mul_4Mul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_4¸
#while/lstm_cell_61/ReadVariableOp_2ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_2¥
(while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_61/strided_slice_2/stack©
*while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_61/strided_slice_2/stack_1©
*while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_2/stack_2ú
"while/lstm_cell_61/strided_slice_2StridedSlice+while/lstm_cell_61/ReadVariableOp_2:value:01while/lstm_cell_61/strided_slice_2/stack:output:03while/lstm_cell_61/strided_slice_2/stack_1:output:03while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_2Á
while/lstm_cell_61/MatMul_6MatMulwhile/lstm_cell_61/mul_2:z:0+while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_6½
while/lstm_cell_61/add_2AddV2%while/lstm_cell_61/BiasAdd_2:output:0%while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_2
while/lstm_cell_61/ReluReluwhile/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu´
while/lstm_cell_61/mul_5Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_5«
while/lstm_cell_61/add_3AddV2while/lstm_cell_61/mul_4:z:0while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_3¸
#while/lstm_cell_61/ReadVariableOp_3ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_3¥
(while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_61/strided_slice_3/stack©
*while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_61/strided_slice_3/stack_1©
*while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_3/stack_2ú
"while/lstm_cell_61/strided_slice_3StridedSlice+while/lstm_cell_61/ReadVariableOp_3:value:01while/lstm_cell_61/strided_slice_3/stack:output:03while/lstm_cell_61/strided_slice_3/stack_1:output:03while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_3Á
while/lstm_cell_61/MatMul_7MatMulwhile/lstm_cell_61/mul_3:z:0+while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_7½
while/lstm_cell_61/add_4AddV2%while/lstm_cell_61/BiasAdd_3:output:0%while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_4
while/lstm_cell_61/Sigmoid_2Sigmoidwhile/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_2
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu_1¸
while/lstm_cell_61/mul_6Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_61/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_61/ReadVariableOp$^while/lstm_cell_61/ReadVariableOp_1$^while/lstm_cell_61/ReadVariableOp_2$^while/lstm_cell_61/ReadVariableOp_3(^while/lstm_cell_61/split/ReadVariableOp*^while/lstm_cell_61/split_1/ReadVariableOp*"
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
*while_lstm_cell_61_readvariableop_resource,while_lstm_cell_61_readvariableop_resource_0"j
2while_lstm_cell_61_split_1_readvariableop_resource4while_lstm_cell_61_split_1_readvariableop_resource_0"f
0while_lstm_cell_61_split_readvariableop_resource2while_lstm_cell_61_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_61/ReadVariableOp!while/lstm_cell_61/ReadVariableOp2J
#while/lstm_cell_61/ReadVariableOp_1#while/lstm_cell_61/ReadVariableOp_12J
#while/lstm_cell_61/ReadVariableOp_2#while/lstm_cell_61/ReadVariableOp_22J
#while/lstm_cell_61/ReadVariableOp_3#while/lstm_cell_61/ReadVariableOp_32R
'while/lstm_cell_61/split/ReadVariableOp'while/lstm_cell_61/split/ReadVariableOp2V
)while/lstm_cell_61/split_1/ReadVariableOp)while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¸
÷
.__inference_lstm_cell_61_layer_call_fn_1993175

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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_19897242
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
ü²
¥	
while_body_1990906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_61_split_readvariableop_resource_0:	C
4while_lstm_cell_61_split_1_readvariableop_resource_0:	?
,while_lstm_cell_61_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_61_split_readvariableop_resource:	A
2while_lstm_cell_61_split_1_readvariableop_resource:	=
*while_lstm_cell_61_readvariableop_resource:	 ¢!while/lstm_cell_61/ReadVariableOp¢#while/lstm_cell_61/ReadVariableOp_1¢#while/lstm_cell_61/ReadVariableOp_2¢#while/lstm_cell_61/ReadVariableOp_3¢'while/lstm_cell_61/split/ReadVariableOp¢)while/lstm_cell_61/split_1/ReadVariableOpÃ
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
"while/lstm_cell_61/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_61/ones_like/Shape
"while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_61/ones_like/ConstÐ
while/lstm_cell_61/ones_likeFill+while/lstm_cell_61/ones_like/Shape:output:0+while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/ones_like
 while/lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_61/dropout/ConstË
while/lstm_cell_61/dropout/MulMul%while/lstm_cell_61/ones_like:output:0)while/lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_61/dropout/Mul
 while/lstm_cell_61/dropout/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_61/dropout/Shape
7while/lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2­®29
7while/lstm_cell_61/dropout/random_uniform/RandomUniform
)while/lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_61/dropout/GreaterEqual/y
'while/lstm_cell_61/dropout/GreaterEqualGreaterEqual@while/lstm_cell_61/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_61/dropout/GreaterEqual¸
while/lstm_cell_61/dropout/CastCast+while/lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_61/dropout/CastÆ
 while/lstm_cell_61/dropout/Mul_1Mul"while/lstm_cell_61/dropout/Mul:z:0#while/lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout/Mul_1
"while/lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_1/ConstÑ
 while/lstm_cell_61/dropout_1/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_1/Mul
"while/lstm_cell_61/dropout_1/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_1/Shape
9while/lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Íï«2;
9while/lstm_cell_61/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_1/GreaterEqual/y
)while/lstm_cell_61/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_1/GreaterEqual¾
!while/lstm_cell_61/dropout_1/CastCast-while/lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_1/CastÎ
"while/lstm_cell_61/dropout_1/Mul_1Mul$while/lstm_cell_61/dropout_1/Mul:z:0%while/lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_1/Mul_1
"while/lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_2/ConstÑ
 while/lstm_cell_61/dropout_2/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_2/Mul
"while/lstm_cell_61/dropout_2/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_2/Shape
9while/lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ôîà2;
9while/lstm_cell_61/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_2/GreaterEqual/y
)while/lstm_cell_61/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_2/GreaterEqual¾
!while/lstm_cell_61/dropout_2/CastCast-while/lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_2/CastÎ
"while/lstm_cell_61/dropout_2/Mul_1Mul$while/lstm_cell_61/dropout_2/Mul:z:0%while/lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_2/Mul_1
"while/lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_3/ConstÑ
 while/lstm_cell_61/dropout_3/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_3/Mul
"while/lstm_cell_61/dropout_3/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_3/Shape
9while/lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¾2;
9while/lstm_cell_61/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_3/GreaterEqual/y
)while/lstm_cell_61/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_3/GreaterEqual¾
!while/lstm_cell_61/dropout_3/CastCast-while/lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_3/CastÎ
"while/lstm_cell_61/dropout_3/Mul_1Mul$while/lstm_cell_61/dropout_3/Mul:z:0%while/lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_3/Mul_1
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_61/split/split_dimÆ
'while/lstm_cell_61/split/ReadVariableOpReadVariableOp2while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_61/split/ReadVariableOpó
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_61/splitÇ
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMulË
while/lstm_cell_61/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_1Ë
while/lstm_cell_61/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_2Ë
while/lstm_cell_61/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_3
$while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_61/split_1/split_dimÈ
)while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_61/split_1/ReadVariableOpë
while/lstm_cell_61/split_1Split-while/lstm_cell_61/split_1/split_dim:output:01while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_61/split_1¿
while/lstm_cell_61/BiasAddBiasAdd#while/lstm_cell_61/MatMul:product:0#while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAddÅ
while/lstm_cell_61/BiasAdd_1BiasAdd%while/lstm_cell_61/MatMul_1:product:0#while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_1Å
while/lstm_cell_61/BiasAdd_2BiasAdd%while/lstm_cell_61/MatMul_2:product:0#while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_2Å
while/lstm_cell_61/BiasAdd_3BiasAdd%while/lstm_cell_61/MatMul_3:product:0#while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_3¤
while/lstm_cell_61/mulMulwhile_placeholder_2$while/lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mulª
while/lstm_cell_61/mul_1Mulwhile_placeholder_2&while/lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_1ª
while/lstm_cell_61/mul_2Mulwhile_placeholder_2&while/lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_2ª
while/lstm_cell_61/mul_3Mulwhile_placeholder_2&while/lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_3´
!while/lstm_cell_61/ReadVariableOpReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_61/ReadVariableOp¡
&while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_61/strided_slice/stack¥
(while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice/stack_1¥
(while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_61/strided_slice/stack_2î
 while/lstm_cell_61/strided_sliceStridedSlice)while/lstm_cell_61/ReadVariableOp:value:0/while/lstm_cell_61/strided_slice/stack:output:01while/lstm_cell_61/strided_slice/stack_1:output:01while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_61/strided_slice½
while/lstm_cell_61/MatMul_4MatMulwhile/lstm_cell_61/mul:z:0)while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_4·
while/lstm_cell_61/addAddV2#while/lstm_cell_61/BiasAdd:output:0%while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add
while/lstm_cell_61/SigmoidSigmoidwhile/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid¸
#while/lstm_cell_61/ReadVariableOp_1ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_1¥
(while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice_1/stack©
*while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_61/strided_slice_1/stack_1©
*while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_1/stack_2ú
"while/lstm_cell_61/strided_slice_1StridedSlice+while/lstm_cell_61/ReadVariableOp_1:value:01while/lstm_cell_61/strided_slice_1/stack:output:03while/lstm_cell_61/strided_slice_1/stack_1:output:03while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_1Á
while/lstm_cell_61/MatMul_5MatMulwhile/lstm_cell_61/mul_1:z:0+while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_5½
while/lstm_cell_61/add_1AddV2%while/lstm_cell_61/BiasAdd_1:output:0%while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_1
while/lstm_cell_61/Sigmoid_1Sigmoidwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_1¤
while/lstm_cell_61/mul_4Mul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_4¸
#while/lstm_cell_61/ReadVariableOp_2ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_2¥
(while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_61/strided_slice_2/stack©
*while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_61/strided_slice_2/stack_1©
*while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_2/stack_2ú
"while/lstm_cell_61/strided_slice_2StridedSlice+while/lstm_cell_61/ReadVariableOp_2:value:01while/lstm_cell_61/strided_slice_2/stack:output:03while/lstm_cell_61/strided_slice_2/stack_1:output:03while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_2Á
while/lstm_cell_61/MatMul_6MatMulwhile/lstm_cell_61/mul_2:z:0+while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_6½
while/lstm_cell_61/add_2AddV2%while/lstm_cell_61/BiasAdd_2:output:0%while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_2
while/lstm_cell_61/ReluReluwhile/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu´
while/lstm_cell_61/mul_5Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_5«
while/lstm_cell_61/add_3AddV2while/lstm_cell_61/mul_4:z:0while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_3¸
#while/lstm_cell_61/ReadVariableOp_3ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_3¥
(while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_61/strided_slice_3/stack©
*while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_61/strided_slice_3/stack_1©
*while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_3/stack_2ú
"while/lstm_cell_61/strided_slice_3StridedSlice+while/lstm_cell_61/ReadVariableOp_3:value:01while/lstm_cell_61/strided_slice_3/stack:output:03while/lstm_cell_61/strided_slice_3/stack_1:output:03while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_3Á
while/lstm_cell_61/MatMul_7MatMulwhile/lstm_cell_61/mul_3:z:0+while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_7½
while/lstm_cell_61/add_4AddV2%while/lstm_cell_61/BiasAdd_3:output:0%while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_4
while/lstm_cell_61/Sigmoid_2Sigmoidwhile/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_2
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu_1¸
while/lstm_cell_61/mul_6Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_61/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_61/ReadVariableOp$^while/lstm_cell_61/ReadVariableOp_1$^while/lstm_cell_61/ReadVariableOp_2$^while/lstm_cell_61/ReadVariableOp_3(^while/lstm_cell_61/split/ReadVariableOp*^while/lstm_cell_61/split_1/ReadVariableOp*"
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
*while_lstm_cell_61_readvariableop_resource,while_lstm_cell_61_readvariableop_resource_0"j
2while_lstm_cell_61_split_1_readvariableop_resource4while_lstm_cell_61_split_1_readvariableop_resource_0"f
0while_lstm_cell_61_split_readvariableop_resource2while_lstm_cell_61_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_61/ReadVariableOp!while/lstm_cell_61/ReadVariableOp2J
#while/lstm_cell_61/ReadVariableOp_1#while/lstm_cell_61/ReadVariableOp_12J
#while/lstm_cell_61/ReadVariableOp_2#while/lstm_cell_61/ReadVariableOp_22J
#while/lstm_cell_61/ReadVariableOp_3#while/lstm_cell_61/ReadVariableOp_32R
'while/lstm_cell_61/split/ReadVariableOp'while/lstm_cell_61/split/ReadVariableOp2V
)while/lstm_cell_61/split_1/ReadVariableOp)while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ø+
µ
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991205
input_26"
lstm_61_1991174:	
lstm_61_1991176:	"
lstm_61_1991178:	 "
dense_74_1991181:  
dense_74_1991183: "
dense_75_1991186: 
dense_75_1991188:
identity¢ dense_74/StatefulPartitionedCall¢ dense_75/StatefulPartitionedCall¢/dense_75/bias/Regularizer/Square/ReadVariableOp¢lstm_61/StatefulPartitionedCall¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp§
lstm_61/StatefulPartitionedCallStatefulPartitionedCallinput_26lstm_61_1991174lstm_61_1991176lstm_61_1991178*
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19906332!
lstm_61/StatefulPartitionedCall¹
 dense_74/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0dense_74_1991181dense_74_1991183*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_19906522"
 dense_74/StatefulPartitionedCallº
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_1991186dense_75_1991188*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_19906742"
 dense_75/StatefulPartitionedCall
reshape_37/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_19906932
reshape_37/PartitionedCallÏ
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_61_1991174*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/mul¯
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_75_1991188*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mul
IdentityIdentity#reshape_37/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall0^dense_75/bias/Regularizer/Square/ReadVariableOp ^lstm_61/StatefulPartitionedCall>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_26
îÍ
½
lstm_61_while_body_1991729,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3+
'lstm_61_while_lstm_61_strided_slice_1_0g
clstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_61_while_lstm_cell_61_split_readvariableop_resource_0:	K
<lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0:	G
4lstm_61_while_lstm_cell_61_readvariableop_resource_0:	 
lstm_61_while_identity
lstm_61_while_identity_1
lstm_61_while_identity_2
lstm_61_while_identity_3
lstm_61_while_identity_4
lstm_61_while_identity_5)
%lstm_61_while_lstm_61_strided_slice_1e
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorK
8lstm_61_while_lstm_cell_61_split_readvariableop_resource:	I
:lstm_61_while_lstm_cell_61_split_1_readvariableop_resource:	E
2lstm_61_while_lstm_cell_61_readvariableop_resource:	 ¢)lstm_61/while/lstm_cell_61/ReadVariableOp¢+lstm_61/while/lstm_cell_61/ReadVariableOp_1¢+lstm_61/while/lstm_cell_61/ReadVariableOp_2¢+lstm_61/while/lstm_cell_61/ReadVariableOp_3¢/lstm_61/while/lstm_cell_61/split/ReadVariableOp¢1lstm_61/while/lstm_cell_61/split_1/ReadVariableOpÓ
?lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_61/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0lstm_61_while_placeholderHlstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_61/while/TensorArrayV2Read/TensorListGetItem£
*lstm_61/while/lstm_cell_61/ones_like/ShapeShapelstm_61_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_61/while/lstm_cell_61/ones_like/Shape
*lstm_61/while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_61/while/lstm_cell_61/ones_like/Constð
$lstm_61/while/lstm_cell_61/ones_likeFill3lstm_61/while/lstm_cell_61/ones_like/Shape:output:03lstm_61/while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/ones_like
(lstm_61/while/lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2*
(lstm_61/while/lstm_cell_61/dropout/Constë
&lstm_61/while/lstm_cell_61/dropout/MulMul-lstm_61/while/lstm_cell_61/ones_like:output:01lstm_61/while/lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_61/while/lstm_cell_61/dropout/Mul±
(lstm_61/while/lstm_cell_61/dropout/ShapeShape-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_61/while/lstm_cell_61/dropout/Shape¡
?lstm_61/while/lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform1lstm_61/while/lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2º2A
?lstm_61/while/lstm_cell_61/dropout/random_uniform/RandomUniform«
1lstm_61/while/lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>23
1lstm_61/while/lstm_cell_61/dropout/GreaterEqual/yª
/lstm_61/while/lstm_cell_61/dropout/GreaterEqualGreaterEqualHlstm_61/while/lstm_cell_61/dropout/random_uniform/RandomUniform:output:0:lstm_61/while/lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_61/while/lstm_cell_61/dropout/GreaterEqualÐ
'lstm_61/while/lstm_cell_61/dropout/CastCast3lstm_61/while/lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_61/while/lstm_cell_61/dropout/Castæ
(lstm_61/while/lstm_cell_61/dropout/Mul_1Mul*lstm_61/while/lstm_cell_61/dropout/Mul:z:0+lstm_61/while/lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_61/while/lstm_cell_61/dropout/Mul_1
*lstm_61/while/lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_61/while/lstm_cell_61/dropout_1/Constñ
(lstm_61/while/lstm_cell_61/dropout_1/MulMul-lstm_61/while/lstm_cell_61/ones_like:output:03lstm_61/while/lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_61/while/lstm_cell_61/dropout_1/Mulµ
*lstm_61/while/lstm_cell_61/dropout_1/ShapeShape-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_61/while/lstm_cell_61/dropout_1/Shape¨
Alstm_61/while/lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_61/while/lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ö2C
Alstm_61/while/lstm_cell_61/dropout_1/random_uniform/RandomUniform¯
3lstm_61/while/lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_61/while/lstm_cell_61/dropout_1/GreaterEqual/y²
1lstm_61/while/lstm_cell_61/dropout_1/GreaterEqualGreaterEqualJlstm_61/while/lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:0<lstm_61/while/lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_61/while/lstm_cell_61/dropout_1/GreaterEqualÖ
)lstm_61/while/lstm_cell_61/dropout_1/CastCast5lstm_61/while/lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_61/while/lstm_cell_61/dropout_1/Castî
*lstm_61/while/lstm_cell_61/dropout_1/Mul_1Mul,lstm_61/while/lstm_cell_61/dropout_1/Mul:z:0-lstm_61/while/lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_61/while/lstm_cell_61/dropout_1/Mul_1
*lstm_61/while/lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_61/while/lstm_cell_61/dropout_2/Constñ
(lstm_61/while/lstm_cell_61/dropout_2/MulMul-lstm_61/while/lstm_cell_61/ones_like:output:03lstm_61/while/lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_61/while/lstm_cell_61/dropout_2/Mulµ
*lstm_61/while/lstm_cell_61/dropout_2/ShapeShape-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_61/while/lstm_cell_61/dropout_2/Shape§
Alstm_61/while/lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_61/while/lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¦p2C
Alstm_61/while/lstm_cell_61/dropout_2/random_uniform/RandomUniform¯
3lstm_61/while/lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_61/while/lstm_cell_61/dropout_2/GreaterEqual/y²
1lstm_61/while/lstm_cell_61/dropout_2/GreaterEqualGreaterEqualJlstm_61/while/lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:0<lstm_61/while/lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_61/while/lstm_cell_61/dropout_2/GreaterEqualÖ
)lstm_61/while/lstm_cell_61/dropout_2/CastCast5lstm_61/while/lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_61/while/lstm_cell_61/dropout_2/Castî
*lstm_61/while/lstm_cell_61/dropout_2/Mul_1Mul,lstm_61/while/lstm_cell_61/dropout_2/Mul:z:0-lstm_61/while/lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_61/while/lstm_cell_61/dropout_2/Mul_1
*lstm_61/while/lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_61/while/lstm_cell_61/dropout_3/Constñ
(lstm_61/while/lstm_cell_61/dropout_3/MulMul-lstm_61/while/lstm_cell_61/ones_like:output:03lstm_61/while/lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_61/while/lstm_cell_61/dropout_3/Mulµ
*lstm_61/while/lstm_cell_61/dropout_3/ShapeShape-lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_61/while/lstm_cell_61/dropout_3/Shape§
Alstm_61/while/lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_61/while/lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ãÌ2C
Alstm_61/while/lstm_cell_61/dropout_3/random_uniform/RandomUniform¯
3lstm_61/while/lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_61/while/lstm_cell_61/dropout_3/GreaterEqual/y²
1lstm_61/while/lstm_cell_61/dropout_3/GreaterEqualGreaterEqualJlstm_61/while/lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:0<lstm_61/while/lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_61/while/lstm_cell_61/dropout_3/GreaterEqualÖ
)lstm_61/while/lstm_cell_61/dropout_3/CastCast5lstm_61/while/lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_61/while/lstm_cell_61/dropout_3/Castî
*lstm_61/while/lstm_cell_61/dropout_3/Mul_1Mul,lstm_61/while/lstm_cell_61/dropout_3/Mul:z:0-lstm_61/while/lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_61/while/lstm_cell_61/dropout_3/Mul_1
*lstm_61/while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_61/while/lstm_cell_61/split/split_dimÞ
/lstm_61/while/lstm_cell_61/split/ReadVariableOpReadVariableOp:lstm_61_while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_61/while/lstm_cell_61/split/ReadVariableOp
 lstm_61/while/lstm_cell_61/splitSplit3lstm_61/while/lstm_cell_61/split/split_dim:output:07lstm_61/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_61/while/lstm_cell_61/splitç
!lstm_61/while/lstm_cell_61/MatMulMatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_61/while/lstm_cell_61/MatMulë
#lstm_61/while/lstm_cell_61/MatMul_1MatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_1ë
#lstm_61/while/lstm_cell_61/MatMul_2MatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_2ë
#lstm_61/while/lstm_cell_61/MatMul_3MatMul8lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_61/while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_3
,lstm_61/while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_61/while/lstm_cell_61/split_1/split_dimà
1lstm_61/while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp<lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_61/while/lstm_cell_61/split_1/ReadVariableOp
"lstm_61/while/lstm_cell_61/split_1Split5lstm_61/while/lstm_cell_61/split_1/split_dim:output:09lstm_61/while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_61/while/lstm_cell_61/split_1ß
"lstm_61/while/lstm_cell_61/BiasAddBiasAdd+lstm_61/while/lstm_cell_61/MatMul:product:0+lstm_61/while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/while/lstm_cell_61/BiasAddå
$lstm_61/while/lstm_cell_61/BiasAdd_1BiasAdd-lstm_61/while/lstm_cell_61/MatMul_1:product:0+lstm_61/while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/BiasAdd_1å
$lstm_61/while/lstm_cell_61/BiasAdd_2BiasAdd-lstm_61/while/lstm_cell_61/MatMul_2:product:0+lstm_61/while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/BiasAdd_2å
$lstm_61/while/lstm_cell_61/BiasAdd_3BiasAdd-lstm_61/while/lstm_cell_61/MatMul_3:product:0+lstm_61/while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/BiasAdd_3Ä
lstm_61/while/lstm_cell_61/mulMullstm_61_while_placeholder_2,lstm_61/while/lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/while/lstm_cell_61/mulÊ
 lstm_61/while/lstm_cell_61/mul_1Mullstm_61_while_placeholder_2.lstm_61/while/lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_1Ê
 lstm_61/while/lstm_cell_61/mul_2Mullstm_61_while_placeholder_2.lstm_61/while/lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_2Ê
 lstm_61/while/lstm_cell_61/mul_3Mullstm_61_while_placeholder_2.lstm_61/while/lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_3Ì
)lstm_61/while/lstm_cell_61/ReadVariableOpReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_61/while/lstm_cell_61/ReadVariableOp±
.lstm_61/while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_61/while/lstm_cell_61/strided_slice/stackµ
0lstm_61/while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_61/while/lstm_cell_61/strided_slice/stack_1µ
0lstm_61/while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_61/while/lstm_cell_61/strided_slice/stack_2
(lstm_61/while/lstm_cell_61/strided_sliceStridedSlice1lstm_61/while/lstm_cell_61/ReadVariableOp:value:07lstm_61/while/lstm_cell_61/strided_slice/stack:output:09lstm_61/while/lstm_cell_61/strided_slice/stack_1:output:09lstm_61/while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_61/while/lstm_cell_61/strided_sliceÝ
#lstm_61/while/lstm_cell_61/MatMul_4MatMul"lstm_61/while/lstm_cell_61/mul:z:01lstm_61/while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_4×
lstm_61/while/lstm_cell_61/addAddV2+lstm_61/while/lstm_cell_61/BiasAdd:output:0-lstm_61/while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_61/while/lstm_cell_61/add©
"lstm_61/while/lstm_cell_61/SigmoidSigmoid"lstm_61/while/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_61/while/lstm_cell_61/SigmoidÐ
+lstm_61/while/lstm_cell_61/ReadVariableOp_1ReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_61/while/lstm_cell_61/ReadVariableOp_1µ
0lstm_61/while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_61/while/lstm_cell_61/strided_slice_1/stack¹
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_1¹
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_61/while/lstm_cell_61/strided_slice_1/stack_2ª
*lstm_61/while/lstm_cell_61/strided_slice_1StridedSlice3lstm_61/while/lstm_cell_61/ReadVariableOp_1:value:09lstm_61/while/lstm_cell_61/strided_slice_1/stack:output:0;lstm_61/while/lstm_cell_61/strided_slice_1/stack_1:output:0;lstm_61/while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_61/while/lstm_cell_61/strided_slice_1á
#lstm_61/while/lstm_cell_61/MatMul_5MatMul$lstm_61/while/lstm_cell_61/mul_1:z:03lstm_61/while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_5Ý
 lstm_61/while/lstm_cell_61/add_1AddV2-lstm_61/while/lstm_cell_61/BiasAdd_1:output:0-lstm_61/while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_1¯
$lstm_61/while/lstm_cell_61/Sigmoid_1Sigmoid$lstm_61/while/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/Sigmoid_1Ä
 lstm_61/while/lstm_cell_61/mul_4Mul(lstm_61/while/lstm_cell_61/Sigmoid_1:y:0lstm_61_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_4Ð
+lstm_61/while/lstm_cell_61/ReadVariableOp_2ReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_61/while/lstm_cell_61/ReadVariableOp_2µ
0lstm_61/while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_61/while/lstm_cell_61/strided_slice_2/stack¹
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_1¹
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_61/while/lstm_cell_61/strided_slice_2/stack_2ª
*lstm_61/while/lstm_cell_61/strided_slice_2StridedSlice3lstm_61/while/lstm_cell_61/ReadVariableOp_2:value:09lstm_61/while/lstm_cell_61/strided_slice_2/stack:output:0;lstm_61/while/lstm_cell_61/strided_slice_2/stack_1:output:0;lstm_61/while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_61/while/lstm_cell_61/strided_slice_2á
#lstm_61/while/lstm_cell_61/MatMul_6MatMul$lstm_61/while/lstm_cell_61/mul_2:z:03lstm_61/while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_6Ý
 lstm_61/while/lstm_cell_61/add_2AddV2-lstm_61/while/lstm_cell_61/BiasAdd_2:output:0-lstm_61/while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_2¢
lstm_61/while/lstm_cell_61/ReluRelu$lstm_61/while/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_61/while/lstm_cell_61/ReluÔ
 lstm_61/while/lstm_cell_61/mul_5Mul&lstm_61/while/lstm_cell_61/Sigmoid:y:0-lstm_61/while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_5Ë
 lstm_61/while/lstm_cell_61/add_3AddV2$lstm_61/while/lstm_cell_61/mul_4:z:0$lstm_61/while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_3Ð
+lstm_61/while/lstm_cell_61/ReadVariableOp_3ReadVariableOp4lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_61/while/lstm_cell_61/ReadVariableOp_3µ
0lstm_61/while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_61/while/lstm_cell_61/strided_slice_3/stack¹
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_1¹
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_61/while/lstm_cell_61/strided_slice_3/stack_2ª
*lstm_61/while/lstm_cell_61/strided_slice_3StridedSlice3lstm_61/while/lstm_cell_61/ReadVariableOp_3:value:09lstm_61/while/lstm_cell_61/strided_slice_3/stack:output:0;lstm_61/while/lstm_cell_61/strided_slice_3/stack_1:output:0;lstm_61/while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_61/while/lstm_cell_61/strided_slice_3á
#lstm_61/while/lstm_cell_61/MatMul_7MatMul$lstm_61/while/lstm_cell_61/mul_3:z:03lstm_61/while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_61/while/lstm_cell_61/MatMul_7Ý
 lstm_61/while/lstm_cell_61/add_4AddV2-lstm_61/while/lstm_cell_61/BiasAdd_3:output:0-lstm_61/while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/add_4¯
$lstm_61/while/lstm_cell_61/Sigmoid_2Sigmoid$lstm_61/while/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_61/while/lstm_cell_61/Sigmoid_2¦
!lstm_61/while/lstm_cell_61/Relu_1Relu$lstm_61/while/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_61/while/lstm_cell_61/Relu_1Ø
 lstm_61/while/lstm_cell_61/mul_6Mul(lstm_61/while/lstm_cell_61/Sigmoid_2:y:0/lstm_61/while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_61/while/lstm_cell_61/mul_6
2lstm_61/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_61_while_placeholder_1lstm_61_while_placeholder$lstm_61/while/lstm_cell_61/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_61/while/TensorArrayV2Write/TensorListSetIteml
lstm_61/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/while/add/y
lstm_61/while/addAddV2lstm_61_while_placeholderlstm_61/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_61/while/addp
lstm_61/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_61/while/add_1/y
lstm_61/while/add_1AddV2(lstm_61_while_lstm_61_while_loop_counterlstm_61/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_61/while/add_1
lstm_61/while/IdentityIdentitylstm_61/while/add_1:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity¦
lstm_61/while/Identity_1Identity.lstm_61_while_lstm_61_while_maximum_iterations^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity_1
lstm_61/while/Identity_2Identitylstm_61/while/add:z:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity_2º
lstm_61/while/Identity_3IdentityBlstm_61/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_61/while/NoOp*
T0*
_output_shapes
: 2
lstm_61/while/Identity_3­
lstm_61/while/Identity_4Identity$lstm_61/while/lstm_cell_61/mul_6:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/while/Identity_4­
lstm_61/while/Identity_5Identity$lstm_61/while/lstm_cell_61/add_3:z:0^lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_61/while/Identity_5
lstm_61/while/NoOpNoOp*^lstm_61/while/lstm_cell_61/ReadVariableOp,^lstm_61/while/lstm_cell_61/ReadVariableOp_1,^lstm_61/while/lstm_cell_61/ReadVariableOp_2,^lstm_61/while/lstm_cell_61/ReadVariableOp_30^lstm_61/while/lstm_cell_61/split/ReadVariableOp2^lstm_61/while/lstm_cell_61/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_61/while/NoOp"9
lstm_61_while_identitylstm_61/while/Identity:output:0"=
lstm_61_while_identity_1!lstm_61/while/Identity_1:output:0"=
lstm_61_while_identity_2!lstm_61/while/Identity_2:output:0"=
lstm_61_while_identity_3!lstm_61/while/Identity_3:output:0"=
lstm_61_while_identity_4!lstm_61/while/Identity_4:output:0"=
lstm_61_while_identity_5!lstm_61/while/Identity_5:output:0"P
%lstm_61_while_lstm_61_strided_slice_1'lstm_61_while_lstm_61_strided_slice_1_0"j
2lstm_61_while_lstm_cell_61_readvariableop_resource4lstm_61_while_lstm_cell_61_readvariableop_resource_0"z
:lstm_61_while_lstm_cell_61_split_1_readvariableop_resource<lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0"v
8lstm_61_while_lstm_cell_61_split_readvariableop_resource:lstm_61_while_lstm_cell_61_split_readvariableop_resource_0"È
alstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensorclstm_61_while_tensorarrayv2read_tensorlistgetitem_lstm_61_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_61/while/lstm_cell_61/ReadVariableOp)lstm_61/while/lstm_cell_61/ReadVariableOp2Z
+lstm_61/while/lstm_cell_61/ReadVariableOp_1+lstm_61/while/lstm_cell_61/ReadVariableOp_12Z
+lstm_61/while/lstm_cell_61/ReadVariableOp_2+lstm_61/while/lstm_cell_61/ReadVariableOp_22Z
+lstm_61/while/lstm_cell_61/ReadVariableOp_3+lstm_61/while/lstm_cell_61/ReadVariableOp_32b
/lstm_61/while/lstm_cell_61/split/ReadVariableOp/lstm_61/while/lstm_cell_61/split/ReadVariableOp2f
1lstm_61/while/lstm_cell_61/split_1/ReadVariableOp1lstm_61/while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ê
H
,__inference_reshape_37_layer_call_fn_1993128

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
G__inference_reshape_37_layer_call_and_return_conditional_losses_19906932
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
while_cond_1992906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1992906___redundant_placeholder05
1while_while_cond_1992906___redundant_placeholder15
1while_while_cond_1992906___redundant_placeholder25
1while_while_cond_1992906___redundant_placeholder3
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
)__inference_lstm_61_layer_call_fn_1991961

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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19906332
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
ø+
µ
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991239
input_26"
lstm_61_1991208:	
lstm_61_1991210:	"
lstm_61_1991212:	 "
dense_74_1991215:  
dense_74_1991217: "
dense_75_1991220: 
dense_75_1991222:
identity¢ dense_74/StatefulPartitionedCall¢ dense_75/StatefulPartitionedCall¢/dense_75/bias/Regularizer/Square/ReadVariableOp¢lstm_61/StatefulPartitionedCall¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp§
lstm_61/StatefulPartitionedCallStatefulPartitionedCallinput_26lstm_61_1991208lstm_61_1991210lstm_61_1991212*
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19910712!
lstm_61/StatefulPartitionedCall¹
 dense_74/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0dense_74_1991215dense_74_1991217*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_19906522"
 dense_74/StatefulPartitionedCallº
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_1991220dense_75_1991222*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_19906742"
 dense_75/StatefulPartitionedCall
reshape_37/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_19906932
reshape_37/PartitionedCallÏ
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_61_1991208*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/mul¯
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_75_1991222*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mul
IdentityIdentity#reshape_37/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall0^dense_75/bias/Regularizer/Square/ReadVariableOp ^lstm_61/StatefulPartitionedCall>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_26
¨
¥	
while_body_1992082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_61_split_readvariableop_resource_0:	C
4while_lstm_cell_61_split_1_readvariableop_resource_0:	?
,while_lstm_cell_61_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_61_split_readvariableop_resource:	A
2while_lstm_cell_61_split_1_readvariableop_resource:	=
*while_lstm_cell_61_readvariableop_resource:	 ¢!while/lstm_cell_61/ReadVariableOp¢#while/lstm_cell_61/ReadVariableOp_1¢#while/lstm_cell_61/ReadVariableOp_2¢#while/lstm_cell_61/ReadVariableOp_3¢'while/lstm_cell_61/split/ReadVariableOp¢)while/lstm_cell_61/split_1/ReadVariableOpÃ
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
"while/lstm_cell_61/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_61/ones_like/Shape
"while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_61/ones_like/ConstÐ
while/lstm_cell_61/ones_likeFill+while/lstm_cell_61/ones_like/Shape:output:0+while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/ones_like
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_61/split/split_dimÆ
'while/lstm_cell_61/split/ReadVariableOpReadVariableOp2while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_61/split/ReadVariableOpó
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_61/splitÇ
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMulË
while/lstm_cell_61/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_1Ë
while/lstm_cell_61/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_2Ë
while/lstm_cell_61/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_3
$while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_61/split_1/split_dimÈ
)while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_61/split_1/ReadVariableOpë
while/lstm_cell_61/split_1Split-while/lstm_cell_61/split_1/split_dim:output:01while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_61/split_1¿
while/lstm_cell_61/BiasAddBiasAdd#while/lstm_cell_61/MatMul:product:0#while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAddÅ
while/lstm_cell_61/BiasAdd_1BiasAdd%while/lstm_cell_61/MatMul_1:product:0#while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_1Å
while/lstm_cell_61/BiasAdd_2BiasAdd%while/lstm_cell_61/MatMul_2:product:0#while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_2Å
while/lstm_cell_61/BiasAdd_3BiasAdd%while/lstm_cell_61/MatMul_3:product:0#while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_3¥
while/lstm_cell_61/mulMulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul©
while/lstm_cell_61/mul_1Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_1©
while/lstm_cell_61/mul_2Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_2©
while/lstm_cell_61/mul_3Mulwhile_placeholder_2%while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_3´
!while/lstm_cell_61/ReadVariableOpReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_61/ReadVariableOp¡
&while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_61/strided_slice/stack¥
(while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice/stack_1¥
(while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_61/strided_slice/stack_2î
 while/lstm_cell_61/strided_sliceStridedSlice)while/lstm_cell_61/ReadVariableOp:value:0/while/lstm_cell_61/strided_slice/stack:output:01while/lstm_cell_61/strided_slice/stack_1:output:01while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_61/strided_slice½
while/lstm_cell_61/MatMul_4MatMulwhile/lstm_cell_61/mul:z:0)while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_4·
while/lstm_cell_61/addAddV2#while/lstm_cell_61/BiasAdd:output:0%while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add
while/lstm_cell_61/SigmoidSigmoidwhile/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid¸
#while/lstm_cell_61/ReadVariableOp_1ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_1¥
(while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice_1/stack©
*while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_61/strided_slice_1/stack_1©
*while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_1/stack_2ú
"while/lstm_cell_61/strided_slice_1StridedSlice+while/lstm_cell_61/ReadVariableOp_1:value:01while/lstm_cell_61/strided_slice_1/stack:output:03while/lstm_cell_61/strided_slice_1/stack_1:output:03while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_1Á
while/lstm_cell_61/MatMul_5MatMulwhile/lstm_cell_61/mul_1:z:0+while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_5½
while/lstm_cell_61/add_1AddV2%while/lstm_cell_61/BiasAdd_1:output:0%while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_1
while/lstm_cell_61/Sigmoid_1Sigmoidwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_1¤
while/lstm_cell_61/mul_4Mul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_4¸
#while/lstm_cell_61/ReadVariableOp_2ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_2¥
(while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_61/strided_slice_2/stack©
*while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_61/strided_slice_2/stack_1©
*while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_2/stack_2ú
"while/lstm_cell_61/strided_slice_2StridedSlice+while/lstm_cell_61/ReadVariableOp_2:value:01while/lstm_cell_61/strided_slice_2/stack:output:03while/lstm_cell_61/strided_slice_2/stack_1:output:03while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_2Á
while/lstm_cell_61/MatMul_6MatMulwhile/lstm_cell_61/mul_2:z:0+while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_6½
while/lstm_cell_61/add_2AddV2%while/lstm_cell_61/BiasAdd_2:output:0%while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_2
while/lstm_cell_61/ReluReluwhile/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu´
while/lstm_cell_61/mul_5Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_5«
while/lstm_cell_61/add_3AddV2while/lstm_cell_61/mul_4:z:0while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_3¸
#while/lstm_cell_61/ReadVariableOp_3ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_3¥
(while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_61/strided_slice_3/stack©
*while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_61/strided_slice_3/stack_1©
*while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_3/stack_2ú
"while/lstm_cell_61/strided_slice_3StridedSlice+while/lstm_cell_61/ReadVariableOp_3:value:01while/lstm_cell_61/strided_slice_3/stack:output:03while/lstm_cell_61/strided_slice_3/stack_1:output:03while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_3Á
while/lstm_cell_61/MatMul_7MatMulwhile/lstm_cell_61/mul_3:z:0+while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_7½
while/lstm_cell_61/add_4AddV2%while/lstm_cell_61/BiasAdd_3:output:0%while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_4
while/lstm_cell_61/Sigmoid_2Sigmoidwhile/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_2
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu_1¸
while/lstm_cell_61/mul_6Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_61/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_61/ReadVariableOp$^while/lstm_cell_61/ReadVariableOp_1$^while/lstm_cell_61/ReadVariableOp_2$^while/lstm_cell_61/ReadVariableOp_3(^while/lstm_cell_61/split/ReadVariableOp*^while/lstm_cell_61/split_1/ReadVariableOp*"
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
*while_lstm_cell_61_readvariableop_resource,while_lstm_cell_61_readvariableop_resource_0"j
2while_lstm_cell_61_split_1_readvariableop_resource4while_lstm_cell_61_split_1_readvariableop_resource_0"f
0while_lstm_cell_61_split_readvariableop_resource2while_lstm_cell_61_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_61/ReadVariableOp!while/lstm_cell_61/ReadVariableOp2J
#while/lstm_cell_61/ReadVariableOp_1#while/lstm_cell_61/ReadVariableOp_12J
#while/lstm_cell_61/ReadVariableOp_2#while/lstm_cell_61/ReadVariableOp_22J
#while/lstm_cell_61/ReadVariableOp_3#while/lstm_cell_61/ReadVariableOp_32R
'while/lstm_cell_61/split/ReadVariableOp'while/lstm_cell_61/split/ReadVariableOp2V
)while/lstm_cell_61/split_1/ReadVariableOp)while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ÛÏ
¨
D__inference_lstm_61_layer_call_and_return_conditional_losses_1993072

inputs=
*lstm_cell_61_split_readvariableop_resource:	;
,lstm_cell_61_split_1_readvariableop_resource:	7
$lstm_cell_61_readvariableop_resource:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_61/ReadVariableOp¢lstm_cell_61/ReadVariableOp_1¢lstm_cell_61/ReadVariableOp_2¢lstm_cell_61/ReadVariableOp_3¢!lstm_cell_61/split/ReadVariableOp¢#lstm_cell_61/split_1/ReadVariableOp¢whileD
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
lstm_cell_61/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_61/ones_like/Shape
lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_61/ones_like/Const¸
lstm_cell_61/ones_likeFill%lstm_cell_61/ones_like/Shape:output:0%lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/ones_like}
lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout/Const³
lstm_cell_61/dropout/MulMullstm_cell_61/ones_like:output:0#lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Mul
lstm_cell_61/dropout/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout/Shapeø
1lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ËÆê23
1lstm_cell_61/dropout/random_uniform/RandomUniform
#lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_61/dropout/GreaterEqual/yò
!lstm_cell_61/dropout/GreaterEqualGreaterEqual:lstm_cell_61/dropout/random_uniform/RandomUniform:output:0,lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_61/dropout/GreaterEqual¦
lstm_cell_61/dropout/CastCast%lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Cast®
lstm_cell_61/dropout/Mul_1Mullstm_cell_61/dropout/Mul:z:0lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout/Mul_1
lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_1/Const¹
lstm_cell_61/dropout_1/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Mul
lstm_cell_61/dropout_1/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_1/Shapeþ
3lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ê¤ä25
3lstm_cell_61/dropout_1/random_uniform/RandomUniform
%lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_1/GreaterEqual/yú
#lstm_cell_61/dropout_1/GreaterEqualGreaterEqual<lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_1/GreaterEqual¬
lstm_cell_61/dropout_1/CastCast'lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Cast¶
lstm_cell_61/dropout_1/Mul_1Mullstm_cell_61/dropout_1/Mul:z:0lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_1/Mul_1
lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_2/Const¹
lstm_cell_61/dropout_2/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Mul
lstm_cell_61/dropout_2/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_2/Shapeþ
3lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Á25
3lstm_cell_61/dropout_2/random_uniform/RandomUniform
%lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_2/GreaterEqual/yú
#lstm_cell_61/dropout_2/GreaterEqualGreaterEqual<lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_2/GreaterEqual¬
lstm_cell_61/dropout_2/CastCast'lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Cast¶
lstm_cell_61/dropout_2/Mul_1Mullstm_cell_61/dropout_2/Mul:z:0lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_2/Mul_1
lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_61/dropout_3/Const¹
lstm_cell_61/dropout_3/MulMullstm_cell_61/ones_like:output:0%lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Mul
lstm_cell_61/dropout_3/ShapeShapelstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_61/dropout_3/Shapeý
3lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2å°#25
3lstm_cell_61/dropout_3/random_uniform/RandomUniform
%lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_61/dropout_3/GreaterEqual/yú
#lstm_cell_61/dropout_3/GreaterEqualGreaterEqual<lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_61/dropout_3/GreaterEqual¬
lstm_cell_61/dropout_3/CastCast'lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Cast¶
lstm_cell_61/dropout_3/Mul_1Mullstm_cell_61/dropout_3/Mul:z:0lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/dropout_3/Mul_1~
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_61/split/split_dim²
!lstm_cell_61/split/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_61/split/ReadVariableOpÛ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0)lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_61/split
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul¡
lstm_cell_61/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_1¡
lstm_cell_61/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_2¡
lstm_cell_61/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_3
lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_61/split_1/split_dim´
#lstm_cell_61/split_1/ReadVariableOpReadVariableOp,lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_61/split_1/ReadVariableOpÓ
lstm_cell_61/split_1Split'lstm_cell_61/split_1/split_dim:output:0+lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_61/split_1§
lstm_cell_61/BiasAddBiasAddlstm_cell_61/MatMul:product:0lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd­
lstm_cell_61/BiasAdd_1BiasAddlstm_cell_61/MatMul_1:product:0lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_1­
lstm_cell_61/BiasAdd_2BiasAddlstm_cell_61/MatMul_2:product:0lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_2­
lstm_cell_61/BiasAdd_3BiasAddlstm_cell_61/MatMul_3:product:0lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_3
lstm_cell_61/mulMulzeros:output:0lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul
lstm_cell_61/mul_1Mulzeros:output:0 lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_1
lstm_cell_61/mul_2Mulzeros:output:0 lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_2
lstm_cell_61/mul_3Mulzeros:output:0 lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_3 
lstm_cell_61/ReadVariableOpReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp
 lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_61/strided_slice/stack
"lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice/stack_1
"lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_61/strided_slice/stack_2Ê
lstm_cell_61/strided_sliceStridedSlice#lstm_cell_61/ReadVariableOp:value:0)lstm_cell_61/strided_slice/stack:output:0+lstm_cell_61/strided_slice/stack_1:output:0+lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice¥
lstm_cell_61/MatMul_4MatMullstm_cell_61/mul:z:0#lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_4
lstm_cell_61/addAddV2lstm_cell_61/BiasAdd:output:0lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add
lstm_cell_61/SigmoidSigmoidlstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid¤
lstm_cell_61/ReadVariableOp_1ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_1
"lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice_1/stack
$lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_61/strided_slice_1/stack_1
$lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_1/stack_2Ö
lstm_cell_61/strided_slice_1StridedSlice%lstm_cell_61/ReadVariableOp_1:value:0+lstm_cell_61/strided_slice_1/stack:output:0-lstm_cell_61/strided_slice_1/stack_1:output:0-lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_1©
lstm_cell_61/MatMul_5MatMullstm_cell_61/mul_1:z:0%lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_5¥
lstm_cell_61/add_1AddV2lstm_cell_61/BiasAdd_1:output:0lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_1
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_1
lstm_cell_61/mul_4Mullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_4¤
lstm_cell_61/ReadVariableOp_2ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_2
"lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_61/strided_slice_2/stack
$lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_61/strided_slice_2/stack_1
$lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_2/stack_2Ö
lstm_cell_61/strided_slice_2StridedSlice%lstm_cell_61/ReadVariableOp_2:value:0+lstm_cell_61/strided_slice_2/stack:output:0-lstm_cell_61/strided_slice_2/stack_1:output:0-lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_2©
lstm_cell_61/MatMul_6MatMullstm_cell_61/mul_2:z:0%lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_6¥
lstm_cell_61/add_2AddV2lstm_cell_61/BiasAdd_2:output:0lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_2x
lstm_cell_61/ReluRelulstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu
lstm_cell_61/mul_5Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_5
lstm_cell_61/add_3AddV2lstm_cell_61/mul_4:z:0lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_3¤
lstm_cell_61/ReadVariableOp_3ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_3
"lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_61/strided_slice_3/stack
$lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_61/strided_slice_3/stack_1
$lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_3/stack_2Ö
lstm_cell_61/strided_slice_3StridedSlice%lstm_cell_61/ReadVariableOp_3:value:0+lstm_cell_61/strided_slice_3/stack:output:0-lstm_cell_61/strided_slice_3/stack_1:output:0-lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_3©
lstm_cell_61/MatMul_7MatMullstm_cell_61/mul_3:z:0%lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_7¥
lstm_cell_61/add_4AddV2lstm_cell_61/BiasAdd_3:output:0lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_4
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_2|
lstm_cell_61/Relu_1Relulstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu_1 
lstm_cell_61/mul_6Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_61_split_readvariableop_resource,lstm_cell_61_split_1_readvariableop_resource$lstm_cell_61_readvariableop_resource*
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
while_body_1992907*
condR
while_cond_1992906*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_61/ReadVariableOp^lstm_cell_61/ReadVariableOp_1^lstm_cell_61/ReadVariableOp_2^lstm_cell_61/ReadVariableOp_3"^lstm_cell_61/split/ReadVariableOp$^lstm_cell_61/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_61/ReadVariableOplstm_cell_61/ReadVariableOp2>
lstm_cell_61/ReadVariableOp_1lstm_cell_61/ReadVariableOp_12>
lstm_cell_61/ReadVariableOp_2lstm_cell_61/ReadVariableOp_22>
lstm_cell_61/ReadVariableOp_3lstm_cell_61/ReadVariableOp_32F
!lstm_cell_61/split/ReadVariableOp!lstm_cell_61/split/ReadVariableOp2J
#lstm_cell_61/split_1/ReadVariableOp#lstm_cell_61/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û²
¥	
while_body_1992907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_61_split_readvariableop_resource_0:	C
4while_lstm_cell_61_split_1_readvariableop_resource_0:	?
,while_lstm_cell_61_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_61_split_readvariableop_resource:	A
2while_lstm_cell_61_split_1_readvariableop_resource:	=
*while_lstm_cell_61_readvariableop_resource:	 ¢!while/lstm_cell_61/ReadVariableOp¢#while/lstm_cell_61/ReadVariableOp_1¢#while/lstm_cell_61/ReadVariableOp_2¢#while/lstm_cell_61/ReadVariableOp_3¢'while/lstm_cell_61/split/ReadVariableOp¢)while/lstm_cell_61/split_1/ReadVariableOpÃ
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
"while/lstm_cell_61/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_61/ones_like/Shape
"while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_61/ones_like/ConstÐ
while/lstm_cell_61/ones_likeFill+while/lstm_cell_61/ones_like/Shape:output:0+while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/ones_like
 while/lstm_cell_61/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_61/dropout/ConstË
while/lstm_cell_61/dropout/MulMul%while/lstm_cell_61/ones_like:output:0)while/lstm_cell_61/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_61/dropout/Mul
 while/lstm_cell_61/dropout/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_61/dropout/Shape
7while/lstm_cell_61/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_61/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2°29
7while/lstm_cell_61/dropout/random_uniform/RandomUniform
)while/lstm_cell_61/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_61/dropout/GreaterEqual/y
'while/lstm_cell_61/dropout/GreaterEqualGreaterEqual@while/lstm_cell_61/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_61/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_61/dropout/GreaterEqual¸
while/lstm_cell_61/dropout/CastCast+while/lstm_cell_61/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_61/dropout/CastÆ
 while/lstm_cell_61/dropout/Mul_1Mul"while/lstm_cell_61/dropout/Mul:z:0#while/lstm_cell_61/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout/Mul_1
"while/lstm_cell_61/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_1/ConstÑ
 while/lstm_cell_61/dropout_1/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_1/Mul
"while/lstm_cell_61/dropout_1/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_1/Shape
9while/lstm_cell_61/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2üí`2;
9while/lstm_cell_61/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_1/GreaterEqual/y
)while/lstm_cell_61/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_1/GreaterEqual¾
!while/lstm_cell_61/dropout_1/CastCast-while/lstm_cell_61/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_1/CastÎ
"while/lstm_cell_61/dropout_1/Mul_1Mul$while/lstm_cell_61/dropout_1/Mul:z:0%while/lstm_cell_61/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_1/Mul_1
"while/lstm_cell_61/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_2/ConstÑ
 while/lstm_cell_61/dropout_2/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_2/Mul
"while/lstm_cell_61/dropout_2/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_2/Shape
9while/lstm_cell_61/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Âú2;
9while/lstm_cell_61/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_2/GreaterEqual/y
)while/lstm_cell_61/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_2/GreaterEqual¾
!while/lstm_cell_61/dropout_2/CastCast-while/lstm_cell_61/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_2/CastÎ
"while/lstm_cell_61/dropout_2/Mul_1Mul$while/lstm_cell_61/dropout_2/Mul:z:0%while/lstm_cell_61/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_2/Mul_1
"while/lstm_cell_61/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_61/dropout_3/ConstÑ
 while/lstm_cell_61/dropout_3/MulMul%while/lstm_cell_61/ones_like:output:0+while/lstm_cell_61/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_61/dropout_3/Mul
"while/lstm_cell_61/dropout_3/ShapeShape%while/lstm_cell_61/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_61/dropout_3/Shape
9while/lstm_cell_61/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_61/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ââ2;
9while/lstm_cell_61/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_61/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_61/dropout_3/GreaterEqual/y
)while/lstm_cell_61/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_61/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_61/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_61/dropout_3/GreaterEqual¾
!while/lstm_cell_61/dropout_3/CastCast-while/lstm_cell_61/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_61/dropout_3/CastÎ
"while/lstm_cell_61/dropout_3/Mul_1Mul$while/lstm_cell_61/dropout_3/Mul:z:0%while/lstm_cell_61/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_61/dropout_3/Mul_1
"while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_61/split/split_dimÆ
'while/lstm_cell_61/split/ReadVariableOpReadVariableOp2while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_61/split/ReadVariableOpó
while/lstm_cell_61/splitSplit+while/lstm_cell_61/split/split_dim:output:0/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_61/splitÇ
while/lstm_cell_61/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMulË
while/lstm_cell_61/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_1Ë
while/lstm_cell_61/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_2Ë
while/lstm_cell_61/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_3
$while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_61/split_1/split_dimÈ
)while/lstm_cell_61/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_61/split_1/ReadVariableOpë
while/lstm_cell_61/split_1Split-while/lstm_cell_61/split_1/split_dim:output:01while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_61/split_1¿
while/lstm_cell_61/BiasAddBiasAdd#while/lstm_cell_61/MatMul:product:0#while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAddÅ
while/lstm_cell_61/BiasAdd_1BiasAdd%while/lstm_cell_61/MatMul_1:product:0#while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_1Å
while/lstm_cell_61/BiasAdd_2BiasAdd%while/lstm_cell_61/MatMul_2:product:0#while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_2Å
while/lstm_cell_61/BiasAdd_3BiasAdd%while/lstm_cell_61/MatMul_3:product:0#while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/BiasAdd_3¤
while/lstm_cell_61/mulMulwhile_placeholder_2$while/lstm_cell_61/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mulª
while/lstm_cell_61/mul_1Mulwhile_placeholder_2&while/lstm_cell_61/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_1ª
while/lstm_cell_61/mul_2Mulwhile_placeholder_2&while/lstm_cell_61/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_2ª
while/lstm_cell_61/mul_3Mulwhile_placeholder_2&while/lstm_cell_61/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_3´
!while/lstm_cell_61/ReadVariableOpReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_61/ReadVariableOp¡
&while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_61/strided_slice/stack¥
(while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice/stack_1¥
(while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_61/strided_slice/stack_2î
 while/lstm_cell_61/strided_sliceStridedSlice)while/lstm_cell_61/ReadVariableOp:value:0/while/lstm_cell_61/strided_slice/stack:output:01while/lstm_cell_61/strided_slice/stack_1:output:01while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_61/strided_slice½
while/lstm_cell_61/MatMul_4MatMulwhile/lstm_cell_61/mul:z:0)while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_4·
while/lstm_cell_61/addAddV2#while/lstm_cell_61/BiasAdd:output:0%while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add
while/lstm_cell_61/SigmoidSigmoidwhile/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid¸
#while/lstm_cell_61/ReadVariableOp_1ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_1¥
(while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_61/strided_slice_1/stack©
*while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_61/strided_slice_1/stack_1©
*while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_1/stack_2ú
"while/lstm_cell_61/strided_slice_1StridedSlice+while/lstm_cell_61/ReadVariableOp_1:value:01while/lstm_cell_61/strided_slice_1/stack:output:03while/lstm_cell_61/strided_slice_1/stack_1:output:03while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_1Á
while/lstm_cell_61/MatMul_5MatMulwhile/lstm_cell_61/mul_1:z:0+while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_5½
while/lstm_cell_61/add_1AddV2%while/lstm_cell_61/BiasAdd_1:output:0%while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_1
while/lstm_cell_61/Sigmoid_1Sigmoidwhile/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_1¤
while/lstm_cell_61/mul_4Mul while/lstm_cell_61/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_4¸
#while/lstm_cell_61/ReadVariableOp_2ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_2¥
(while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_61/strided_slice_2/stack©
*while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_61/strided_slice_2/stack_1©
*while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_2/stack_2ú
"while/lstm_cell_61/strided_slice_2StridedSlice+while/lstm_cell_61/ReadVariableOp_2:value:01while/lstm_cell_61/strided_slice_2/stack:output:03while/lstm_cell_61/strided_slice_2/stack_1:output:03while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_2Á
while/lstm_cell_61/MatMul_6MatMulwhile/lstm_cell_61/mul_2:z:0+while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_6½
while/lstm_cell_61/add_2AddV2%while/lstm_cell_61/BiasAdd_2:output:0%while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_2
while/lstm_cell_61/ReluReluwhile/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu´
while/lstm_cell_61/mul_5Mulwhile/lstm_cell_61/Sigmoid:y:0%while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_5«
while/lstm_cell_61/add_3AddV2while/lstm_cell_61/mul_4:z:0while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_3¸
#while/lstm_cell_61/ReadVariableOp_3ReadVariableOp,while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_61/ReadVariableOp_3¥
(while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_61/strided_slice_3/stack©
*while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_61/strided_slice_3/stack_1©
*while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_61/strided_slice_3/stack_2ú
"while/lstm_cell_61/strided_slice_3StridedSlice+while/lstm_cell_61/ReadVariableOp_3:value:01while/lstm_cell_61/strided_slice_3/stack:output:03while/lstm_cell_61/strided_slice_3/stack_1:output:03while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_61/strided_slice_3Á
while/lstm_cell_61/MatMul_7MatMulwhile/lstm_cell_61/mul_3:z:0+while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/MatMul_7½
while/lstm_cell_61/add_4AddV2%while/lstm_cell_61/BiasAdd_3:output:0%while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/add_4
while/lstm_cell_61/Sigmoid_2Sigmoidwhile/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Sigmoid_2
while/lstm_cell_61/Relu_1Reluwhile/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/Relu_1¸
while/lstm_cell_61/mul_6Mul while/lstm_cell_61/Sigmoid_2:y:0'while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_61/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_61/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_61/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_61/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_61/ReadVariableOp$^while/lstm_cell_61/ReadVariableOp_1$^while/lstm_cell_61/ReadVariableOp_2$^while/lstm_cell_61/ReadVariableOp_3(^while/lstm_cell_61/split/ReadVariableOp*^while/lstm_cell_61/split_1/ReadVariableOp*"
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
*while_lstm_cell_61_readvariableop_resource,while_lstm_cell_61_readvariableop_resource_0"j
2while_lstm_cell_61_split_1_readvariableop_resource4while_lstm_cell_61_split_1_readvariableop_resource_0"f
0while_lstm_cell_61_split_readvariableop_resource2while_lstm_cell_61_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_61/ReadVariableOp!while/lstm_cell_61/ReadVariableOp2J
#while/lstm_cell_61/ReadVariableOp_1#while/lstm_cell_61/ReadVariableOp_12J
#while/lstm_cell_61/ReadVariableOp_2#while/lstm_cell_61/ReadVariableOp_22J
#while/lstm_cell_61/ReadVariableOp_3#while/lstm_cell_61/ReadVariableOp_32R
'while/lstm_cell_61/split/ReadVariableOp'while/lstm_cell_61/split/ReadVariableOp2V
)while/lstm_cell_61/split_1/ReadVariableOp)while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¸
÷
.__inference_lstm_cell_61_layer_call_fn_1993192

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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_19899572
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
¨
¶
)__inference_lstm_61_layer_call_fn_1991972

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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19910712
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
Ë

è
lstm_61_while_cond_1991728,
(lstm_61_while_lstm_61_while_loop_counter2
.lstm_61_while_lstm_61_while_maximum_iterations
lstm_61_while_placeholder
lstm_61_while_placeholder_1
lstm_61_while_placeholder_2
lstm_61_while_placeholder_3.
*lstm_61_while_less_lstm_61_strided_slice_1E
Alstm_61_while_lstm_61_while_cond_1991728___redundant_placeholder0E
Alstm_61_while_lstm_61_while_cond_1991728___redundant_placeholder1E
Alstm_61_while_lstm_61_while_cond_1991728___redundant_placeholder2E
Alstm_61_while_lstm_61_while_cond_1991728___redundant_placeholder3
lstm_61_while_identity

lstm_61/while/LessLesslstm_61_while_placeholder*lstm_61_while_less_lstm_61_strided_slice_1*
T0*
_output_shapes
: 2
lstm_61/while/Lessu
lstm_61/while/IdentityIdentitylstm_61/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_61/while/Identity"9
lstm_61_while_identitylstm_61/while/Identity:output:0*(
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
/__inference_sequential_25_layer_call_fn_1991171
input_26
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_26unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_19911352
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
input_26
ÏR
ê
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1989724

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2,
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
R
É
D__inference_lstm_61_layer_call_and_return_conditional_losses_1990110

inputs'
lstm_cell_61_1990022:	#
lstm_cell_61_1990024:	'
lstm_cell_61_1990026:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_61/StatefulPartitionedCall¢whileD
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
$lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_61_1990022lstm_cell_61_1990024lstm_cell_61_1990026*
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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_19899572&
$lstm_cell_61/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_61_1990022lstm_cell_61_1990024lstm_cell_61_1990026*
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
while_body_1990035*
condR
while_cond_1990034*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_61_1990022*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_61/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_61/StatefulPartitionedCall$lstm_cell_61/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
¸
)__inference_lstm_61_layer_call_fn_1991950
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19901102
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
¢
ª
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992215
inputs_0=
*lstm_cell_61_split_readvariableop_resource:	;
,lstm_cell_61_split_1_readvariableop_resource:	7
$lstm_cell_61_readvariableop_resource:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_61/ReadVariableOp¢lstm_cell_61/ReadVariableOp_1¢lstm_cell_61/ReadVariableOp_2¢lstm_cell_61/ReadVariableOp_3¢!lstm_cell_61/split/ReadVariableOp¢#lstm_cell_61/split_1/ReadVariableOp¢whileF
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
lstm_cell_61/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_61/ones_like/Shape
lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_61/ones_like/Const¸
lstm_cell_61/ones_likeFill%lstm_cell_61/ones_like/Shape:output:0%lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/ones_like~
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_61/split/split_dim²
!lstm_cell_61/split/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_61/split/ReadVariableOpÛ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0)lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_61/split
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul¡
lstm_cell_61/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_1¡
lstm_cell_61/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_2¡
lstm_cell_61/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_3
lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_61/split_1/split_dim´
#lstm_cell_61/split_1/ReadVariableOpReadVariableOp,lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_61/split_1/ReadVariableOpÓ
lstm_cell_61/split_1Split'lstm_cell_61/split_1/split_dim:output:0+lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_61/split_1§
lstm_cell_61/BiasAddBiasAddlstm_cell_61/MatMul:product:0lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd­
lstm_cell_61/BiasAdd_1BiasAddlstm_cell_61/MatMul_1:product:0lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_1­
lstm_cell_61/BiasAdd_2BiasAddlstm_cell_61/MatMul_2:product:0lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_2­
lstm_cell_61/BiasAdd_3BiasAddlstm_cell_61/MatMul_3:product:0lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_3
lstm_cell_61/mulMulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul
lstm_cell_61/mul_1Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_1
lstm_cell_61/mul_2Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_2
lstm_cell_61/mul_3Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_3 
lstm_cell_61/ReadVariableOpReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp
 lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_61/strided_slice/stack
"lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice/stack_1
"lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_61/strided_slice/stack_2Ê
lstm_cell_61/strided_sliceStridedSlice#lstm_cell_61/ReadVariableOp:value:0)lstm_cell_61/strided_slice/stack:output:0+lstm_cell_61/strided_slice/stack_1:output:0+lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice¥
lstm_cell_61/MatMul_4MatMullstm_cell_61/mul:z:0#lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_4
lstm_cell_61/addAddV2lstm_cell_61/BiasAdd:output:0lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add
lstm_cell_61/SigmoidSigmoidlstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid¤
lstm_cell_61/ReadVariableOp_1ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_1
"lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice_1/stack
$lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_61/strided_slice_1/stack_1
$lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_1/stack_2Ö
lstm_cell_61/strided_slice_1StridedSlice%lstm_cell_61/ReadVariableOp_1:value:0+lstm_cell_61/strided_slice_1/stack:output:0-lstm_cell_61/strided_slice_1/stack_1:output:0-lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_1©
lstm_cell_61/MatMul_5MatMullstm_cell_61/mul_1:z:0%lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_5¥
lstm_cell_61/add_1AddV2lstm_cell_61/BiasAdd_1:output:0lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_1
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_1
lstm_cell_61/mul_4Mullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_4¤
lstm_cell_61/ReadVariableOp_2ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_2
"lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_61/strided_slice_2/stack
$lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_61/strided_slice_2/stack_1
$lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_2/stack_2Ö
lstm_cell_61/strided_slice_2StridedSlice%lstm_cell_61/ReadVariableOp_2:value:0+lstm_cell_61/strided_slice_2/stack:output:0-lstm_cell_61/strided_slice_2/stack_1:output:0-lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_2©
lstm_cell_61/MatMul_6MatMullstm_cell_61/mul_2:z:0%lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_6¥
lstm_cell_61/add_2AddV2lstm_cell_61/BiasAdd_2:output:0lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_2x
lstm_cell_61/ReluRelulstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu
lstm_cell_61/mul_5Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_5
lstm_cell_61/add_3AddV2lstm_cell_61/mul_4:z:0lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_3¤
lstm_cell_61/ReadVariableOp_3ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_3
"lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_61/strided_slice_3/stack
$lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_61/strided_slice_3/stack_1
$lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_3/stack_2Ö
lstm_cell_61/strided_slice_3StridedSlice%lstm_cell_61/ReadVariableOp_3:value:0+lstm_cell_61/strided_slice_3/stack:output:0-lstm_cell_61/strided_slice_3/stack_1:output:0-lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_3©
lstm_cell_61/MatMul_7MatMullstm_cell_61/mul_3:z:0%lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_7¥
lstm_cell_61/add_4AddV2lstm_cell_61/BiasAdd_3:output:0lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_4
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_2|
lstm_cell_61/Relu_1Relulstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu_1 
lstm_cell_61/mul_6Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_61_split_readvariableop_resource,lstm_cell_61_split_1_readvariableop_resource$lstm_cell_61_readvariableop_resource*
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
while_body_1992082*
condR
while_cond_1992081*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_61/ReadVariableOp^lstm_cell_61/ReadVariableOp_1^lstm_cell_61/ReadVariableOp_2^lstm_cell_61/ReadVariableOp_3"^lstm_cell_61/split/ReadVariableOp$^lstm_cell_61/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_61/ReadVariableOplstm_cell_61/ReadVariableOp2>
lstm_cell_61/ReadVariableOp_1lstm_cell_61/ReadVariableOp_12>
lstm_cell_61/ReadVariableOp_2lstm_cell_61/ReadVariableOp_22>
lstm_cell_61/ReadVariableOp_3lstm_cell_61/ReadVariableOp_32F
!lstm_cell_61/split/ReadVariableOp!lstm_cell_61/split/ReadVariableOp2J
#lstm_cell_61/split_1/ReadVariableOp#lstm_cell_61/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
í
¨
E__inference_dense_75_layer_call_and_return_conditional_losses_1990674

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_75/bias/Regularizer/Square/ReadVariableOp
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
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_75/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
é%
ê
while_body_1990035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_61_1990059_0:	+
while_lstm_cell_61_1990061_0:	/
while_lstm_cell_61_1990063_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_61_1990059:	)
while_lstm_cell_61_1990061:	-
while_lstm_cell_61_1990063:	 ¢*while/lstm_cell_61/StatefulPartitionedCallÃ
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
*while/lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_61_1990059_0while_lstm_cell_61_1990061_0while_lstm_cell_61_1990063_0*
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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_19899572,
*while/lstm_cell_61/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_61/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_61/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_61/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_61/StatefulPartitionedCall*"
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
while_lstm_cell_61_1990059while_lstm_cell_61_1990059_0":
while_lstm_cell_61_1990061while_lstm_cell_61_1990061_0":
while_lstm_cell_61_1990063while_lstm_cell_61_1990063_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_61/StatefulPartitionedCall*while/lstm_cell_61/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

c
G__inference_reshape_37_layer_call_and_return_conditional_losses_1993141

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
ä	
¨
/__inference_sequential_25_layer_call_fn_1991297

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
J__inference_sequential_25_layer_call_and_return_conditional_losses_19907082
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
while_cond_1990034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1990034___redundant_placeholder05
1while_while_cond_1990034___redundant_placeholder15
1while_while_cond_1990034___redundant_placeholder25
1while_while_cond_1990034___redundant_placeholder3
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
¹
©
(sequential_25_lstm_61_while_body_1989451H
Dsequential_25_lstm_61_while_sequential_25_lstm_61_while_loop_counterN
Jsequential_25_lstm_61_while_sequential_25_lstm_61_while_maximum_iterations+
'sequential_25_lstm_61_while_placeholder-
)sequential_25_lstm_61_while_placeholder_1-
)sequential_25_lstm_61_while_placeholder_2-
)sequential_25_lstm_61_while_placeholder_3G
Csequential_25_lstm_61_while_sequential_25_lstm_61_strided_slice_1_0
sequential_25_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_61_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_25_lstm_61_while_lstm_cell_61_split_readvariableop_resource_0:	Y
Jsequential_25_lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0:	U
Bsequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource_0:	 (
$sequential_25_lstm_61_while_identity*
&sequential_25_lstm_61_while_identity_1*
&sequential_25_lstm_61_while_identity_2*
&sequential_25_lstm_61_while_identity_3*
&sequential_25_lstm_61_while_identity_4*
&sequential_25_lstm_61_while_identity_5E
Asequential_25_lstm_61_while_sequential_25_lstm_61_strided_slice_1
}sequential_25_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_61_tensorarrayunstack_tensorlistfromtensorY
Fsequential_25_lstm_61_while_lstm_cell_61_split_readvariableop_resource:	W
Hsequential_25_lstm_61_while_lstm_cell_61_split_1_readvariableop_resource:	S
@sequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource:	 ¢7sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp¢9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_1¢9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_2¢9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_3¢=sequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOp¢?sequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOpï
Msequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_25_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_61_tensorarrayunstack_tensorlistfromtensor_0'sequential_25_lstm_61_while_placeholderVsequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItemÍ
8sequential_25/lstm_61/while/lstm_cell_61/ones_like/ShapeShape)sequential_25_lstm_61_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_25/lstm_61/while/lstm_cell_61/ones_like/Shape¹
8sequential_25/lstm_61/while/lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_25/lstm_61/while/lstm_cell_61/ones_like/Const¨
2sequential_25/lstm_61/while/lstm_cell_61/ones_likeFillAsequential_25/lstm_61/while/lstm_cell_61/ones_like/Shape:output:0Asequential_25/lstm_61/while/lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_25/lstm_61/while/lstm_cell_61/ones_like¶
8sequential_25/lstm_61/while/lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_25/lstm_61/while/lstm_cell_61/split/split_dim
=sequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOpReadVariableOpHsequential_25_lstm_61_while_lstm_cell_61_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02?
=sequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOpË
.sequential_25/lstm_61/while/lstm_cell_61/splitSplitAsequential_25/lstm_61/while/lstm_cell_61/split/split_dim:output:0Esequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_25/lstm_61/while/lstm_cell_61/split
/sequential_25/lstm_61/while/lstm_cell_61/MatMulMatMulFsequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_25/lstm_61/while/lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_25/lstm_61/while/lstm_cell_61/MatMul£
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_1MatMulFsequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_25/lstm_61/while/lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_1£
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_2MatMulFsequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_25/lstm_61/while/lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_2£
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_3MatMulFsequential_25/lstm_61/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_25/lstm_61/while/lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_3º
:sequential_25/lstm_61/while/lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_25/lstm_61/while/lstm_cell_61/split_1/split_dim
?sequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOpReadVariableOpJsequential_25_lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02A
?sequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOpÃ
0sequential_25/lstm_61/while/lstm_cell_61/split_1SplitCsequential_25/lstm_61/while/lstm_cell_61/split_1/split_dim:output:0Gsequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_25/lstm_61/while/lstm_cell_61/split_1
0sequential_25/lstm_61/while/lstm_cell_61/BiasAddBiasAdd9sequential_25/lstm_61/while/lstm_cell_61/MatMul:product:09sequential_25/lstm_61/while/lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_25/lstm_61/while/lstm_cell_61/BiasAdd
2sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_1BiasAdd;sequential_25/lstm_61/while/lstm_cell_61/MatMul_1:product:09sequential_25/lstm_61/while/lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_1
2sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_2BiasAdd;sequential_25/lstm_61/while/lstm_cell_61/MatMul_2:product:09sequential_25/lstm_61/while/lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_2
2sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_3BiasAdd;sequential_25/lstm_61/while/lstm_cell_61/MatMul_3:product:09sequential_25/lstm_61/while/lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_3ý
,sequential_25/lstm_61/while/lstm_cell_61/mulMul)sequential_25_lstm_61_while_placeholder_2;sequential_25/lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/while/lstm_cell_61/mul
.sequential_25/lstm_61/while/lstm_cell_61/mul_1Mul)sequential_25_lstm_61_while_placeholder_2;sequential_25/lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/mul_1
.sequential_25/lstm_61/while/lstm_cell_61/mul_2Mul)sequential_25_lstm_61_while_placeholder_2;sequential_25/lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/mul_2
.sequential_25/lstm_61/while/lstm_cell_61/mul_3Mul)sequential_25_lstm_61_while_placeholder_2;sequential_25/lstm_61/while/lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/mul_3ö
7sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOpReadVariableOpBsequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype029
7sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOpÍ
<sequential_25/lstm_61/while/lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_25/lstm_61/while/lstm_cell_61/strided_slice/stackÑ
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack_1Ñ
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack_2ò
6sequential_25/lstm_61/while/lstm_cell_61/strided_sliceStridedSlice?sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp:value:0Esequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack:output:0Gsequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack_1:output:0Gsequential_25/lstm_61/while/lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_25/lstm_61/while/lstm_cell_61/strided_slice
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_4MatMul0sequential_25/lstm_61/while/lstm_cell_61/mul:z:0?sequential_25/lstm_61/while/lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_4
,sequential_25/lstm_61/while/lstm_cell_61/addAddV29sequential_25/lstm_61/while/lstm_cell_61/BiasAdd:output:0;sequential_25/lstm_61/while/lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_25/lstm_61/while/lstm_cell_61/addÓ
0sequential_25/lstm_61/while/lstm_cell_61/SigmoidSigmoid0sequential_25/lstm_61/while/lstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_25/lstm_61/while/lstm_cell_61/Sigmoidú
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_1ReadVariableOpBsequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_1Ñ
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stackÕ
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack_1Õ
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack_2þ
8sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1StridedSliceAsequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_1:value:0Gsequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack:output:0Isequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack_1:output:0Isequential_25/lstm_61/while/lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_25/lstm_61/while/lstm_cell_61/strided_slice_1
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_5MatMul2sequential_25/lstm_61/while/lstm_cell_61/mul_1:z:0Asequential_25/lstm_61/while/lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_5
.sequential_25/lstm_61/while/lstm_cell_61/add_1AddV2;sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_1:output:0;sequential_25/lstm_61/while/lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/add_1Ù
2sequential_25/lstm_61/while/lstm_cell_61/Sigmoid_1Sigmoid2sequential_25/lstm_61/while/lstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_25/lstm_61/while/lstm_cell_61/Sigmoid_1ü
.sequential_25/lstm_61/while/lstm_cell_61/mul_4Mul6sequential_25/lstm_61/while/lstm_cell_61/Sigmoid_1:y:0)sequential_25_lstm_61_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/mul_4ú
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_2ReadVariableOpBsequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_2Ñ
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stackÕ
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack_1Õ
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack_2þ
8sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2StridedSliceAsequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_2:value:0Gsequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack:output:0Isequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack_1:output:0Isequential_25/lstm_61/while/lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_25/lstm_61/while/lstm_cell_61/strided_slice_2
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_6MatMul2sequential_25/lstm_61/while/lstm_cell_61/mul_2:z:0Asequential_25/lstm_61/while/lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_6
.sequential_25/lstm_61/while/lstm_cell_61/add_2AddV2;sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_2:output:0;sequential_25/lstm_61/while/lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/add_2Ì
-sequential_25/lstm_61/while/lstm_cell_61/ReluRelu2sequential_25/lstm_61/while/lstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_25/lstm_61/while/lstm_cell_61/Relu
.sequential_25/lstm_61/while/lstm_cell_61/mul_5Mul4sequential_25/lstm_61/while/lstm_cell_61/Sigmoid:y:0;sequential_25/lstm_61/while/lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/mul_5
.sequential_25/lstm_61/while/lstm_cell_61/add_3AddV22sequential_25/lstm_61/while/lstm_cell_61/mul_4:z:02sequential_25/lstm_61/while/lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/add_3ú
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_3ReadVariableOpBsequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_3Ñ
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stackÕ
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack_1Õ
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack_2þ
8sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3StridedSliceAsequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_3:value:0Gsequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack:output:0Isequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack_1:output:0Isequential_25/lstm_61/while/lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_25/lstm_61/while/lstm_cell_61/strided_slice_3
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_7MatMul2sequential_25/lstm_61/while/lstm_cell_61/mul_3:z:0Asequential_25/lstm_61/while/lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_25/lstm_61/while/lstm_cell_61/MatMul_7
.sequential_25/lstm_61/while/lstm_cell_61/add_4AddV2;sequential_25/lstm_61/while/lstm_cell_61/BiasAdd_3:output:0;sequential_25/lstm_61/while/lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/add_4Ù
2sequential_25/lstm_61/while/lstm_cell_61/Sigmoid_2Sigmoid2sequential_25/lstm_61/while/lstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_25/lstm_61/while/lstm_cell_61/Sigmoid_2Ð
/sequential_25/lstm_61/while/lstm_cell_61/Relu_1Relu2sequential_25/lstm_61/while/lstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_25/lstm_61/while/lstm_cell_61/Relu_1
.sequential_25/lstm_61/while/lstm_cell_61/mul_6Mul6sequential_25/lstm_61/while/lstm_cell_61/Sigmoid_2:y:0=sequential_25/lstm_61/while/lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_25/lstm_61/while/lstm_cell_61/mul_6Î
@sequential_25/lstm_61/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_25_lstm_61_while_placeholder_1'sequential_25_lstm_61_while_placeholder2sequential_25/lstm_61/while/lstm_cell_61/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_25/lstm_61/while/TensorArrayV2Write/TensorListSetItem
!sequential_25/lstm_61/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_25/lstm_61/while/add/yÁ
sequential_25/lstm_61/while/addAddV2'sequential_25_lstm_61_while_placeholder*sequential_25/lstm_61/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_25/lstm_61/while/add
#sequential_25/lstm_61/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_25/lstm_61/while/add_1/yä
!sequential_25/lstm_61/while/add_1AddV2Dsequential_25_lstm_61_while_sequential_25_lstm_61_while_loop_counter,sequential_25/lstm_61/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_25/lstm_61/while/add_1Ã
$sequential_25/lstm_61/while/IdentityIdentity%sequential_25/lstm_61/while/add_1:z:0!^sequential_25/lstm_61/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_25/lstm_61/while/Identityì
&sequential_25/lstm_61/while/Identity_1IdentityJsequential_25_lstm_61_while_sequential_25_lstm_61_while_maximum_iterations!^sequential_25/lstm_61/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_25/lstm_61/while/Identity_1Å
&sequential_25/lstm_61/while/Identity_2Identity#sequential_25/lstm_61/while/add:z:0!^sequential_25/lstm_61/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_25/lstm_61/while/Identity_2ò
&sequential_25/lstm_61/while/Identity_3IdentityPsequential_25/lstm_61/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_25/lstm_61/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_25/lstm_61/while/Identity_3å
&sequential_25/lstm_61/while/Identity_4Identity2sequential_25/lstm_61/while/lstm_cell_61/mul_6:z:0!^sequential_25/lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_25/lstm_61/while/Identity_4å
&sequential_25/lstm_61/while/Identity_5Identity2sequential_25/lstm_61/while/lstm_cell_61/add_3:z:0!^sequential_25/lstm_61/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_25/lstm_61/while/Identity_5ö
 sequential_25/lstm_61/while/NoOpNoOp8^sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp:^sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_1:^sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_2:^sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_3>^sequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOp@^sequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_25/lstm_61/while/NoOp"U
$sequential_25_lstm_61_while_identity-sequential_25/lstm_61/while/Identity:output:0"Y
&sequential_25_lstm_61_while_identity_1/sequential_25/lstm_61/while/Identity_1:output:0"Y
&sequential_25_lstm_61_while_identity_2/sequential_25/lstm_61/while/Identity_2:output:0"Y
&sequential_25_lstm_61_while_identity_3/sequential_25/lstm_61/while/Identity_3:output:0"Y
&sequential_25_lstm_61_while_identity_4/sequential_25/lstm_61/while/Identity_4:output:0"Y
&sequential_25_lstm_61_while_identity_5/sequential_25/lstm_61/while/Identity_5:output:0"
@sequential_25_lstm_61_while_lstm_cell_61_readvariableop_resourceBsequential_25_lstm_61_while_lstm_cell_61_readvariableop_resource_0"
Hsequential_25_lstm_61_while_lstm_cell_61_split_1_readvariableop_resourceJsequential_25_lstm_61_while_lstm_cell_61_split_1_readvariableop_resource_0"
Fsequential_25_lstm_61_while_lstm_cell_61_split_readvariableop_resourceHsequential_25_lstm_61_while_lstm_cell_61_split_readvariableop_resource_0"
Asequential_25_lstm_61_while_sequential_25_lstm_61_strided_slice_1Csequential_25_lstm_61_while_sequential_25_lstm_61_strided_slice_1_0"
}sequential_25_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_61_tensorarrayunstack_tensorlistfromtensorsequential_25_lstm_61_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_61_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2r
7sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp7sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp2v
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_19sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_12v
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_29sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_22v
9sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_39sequential_25/lstm_61/while/lstm_cell_61/ReadVariableOp_32~
=sequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOp=sequential_25/lstm_61/while/lstm_cell_61/split/ReadVariableOp2
?sequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOp?sequential_25/lstm_61/while/lstm_cell_61/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ò+
³
J__inference_sequential_25_layer_call_and_return_conditional_losses_1990708

inputs"
lstm_61_1990634:	
lstm_61_1990636:	"
lstm_61_1990638:	 "
dense_74_1990653:  
dense_74_1990655: "
dense_75_1990675: 
dense_75_1990677:
identity¢ dense_74/StatefulPartitionedCall¢ dense_75/StatefulPartitionedCall¢/dense_75/bias/Regularizer/Square/ReadVariableOp¢lstm_61/StatefulPartitionedCall¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¥
lstm_61/StatefulPartitionedCallStatefulPartitionedCallinputslstm_61_1990634lstm_61_1990636lstm_61_1990638*
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19906332!
lstm_61/StatefulPartitionedCall¹
 dense_74/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0dense_74_1990653dense_74_1990655*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_19906522"
 dense_74/StatefulPartitionedCallº
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_1990675dense_75_1990677*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_19906742"
 dense_75/StatefulPartitionedCall
reshape_37/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_19906932
reshape_37/PartitionedCallÏ
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_61_1990634*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/mul¯
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_75_1990677*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mul
IdentityIdentity#reshape_37/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall0^dense_75/bias/Regularizer/Square/ReadVariableOp ^lstm_61/StatefulPartitionedCall>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò+
³
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991135

inputs"
lstm_61_1991104:	
lstm_61_1991106:	"
lstm_61_1991108:	 "
dense_74_1991111:  
dense_74_1991113: "
dense_75_1991116: 
dense_75_1991118:
identity¢ dense_74/StatefulPartitionedCall¢ dense_75/StatefulPartitionedCall¢/dense_75/bias/Regularizer/Square/ReadVariableOp¢lstm_61/StatefulPartitionedCall¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¥
lstm_61/StatefulPartitionedCallStatefulPartitionedCallinputslstm_61_1991104lstm_61_1991106lstm_61_1991108*
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_19910712!
lstm_61/StatefulPartitionedCall¹
 dense_74/StatefulPartitionedCallStatefulPartitionedCall(lstm_61/StatefulPartitionedCall:output:0dense_74_1991111dense_74_1991113*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_19906522"
 dense_74/StatefulPartitionedCallº
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0dense_75_1991116dense_75_1991118*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_19906742"
 dense_75/StatefulPartitionedCall
reshape_37/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_19906932
reshape_37/PartitionedCallÏ
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_61_1991104*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/mul¯
/dense_75/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_75_1991118*
_output_shapes
:*
dtype021
/dense_75/bias/Regularizer/Square/ReadVariableOp¬
 dense_75/bias/Regularizer/SquareSquare7dense_75/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_75/bias/Regularizer/Square
dense_75/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_75/bias/Regularizer/Const¶
dense_75/bias/Regularizer/SumSum$dense_75/bias/Regularizer/Square:y:0(dense_75/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/Sum
dense_75/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_75/bias/Regularizer/mul/x¸
dense_75/bias/Regularizer/mulMul(dense_75/bias/Regularizer/mul/x:output:0&dense_75/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_75/bias/Regularizer/mul
IdentityIdentity#reshape_37/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall0^dense_75/bias/Regularizer/Square/ReadVariableOp ^lstm_61/StatefulPartitionedCall>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2b
/dense_75/bias/Regularizer/Square/ReadVariableOp/dense_75/bias/Regularizer/Square/ReadVariableOp2B
lstm_61/StatefulPartitionedCalllstm_61/StatefulPartitionedCall2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á¡
¨
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992765

inputs=
*lstm_cell_61_split_readvariableop_resource:	;
,lstm_cell_61_split_1_readvariableop_resource:	7
$lstm_cell_61_readvariableop_resource:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_61/ReadVariableOp¢lstm_cell_61/ReadVariableOp_1¢lstm_cell_61/ReadVariableOp_2¢lstm_cell_61/ReadVariableOp_3¢!lstm_cell_61/split/ReadVariableOp¢#lstm_cell_61/split_1/ReadVariableOp¢whileD
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
lstm_cell_61/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_61/ones_like/Shape
lstm_cell_61/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_61/ones_like/Const¸
lstm_cell_61/ones_likeFill%lstm_cell_61/ones_like/Shape:output:0%lstm_cell_61/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/ones_like~
lstm_cell_61/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_61/split/split_dim²
!lstm_cell_61/split/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_61/split/ReadVariableOpÛ
lstm_cell_61/splitSplit%lstm_cell_61/split/split_dim:output:0)lstm_cell_61/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_61/split
lstm_cell_61/MatMulMatMulstrided_slice_2:output:0lstm_cell_61/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul¡
lstm_cell_61/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_61/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_1¡
lstm_cell_61/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_61/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_2¡
lstm_cell_61/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_61/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_3
lstm_cell_61/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_61/split_1/split_dim´
#lstm_cell_61/split_1/ReadVariableOpReadVariableOp,lstm_cell_61_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_61/split_1/ReadVariableOpÓ
lstm_cell_61/split_1Split'lstm_cell_61/split_1/split_dim:output:0+lstm_cell_61/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_61/split_1§
lstm_cell_61/BiasAddBiasAddlstm_cell_61/MatMul:product:0lstm_cell_61/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd­
lstm_cell_61/BiasAdd_1BiasAddlstm_cell_61/MatMul_1:product:0lstm_cell_61/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_1­
lstm_cell_61/BiasAdd_2BiasAddlstm_cell_61/MatMul_2:product:0lstm_cell_61/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_2­
lstm_cell_61/BiasAdd_3BiasAddlstm_cell_61/MatMul_3:product:0lstm_cell_61/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/BiasAdd_3
lstm_cell_61/mulMulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul
lstm_cell_61/mul_1Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_1
lstm_cell_61/mul_2Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_2
lstm_cell_61/mul_3Mulzeros:output:0lstm_cell_61/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_3 
lstm_cell_61/ReadVariableOpReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp
 lstm_cell_61/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_61/strided_slice/stack
"lstm_cell_61/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice/stack_1
"lstm_cell_61/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_61/strided_slice/stack_2Ê
lstm_cell_61/strided_sliceStridedSlice#lstm_cell_61/ReadVariableOp:value:0)lstm_cell_61/strided_slice/stack:output:0+lstm_cell_61/strided_slice/stack_1:output:0+lstm_cell_61/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice¥
lstm_cell_61/MatMul_4MatMullstm_cell_61/mul:z:0#lstm_cell_61/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_4
lstm_cell_61/addAddV2lstm_cell_61/BiasAdd:output:0lstm_cell_61/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add
lstm_cell_61/SigmoidSigmoidlstm_cell_61/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid¤
lstm_cell_61/ReadVariableOp_1ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_1
"lstm_cell_61/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_61/strided_slice_1/stack
$lstm_cell_61/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_61/strided_slice_1/stack_1
$lstm_cell_61/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_1/stack_2Ö
lstm_cell_61/strided_slice_1StridedSlice%lstm_cell_61/ReadVariableOp_1:value:0+lstm_cell_61/strided_slice_1/stack:output:0-lstm_cell_61/strided_slice_1/stack_1:output:0-lstm_cell_61/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_1©
lstm_cell_61/MatMul_5MatMullstm_cell_61/mul_1:z:0%lstm_cell_61/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_5¥
lstm_cell_61/add_1AddV2lstm_cell_61/BiasAdd_1:output:0lstm_cell_61/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_1
lstm_cell_61/Sigmoid_1Sigmoidlstm_cell_61/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_1
lstm_cell_61/mul_4Mullstm_cell_61/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_4¤
lstm_cell_61/ReadVariableOp_2ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_2
"lstm_cell_61/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_61/strided_slice_2/stack
$lstm_cell_61/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_61/strided_slice_2/stack_1
$lstm_cell_61/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_2/stack_2Ö
lstm_cell_61/strided_slice_2StridedSlice%lstm_cell_61/ReadVariableOp_2:value:0+lstm_cell_61/strided_slice_2/stack:output:0-lstm_cell_61/strided_slice_2/stack_1:output:0-lstm_cell_61/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_2©
lstm_cell_61/MatMul_6MatMullstm_cell_61/mul_2:z:0%lstm_cell_61/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_6¥
lstm_cell_61/add_2AddV2lstm_cell_61/BiasAdd_2:output:0lstm_cell_61/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_2x
lstm_cell_61/ReluRelulstm_cell_61/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu
lstm_cell_61/mul_5Mullstm_cell_61/Sigmoid:y:0lstm_cell_61/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_5
lstm_cell_61/add_3AddV2lstm_cell_61/mul_4:z:0lstm_cell_61/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_3¤
lstm_cell_61/ReadVariableOp_3ReadVariableOp$lstm_cell_61_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_61/ReadVariableOp_3
"lstm_cell_61/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_61/strided_slice_3/stack
$lstm_cell_61/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_61/strided_slice_3/stack_1
$lstm_cell_61/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_61/strided_slice_3/stack_2Ö
lstm_cell_61/strided_slice_3StridedSlice%lstm_cell_61/ReadVariableOp_3:value:0+lstm_cell_61/strided_slice_3/stack:output:0-lstm_cell_61/strided_slice_3/stack_1:output:0-lstm_cell_61/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_61/strided_slice_3©
lstm_cell_61/MatMul_7MatMullstm_cell_61/mul_3:z:0%lstm_cell_61/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/MatMul_7¥
lstm_cell_61/add_4AddV2lstm_cell_61/BiasAdd_3:output:0lstm_cell_61/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/add_4
lstm_cell_61/Sigmoid_2Sigmoidlstm_cell_61/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Sigmoid_2|
lstm_cell_61/Relu_1Relulstm_cell_61/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/Relu_1 
lstm_cell_61/mul_6Mullstm_cell_61/Sigmoid_2:y:0!lstm_cell_61/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_61/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_61_split_readvariableop_resource,lstm_cell_61_split_1_readvariableop_resource$lstm_cell_61_readvariableop_resource*
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
while_body_1992632*
condR
while_cond_1992631*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_61_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_61/ReadVariableOp^lstm_cell_61/ReadVariableOp_1^lstm_cell_61/ReadVariableOp_2^lstm_cell_61/ReadVariableOp_3"^lstm_cell_61/split/ReadVariableOp$^lstm_cell_61/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_61/ReadVariableOplstm_cell_61/ReadVariableOp2>
lstm_cell_61/ReadVariableOp_1lstm_cell_61/ReadVariableOp_12>
lstm_cell_61/ReadVariableOp_2lstm_cell_61/ReadVariableOp_22>
lstm_cell_61/ReadVariableOp_3lstm_cell_61/ReadVariableOp_32F
!lstm_cell_61/split/ReadVariableOp!lstm_cell_61/split/ReadVariableOp2J
#lstm_cell_61/split_1/ReadVariableOp#lstm_cell_61/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
E__inference_dense_74_layer_call_and_return_conditional_losses_1990652

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
¨v
ê
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1989957

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
seed2ØÝ2&
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
seed2õç2(
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
seed2öÆ2(
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
seed2å2(
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2,
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
R
É
D__inference_lstm_61_layer_call_and_return_conditional_losses_1989813

inputs'
lstm_cell_61_1989725:	#
lstm_cell_61_1989727:	'
lstm_cell_61_1989729:	 
identity¢=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_61/StatefulPartitionedCall¢whileD
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
$lstm_cell_61/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_61_1989725lstm_cell_61_1989727lstm_cell_61_1989729*
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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_19897242&
$lstm_cell_61/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_61_1989725lstm_cell_61_1989727lstm_cell_61_1989729*
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
while_body_1989738*
condR
while_cond_1989737*K
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
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_61_1989725*
_output_shapes
:	*
dtype02?
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_61/lstm_cell_61/kernel/Regularizer/SquareSquareElstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_61/lstm_cell_61/kernel/Regularizer/Square¯
-lstm_61/lstm_cell_61/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_61/lstm_cell_61/kernel/Regularizer/Constî
+lstm_61/lstm_cell_61/kernel/Regularizer/SumSum2lstm_61/lstm_cell_61/kernel/Regularizer/Square:y:06lstm_61/lstm_cell_61/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/Sum£
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_61/lstm_cell_61/kernel/Regularizer/mul/xð
+lstm_61/lstm_cell_61/kernel/Regularizer/mulMul6lstm_61/lstm_cell_61/kernel/Regularizer/mul/x:output:04lstm_61/lstm_cell_61/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_61/lstm_cell_61/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_61/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp=lstm_61/lstm_cell_61/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_61/StatefulPartitionedCall$lstm_cell_61/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

*__inference_dense_75_layer_call_fn_1993107

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
E__inference_dense_75_layer_call_and_return_conditional_losses_19906742
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
¸	
 
%__inference_signature_wrapper_1991278
input_26
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_26unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_19896002
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
input_26
ó

*__inference_dense_74_layer_call_fn_1993081

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
E__inference_dense_74_layer_call_and_return_conditional_losses_19906522
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
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
A
input_265
serving_default_input_26:0ÿÿÿÿÿÿÿÿÿB

reshape_374
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
`_default_save_signature
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ã
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
¥
trainable_variables
	variables
regularization_losses
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
!:  2dense_74/kernel
: 2dense_74/bias
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
!: 2dense_75/kernel
:2dense_75/bias
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
.:,	2lstm_61/lstm_cell_61/kernel
8:6	 2%lstm_61/lstm_cell_61/recurrent_kernel
(:&2lstm_61/lstm_cell_61/bias
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
&:$  2Adam/dense_74/kernel/m
 : 2Adam/dense_74/bias/m
&:$ 2Adam/dense_75/kernel/m
 :2Adam/dense_75/bias/m
3:1	2"Adam/lstm_61/lstm_cell_61/kernel/m
=:;	 2,Adam/lstm_61/lstm_cell_61/recurrent_kernel/m
-:+2 Adam/lstm_61/lstm_cell_61/bias/m
&:$  2Adam/dense_74/kernel/v
 : 2Adam/dense_74/bias/v
&:$ 2Adam/dense_75/kernel/v
 :2Adam/dense_75/bias/v
3:1	2"Adam/lstm_61/lstm_cell_61/kernel/v
=:;	 2,Adam/lstm_61/lstm_cell_61/recurrent_kernel/v
-:+2 Adam/lstm_61/lstm_cell_61/bias/v
ÎBË
"__inference__wrapped_model_1989600input_26"
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
2
/__inference_sequential_25_layer_call_fn_1990725
/__inference_sequential_25_layer_call_fn_1991297
/__inference_sequential_25_layer_call_fn_1991316
/__inference_sequential_25_layer_call_fn_1991171À
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
ö2ó
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991587
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991922
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991205
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991239À
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
2
)__inference_lstm_61_layer_call_fn_1991939
)__inference_lstm_61_layer_call_fn_1991950
)__inference_lstm_61_layer_call_fn_1991961
)__inference_lstm_61_layer_call_fn_1991972Õ
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
ó2ð
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992215
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992522
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992765
D__inference_lstm_61_layer_call_and_return_conditional_losses_1993072Õ
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
Ô2Ñ
*__inference_dense_74_layer_call_fn_1993081¢
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
E__inference_dense_74_layer_call_and_return_conditional_losses_1993092¢
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
*__inference_dense_75_layer_call_fn_1993107¢
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
E__inference_dense_75_layer_call_and_return_conditional_losses_1993123¢
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
,__inference_reshape_37_layer_call_fn_1993128¢
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_1993141¢
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
__inference_loss_fn_0_1993152
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
%__inference_signature_wrapper_1991278input_26"
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
¤2¡
.__inference_lstm_cell_61_layer_call_fn_1993175
.__inference_lstm_cell_61_layer_call_fn_1993192¾
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
Ú2×
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1993273
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1993386¾
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
__inference_loss_fn_1_1993397
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
"__inference__wrapped_model_1989600}&('5¢2
+¢(
&#
input_26ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_37(%

reshape_37ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_74_layer_call_and_return_conditional_losses_1993092\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dense_74_layer_call_fn_1993081O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_75_layer_call_and_return_conditional_losses_1993123\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_75_layer_call_fn_1993107O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_1993152¢

¢ 
ª " <
__inference_loss_fn_1_1993397&¢

¢ 
ª " Å
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992215}&('O¢L
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992522}&('O¢L
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_1992765m&('?¢<
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
D__inference_lstm_61_layer_call_and_return_conditional_losses_1993072m&('?¢<
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
)__inference_lstm_61_layer_call_fn_1991939p&('O¢L
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
)__inference_lstm_61_layer_call_fn_1991950p&('O¢L
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
)__inference_lstm_61_layer_call_fn_1991961`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
)__inference_lstm_61_layer_call_fn_1991972`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ë
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1993273ý&('¢}
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
I__inference_lstm_cell_61_layer_call_and_return_conditional_losses_1993386ý&('¢}
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
.__inference_lstm_cell_61_layer_call_fn_1993175í&('¢}
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
.__inference_lstm_cell_61_layer_call_fn_1993192í&('¢}
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
G__inference_reshape_37_layer_call_and_return_conditional_losses_1993141\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_37_layer_call_fn_1993128O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991205s&('=¢:
3¢0
&#
input_26ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991239s&('=¢:
3¢0
&#
input_26ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991587q&(';¢8
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
J__inference_sequential_25_layer_call_and_return_conditional_losses_1991922q&(';¢8
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
/__inference_sequential_25_layer_call_fn_1990725f&('=¢:
3¢0
&#
input_26ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1991171f&('=¢:
3¢0
&#
input_26ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1991297d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1991316d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
%__inference_signature_wrapper_1991278&('A¢>
¢ 
7ª4
2
input_26&#
input_26ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_37(%

reshape_37ÿÿÿÿÿÿÿÿÿ