î&
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ìÎ%
z
dense_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_80/kernel
s
#dense_80/kernel/Read/ReadVariableOpReadVariableOpdense_80/kernel*
_output_shapes

:  *
dtype0
r
dense_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_80/bias
k
!dense_80/bias/Read/ReadVariableOpReadVariableOpdense_80/bias*
_output_shapes
: *
dtype0
z
dense_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_81/kernel
s
#dense_81/kernel/Read/ReadVariableOpReadVariableOpdense_81/kernel*
_output_shapes

: *
dtype0
r
dense_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_81/bias
k
!dense_81/bias/Read/ReadVariableOpReadVariableOpdense_81/bias*
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
lstm_66/lstm_cell_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_66/lstm_cell_66/kernel

/lstm_66/lstm_cell_66/kernel/Read/ReadVariableOpReadVariableOplstm_66/lstm_cell_66/kernel*
_output_shapes
:	*
dtype0
§
%lstm_66/lstm_cell_66/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_66/lstm_cell_66/recurrent_kernel
 
9lstm_66/lstm_cell_66/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_66/lstm_cell_66/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_66/lstm_cell_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_66/lstm_cell_66/bias

-lstm_66/lstm_cell_66/bias/Read/ReadVariableOpReadVariableOplstm_66/lstm_cell_66/bias*
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
Adam/dense_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_80/kernel/m

*Adam/dense_80/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_80/bias/m
y
(Adam/dense_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/m*
_output_shapes
: *
dtype0

Adam/dense_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_81/kernel/m

*Adam/dense_81/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_81/bias/m
y
(Adam/dense_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_66/lstm_cell_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_66/lstm_cell_66/kernel/m

6Adam/lstm_66/lstm_cell_66/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_66/lstm_cell_66/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_66/lstm_cell_66/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_66/lstm_cell_66/recurrent_kernel/m
®
@Adam/lstm_66/lstm_cell_66/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_66/lstm_cell_66/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_66/lstm_cell_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_66/lstm_cell_66/bias/m

4Adam/lstm_66/lstm_cell_66/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_66/lstm_cell_66/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_80/kernel/v

*Adam/dense_80/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_80/bias/v
y
(Adam/dense_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/v*
_output_shapes
: *
dtype0

Adam/dense_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_81/kernel/v

*Adam/dense_81/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_81/bias/v
y
(Adam/dense_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_66/lstm_cell_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_66/lstm_cell_66/kernel/v

6Adam/lstm_66/lstm_cell_66/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_66/lstm_cell_66/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_66/lstm_cell_66/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_66/lstm_cell_66/recurrent_kernel/v
®
@Adam/lstm_66/lstm_cell_66/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_66/lstm_cell_66/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_66/lstm_cell_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_66/lstm_cell_66/bias/v

4Adam/lstm_66/lstm_cell_66/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_66/lstm_cell_66/bias/v*
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
VARIABLE_VALUEdense_80/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_80/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_81/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_81/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_66/lstm_cell_66/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_66/lstm_cell_66/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_66/lstm_cell_66/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEAdam/dense_80/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_80/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_81/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_81/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_66/lstm_cell_66/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_66/lstm_cell_66/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_66/lstm_cell_66/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_80/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_80/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_81/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_81/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_66/lstm_cell_66/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_66/lstm_cell_66/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_66/lstm_cell_66/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_28Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_28lstm_66/lstm_cell_66/kernellstm_66/lstm_cell_66/bias%lstm_66/lstm_cell_66/recurrent_kerneldense_80/kerneldense_80/biasdense_81/kerneldense_81/bias*
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
%__inference_signature_wrapper_2147802
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_80/kernel/Read/ReadVariableOp!dense_80/bias/Read/ReadVariableOp#dense_81/kernel/Read/ReadVariableOp!dense_81/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_66/lstm_cell_66/kernel/Read/ReadVariableOp9lstm_66/lstm_cell_66/recurrent_kernel/Read/ReadVariableOp-lstm_66/lstm_cell_66/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_80/kernel/m/Read/ReadVariableOp(Adam/dense_80/bias/m/Read/ReadVariableOp*Adam/dense_81/kernel/m/Read/ReadVariableOp(Adam/dense_81/bias/m/Read/ReadVariableOp6Adam/lstm_66/lstm_cell_66/kernel/m/Read/ReadVariableOp@Adam/lstm_66/lstm_cell_66/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_66/lstm_cell_66/bias/m/Read/ReadVariableOp*Adam/dense_80/kernel/v/Read/ReadVariableOp(Adam/dense_80/bias/v/Read/ReadVariableOp*Adam/dense_81/kernel/v/Read/ReadVariableOp(Adam/dense_81/bias/v/Read/ReadVariableOp6Adam/lstm_66/lstm_cell_66/kernel/v/Read/ReadVariableOp@Adam/lstm_66/lstm_cell_66/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_66/lstm_cell_66/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_2150028
Å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_80/kerneldense_80/biasdense_81/kerneldense_81/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_66/lstm_cell_66/kernel%lstm_66/lstm_cell_66/recurrent_kernellstm_66/lstm_cell_66/biastotalcountAdam/dense_80/kernel/mAdam/dense_80/bias/mAdam/dense_81/kernel/mAdam/dense_81/bias/m"Adam/lstm_66/lstm_cell_66/kernel/m,Adam/lstm_66/lstm_cell_66/recurrent_kernel/m Adam/lstm_66/lstm_cell_66/bias/mAdam/dense_80/kernel/vAdam/dense_80/bias/vAdam/dense_81/kernel/vAdam/dense_81/bias/v"Adam/lstm_66/lstm_cell_66/kernel/v,Adam/lstm_66/lstm_cell_66/recurrent_kernel/v Adam/lstm_66/lstm_cell_66/bias/v*(
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
#__inference__traced_restore_2150122éÏ$
ê	
ª
/__inference_sequential_27_layer_call_fn_2147695
input_28
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_21476592
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
input_28
ñÍ
½
lstm_66_while_body_2148253,
(lstm_66_while_lstm_66_while_loop_counter2
.lstm_66_while_lstm_66_while_maximum_iterations
lstm_66_while_placeholder
lstm_66_while_placeholder_1
lstm_66_while_placeholder_2
lstm_66_while_placeholder_3+
'lstm_66_while_lstm_66_strided_slice_1_0g
clstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_66_while_lstm_cell_66_split_readvariableop_resource_0:	K
<lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0:	G
4lstm_66_while_lstm_cell_66_readvariableop_resource_0:	 
lstm_66_while_identity
lstm_66_while_identity_1
lstm_66_while_identity_2
lstm_66_while_identity_3
lstm_66_while_identity_4
lstm_66_while_identity_5)
%lstm_66_while_lstm_66_strided_slice_1e
alstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensorK
8lstm_66_while_lstm_cell_66_split_readvariableop_resource:	I
:lstm_66_while_lstm_cell_66_split_1_readvariableop_resource:	E
2lstm_66_while_lstm_cell_66_readvariableop_resource:	 ¢)lstm_66/while/lstm_cell_66/ReadVariableOp¢+lstm_66/while/lstm_cell_66/ReadVariableOp_1¢+lstm_66/while/lstm_cell_66/ReadVariableOp_2¢+lstm_66/while/lstm_cell_66/ReadVariableOp_3¢/lstm_66/while/lstm_cell_66/split/ReadVariableOp¢1lstm_66/while/lstm_cell_66/split_1/ReadVariableOpÓ
?lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_66/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensor_0lstm_66_while_placeholderHlstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_66/while/TensorArrayV2Read/TensorListGetItem£
*lstm_66/while/lstm_cell_66/ones_like/ShapeShapelstm_66_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_66/while/lstm_cell_66/ones_like/Shape
*lstm_66/while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_66/while/lstm_cell_66/ones_like/Constð
$lstm_66/while/lstm_cell_66/ones_likeFill3lstm_66/while/lstm_cell_66/ones_like/Shape:output:03lstm_66/while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/ones_like
(lstm_66/while/lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2*
(lstm_66/while/lstm_cell_66/dropout/Constë
&lstm_66/while/lstm_cell_66/dropout/MulMul-lstm_66/while/lstm_cell_66/ones_like:output:01lstm_66/while/lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_66/while/lstm_cell_66/dropout/Mul±
(lstm_66/while/lstm_cell_66/dropout/ShapeShape-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_66/while/lstm_cell_66/dropout/Shape¢
?lstm_66/while/lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform1lstm_66/while/lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ø®Ñ2A
?lstm_66/while/lstm_cell_66/dropout/random_uniform/RandomUniform«
1lstm_66/while/lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>23
1lstm_66/while/lstm_cell_66/dropout/GreaterEqual/yª
/lstm_66/while/lstm_cell_66/dropout/GreaterEqualGreaterEqualHlstm_66/while/lstm_cell_66/dropout/random_uniform/RandomUniform:output:0:lstm_66/while/lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_66/while/lstm_cell_66/dropout/GreaterEqualÐ
'lstm_66/while/lstm_cell_66/dropout/CastCast3lstm_66/while/lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_66/while/lstm_cell_66/dropout/Castæ
(lstm_66/while/lstm_cell_66/dropout/Mul_1Mul*lstm_66/while/lstm_cell_66/dropout/Mul:z:0+lstm_66/while/lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_66/while/lstm_cell_66/dropout/Mul_1
*lstm_66/while/lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_66/while/lstm_cell_66/dropout_1/Constñ
(lstm_66/while/lstm_cell_66/dropout_1/MulMul-lstm_66/while/lstm_cell_66/ones_like:output:03lstm_66/while/lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_66/while/lstm_cell_66/dropout_1/Mulµ
*lstm_66/while/lstm_cell_66/dropout_1/ShapeShape-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_66/while/lstm_cell_66/dropout_1/Shape¨
Alstm_66/while/lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_66/while/lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÏÄ2C
Alstm_66/while/lstm_cell_66/dropout_1/random_uniform/RandomUniform¯
3lstm_66/while/lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_66/while/lstm_cell_66/dropout_1/GreaterEqual/y²
1lstm_66/while/lstm_cell_66/dropout_1/GreaterEqualGreaterEqualJlstm_66/while/lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:0<lstm_66/while/lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_66/while/lstm_cell_66/dropout_1/GreaterEqualÖ
)lstm_66/while/lstm_cell_66/dropout_1/CastCast5lstm_66/while/lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_66/while/lstm_cell_66/dropout_1/Castî
*lstm_66/while/lstm_cell_66/dropout_1/Mul_1Mul,lstm_66/while/lstm_cell_66/dropout_1/Mul:z:0-lstm_66/while/lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_66/while/lstm_cell_66/dropout_1/Mul_1
*lstm_66/while/lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_66/while/lstm_cell_66/dropout_2/Constñ
(lstm_66/while/lstm_cell_66/dropout_2/MulMul-lstm_66/while/lstm_cell_66/ones_like:output:03lstm_66/while/lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_66/while/lstm_cell_66/dropout_2/Mulµ
*lstm_66/while/lstm_cell_66/dropout_2/ShapeShape-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_66/while/lstm_cell_66/dropout_2/Shape¨
Alstm_66/while/lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_66/while/lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2÷Ù¨2C
Alstm_66/while/lstm_cell_66/dropout_2/random_uniform/RandomUniform¯
3lstm_66/while/lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_66/while/lstm_cell_66/dropout_2/GreaterEqual/y²
1lstm_66/while/lstm_cell_66/dropout_2/GreaterEqualGreaterEqualJlstm_66/while/lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:0<lstm_66/while/lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_66/while/lstm_cell_66/dropout_2/GreaterEqualÖ
)lstm_66/while/lstm_cell_66/dropout_2/CastCast5lstm_66/while/lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_66/while/lstm_cell_66/dropout_2/Castî
*lstm_66/while/lstm_cell_66/dropout_2/Mul_1Mul,lstm_66/while/lstm_cell_66/dropout_2/Mul:z:0-lstm_66/while/lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_66/while/lstm_cell_66/dropout_2/Mul_1
*lstm_66/while/lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_66/while/lstm_cell_66/dropout_3/Constñ
(lstm_66/while/lstm_cell_66/dropout_3/MulMul-lstm_66/while/lstm_cell_66/ones_like:output:03lstm_66/while/lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_66/while/lstm_cell_66/dropout_3/Mulµ
*lstm_66/while/lstm_cell_66/dropout_3/ShapeShape-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_66/while/lstm_cell_66/dropout_3/Shape¨
Alstm_66/while/lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_66/while/lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÁÀ©2C
Alstm_66/while/lstm_cell_66/dropout_3/random_uniform/RandomUniform¯
3lstm_66/while/lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_66/while/lstm_cell_66/dropout_3/GreaterEqual/y²
1lstm_66/while/lstm_cell_66/dropout_3/GreaterEqualGreaterEqualJlstm_66/while/lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:0<lstm_66/while/lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_66/while/lstm_cell_66/dropout_3/GreaterEqualÖ
)lstm_66/while/lstm_cell_66/dropout_3/CastCast5lstm_66/while/lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_66/while/lstm_cell_66/dropout_3/Castî
*lstm_66/while/lstm_cell_66/dropout_3/Mul_1Mul,lstm_66/while/lstm_cell_66/dropout_3/Mul:z:0-lstm_66/while/lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_66/while/lstm_cell_66/dropout_3/Mul_1
*lstm_66/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_66/while/lstm_cell_66/split/split_dimÞ
/lstm_66/while/lstm_cell_66/split/ReadVariableOpReadVariableOp:lstm_66_while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_66/while/lstm_cell_66/split/ReadVariableOp
 lstm_66/while/lstm_cell_66/splitSplit3lstm_66/while/lstm_cell_66/split/split_dim:output:07lstm_66/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_66/while/lstm_cell_66/splitç
!lstm_66/while/lstm_cell_66/MatMulMatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_66/while/lstm_cell_66/MatMulë
#lstm_66/while/lstm_cell_66/MatMul_1MatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_1ë
#lstm_66/while/lstm_cell_66/MatMul_2MatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_2ë
#lstm_66/while/lstm_cell_66/MatMul_3MatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_3
,lstm_66/while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_66/while/lstm_cell_66/split_1/split_dimà
1lstm_66/while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp<lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_66/while/lstm_cell_66/split_1/ReadVariableOp
"lstm_66/while/lstm_cell_66/split_1Split5lstm_66/while/lstm_cell_66/split_1/split_dim:output:09lstm_66/while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_66/while/lstm_cell_66/split_1ß
"lstm_66/while/lstm_cell_66/BiasAddBiasAdd+lstm_66/while/lstm_cell_66/MatMul:product:0+lstm_66/while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/while/lstm_cell_66/BiasAddå
$lstm_66/while/lstm_cell_66/BiasAdd_1BiasAdd-lstm_66/while/lstm_cell_66/MatMul_1:product:0+lstm_66/while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/BiasAdd_1å
$lstm_66/while/lstm_cell_66/BiasAdd_2BiasAdd-lstm_66/while/lstm_cell_66/MatMul_2:product:0+lstm_66/while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/BiasAdd_2å
$lstm_66/while/lstm_cell_66/BiasAdd_3BiasAdd-lstm_66/while/lstm_cell_66/MatMul_3:product:0+lstm_66/while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/BiasAdd_3Ä
lstm_66/while/lstm_cell_66/mulMullstm_66_while_placeholder_2,lstm_66/while/lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/while/lstm_cell_66/mulÊ
 lstm_66/while/lstm_cell_66/mul_1Mullstm_66_while_placeholder_2.lstm_66/while/lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_1Ê
 lstm_66/while/lstm_cell_66/mul_2Mullstm_66_while_placeholder_2.lstm_66/while/lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_2Ê
 lstm_66/while/lstm_cell_66/mul_3Mullstm_66_while_placeholder_2.lstm_66/while/lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_3Ì
)lstm_66/while/lstm_cell_66/ReadVariableOpReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_66/while/lstm_cell_66/ReadVariableOp±
.lstm_66/while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_66/while/lstm_cell_66/strided_slice/stackµ
0lstm_66/while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_66/while/lstm_cell_66/strided_slice/stack_1µ
0lstm_66/while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_66/while/lstm_cell_66/strided_slice/stack_2
(lstm_66/while/lstm_cell_66/strided_sliceStridedSlice1lstm_66/while/lstm_cell_66/ReadVariableOp:value:07lstm_66/while/lstm_cell_66/strided_slice/stack:output:09lstm_66/while/lstm_cell_66/strided_slice/stack_1:output:09lstm_66/while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_66/while/lstm_cell_66/strided_sliceÝ
#lstm_66/while/lstm_cell_66/MatMul_4MatMul"lstm_66/while/lstm_cell_66/mul:z:01lstm_66/while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_4×
lstm_66/while/lstm_cell_66/addAddV2+lstm_66/while/lstm_cell_66/BiasAdd:output:0-lstm_66/while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/while/lstm_cell_66/add©
"lstm_66/while/lstm_cell_66/SigmoidSigmoid"lstm_66/while/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/while/lstm_cell_66/SigmoidÐ
+lstm_66/while/lstm_cell_66/ReadVariableOp_1ReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_66/while/lstm_cell_66/ReadVariableOp_1µ
0lstm_66/while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_66/while/lstm_cell_66/strided_slice_1/stack¹
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_1¹
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_2ª
*lstm_66/while/lstm_cell_66/strided_slice_1StridedSlice3lstm_66/while/lstm_cell_66/ReadVariableOp_1:value:09lstm_66/while/lstm_cell_66/strided_slice_1/stack:output:0;lstm_66/while/lstm_cell_66/strided_slice_1/stack_1:output:0;lstm_66/while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_66/while/lstm_cell_66/strided_slice_1á
#lstm_66/while/lstm_cell_66/MatMul_5MatMul$lstm_66/while/lstm_cell_66/mul_1:z:03lstm_66/while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_5Ý
 lstm_66/while/lstm_cell_66/add_1AddV2-lstm_66/while/lstm_cell_66/BiasAdd_1:output:0-lstm_66/while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_1¯
$lstm_66/while/lstm_cell_66/Sigmoid_1Sigmoid$lstm_66/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/Sigmoid_1Ä
 lstm_66/while/lstm_cell_66/mul_4Mul(lstm_66/while/lstm_cell_66/Sigmoid_1:y:0lstm_66_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_4Ð
+lstm_66/while/lstm_cell_66/ReadVariableOp_2ReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_66/while/lstm_cell_66/ReadVariableOp_2µ
0lstm_66/while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_66/while/lstm_cell_66/strided_slice_2/stack¹
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_1¹
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_2ª
*lstm_66/while/lstm_cell_66/strided_slice_2StridedSlice3lstm_66/while/lstm_cell_66/ReadVariableOp_2:value:09lstm_66/while/lstm_cell_66/strided_slice_2/stack:output:0;lstm_66/while/lstm_cell_66/strided_slice_2/stack_1:output:0;lstm_66/while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_66/while/lstm_cell_66/strided_slice_2á
#lstm_66/while/lstm_cell_66/MatMul_6MatMul$lstm_66/while/lstm_cell_66/mul_2:z:03lstm_66/while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_6Ý
 lstm_66/while/lstm_cell_66/add_2AddV2-lstm_66/while/lstm_cell_66/BiasAdd_2:output:0-lstm_66/while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_2¢
lstm_66/while/lstm_cell_66/ReluRelu$lstm_66/while/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_66/while/lstm_cell_66/ReluÔ
 lstm_66/while/lstm_cell_66/mul_5Mul&lstm_66/while/lstm_cell_66/Sigmoid:y:0-lstm_66/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_5Ë
 lstm_66/while/lstm_cell_66/add_3AddV2$lstm_66/while/lstm_cell_66/mul_4:z:0$lstm_66/while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_3Ð
+lstm_66/while/lstm_cell_66/ReadVariableOp_3ReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_66/while/lstm_cell_66/ReadVariableOp_3µ
0lstm_66/while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_66/while/lstm_cell_66/strided_slice_3/stack¹
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_1¹
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_2ª
*lstm_66/while/lstm_cell_66/strided_slice_3StridedSlice3lstm_66/while/lstm_cell_66/ReadVariableOp_3:value:09lstm_66/while/lstm_cell_66/strided_slice_3/stack:output:0;lstm_66/while/lstm_cell_66/strided_slice_3/stack_1:output:0;lstm_66/while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_66/while/lstm_cell_66/strided_slice_3á
#lstm_66/while/lstm_cell_66/MatMul_7MatMul$lstm_66/while/lstm_cell_66/mul_3:z:03lstm_66/while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_7Ý
 lstm_66/while/lstm_cell_66/add_4AddV2-lstm_66/while/lstm_cell_66/BiasAdd_3:output:0-lstm_66/while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_4¯
$lstm_66/while/lstm_cell_66/Sigmoid_2Sigmoid$lstm_66/while/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/Sigmoid_2¦
!lstm_66/while/lstm_cell_66/Relu_1Relu$lstm_66/while/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_66/while/lstm_cell_66/Relu_1Ø
 lstm_66/while/lstm_cell_66/mul_6Mul(lstm_66/while/lstm_cell_66/Sigmoid_2:y:0/lstm_66/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_6
2lstm_66/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_66_while_placeholder_1lstm_66_while_placeholder$lstm_66/while/lstm_cell_66/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_66/while/TensorArrayV2Write/TensorListSetIteml
lstm_66/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_66/while/add/y
lstm_66/while/addAddV2lstm_66_while_placeholderlstm_66/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_66/while/addp
lstm_66/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_66/while/add_1/y
lstm_66/while/add_1AddV2(lstm_66_while_lstm_66_while_loop_counterlstm_66/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_66/while/add_1
lstm_66/while/IdentityIdentitylstm_66/while/add_1:z:0^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity¦
lstm_66/while/Identity_1Identity.lstm_66_while_lstm_66_while_maximum_iterations^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity_1
lstm_66/while/Identity_2Identitylstm_66/while/add:z:0^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity_2º
lstm_66/while/Identity_3IdentityBlstm_66/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity_3­
lstm_66/while/Identity_4Identity$lstm_66/while/lstm_cell_66/mul_6:z:0^lstm_66/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/while/Identity_4­
lstm_66/while/Identity_5Identity$lstm_66/while/lstm_cell_66/add_3:z:0^lstm_66/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/while/Identity_5
lstm_66/while/NoOpNoOp*^lstm_66/while/lstm_cell_66/ReadVariableOp,^lstm_66/while/lstm_cell_66/ReadVariableOp_1,^lstm_66/while/lstm_cell_66/ReadVariableOp_2,^lstm_66/while/lstm_cell_66/ReadVariableOp_30^lstm_66/while/lstm_cell_66/split/ReadVariableOp2^lstm_66/while/lstm_cell_66/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_66/while/NoOp"9
lstm_66_while_identitylstm_66/while/Identity:output:0"=
lstm_66_while_identity_1!lstm_66/while/Identity_1:output:0"=
lstm_66_while_identity_2!lstm_66/while/Identity_2:output:0"=
lstm_66_while_identity_3!lstm_66/while/Identity_3:output:0"=
lstm_66_while_identity_4!lstm_66/while/Identity_4:output:0"=
lstm_66_while_identity_5!lstm_66/while/Identity_5:output:0"P
%lstm_66_while_lstm_66_strided_slice_1'lstm_66_while_lstm_66_strided_slice_1_0"j
2lstm_66_while_lstm_cell_66_readvariableop_resource4lstm_66_while_lstm_cell_66_readvariableop_resource_0"z
:lstm_66_while_lstm_cell_66_split_1_readvariableop_resource<lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0"v
8lstm_66_while_lstm_cell_66_split_readvariableop_resource:lstm_66_while_lstm_cell_66_split_readvariableop_resource_0"È
alstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensorclstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_66/while/lstm_cell_66/ReadVariableOp)lstm_66/while/lstm_cell_66/ReadVariableOp2Z
+lstm_66/while/lstm_cell_66/ReadVariableOp_1+lstm_66/while/lstm_cell_66/ReadVariableOp_12Z
+lstm_66/while/lstm_cell_66/ReadVariableOp_2+lstm_66/while/lstm_cell_66/ReadVariableOp_22Z
+lstm_66/while/lstm_cell_66/ReadVariableOp_3+lstm_66/while/lstm_cell_66/ReadVariableOp_32b
/lstm_66/while/lstm_cell_66/split/ReadVariableOp/lstm_66/while/lstm_cell_66/split/ReadVariableOp2f
1lstm_66/while/lstm_cell_66/split_1/ReadVariableOp1lstm_66/while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2149430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2149430___redundant_placeholder05
1while_while_cond_2149430___redundant_placeholder15
1while_while_cond_2149430___redundant_placeholder25
1while_while_cond_2149430___redundant_placeholder3
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
À
¸
)__inference_lstm_66_layer_call_fn_2148474
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21466342
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
¢|

#__inference__traced_restore_2150122
file_prefix2
 assignvariableop_dense_80_kernel:  .
 assignvariableop_1_dense_80_bias: 4
"assignvariableop_2_dense_81_kernel: .
 assignvariableop_3_dense_81_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_66_lstm_cell_66_kernel:	L
9assignvariableop_10_lstm_66_lstm_cell_66_recurrent_kernel:	 <
-assignvariableop_11_lstm_66_lstm_cell_66_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_80_kernel_m:  6
(assignvariableop_15_adam_dense_80_bias_m: <
*assignvariableop_16_adam_dense_81_kernel_m: 6
(assignvariableop_17_adam_dense_81_bias_m:I
6assignvariableop_18_adam_lstm_66_lstm_cell_66_kernel_m:	S
@assignvariableop_19_adam_lstm_66_lstm_cell_66_recurrent_kernel_m:	 C
4assignvariableop_20_adam_lstm_66_lstm_cell_66_bias_m:	<
*assignvariableop_21_adam_dense_80_kernel_v:  6
(assignvariableop_22_adam_dense_80_bias_v: <
*assignvariableop_23_adam_dense_81_kernel_v: 6
(assignvariableop_24_adam_dense_81_bias_v:I
6assignvariableop_25_adam_lstm_66_lstm_cell_66_kernel_v:	S
@assignvariableop_26_adam_lstm_66_lstm_cell_66_recurrent_kernel_v:	 C
4assignvariableop_27_adam_lstm_66_lstm_cell_66_bias_v:	
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
AssignVariableOpAssignVariableOp assignvariableop_dense_80_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_80_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_81_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_81_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_66_lstm_cell_66_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_66_lstm_cell_66_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_66_lstm_cell_66_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_80_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_80_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_81_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_81_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_66_lstm_cell_66_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_66_lstm_cell_66_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_66_lstm_cell_66_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_80_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_80_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_81_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_81_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_66_lstm_cell_66_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_66_lstm_cell_66_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_66_lstm_cell_66_bias_vIdentity_27:output:0"/device:CPU:0*
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
á¡
¨
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149289

inputs=
*lstm_cell_66_split_readvariableop_resource:	;
,lstm_cell_66_split_1_readvariableop_resource:	7
$lstm_cell_66_readvariableop_resource:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_66/ReadVariableOp¢lstm_cell_66/ReadVariableOp_1¢lstm_cell_66/ReadVariableOp_2¢lstm_cell_66/ReadVariableOp_3¢!lstm_cell_66/split/ReadVariableOp¢#lstm_cell_66/split_1/ReadVariableOp¢whileD
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
lstm_cell_66/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_66/ones_like/Shape
lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_66/ones_like/Const¸
lstm_cell_66/ones_likeFill%lstm_cell_66/ones_like/Shape:output:0%lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/ones_like~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim²
!lstm_cell_66/split/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_66/split/ReadVariableOpÛ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0)lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_66/split
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul¡
lstm_cell_66/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_1¡
lstm_cell_66/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_2¡
lstm_cell_66/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_3
lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_66/split_1/split_dim´
#lstm_cell_66/split_1/ReadVariableOpReadVariableOp,lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_66/split_1/ReadVariableOpÓ
lstm_cell_66/split_1Split'lstm_cell_66/split_1/split_dim:output:0+lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_66/split_1§
lstm_cell_66/BiasAddBiasAddlstm_cell_66/MatMul:product:0lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd­
lstm_cell_66/BiasAdd_1BiasAddlstm_cell_66/MatMul_1:product:0lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_1­
lstm_cell_66/BiasAdd_2BiasAddlstm_cell_66/MatMul_2:product:0lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_2­
lstm_cell_66/BiasAdd_3BiasAddlstm_cell_66/MatMul_3:product:0lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_3
lstm_cell_66/mulMulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul
lstm_cell_66/mul_1Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_1
lstm_cell_66/mul_2Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_2
lstm_cell_66/mul_3Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_3 
lstm_cell_66/ReadVariableOpReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp
 lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_66/strided_slice/stack
"lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice/stack_1
"lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_66/strided_slice/stack_2Ê
lstm_cell_66/strided_sliceStridedSlice#lstm_cell_66/ReadVariableOp:value:0)lstm_cell_66/strided_slice/stack:output:0+lstm_cell_66/strided_slice/stack_1:output:0+lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice¥
lstm_cell_66/MatMul_4MatMullstm_cell_66/mul:z:0#lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_4
lstm_cell_66/addAddV2lstm_cell_66/BiasAdd:output:0lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add
lstm_cell_66/SigmoidSigmoidlstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid¤
lstm_cell_66/ReadVariableOp_1ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_1
"lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice_1/stack
$lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_66/strided_slice_1/stack_1
$lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_1/stack_2Ö
lstm_cell_66/strided_slice_1StridedSlice%lstm_cell_66/ReadVariableOp_1:value:0+lstm_cell_66/strided_slice_1/stack:output:0-lstm_cell_66/strided_slice_1/stack_1:output:0-lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_1©
lstm_cell_66/MatMul_5MatMullstm_cell_66/mul_1:z:0%lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_5¥
lstm_cell_66/add_1AddV2lstm_cell_66/BiasAdd_1:output:0lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_1
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_1
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_4¤
lstm_cell_66/ReadVariableOp_2ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_2
"lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_66/strided_slice_2/stack
$lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_66/strided_slice_2/stack_1
$lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_2/stack_2Ö
lstm_cell_66/strided_slice_2StridedSlice%lstm_cell_66/ReadVariableOp_2:value:0+lstm_cell_66/strided_slice_2/stack:output:0-lstm_cell_66/strided_slice_2/stack_1:output:0-lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_2©
lstm_cell_66/MatMul_6MatMullstm_cell_66/mul_2:z:0%lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_6¥
lstm_cell_66/add_2AddV2lstm_cell_66/BiasAdd_2:output:0lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_2x
lstm_cell_66/ReluRelulstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu
lstm_cell_66/mul_5Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_5
lstm_cell_66/add_3AddV2lstm_cell_66/mul_4:z:0lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_3¤
lstm_cell_66/ReadVariableOp_3ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_3
"lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_66/strided_slice_3/stack
$lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_66/strided_slice_3/stack_1
$lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_3/stack_2Ö
lstm_cell_66/strided_slice_3StridedSlice%lstm_cell_66/ReadVariableOp_3:value:0+lstm_cell_66/strided_slice_3/stack:output:0-lstm_cell_66/strided_slice_3/stack_1:output:0-lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_3©
lstm_cell_66/MatMul_7MatMullstm_cell_66/mul_3:z:0%lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_7¥
lstm_cell_66/add_4AddV2lstm_cell_66/BiasAdd_3:output:0lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_4
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu_1 
lstm_cell_66/mul_6Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_66_split_readvariableop_resource,lstm_cell_66_split_1_readvariableop_resource$lstm_cell_66_readvariableop_resource*
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
while_body_2149156*
condR
while_cond_2149155*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_66/ReadVariableOp^lstm_cell_66/ReadVariableOp_1^lstm_cell_66/ReadVariableOp_2^lstm_cell_66/ReadVariableOp_3"^lstm_cell_66/split/ReadVariableOp$^lstm_cell_66/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_66/ReadVariableOplstm_cell_66/ReadVariableOp2>
lstm_cell_66/ReadVariableOp_1lstm_cell_66/ReadVariableOp_12>
lstm_cell_66/ReadVariableOp_2lstm_cell_66/ReadVariableOp_22>
lstm_cell_66/ReadVariableOp_3lstm_cell_66/ReadVariableOp_32F
!lstm_cell_66/split/ReadVariableOp!lstm_cell_66/split/ReadVariableOp2J
#lstm_cell_66/split_1/ReadVariableOp#lstm_cell_66/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
¥	
while_body_2148606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_66_split_readvariableop_resource_0:	C
4while_lstm_cell_66_split_1_readvariableop_resource_0:	?
,while_lstm_cell_66_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_66_split_readvariableop_resource:	A
2while_lstm_cell_66_split_1_readvariableop_resource:	=
*while_lstm_cell_66_readvariableop_resource:	 ¢!while/lstm_cell_66/ReadVariableOp¢#while/lstm_cell_66/ReadVariableOp_1¢#while/lstm_cell_66/ReadVariableOp_2¢#while/lstm_cell_66/ReadVariableOp_3¢'while/lstm_cell_66/split/ReadVariableOp¢)while/lstm_cell_66/split_1/ReadVariableOpÃ
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
"while/lstm_cell_66/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_66/ones_like/Shape
"while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_66/ones_like/ConstÐ
while/lstm_cell_66/ones_likeFill+while/lstm_cell_66/ones_like/Shape:output:0+while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/ones_like
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimÆ
'while/lstm_cell_66/split/ReadVariableOpReadVariableOp2while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_66/split/ReadVariableOpó
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_66/splitÇ
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMulË
while/lstm_cell_66/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_1Ë
while/lstm_cell_66/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_2Ë
while/lstm_cell_66/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_3
$while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_66/split_1/split_dimÈ
)while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_66/split_1/ReadVariableOpë
while/lstm_cell_66/split_1Split-while/lstm_cell_66/split_1/split_dim:output:01while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_66/split_1¿
while/lstm_cell_66/BiasAddBiasAdd#while/lstm_cell_66/MatMul:product:0#while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAddÅ
while/lstm_cell_66/BiasAdd_1BiasAdd%while/lstm_cell_66/MatMul_1:product:0#while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_1Å
while/lstm_cell_66/BiasAdd_2BiasAdd%while/lstm_cell_66/MatMul_2:product:0#while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_2Å
while/lstm_cell_66/BiasAdd_3BiasAdd%while/lstm_cell_66/MatMul_3:product:0#while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_3¥
while/lstm_cell_66/mulMulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul©
while/lstm_cell_66/mul_1Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_1©
while/lstm_cell_66/mul_2Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/mul_3Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_3´
!while/lstm_cell_66/ReadVariableOpReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_66/ReadVariableOp¡
&while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_66/strided_slice/stack¥
(while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice/stack_1¥
(while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_66/strided_slice/stack_2î
 while/lstm_cell_66/strided_sliceStridedSlice)while/lstm_cell_66/ReadVariableOp:value:0/while/lstm_cell_66/strided_slice/stack:output:01while/lstm_cell_66/strided_slice/stack_1:output:01while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_66/strided_slice½
while/lstm_cell_66/MatMul_4MatMulwhile/lstm_cell_66/mul:z:0)while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_4·
while/lstm_cell_66/addAddV2#while/lstm_cell_66/BiasAdd:output:0%while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add
while/lstm_cell_66/SigmoidSigmoidwhile/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid¸
#while/lstm_cell_66/ReadVariableOp_1ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_1¥
(while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice_1/stack©
*while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_66/strided_slice_1/stack_1©
*while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_1/stack_2ú
"while/lstm_cell_66/strided_slice_1StridedSlice+while/lstm_cell_66/ReadVariableOp_1:value:01while/lstm_cell_66/strided_slice_1/stack:output:03while/lstm_cell_66/strided_slice_1/stack_1:output:03while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_1Á
while/lstm_cell_66/MatMul_5MatMulwhile/lstm_cell_66/mul_1:z:0+while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_5½
while/lstm_cell_66/add_1AddV2%while/lstm_cell_66/BiasAdd_1:output:0%while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_1
while/lstm_cell_66/Sigmoid_1Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_1¤
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_4¸
#while/lstm_cell_66/ReadVariableOp_2ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_2¥
(while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_66/strided_slice_2/stack©
*while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_66/strided_slice_2/stack_1©
*while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_2/stack_2ú
"while/lstm_cell_66/strided_slice_2StridedSlice+while/lstm_cell_66/ReadVariableOp_2:value:01while/lstm_cell_66/strided_slice_2/stack:output:03while/lstm_cell_66/strided_slice_2/stack_1:output:03while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_2Á
while/lstm_cell_66/MatMul_6MatMulwhile/lstm_cell_66/mul_2:z:0+while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_6½
while/lstm_cell_66/add_2AddV2%while/lstm_cell_66/BiasAdd_2:output:0%while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_2
while/lstm_cell_66/ReluReluwhile/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu´
while/lstm_cell_66/mul_5Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_5«
while/lstm_cell_66/add_3AddV2while/lstm_cell_66/mul_4:z:0while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_3¸
#while/lstm_cell_66/ReadVariableOp_3ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_3¥
(while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_66/strided_slice_3/stack©
*while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_66/strided_slice_3/stack_1©
*while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_3/stack_2ú
"while/lstm_cell_66/strided_slice_3StridedSlice+while/lstm_cell_66/ReadVariableOp_3:value:01while/lstm_cell_66/strided_slice_3/stack:output:03while/lstm_cell_66/strided_slice_3/stack_1:output:03while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_3Á
while/lstm_cell_66/MatMul_7MatMulwhile/lstm_cell_66/mul_3:z:0+while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_7½
while/lstm_cell_66/add_4AddV2%while/lstm_cell_66/BiasAdd_3:output:0%while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_4
while/lstm_cell_66/Sigmoid_2Sigmoidwhile/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_2
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu_1¸
while/lstm_cell_66/mul_6Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_66/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_66/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_66/ReadVariableOp$^while/lstm_cell_66/ReadVariableOp_1$^while/lstm_cell_66/ReadVariableOp_2$^while/lstm_cell_66/ReadVariableOp_3(^while/lstm_cell_66/split/ReadVariableOp*^while/lstm_cell_66/split_1/ReadVariableOp*"
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
*while_lstm_cell_66_readvariableop_resource,while_lstm_cell_66_readvariableop_resource_0"j
2while_lstm_cell_66_split_1_readvariableop_resource4while_lstm_cell_66_split_1_readvariableop_resource_0"f
0while_lstm_cell_66_split_readvariableop_resource2while_lstm_cell_66_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_66/ReadVariableOp!while/lstm_cell_66/ReadVariableOp2J
#while/lstm_cell_66/ReadVariableOp_1#while/lstm_cell_66/ReadVariableOp_12J
#while/lstm_cell_66/ReadVariableOp_2#while/lstm_cell_66/ReadVariableOp_22J
#while/lstm_cell_66/ReadVariableOp_3#while/lstm_cell_66/ReadVariableOp_32R
'while/lstm_cell_66/split/ReadVariableOp'while/lstm_cell_66/split/ReadVariableOp2V
)while/lstm_cell_66/split_1/ReadVariableOp)while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¸v
ì
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2149910

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
seed2ýÿô2&
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
seed2¢Â2(
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
seed2ÃñØ2(
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
seed2°ÎØ2(
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2,
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
while_cond_2149155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2149155___redundant_placeholder05
1while_while_cond_2149155___redundant_placeholder15
1while_while_cond_2149155___redundant_placeholder25
1while_while_cond_2149155___redundant_placeholder3
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
¸	
 
%__inference_signature_wrapper_2147802
input_28
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_21461242
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
input_28
 

J__inference_sequential_27_layer_call_and_return_conditional_losses_2148446

inputsE
2lstm_66_lstm_cell_66_split_readvariableop_resource:	C
4lstm_66_lstm_cell_66_split_1_readvariableop_resource:	?
,lstm_66_lstm_cell_66_readvariableop_resource:	 9
'dense_80_matmul_readvariableop_resource:  6
(dense_80_biasadd_readvariableop_resource: 9
'dense_81_matmul_readvariableop_resource: 6
(dense_81_biasadd_readvariableop_resource:
identity¢dense_80/BiasAdd/ReadVariableOp¢dense_80/MatMul/ReadVariableOp¢dense_81/BiasAdd/ReadVariableOp¢dense_81/MatMul/ReadVariableOp¢/dense_81/bias/Regularizer/Square/ReadVariableOp¢#lstm_66/lstm_cell_66/ReadVariableOp¢%lstm_66/lstm_cell_66/ReadVariableOp_1¢%lstm_66/lstm_cell_66/ReadVariableOp_2¢%lstm_66/lstm_cell_66/ReadVariableOp_3¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢)lstm_66/lstm_cell_66/split/ReadVariableOp¢+lstm_66/lstm_cell_66/split_1/ReadVariableOp¢lstm_66/whileT
lstm_66/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_66/Shape
lstm_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_66/strided_slice/stack
lstm_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_66/strided_slice/stack_1
lstm_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_66/strided_slice/stack_2
lstm_66/strided_sliceStridedSlicelstm_66/Shape:output:0$lstm_66/strided_slice/stack:output:0&lstm_66/strided_slice/stack_1:output:0&lstm_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_66/strided_slicel
lstm_66/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros/mul/y
lstm_66/zeros/mulMullstm_66/strided_slice:output:0lstm_66/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros/mulo
lstm_66/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_66/zeros/Less/y
lstm_66/zeros/LessLesslstm_66/zeros/mul:z:0lstm_66/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros/Lessr
lstm_66/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros/packed/1£
lstm_66/zeros/packedPacklstm_66/strided_slice:output:0lstm_66/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_66/zeros/packedo
lstm_66/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_66/zeros/Const
lstm_66/zerosFilllstm_66/zeros/packed:output:0lstm_66/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/zerosp
lstm_66/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros_1/mul/y
lstm_66/zeros_1/mulMullstm_66/strided_slice:output:0lstm_66/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros_1/muls
lstm_66/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_66/zeros_1/Less/y
lstm_66/zeros_1/LessLesslstm_66/zeros_1/mul:z:0lstm_66/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros_1/Lessv
lstm_66/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros_1/packed/1©
lstm_66/zeros_1/packedPacklstm_66/strided_slice:output:0!lstm_66/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_66/zeros_1/packeds
lstm_66/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_66/zeros_1/Const
lstm_66/zeros_1Filllstm_66/zeros_1/packed:output:0lstm_66/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/zeros_1
lstm_66/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_66/transpose/perm
lstm_66/transpose	Transposeinputslstm_66/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_66/transposeg
lstm_66/Shape_1Shapelstm_66/transpose:y:0*
T0*
_output_shapes
:2
lstm_66/Shape_1
lstm_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_66/strided_slice_1/stack
lstm_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_1/stack_1
lstm_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_1/stack_2
lstm_66/strided_slice_1StridedSlicelstm_66/Shape_1:output:0&lstm_66/strided_slice_1/stack:output:0(lstm_66/strided_slice_1/stack_1:output:0(lstm_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_66/strided_slice_1
#lstm_66/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_66/TensorArrayV2/element_shapeÒ
lstm_66/TensorArrayV2TensorListReserve,lstm_66/TensorArrayV2/element_shape:output:0 lstm_66/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_66/TensorArrayV2Ï
=lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_66/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_66/transpose:y:0Flstm_66/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_66/TensorArrayUnstack/TensorListFromTensor
lstm_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_66/strided_slice_2/stack
lstm_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_2/stack_1
lstm_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_2/stack_2¬
lstm_66/strided_slice_2StridedSlicelstm_66/transpose:y:0&lstm_66/strided_slice_2/stack:output:0(lstm_66/strided_slice_2/stack_1:output:0(lstm_66/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_66/strided_slice_2
$lstm_66/lstm_cell_66/ones_like/ShapeShapelstm_66/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_66/lstm_cell_66/ones_like/Shape
$lstm_66/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_66/lstm_cell_66/ones_like/ConstØ
lstm_66/lstm_cell_66/ones_likeFill-lstm_66/lstm_cell_66/ones_like/Shape:output:0-lstm_66/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/ones_like
"lstm_66/lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"lstm_66/lstm_cell_66/dropout/ConstÓ
 lstm_66/lstm_cell_66/dropout/MulMul'lstm_66/lstm_cell_66/ones_like:output:0+lstm_66/lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/lstm_cell_66/dropout/Mul
"lstm_66/lstm_cell_66/dropout/ShapeShape'lstm_66/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_66/lstm_cell_66/dropout/Shape
9lstm_66/lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform+lstm_66/lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Îp2;
9lstm_66/lstm_cell_66/dropout/random_uniform/RandomUniform
+lstm_66/lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+lstm_66/lstm_cell_66/dropout/GreaterEqual/y
)lstm_66/lstm_cell_66/dropout/GreaterEqualGreaterEqualBlstm_66/lstm_cell_66/dropout/random_uniform/RandomUniform:output:04lstm_66/lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_66/lstm_cell_66/dropout/GreaterEqual¾
!lstm_66/lstm_cell_66/dropout/CastCast-lstm_66/lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_66/lstm_cell_66/dropout/CastÎ
"lstm_66/lstm_cell_66/dropout/Mul_1Mul$lstm_66/lstm_cell_66/dropout/Mul:z:0%lstm_66/lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/lstm_cell_66/dropout/Mul_1
$lstm_66/lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_66/lstm_cell_66/dropout_1/ConstÙ
"lstm_66/lstm_cell_66/dropout_1/MulMul'lstm_66/lstm_cell_66/ones_like:output:0-lstm_66/lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/lstm_cell_66/dropout_1/Mul£
$lstm_66/lstm_cell_66/dropout_1/ShapeShape'lstm_66/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_66/lstm_cell_66/dropout_1/Shape
;lstm_66/lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_66/lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¥µ2=
;lstm_66/lstm_cell_66/dropout_1/random_uniform/RandomUniform£
-lstm_66/lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_66/lstm_cell_66/dropout_1/GreaterEqual/y
+lstm_66/lstm_cell_66/dropout_1/GreaterEqualGreaterEqualDlstm_66/lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:06lstm_66/lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_66/lstm_cell_66/dropout_1/GreaterEqualÄ
#lstm_66/lstm_cell_66/dropout_1/CastCast/lstm_66/lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/lstm_cell_66/dropout_1/CastÖ
$lstm_66/lstm_cell_66/dropout_1/Mul_1Mul&lstm_66/lstm_cell_66/dropout_1/Mul:z:0'lstm_66/lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/lstm_cell_66/dropout_1/Mul_1
$lstm_66/lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_66/lstm_cell_66/dropout_2/ConstÙ
"lstm_66/lstm_cell_66/dropout_2/MulMul'lstm_66/lstm_cell_66/ones_like:output:0-lstm_66/lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/lstm_cell_66/dropout_2/Mul£
$lstm_66/lstm_cell_66/dropout_2/ShapeShape'lstm_66/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_66/lstm_cell_66/dropout_2/Shape
;lstm_66/lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_66/lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Àç2=
;lstm_66/lstm_cell_66/dropout_2/random_uniform/RandomUniform£
-lstm_66/lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_66/lstm_cell_66/dropout_2/GreaterEqual/y
+lstm_66/lstm_cell_66/dropout_2/GreaterEqualGreaterEqualDlstm_66/lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:06lstm_66/lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_66/lstm_cell_66/dropout_2/GreaterEqualÄ
#lstm_66/lstm_cell_66/dropout_2/CastCast/lstm_66/lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/lstm_cell_66/dropout_2/CastÖ
$lstm_66/lstm_cell_66/dropout_2/Mul_1Mul&lstm_66/lstm_cell_66/dropout_2/Mul:z:0'lstm_66/lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/lstm_cell_66/dropout_2/Mul_1
$lstm_66/lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_66/lstm_cell_66/dropout_3/ConstÙ
"lstm_66/lstm_cell_66/dropout_3/MulMul'lstm_66/lstm_cell_66/ones_like:output:0-lstm_66/lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/lstm_cell_66/dropout_3/Mul£
$lstm_66/lstm_cell_66/dropout_3/ShapeShape'lstm_66/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_66/lstm_cell_66/dropout_3/Shape
;lstm_66/lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_66/lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ºÜ2=
;lstm_66/lstm_cell_66/dropout_3/random_uniform/RandomUniform£
-lstm_66/lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_66/lstm_cell_66/dropout_3/GreaterEqual/y
+lstm_66/lstm_cell_66/dropout_3/GreaterEqualGreaterEqualDlstm_66/lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:06lstm_66/lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_66/lstm_cell_66/dropout_3/GreaterEqualÄ
#lstm_66/lstm_cell_66/dropout_3/CastCast/lstm_66/lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/lstm_cell_66/dropout_3/CastÖ
$lstm_66/lstm_cell_66/dropout_3/Mul_1Mul&lstm_66/lstm_cell_66/dropout_3/Mul:z:0'lstm_66/lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/lstm_cell_66/dropout_3/Mul_1
$lstm_66/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_66/lstm_cell_66/split/split_dimÊ
)lstm_66/lstm_cell_66/split/ReadVariableOpReadVariableOp2lstm_66_lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_66/lstm_cell_66/split/ReadVariableOpû
lstm_66/lstm_cell_66/splitSplit-lstm_66/lstm_cell_66/split/split_dim:output:01lstm_66/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_66/lstm_cell_66/split½
lstm_66/lstm_cell_66/MatMulMatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMulÁ
lstm_66/lstm_cell_66/MatMul_1MatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_1Á
lstm_66/lstm_cell_66/MatMul_2MatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_2Á
lstm_66/lstm_cell_66/MatMul_3MatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_3
&lstm_66/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_66/lstm_cell_66/split_1/split_dimÌ
+lstm_66/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4lstm_66_lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_66/lstm_cell_66/split_1/ReadVariableOpó
lstm_66/lstm_cell_66/split_1Split/lstm_66/lstm_cell_66/split_1/split_dim:output:03lstm_66/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_66/lstm_cell_66/split_1Ç
lstm_66/lstm_cell_66/BiasAddBiasAdd%lstm_66/lstm_cell_66/MatMul:product:0%lstm_66/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/BiasAddÍ
lstm_66/lstm_cell_66/BiasAdd_1BiasAdd'lstm_66/lstm_cell_66/MatMul_1:product:0%lstm_66/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/BiasAdd_1Í
lstm_66/lstm_cell_66/BiasAdd_2BiasAdd'lstm_66/lstm_cell_66/MatMul_2:product:0%lstm_66/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/BiasAdd_2Í
lstm_66/lstm_cell_66/BiasAdd_3BiasAdd'lstm_66/lstm_cell_66/MatMul_3:product:0%lstm_66/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/BiasAdd_3­
lstm_66/lstm_cell_66/mulMullstm_66/zeros:output:0&lstm_66/lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul³
lstm_66/lstm_cell_66/mul_1Mullstm_66/zeros:output:0(lstm_66/lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_1³
lstm_66/lstm_cell_66/mul_2Mullstm_66/zeros:output:0(lstm_66/lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_2³
lstm_66/lstm_cell_66/mul_3Mullstm_66/zeros:output:0(lstm_66/lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_3¸
#lstm_66/lstm_cell_66/ReadVariableOpReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_66/lstm_cell_66/ReadVariableOp¥
(lstm_66/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_66/lstm_cell_66/strided_slice/stack©
*lstm_66/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_66/lstm_cell_66/strided_slice/stack_1©
*lstm_66/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_66/lstm_cell_66/strided_slice/stack_2ú
"lstm_66/lstm_cell_66/strided_sliceStridedSlice+lstm_66/lstm_cell_66/ReadVariableOp:value:01lstm_66/lstm_cell_66/strided_slice/stack:output:03lstm_66/lstm_cell_66/strided_slice/stack_1:output:03lstm_66/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_66/lstm_cell_66/strided_sliceÅ
lstm_66/lstm_cell_66/MatMul_4MatMullstm_66/lstm_cell_66/mul:z:0+lstm_66/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_4¿
lstm_66/lstm_cell_66/addAddV2%lstm_66/lstm_cell_66/BiasAdd:output:0'lstm_66/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add
lstm_66/lstm_cell_66/SigmoidSigmoidlstm_66/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/Sigmoid¼
%lstm_66/lstm_cell_66/ReadVariableOp_1ReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_66/lstm_cell_66/ReadVariableOp_1©
*lstm_66/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_66/lstm_cell_66/strided_slice_1/stack­
,lstm_66/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_66/lstm_cell_66/strided_slice_1/stack_1­
,lstm_66/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_66/lstm_cell_66/strided_slice_1/stack_2
$lstm_66/lstm_cell_66/strided_slice_1StridedSlice-lstm_66/lstm_cell_66/ReadVariableOp_1:value:03lstm_66/lstm_cell_66/strided_slice_1/stack:output:05lstm_66/lstm_cell_66/strided_slice_1/stack_1:output:05lstm_66/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_66/lstm_cell_66/strided_slice_1É
lstm_66/lstm_cell_66/MatMul_5MatMullstm_66/lstm_cell_66/mul_1:z:0-lstm_66/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_5Å
lstm_66/lstm_cell_66/add_1AddV2'lstm_66/lstm_cell_66/BiasAdd_1:output:0'lstm_66/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_1
lstm_66/lstm_cell_66/Sigmoid_1Sigmoidlstm_66/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/Sigmoid_1¯
lstm_66/lstm_cell_66/mul_4Mul"lstm_66/lstm_cell_66/Sigmoid_1:y:0lstm_66/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_4¼
%lstm_66/lstm_cell_66/ReadVariableOp_2ReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_66/lstm_cell_66/ReadVariableOp_2©
*lstm_66/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_66/lstm_cell_66/strided_slice_2/stack­
,lstm_66/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_66/lstm_cell_66/strided_slice_2/stack_1­
,lstm_66/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_66/lstm_cell_66/strided_slice_2/stack_2
$lstm_66/lstm_cell_66/strided_slice_2StridedSlice-lstm_66/lstm_cell_66/ReadVariableOp_2:value:03lstm_66/lstm_cell_66/strided_slice_2/stack:output:05lstm_66/lstm_cell_66/strided_slice_2/stack_1:output:05lstm_66/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_66/lstm_cell_66/strided_slice_2É
lstm_66/lstm_cell_66/MatMul_6MatMullstm_66/lstm_cell_66/mul_2:z:0-lstm_66/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_6Å
lstm_66/lstm_cell_66/add_2AddV2'lstm_66/lstm_cell_66/BiasAdd_2:output:0'lstm_66/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_2
lstm_66/lstm_cell_66/ReluRelulstm_66/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/Relu¼
lstm_66/lstm_cell_66/mul_5Mul lstm_66/lstm_cell_66/Sigmoid:y:0'lstm_66/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_5³
lstm_66/lstm_cell_66/add_3AddV2lstm_66/lstm_cell_66/mul_4:z:0lstm_66/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_3¼
%lstm_66/lstm_cell_66/ReadVariableOp_3ReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_66/lstm_cell_66/ReadVariableOp_3©
*lstm_66/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_66/lstm_cell_66/strided_slice_3/stack­
,lstm_66/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_66/lstm_cell_66/strided_slice_3/stack_1­
,lstm_66/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_66/lstm_cell_66/strided_slice_3/stack_2
$lstm_66/lstm_cell_66/strided_slice_3StridedSlice-lstm_66/lstm_cell_66/ReadVariableOp_3:value:03lstm_66/lstm_cell_66/strided_slice_3/stack:output:05lstm_66/lstm_cell_66/strided_slice_3/stack_1:output:05lstm_66/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_66/lstm_cell_66/strided_slice_3É
lstm_66/lstm_cell_66/MatMul_7MatMullstm_66/lstm_cell_66/mul_3:z:0-lstm_66/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_7Å
lstm_66/lstm_cell_66/add_4AddV2'lstm_66/lstm_cell_66/BiasAdd_3:output:0'lstm_66/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_4
lstm_66/lstm_cell_66/Sigmoid_2Sigmoidlstm_66/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/Sigmoid_2
lstm_66/lstm_cell_66/Relu_1Relulstm_66/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/Relu_1À
lstm_66/lstm_cell_66/mul_6Mul"lstm_66/lstm_cell_66/Sigmoid_2:y:0)lstm_66/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_6
%lstm_66/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_66/TensorArrayV2_1/element_shapeØ
lstm_66/TensorArrayV2_1TensorListReserve.lstm_66/TensorArrayV2_1/element_shape:output:0 lstm_66/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_66/TensorArrayV2_1^
lstm_66/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/time
 lstm_66/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_66/while/maximum_iterationsz
lstm_66/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/while/loop_counterû
lstm_66/whileWhile#lstm_66/while/loop_counter:output:0)lstm_66/while/maximum_iterations:output:0lstm_66/time:output:0 lstm_66/TensorArrayV2_1:handle:0lstm_66/zeros:output:0lstm_66/zeros_1:output:0 lstm_66/strided_slice_1:output:0?lstm_66/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_66_lstm_cell_66_split_readvariableop_resource4lstm_66_lstm_cell_66_split_1_readvariableop_resource,lstm_66_lstm_cell_66_readvariableop_resource*
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
lstm_66_while_body_2148253*&
condR
lstm_66_while_cond_2148252*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_66/whileÅ
8lstm_66/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_66/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_66/TensorArrayV2Stack/TensorListStackTensorListStacklstm_66/while:output:3Alstm_66/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_66/TensorArrayV2Stack/TensorListStack
lstm_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_66/strided_slice_3/stack
lstm_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_66/strided_slice_3/stack_1
lstm_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_3/stack_2Ê
lstm_66/strided_slice_3StridedSlice3lstm_66/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_66/strided_slice_3/stack:output:0(lstm_66/strided_slice_3/stack_1:output:0(lstm_66/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_66/strided_slice_3
lstm_66/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_66/transpose_1/permÅ
lstm_66/transpose_1	Transpose3lstm_66/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_66/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/transpose_1v
lstm_66/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_66/runtime¨
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_80/MatMul/ReadVariableOp¨
dense_80/MatMulMatMul lstm_66/strided_slice_3:output:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_80/MatMul§
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_80/BiasAdd/ReadVariableOp¥
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_80/BiasAdds
dense_80/ReluReludense_80/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_80/Relu¨
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_81/MatMul/ReadVariableOp£
dense_81/MatMulMatMuldense_80/Relu:activations:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_81/MatMul§
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_81/BiasAdd/ReadVariableOp¥
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_81/BiasAddm
reshape_40/ShapeShapedense_81/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_40/Shape
reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_40/strided_slice/stack
 reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_1
 reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_2¤
reshape_40/strided_sliceStridedSlicereshape_40/Shape:output:0'reshape_40/strided_slice/stack:output:0)reshape_40/strided_slice/stack_1:output:0)reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_40/strided_slicez
reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_40/Reshape/shape/1z
reshape_40/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_40/Reshape/shape/2×
reshape_40/Reshape/shapePack!reshape_40/strided_slice:output:0#reshape_40/Reshape/shape/1:output:0#reshape_40/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_40/Reshape/shape§
reshape_40/ReshapeReshapedense_81/BiasAdd:output:0!reshape_40/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_40/Reshapeò
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_66_lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/mulÇ
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mulz
IdentityIdentityreshape_40/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp0^dense_81/bias/Regularizer/Square/ReadVariableOp$^lstm_66/lstm_cell_66/ReadVariableOp&^lstm_66/lstm_cell_66/ReadVariableOp_1&^lstm_66/lstm_cell_66/ReadVariableOp_2&^lstm_66/lstm_cell_66/ReadVariableOp_3>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*^lstm_66/lstm_cell_66/split/ReadVariableOp,^lstm_66/lstm_cell_66/split_1/ReadVariableOp^lstm_66/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp2J
#lstm_66/lstm_cell_66/ReadVariableOp#lstm_66/lstm_cell_66/ReadVariableOp2N
%lstm_66/lstm_cell_66/ReadVariableOp_1%lstm_66/lstm_cell_66/ReadVariableOp_12N
%lstm_66/lstm_cell_66/ReadVariableOp_2%lstm_66/lstm_cell_66/ReadVariableOp_22N
%lstm_66/lstm_cell_66/ReadVariableOp_3%lstm_66/lstm_cell_66/ReadVariableOp_32~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_66/lstm_cell_66/split/ReadVariableOp)lstm_66/lstm_cell_66/split/ReadVariableOp2Z
+lstm_66/lstm_cell_66/split_1/ReadVariableOp+lstm_66/lstm_cell_66/split_1/ReadVariableOp2
lstm_66/whilelstm_66/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é%
ê
while_body_2146559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_66_2146583_0:	+
while_lstm_cell_66_2146585_0:	/
while_lstm_cell_66_2146587_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_66_2146583:	)
while_lstm_cell_66_2146585:	-
while_lstm_cell_66_2146587:	 ¢*while/lstm_cell_66/StatefulPartitionedCallÃ
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
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_2146583_0while_lstm_cell_66_2146585_0while_lstm_cell_66_2146587_0*
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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_21464812,
*while/lstm_cell_66/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_66/StatefulPartitionedCall*"
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
while_lstm_cell_66_2146583while_lstm_cell_66_2146583_0":
while_lstm_cell_66_2146585while_lstm_cell_66_2146585_0":
while_lstm_cell_66_2146587while_lstm_cell_66_2146587_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147232

inputs"
lstm_66_2147158:	
lstm_66_2147160:	"
lstm_66_2147162:	 "
dense_80_2147177:  
dense_80_2147179: "
dense_81_2147199: 
dense_81_2147201:
identity¢ dense_80/StatefulPartitionedCall¢ dense_81/StatefulPartitionedCall¢/dense_81/bias/Regularizer/Square/ReadVariableOp¢lstm_66/StatefulPartitionedCall¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¥
lstm_66/StatefulPartitionedCallStatefulPartitionedCallinputslstm_66_2147158lstm_66_2147160lstm_66_2147162*
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21471572!
lstm_66/StatefulPartitionedCall¹
 dense_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_66/StatefulPartitionedCall:output:0dense_80_2147177dense_80_2147179*
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
E__inference_dense_80_layer_call_and_return_conditional_losses_21471762"
 dense_80/StatefulPartitionedCallº
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_2147199dense_81_2147201*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_21471982"
 dense_81/StatefulPartitionedCall
reshape_40/PartitionedCallPartitionedCall)dense_81/StatefulPartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_21472172
reshape_40/PartitionedCallÏ
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_66_2147158*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/mul¯
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_2147201*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mul
IdentityIdentity#reshape_40/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall0^dense_81/bias/Regularizer/Square/ReadVariableOp ^lstm_66/StatefulPartitionedCall>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp2B
lstm_66/StatefulPartitionedCalllstm_66/StatefulPartitionedCall2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

*__inference_dense_80_layer_call_fn_2149605

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
E__inference_dense_80_layer_call_and_return_conditional_losses_21471762
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
R
É
D__inference_lstm_66_layer_call_and_return_conditional_losses_2146337

inputs'
lstm_cell_66_2146249:	#
lstm_cell_66_2146251:	'
lstm_cell_66_2146253:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_66/StatefulPartitionedCall¢whileD
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
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_2146249lstm_cell_66_2146251lstm_cell_66_2146253*
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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_21462482&
$lstm_cell_66/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_2146249lstm_cell_66_2146251lstm_cell_66_2146253*
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
while_body_2146262*
condR
while_cond_2146261*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_66_2146249*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_66/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÛÏ
¨
D__inference_lstm_66_layer_call_and_return_conditional_losses_2147595

inputs=
*lstm_cell_66_split_readvariableop_resource:	;
,lstm_cell_66_split_1_readvariableop_resource:	7
$lstm_cell_66_readvariableop_resource:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_66/ReadVariableOp¢lstm_cell_66/ReadVariableOp_1¢lstm_cell_66/ReadVariableOp_2¢lstm_cell_66/ReadVariableOp_3¢!lstm_cell_66/split/ReadVariableOp¢#lstm_cell_66/split_1/ReadVariableOp¢whileD
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
lstm_cell_66/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_66/ones_like/Shape
lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_66/ones_like/Const¸
lstm_cell_66/ones_likeFill%lstm_cell_66/ones_like/Shape:output:0%lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/ones_like}
lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout/Const³
lstm_cell_66/dropout/MulMullstm_cell_66/ones_like:output:0#lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Mul
lstm_cell_66/dropout/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout/Shapeø
1lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ê23
1lstm_cell_66/dropout/random_uniform/RandomUniform
#lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_66/dropout/GreaterEqual/yò
!lstm_cell_66/dropout/GreaterEqualGreaterEqual:lstm_cell_66/dropout/random_uniform/RandomUniform:output:0,lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_66/dropout/GreaterEqual¦
lstm_cell_66/dropout/CastCast%lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Cast®
lstm_cell_66/dropout/Mul_1Mullstm_cell_66/dropout/Mul:z:0lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Mul_1
lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_1/Const¹
lstm_cell_66/dropout_1/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Mul
lstm_cell_66/dropout_1/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_1/Shapeþ
3lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2õÀ25
3lstm_cell_66/dropout_1/random_uniform/RandomUniform
%lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_1/GreaterEqual/yú
#lstm_cell_66/dropout_1/GreaterEqualGreaterEqual<lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_1/GreaterEqual¬
lstm_cell_66/dropout_1/CastCast'lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Cast¶
lstm_cell_66/dropout_1/Mul_1Mullstm_cell_66/dropout_1/Mul:z:0lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Mul_1
lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_2/Const¹
lstm_cell_66/dropout_2/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Mul
lstm_cell_66/dropout_2/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_2/Shapeþ
3lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2±Å25
3lstm_cell_66/dropout_2/random_uniform/RandomUniform
%lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_2/GreaterEqual/yú
#lstm_cell_66/dropout_2/GreaterEqualGreaterEqual<lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_2/GreaterEqual¬
lstm_cell_66/dropout_2/CastCast'lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Cast¶
lstm_cell_66/dropout_2/Mul_1Mullstm_cell_66/dropout_2/Mul:z:0lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Mul_1
lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_3/Const¹
lstm_cell_66/dropout_3/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Mul
lstm_cell_66/dropout_3/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_3/Shapeý
3lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¼L25
3lstm_cell_66/dropout_3/random_uniform/RandomUniform
%lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_3/GreaterEqual/yú
#lstm_cell_66/dropout_3/GreaterEqualGreaterEqual<lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_3/GreaterEqual¬
lstm_cell_66/dropout_3/CastCast'lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Cast¶
lstm_cell_66/dropout_3/Mul_1Mullstm_cell_66/dropout_3/Mul:z:0lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Mul_1~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim²
!lstm_cell_66/split/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_66/split/ReadVariableOpÛ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0)lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_66/split
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul¡
lstm_cell_66/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_1¡
lstm_cell_66/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_2¡
lstm_cell_66/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_3
lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_66/split_1/split_dim´
#lstm_cell_66/split_1/ReadVariableOpReadVariableOp,lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_66/split_1/ReadVariableOpÓ
lstm_cell_66/split_1Split'lstm_cell_66/split_1/split_dim:output:0+lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_66/split_1§
lstm_cell_66/BiasAddBiasAddlstm_cell_66/MatMul:product:0lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd­
lstm_cell_66/BiasAdd_1BiasAddlstm_cell_66/MatMul_1:product:0lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_1­
lstm_cell_66/BiasAdd_2BiasAddlstm_cell_66/MatMul_2:product:0lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_2­
lstm_cell_66/BiasAdd_3BiasAddlstm_cell_66/MatMul_3:product:0lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_3
lstm_cell_66/mulMulzeros:output:0lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul
lstm_cell_66/mul_1Mulzeros:output:0 lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_1
lstm_cell_66/mul_2Mulzeros:output:0 lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_2
lstm_cell_66/mul_3Mulzeros:output:0 lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_3 
lstm_cell_66/ReadVariableOpReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp
 lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_66/strided_slice/stack
"lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice/stack_1
"lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_66/strided_slice/stack_2Ê
lstm_cell_66/strided_sliceStridedSlice#lstm_cell_66/ReadVariableOp:value:0)lstm_cell_66/strided_slice/stack:output:0+lstm_cell_66/strided_slice/stack_1:output:0+lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice¥
lstm_cell_66/MatMul_4MatMullstm_cell_66/mul:z:0#lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_4
lstm_cell_66/addAddV2lstm_cell_66/BiasAdd:output:0lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add
lstm_cell_66/SigmoidSigmoidlstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid¤
lstm_cell_66/ReadVariableOp_1ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_1
"lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice_1/stack
$lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_66/strided_slice_1/stack_1
$lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_1/stack_2Ö
lstm_cell_66/strided_slice_1StridedSlice%lstm_cell_66/ReadVariableOp_1:value:0+lstm_cell_66/strided_slice_1/stack:output:0-lstm_cell_66/strided_slice_1/stack_1:output:0-lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_1©
lstm_cell_66/MatMul_5MatMullstm_cell_66/mul_1:z:0%lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_5¥
lstm_cell_66/add_1AddV2lstm_cell_66/BiasAdd_1:output:0lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_1
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_1
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_4¤
lstm_cell_66/ReadVariableOp_2ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_2
"lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_66/strided_slice_2/stack
$lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_66/strided_slice_2/stack_1
$lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_2/stack_2Ö
lstm_cell_66/strided_slice_2StridedSlice%lstm_cell_66/ReadVariableOp_2:value:0+lstm_cell_66/strided_slice_2/stack:output:0-lstm_cell_66/strided_slice_2/stack_1:output:0-lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_2©
lstm_cell_66/MatMul_6MatMullstm_cell_66/mul_2:z:0%lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_6¥
lstm_cell_66/add_2AddV2lstm_cell_66/BiasAdd_2:output:0lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_2x
lstm_cell_66/ReluRelulstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu
lstm_cell_66/mul_5Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_5
lstm_cell_66/add_3AddV2lstm_cell_66/mul_4:z:0lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_3¤
lstm_cell_66/ReadVariableOp_3ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_3
"lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_66/strided_slice_3/stack
$lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_66/strided_slice_3/stack_1
$lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_3/stack_2Ö
lstm_cell_66/strided_slice_3StridedSlice%lstm_cell_66/ReadVariableOp_3:value:0+lstm_cell_66/strided_slice_3/stack:output:0-lstm_cell_66/strided_slice_3/stack_1:output:0-lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_3©
lstm_cell_66/MatMul_7MatMullstm_cell_66/mul_3:z:0%lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_7¥
lstm_cell_66/add_4AddV2lstm_cell_66/BiasAdd_3:output:0lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_4
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu_1 
lstm_cell_66/mul_6Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_66_split_readvariableop_resource,lstm_cell_66_split_1_readvariableop_resource$lstm_cell_66_readvariableop_resource*
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
while_body_2147430*
condR
while_cond_2147429*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_66/ReadVariableOp^lstm_cell_66/ReadVariableOp_1^lstm_cell_66/ReadVariableOp_2^lstm_cell_66/ReadVariableOp_3"^lstm_cell_66/split/ReadVariableOp$^lstm_cell_66/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_66/ReadVariableOplstm_cell_66/ReadVariableOp2>
lstm_cell_66/ReadVariableOp_1lstm_cell_66/ReadVariableOp_12>
lstm_cell_66/ReadVariableOp_2lstm_cell_66/ReadVariableOp_22>
lstm_cell_66/ReadVariableOp_3lstm_cell_66/ReadVariableOp_32F
!lstm_cell_66/split/ReadVariableOp!lstm_cell_66/split/ReadVariableOp2J
#lstm_cell_66/split_1/ReadVariableOp#lstm_cell_66/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
ª
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149046
inputs_0=
*lstm_cell_66_split_readvariableop_resource:	;
,lstm_cell_66_split_1_readvariableop_resource:	7
$lstm_cell_66_readvariableop_resource:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_66/ReadVariableOp¢lstm_cell_66/ReadVariableOp_1¢lstm_cell_66/ReadVariableOp_2¢lstm_cell_66/ReadVariableOp_3¢!lstm_cell_66/split/ReadVariableOp¢#lstm_cell_66/split_1/ReadVariableOp¢whileF
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
lstm_cell_66/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_66/ones_like/Shape
lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_66/ones_like/Const¸
lstm_cell_66/ones_likeFill%lstm_cell_66/ones_like/Shape:output:0%lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/ones_like}
lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout/Const³
lstm_cell_66/dropout/MulMullstm_cell_66/ones_like:output:0#lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Mul
lstm_cell_66/dropout/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout/Shape÷
1lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ð823
1lstm_cell_66/dropout/random_uniform/RandomUniform
#lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_66/dropout/GreaterEqual/yò
!lstm_cell_66/dropout/GreaterEqualGreaterEqual:lstm_cell_66/dropout/random_uniform/RandomUniform:output:0,lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_66/dropout/GreaterEqual¦
lstm_cell_66/dropout/CastCast%lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Cast®
lstm_cell_66/dropout/Mul_1Mullstm_cell_66/dropout/Mul:z:0lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Mul_1
lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_1/Const¹
lstm_cell_66/dropout_1/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Mul
lstm_cell_66/dropout_1/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_1/Shapeü
3lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¨~25
3lstm_cell_66/dropout_1/random_uniform/RandomUniform
%lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_1/GreaterEqual/yú
#lstm_cell_66/dropout_1/GreaterEqualGreaterEqual<lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_1/GreaterEqual¬
lstm_cell_66/dropout_1/CastCast'lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Cast¶
lstm_cell_66/dropout_1/Mul_1Mullstm_cell_66/dropout_1/Mul:z:0lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Mul_1
lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_2/Const¹
lstm_cell_66/dropout_2/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Mul
lstm_cell_66/dropout_2/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_2/Shapeþ
3lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ûºç25
3lstm_cell_66/dropout_2/random_uniform/RandomUniform
%lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_2/GreaterEqual/yú
#lstm_cell_66/dropout_2/GreaterEqualGreaterEqual<lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_2/GreaterEqual¬
lstm_cell_66/dropout_2/CastCast'lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Cast¶
lstm_cell_66/dropout_2/Mul_1Mullstm_cell_66/dropout_2/Mul:z:0lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Mul_1
lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_3/Const¹
lstm_cell_66/dropout_3/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Mul
lstm_cell_66/dropout_3/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_3/Shapeþ
3lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ûËã25
3lstm_cell_66/dropout_3/random_uniform/RandomUniform
%lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_3/GreaterEqual/yú
#lstm_cell_66/dropout_3/GreaterEqualGreaterEqual<lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_3/GreaterEqual¬
lstm_cell_66/dropout_3/CastCast'lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Cast¶
lstm_cell_66/dropout_3/Mul_1Mullstm_cell_66/dropout_3/Mul:z:0lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Mul_1~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim²
!lstm_cell_66/split/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_66/split/ReadVariableOpÛ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0)lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_66/split
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul¡
lstm_cell_66/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_1¡
lstm_cell_66/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_2¡
lstm_cell_66/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_3
lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_66/split_1/split_dim´
#lstm_cell_66/split_1/ReadVariableOpReadVariableOp,lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_66/split_1/ReadVariableOpÓ
lstm_cell_66/split_1Split'lstm_cell_66/split_1/split_dim:output:0+lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_66/split_1§
lstm_cell_66/BiasAddBiasAddlstm_cell_66/MatMul:product:0lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd­
lstm_cell_66/BiasAdd_1BiasAddlstm_cell_66/MatMul_1:product:0lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_1­
lstm_cell_66/BiasAdd_2BiasAddlstm_cell_66/MatMul_2:product:0lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_2­
lstm_cell_66/BiasAdd_3BiasAddlstm_cell_66/MatMul_3:product:0lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_3
lstm_cell_66/mulMulzeros:output:0lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul
lstm_cell_66/mul_1Mulzeros:output:0 lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_1
lstm_cell_66/mul_2Mulzeros:output:0 lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_2
lstm_cell_66/mul_3Mulzeros:output:0 lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_3 
lstm_cell_66/ReadVariableOpReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp
 lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_66/strided_slice/stack
"lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice/stack_1
"lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_66/strided_slice/stack_2Ê
lstm_cell_66/strided_sliceStridedSlice#lstm_cell_66/ReadVariableOp:value:0)lstm_cell_66/strided_slice/stack:output:0+lstm_cell_66/strided_slice/stack_1:output:0+lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice¥
lstm_cell_66/MatMul_4MatMullstm_cell_66/mul:z:0#lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_4
lstm_cell_66/addAddV2lstm_cell_66/BiasAdd:output:0lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add
lstm_cell_66/SigmoidSigmoidlstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid¤
lstm_cell_66/ReadVariableOp_1ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_1
"lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice_1/stack
$lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_66/strided_slice_1/stack_1
$lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_1/stack_2Ö
lstm_cell_66/strided_slice_1StridedSlice%lstm_cell_66/ReadVariableOp_1:value:0+lstm_cell_66/strided_slice_1/stack:output:0-lstm_cell_66/strided_slice_1/stack_1:output:0-lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_1©
lstm_cell_66/MatMul_5MatMullstm_cell_66/mul_1:z:0%lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_5¥
lstm_cell_66/add_1AddV2lstm_cell_66/BiasAdd_1:output:0lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_1
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_1
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_4¤
lstm_cell_66/ReadVariableOp_2ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_2
"lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_66/strided_slice_2/stack
$lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_66/strided_slice_2/stack_1
$lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_2/stack_2Ö
lstm_cell_66/strided_slice_2StridedSlice%lstm_cell_66/ReadVariableOp_2:value:0+lstm_cell_66/strided_slice_2/stack:output:0-lstm_cell_66/strided_slice_2/stack_1:output:0-lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_2©
lstm_cell_66/MatMul_6MatMullstm_cell_66/mul_2:z:0%lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_6¥
lstm_cell_66/add_2AddV2lstm_cell_66/BiasAdd_2:output:0lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_2x
lstm_cell_66/ReluRelulstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu
lstm_cell_66/mul_5Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_5
lstm_cell_66/add_3AddV2lstm_cell_66/mul_4:z:0lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_3¤
lstm_cell_66/ReadVariableOp_3ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_3
"lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_66/strided_slice_3/stack
$lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_66/strided_slice_3/stack_1
$lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_3/stack_2Ö
lstm_cell_66/strided_slice_3StridedSlice%lstm_cell_66/ReadVariableOp_3:value:0+lstm_cell_66/strided_slice_3/stack:output:0-lstm_cell_66/strided_slice_3/stack_1:output:0-lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_3©
lstm_cell_66/MatMul_7MatMullstm_cell_66/mul_3:z:0%lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_7¥
lstm_cell_66/add_4AddV2lstm_cell_66/BiasAdd_3:output:0lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_4
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu_1 
lstm_cell_66/mul_6Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_66_split_readvariableop_resource,lstm_cell_66_split_1_readvariableop_resource$lstm_cell_66_readvariableop_resource*
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
while_body_2148881*
condR
while_cond_2148880*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_66/ReadVariableOp^lstm_cell_66/ReadVariableOp_1^lstm_cell_66/ReadVariableOp_2^lstm_cell_66/ReadVariableOp_3"^lstm_cell_66/split/ReadVariableOp$^lstm_cell_66/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_66/ReadVariableOplstm_cell_66/ReadVariableOp2>
lstm_cell_66/ReadVariableOp_1lstm_cell_66/ReadVariableOp_12>
lstm_cell_66/ReadVariableOp_2lstm_cell_66/ReadVariableOp_22>
lstm_cell_66/ReadVariableOp_3lstm_cell_66/ReadVariableOp_32F
!lstm_cell_66/split/ReadVariableOp!lstm_cell_66/split/ReadVariableOp2J
#lstm_cell_66/split_1/ReadVariableOp#lstm_cell_66/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¨
¥	
while_body_2147024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_66_split_readvariableop_resource_0:	C
4while_lstm_cell_66_split_1_readvariableop_resource_0:	?
,while_lstm_cell_66_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_66_split_readvariableop_resource:	A
2while_lstm_cell_66_split_1_readvariableop_resource:	=
*while_lstm_cell_66_readvariableop_resource:	 ¢!while/lstm_cell_66/ReadVariableOp¢#while/lstm_cell_66/ReadVariableOp_1¢#while/lstm_cell_66/ReadVariableOp_2¢#while/lstm_cell_66/ReadVariableOp_3¢'while/lstm_cell_66/split/ReadVariableOp¢)while/lstm_cell_66/split_1/ReadVariableOpÃ
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
"while/lstm_cell_66/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_66/ones_like/Shape
"while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_66/ones_like/ConstÐ
while/lstm_cell_66/ones_likeFill+while/lstm_cell_66/ones_like/Shape:output:0+while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/ones_like
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimÆ
'while/lstm_cell_66/split/ReadVariableOpReadVariableOp2while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_66/split/ReadVariableOpó
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_66/splitÇ
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMulË
while/lstm_cell_66/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_1Ë
while/lstm_cell_66/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_2Ë
while/lstm_cell_66/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_3
$while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_66/split_1/split_dimÈ
)while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_66/split_1/ReadVariableOpë
while/lstm_cell_66/split_1Split-while/lstm_cell_66/split_1/split_dim:output:01while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_66/split_1¿
while/lstm_cell_66/BiasAddBiasAdd#while/lstm_cell_66/MatMul:product:0#while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAddÅ
while/lstm_cell_66/BiasAdd_1BiasAdd%while/lstm_cell_66/MatMul_1:product:0#while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_1Å
while/lstm_cell_66/BiasAdd_2BiasAdd%while/lstm_cell_66/MatMul_2:product:0#while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_2Å
while/lstm_cell_66/BiasAdd_3BiasAdd%while/lstm_cell_66/MatMul_3:product:0#while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_3¥
while/lstm_cell_66/mulMulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul©
while/lstm_cell_66/mul_1Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_1©
while/lstm_cell_66/mul_2Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/mul_3Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_3´
!while/lstm_cell_66/ReadVariableOpReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_66/ReadVariableOp¡
&while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_66/strided_slice/stack¥
(while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice/stack_1¥
(while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_66/strided_slice/stack_2î
 while/lstm_cell_66/strided_sliceStridedSlice)while/lstm_cell_66/ReadVariableOp:value:0/while/lstm_cell_66/strided_slice/stack:output:01while/lstm_cell_66/strided_slice/stack_1:output:01while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_66/strided_slice½
while/lstm_cell_66/MatMul_4MatMulwhile/lstm_cell_66/mul:z:0)while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_4·
while/lstm_cell_66/addAddV2#while/lstm_cell_66/BiasAdd:output:0%while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add
while/lstm_cell_66/SigmoidSigmoidwhile/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid¸
#while/lstm_cell_66/ReadVariableOp_1ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_1¥
(while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice_1/stack©
*while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_66/strided_slice_1/stack_1©
*while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_1/stack_2ú
"while/lstm_cell_66/strided_slice_1StridedSlice+while/lstm_cell_66/ReadVariableOp_1:value:01while/lstm_cell_66/strided_slice_1/stack:output:03while/lstm_cell_66/strided_slice_1/stack_1:output:03while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_1Á
while/lstm_cell_66/MatMul_5MatMulwhile/lstm_cell_66/mul_1:z:0+while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_5½
while/lstm_cell_66/add_1AddV2%while/lstm_cell_66/BiasAdd_1:output:0%while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_1
while/lstm_cell_66/Sigmoid_1Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_1¤
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_4¸
#while/lstm_cell_66/ReadVariableOp_2ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_2¥
(while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_66/strided_slice_2/stack©
*while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_66/strided_slice_2/stack_1©
*while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_2/stack_2ú
"while/lstm_cell_66/strided_slice_2StridedSlice+while/lstm_cell_66/ReadVariableOp_2:value:01while/lstm_cell_66/strided_slice_2/stack:output:03while/lstm_cell_66/strided_slice_2/stack_1:output:03while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_2Á
while/lstm_cell_66/MatMul_6MatMulwhile/lstm_cell_66/mul_2:z:0+while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_6½
while/lstm_cell_66/add_2AddV2%while/lstm_cell_66/BiasAdd_2:output:0%while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_2
while/lstm_cell_66/ReluReluwhile/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu´
while/lstm_cell_66/mul_5Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_5«
while/lstm_cell_66/add_3AddV2while/lstm_cell_66/mul_4:z:0while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_3¸
#while/lstm_cell_66/ReadVariableOp_3ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_3¥
(while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_66/strided_slice_3/stack©
*while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_66/strided_slice_3/stack_1©
*while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_3/stack_2ú
"while/lstm_cell_66/strided_slice_3StridedSlice+while/lstm_cell_66/ReadVariableOp_3:value:01while/lstm_cell_66/strided_slice_3/stack:output:03while/lstm_cell_66/strided_slice_3/stack_1:output:03while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_3Á
while/lstm_cell_66/MatMul_7MatMulwhile/lstm_cell_66/mul_3:z:0+while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_7½
while/lstm_cell_66/add_4AddV2%while/lstm_cell_66/BiasAdd_3:output:0%while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_4
while/lstm_cell_66/Sigmoid_2Sigmoidwhile/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_2
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu_1¸
while/lstm_cell_66/mul_6Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_66/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_66/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_66/ReadVariableOp$^while/lstm_cell_66/ReadVariableOp_1$^while/lstm_cell_66/ReadVariableOp_2$^while/lstm_cell_66/ReadVariableOp_3(^while/lstm_cell_66/split/ReadVariableOp*^while/lstm_cell_66/split_1/ReadVariableOp*"
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
*while_lstm_cell_66_readvariableop_resource,while_lstm_cell_66_readvariableop_resource_0"j
2while_lstm_cell_66_split_1_readvariableop_resource4while_lstm_cell_66_split_1_readvariableop_resource_0"f
0while_lstm_cell_66_split_readvariableop_resource2while_lstm_cell_66_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_66/ReadVariableOp!while/lstm_cell_66/ReadVariableOp2J
#while/lstm_cell_66/ReadVariableOp_1#while/lstm_cell_66/ReadVariableOp_12J
#while/lstm_cell_66/ReadVariableOp_2#while/lstm_cell_66/ReadVariableOp_22J
#while/lstm_cell_66/ReadVariableOp_3#while/lstm_cell_66/ReadVariableOp_32R
'while/lstm_cell_66/split/ReadVariableOp'while/lstm_cell_66/split/ReadVariableOp2V
)while/lstm_cell_66/split_1/ReadVariableOp)while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2148880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2148880___redundant_placeholder05
1while_while_cond_2148880___redundant_placeholder15
1while_while_cond_2148880___redundant_placeholder25
1while_while_cond_2148880___redundant_placeholder3
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
¢
ª
D__inference_lstm_66_layer_call_and_return_conditional_losses_2148739
inputs_0=
*lstm_cell_66_split_readvariableop_resource:	;
,lstm_cell_66_split_1_readvariableop_resource:	7
$lstm_cell_66_readvariableop_resource:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_66/ReadVariableOp¢lstm_cell_66/ReadVariableOp_1¢lstm_cell_66/ReadVariableOp_2¢lstm_cell_66/ReadVariableOp_3¢!lstm_cell_66/split/ReadVariableOp¢#lstm_cell_66/split_1/ReadVariableOp¢whileF
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
lstm_cell_66/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_66/ones_like/Shape
lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_66/ones_like/Const¸
lstm_cell_66/ones_likeFill%lstm_cell_66/ones_like/Shape:output:0%lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/ones_like~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim²
!lstm_cell_66/split/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_66/split/ReadVariableOpÛ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0)lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_66/split
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul¡
lstm_cell_66/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_1¡
lstm_cell_66/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_2¡
lstm_cell_66/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_3
lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_66/split_1/split_dim´
#lstm_cell_66/split_1/ReadVariableOpReadVariableOp,lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_66/split_1/ReadVariableOpÓ
lstm_cell_66/split_1Split'lstm_cell_66/split_1/split_dim:output:0+lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_66/split_1§
lstm_cell_66/BiasAddBiasAddlstm_cell_66/MatMul:product:0lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd­
lstm_cell_66/BiasAdd_1BiasAddlstm_cell_66/MatMul_1:product:0lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_1­
lstm_cell_66/BiasAdd_2BiasAddlstm_cell_66/MatMul_2:product:0lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_2­
lstm_cell_66/BiasAdd_3BiasAddlstm_cell_66/MatMul_3:product:0lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_3
lstm_cell_66/mulMulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul
lstm_cell_66/mul_1Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_1
lstm_cell_66/mul_2Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_2
lstm_cell_66/mul_3Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_3 
lstm_cell_66/ReadVariableOpReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp
 lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_66/strided_slice/stack
"lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice/stack_1
"lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_66/strided_slice/stack_2Ê
lstm_cell_66/strided_sliceStridedSlice#lstm_cell_66/ReadVariableOp:value:0)lstm_cell_66/strided_slice/stack:output:0+lstm_cell_66/strided_slice/stack_1:output:0+lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice¥
lstm_cell_66/MatMul_4MatMullstm_cell_66/mul:z:0#lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_4
lstm_cell_66/addAddV2lstm_cell_66/BiasAdd:output:0lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add
lstm_cell_66/SigmoidSigmoidlstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid¤
lstm_cell_66/ReadVariableOp_1ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_1
"lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice_1/stack
$lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_66/strided_slice_1/stack_1
$lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_1/stack_2Ö
lstm_cell_66/strided_slice_1StridedSlice%lstm_cell_66/ReadVariableOp_1:value:0+lstm_cell_66/strided_slice_1/stack:output:0-lstm_cell_66/strided_slice_1/stack_1:output:0-lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_1©
lstm_cell_66/MatMul_5MatMullstm_cell_66/mul_1:z:0%lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_5¥
lstm_cell_66/add_1AddV2lstm_cell_66/BiasAdd_1:output:0lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_1
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_1
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_4¤
lstm_cell_66/ReadVariableOp_2ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_2
"lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_66/strided_slice_2/stack
$lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_66/strided_slice_2/stack_1
$lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_2/stack_2Ö
lstm_cell_66/strided_slice_2StridedSlice%lstm_cell_66/ReadVariableOp_2:value:0+lstm_cell_66/strided_slice_2/stack:output:0-lstm_cell_66/strided_slice_2/stack_1:output:0-lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_2©
lstm_cell_66/MatMul_6MatMullstm_cell_66/mul_2:z:0%lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_6¥
lstm_cell_66/add_2AddV2lstm_cell_66/BiasAdd_2:output:0lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_2x
lstm_cell_66/ReluRelulstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu
lstm_cell_66/mul_5Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_5
lstm_cell_66/add_3AddV2lstm_cell_66/mul_4:z:0lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_3¤
lstm_cell_66/ReadVariableOp_3ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_3
"lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_66/strided_slice_3/stack
$lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_66/strided_slice_3/stack_1
$lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_3/stack_2Ö
lstm_cell_66/strided_slice_3StridedSlice%lstm_cell_66/ReadVariableOp_3:value:0+lstm_cell_66/strided_slice_3/stack:output:0-lstm_cell_66/strided_slice_3/stack_1:output:0-lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_3©
lstm_cell_66/MatMul_7MatMullstm_cell_66/mul_3:z:0%lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_7¥
lstm_cell_66/add_4AddV2lstm_cell_66/BiasAdd_3:output:0lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_4
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu_1 
lstm_cell_66/mul_6Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_66_split_readvariableop_resource,lstm_cell_66_split_1_readvariableop_resource$lstm_cell_66_readvariableop_resource*
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
while_body_2148606*
condR
while_cond_2148605*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_66/ReadVariableOp^lstm_cell_66/ReadVariableOp_1^lstm_cell_66/ReadVariableOp_2^lstm_cell_66/ReadVariableOp_3"^lstm_cell_66/split/ReadVariableOp$^lstm_cell_66/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_66/ReadVariableOplstm_cell_66/ReadVariableOp2>
lstm_cell_66/ReadVariableOp_1lstm_cell_66/ReadVariableOp_12>
lstm_cell_66/ReadVariableOp_2lstm_cell_66/ReadVariableOp_22>
lstm_cell_66/ReadVariableOp_3lstm_cell_66/ReadVariableOp_32F
!lstm_cell_66/split/ReadVariableOp!lstm_cell_66/split/ReadVariableOp2J
#lstm_cell_66/split_1/ReadVariableOp#lstm_cell_66/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¨
¶
)__inference_lstm_66_layer_call_fn_2148496

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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21475952
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
ð

(sequential_27_lstm_66_while_cond_2145974H
Dsequential_27_lstm_66_while_sequential_27_lstm_66_while_loop_counterN
Jsequential_27_lstm_66_while_sequential_27_lstm_66_while_maximum_iterations+
'sequential_27_lstm_66_while_placeholder-
)sequential_27_lstm_66_while_placeholder_1-
)sequential_27_lstm_66_while_placeholder_2-
)sequential_27_lstm_66_while_placeholder_3J
Fsequential_27_lstm_66_while_less_sequential_27_lstm_66_strided_slice_1a
]sequential_27_lstm_66_while_sequential_27_lstm_66_while_cond_2145974___redundant_placeholder0a
]sequential_27_lstm_66_while_sequential_27_lstm_66_while_cond_2145974___redundant_placeholder1a
]sequential_27_lstm_66_while_sequential_27_lstm_66_while_cond_2145974___redundant_placeholder2a
]sequential_27_lstm_66_while_sequential_27_lstm_66_while_cond_2145974___redundant_placeholder3(
$sequential_27_lstm_66_while_identity
Þ
 sequential_27/lstm_66/while/LessLess'sequential_27_lstm_66_while_placeholderFsequential_27_lstm_66_while_less_sequential_27_lstm_66_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_27/lstm_66/while/Less
$sequential_27/lstm_66/while/IdentityIdentity$sequential_27/lstm_66/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_27/lstm_66/while/Identity"U
$sequential_27_lstm_66_while_identity-sequential_27/lstm_66/while/Identity:output:0*(
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149596

inputs=
*lstm_cell_66_split_readvariableop_resource:	;
,lstm_cell_66_split_1_readvariableop_resource:	7
$lstm_cell_66_readvariableop_resource:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_66/ReadVariableOp¢lstm_cell_66/ReadVariableOp_1¢lstm_cell_66/ReadVariableOp_2¢lstm_cell_66/ReadVariableOp_3¢!lstm_cell_66/split/ReadVariableOp¢#lstm_cell_66/split_1/ReadVariableOp¢whileD
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
lstm_cell_66/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_66/ones_like/Shape
lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_66/ones_like/Const¸
lstm_cell_66/ones_likeFill%lstm_cell_66/ones_like/Shape:output:0%lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/ones_like}
lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout/Const³
lstm_cell_66/dropout/MulMullstm_cell_66/ones_like:output:0#lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Mul
lstm_cell_66/dropout/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout/Shapeø
1lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2·23
1lstm_cell_66/dropout/random_uniform/RandomUniform
#lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_66/dropout/GreaterEqual/yò
!lstm_cell_66/dropout/GreaterEqualGreaterEqual:lstm_cell_66/dropout/random_uniform/RandomUniform:output:0,lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_66/dropout/GreaterEqual¦
lstm_cell_66/dropout/CastCast%lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Cast®
lstm_cell_66/dropout/Mul_1Mullstm_cell_66/dropout/Mul:z:0lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout/Mul_1
lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_1/Const¹
lstm_cell_66/dropout_1/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Mul
lstm_cell_66/dropout_1/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_1/Shapeý
3lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¨m25
3lstm_cell_66/dropout_1/random_uniform/RandomUniform
%lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_1/GreaterEqual/yú
#lstm_cell_66/dropout_1/GreaterEqualGreaterEqual<lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_1/GreaterEqual¬
lstm_cell_66/dropout_1/CastCast'lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Cast¶
lstm_cell_66/dropout_1/Mul_1Mullstm_cell_66/dropout_1/Mul:z:0lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_1/Mul_1
lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_2/Const¹
lstm_cell_66/dropout_2/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Mul
lstm_cell_66/dropout_2/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_2/Shapeþ
3lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ä×25
3lstm_cell_66/dropout_2/random_uniform/RandomUniform
%lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_2/GreaterEqual/yú
#lstm_cell_66/dropout_2/GreaterEqualGreaterEqual<lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_2/GreaterEqual¬
lstm_cell_66/dropout_2/CastCast'lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Cast¶
lstm_cell_66/dropout_2/Mul_1Mullstm_cell_66/dropout_2/Mul:z:0lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_2/Mul_1
lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_66/dropout_3/Const¹
lstm_cell_66/dropout_3/MulMullstm_cell_66/ones_like:output:0%lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Mul
lstm_cell_66/dropout_3/ShapeShapelstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_66/dropout_3/Shapeþ
3lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2äØ25
3lstm_cell_66/dropout_3/random_uniform/RandomUniform
%lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_66/dropout_3/GreaterEqual/yú
#lstm_cell_66/dropout_3/GreaterEqualGreaterEqual<lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_66/dropout_3/GreaterEqual¬
lstm_cell_66/dropout_3/CastCast'lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Cast¶
lstm_cell_66/dropout_3/Mul_1Mullstm_cell_66/dropout_3/Mul:z:0lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/dropout_3/Mul_1~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim²
!lstm_cell_66/split/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_66/split/ReadVariableOpÛ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0)lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_66/split
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul¡
lstm_cell_66/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_1¡
lstm_cell_66/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_2¡
lstm_cell_66/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_3
lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_66/split_1/split_dim´
#lstm_cell_66/split_1/ReadVariableOpReadVariableOp,lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_66/split_1/ReadVariableOpÓ
lstm_cell_66/split_1Split'lstm_cell_66/split_1/split_dim:output:0+lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_66/split_1§
lstm_cell_66/BiasAddBiasAddlstm_cell_66/MatMul:product:0lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd­
lstm_cell_66/BiasAdd_1BiasAddlstm_cell_66/MatMul_1:product:0lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_1­
lstm_cell_66/BiasAdd_2BiasAddlstm_cell_66/MatMul_2:product:0lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_2­
lstm_cell_66/BiasAdd_3BiasAddlstm_cell_66/MatMul_3:product:0lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_3
lstm_cell_66/mulMulzeros:output:0lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul
lstm_cell_66/mul_1Mulzeros:output:0 lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_1
lstm_cell_66/mul_2Mulzeros:output:0 lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_2
lstm_cell_66/mul_3Mulzeros:output:0 lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_3 
lstm_cell_66/ReadVariableOpReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp
 lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_66/strided_slice/stack
"lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice/stack_1
"lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_66/strided_slice/stack_2Ê
lstm_cell_66/strided_sliceStridedSlice#lstm_cell_66/ReadVariableOp:value:0)lstm_cell_66/strided_slice/stack:output:0+lstm_cell_66/strided_slice/stack_1:output:0+lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice¥
lstm_cell_66/MatMul_4MatMullstm_cell_66/mul:z:0#lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_4
lstm_cell_66/addAddV2lstm_cell_66/BiasAdd:output:0lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add
lstm_cell_66/SigmoidSigmoidlstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid¤
lstm_cell_66/ReadVariableOp_1ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_1
"lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice_1/stack
$lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_66/strided_slice_1/stack_1
$lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_1/stack_2Ö
lstm_cell_66/strided_slice_1StridedSlice%lstm_cell_66/ReadVariableOp_1:value:0+lstm_cell_66/strided_slice_1/stack:output:0-lstm_cell_66/strided_slice_1/stack_1:output:0-lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_1©
lstm_cell_66/MatMul_5MatMullstm_cell_66/mul_1:z:0%lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_5¥
lstm_cell_66/add_1AddV2lstm_cell_66/BiasAdd_1:output:0lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_1
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_1
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_4¤
lstm_cell_66/ReadVariableOp_2ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_2
"lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_66/strided_slice_2/stack
$lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_66/strided_slice_2/stack_1
$lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_2/stack_2Ö
lstm_cell_66/strided_slice_2StridedSlice%lstm_cell_66/ReadVariableOp_2:value:0+lstm_cell_66/strided_slice_2/stack:output:0-lstm_cell_66/strided_slice_2/stack_1:output:0-lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_2©
lstm_cell_66/MatMul_6MatMullstm_cell_66/mul_2:z:0%lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_6¥
lstm_cell_66/add_2AddV2lstm_cell_66/BiasAdd_2:output:0lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_2x
lstm_cell_66/ReluRelulstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu
lstm_cell_66/mul_5Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_5
lstm_cell_66/add_3AddV2lstm_cell_66/mul_4:z:0lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_3¤
lstm_cell_66/ReadVariableOp_3ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_3
"lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_66/strided_slice_3/stack
$lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_66/strided_slice_3/stack_1
$lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_3/stack_2Ö
lstm_cell_66/strided_slice_3StridedSlice%lstm_cell_66/ReadVariableOp_3:value:0+lstm_cell_66/strided_slice_3/stack:output:0-lstm_cell_66/strided_slice_3/stack_1:output:0-lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_3©
lstm_cell_66/MatMul_7MatMullstm_cell_66/mul_3:z:0%lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_7¥
lstm_cell_66/add_4AddV2lstm_cell_66/BiasAdd_3:output:0lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_4
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu_1 
lstm_cell_66/mul_6Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_66_split_readvariableop_resource,lstm_cell_66_split_1_readvariableop_resource$lstm_cell_66_readvariableop_resource*
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
while_body_2149431*
condR
while_cond_2149430*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_66/ReadVariableOp^lstm_cell_66/ReadVariableOp_1^lstm_cell_66/ReadVariableOp_2^lstm_cell_66/ReadVariableOp_3"^lstm_cell_66/split/ReadVariableOp$^lstm_cell_66/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_66/ReadVariableOplstm_cell_66/ReadVariableOp2>
lstm_cell_66/ReadVariableOp_1lstm_cell_66/ReadVariableOp_12>
lstm_cell_66/ReadVariableOp_2lstm_cell_66/ReadVariableOp_22>
lstm_cell_66/ReadVariableOp_3lstm_cell_66/ReadVariableOp_32F
!lstm_cell_66/split/ReadVariableOp!lstm_cell_66/split/ReadVariableOp2J
#lstm_cell_66/split_1/ReadVariableOp#lstm_cell_66/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
¨
E__inference_dense_81_layer_call_and_return_conditional_losses_2147198

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_81/bias/Regularizer/Square/ReadVariableOp
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
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_81/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ø+
µ
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147729
input_28"
lstm_66_2147698:	
lstm_66_2147700:	"
lstm_66_2147702:	 "
dense_80_2147705:  
dense_80_2147707: "
dense_81_2147710: 
dense_81_2147712:
identity¢ dense_80/StatefulPartitionedCall¢ dense_81/StatefulPartitionedCall¢/dense_81/bias/Regularizer/Square/ReadVariableOp¢lstm_66/StatefulPartitionedCall¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp§
lstm_66/StatefulPartitionedCallStatefulPartitionedCallinput_28lstm_66_2147698lstm_66_2147700lstm_66_2147702*
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21471572!
lstm_66/StatefulPartitionedCall¹
 dense_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_66/StatefulPartitionedCall:output:0dense_80_2147705dense_80_2147707*
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
E__inference_dense_80_layer_call_and_return_conditional_losses_21471762"
 dense_80/StatefulPartitionedCallº
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_2147710dense_81_2147712*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_21471982"
 dense_81/StatefulPartitionedCall
reshape_40/PartitionedCallPartitionedCall)dense_81/StatefulPartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_21472172
reshape_40/PartitionedCallÏ
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_66_2147698*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/mul¯
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_2147712*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mul
IdentityIdentity#reshape_40/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall0^dense_81/bias/Regularizer/Square/ReadVariableOp ^lstm_66/StatefulPartitionedCall>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp2B
lstm_66/StatefulPartitionedCalllstm_66/StatefulPartitionedCall2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_28
û²
¥	
while_body_2149431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_66_split_readvariableop_resource_0:	C
4while_lstm_cell_66_split_1_readvariableop_resource_0:	?
,while_lstm_cell_66_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_66_split_readvariableop_resource:	A
2while_lstm_cell_66_split_1_readvariableop_resource:	=
*while_lstm_cell_66_readvariableop_resource:	 ¢!while/lstm_cell_66/ReadVariableOp¢#while/lstm_cell_66/ReadVariableOp_1¢#while/lstm_cell_66/ReadVariableOp_2¢#while/lstm_cell_66/ReadVariableOp_3¢'while/lstm_cell_66/split/ReadVariableOp¢)while/lstm_cell_66/split_1/ReadVariableOpÃ
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
"while/lstm_cell_66/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_66/ones_like/Shape
"while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_66/ones_like/ConstÐ
while/lstm_cell_66/ones_likeFill+while/lstm_cell_66/ones_like/Shape:output:0+while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/ones_like
 while/lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_66/dropout/ConstË
while/lstm_cell_66/dropout/MulMul%while/lstm_cell_66/ones_like:output:0)while/lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_66/dropout/Mul
 while/lstm_cell_66/dropout/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_66/dropout/Shape
7while/lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÀÇB29
7while/lstm_cell_66/dropout/random_uniform/RandomUniform
)while/lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_66/dropout/GreaterEqual/y
'while/lstm_cell_66/dropout/GreaterEqualGreaterEqual@while/lstm_cell_66/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_66/dropout/GreaterEqual¸
while/lstm_cell_66/dropout/CastCast+while/lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_66/dropout/CastÆ
 while/lstm_cell_66/dropout/Mul_1Mul"while/lstm_cell_66/dropout/Mul:z:0#while/lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout/Mul_1
"while/lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_1/ConstÑ
 while/lstm_cell_66/dropout_1/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_1/Mul
"while/lstm_cell_66/dropout_1/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_1/Shape
9while/lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2®¹2;
9while/lstm_cell_66/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_1/GreaterEqual/y
)while/lstm_cell_66/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_1/GreaterEqual¾
!while/lstm_cell_66/dropout_1/CastCast-while/lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_1/CastÎ
"while/lstm_cell_66/dropout_1/Mul_1Mul$while/lstm_cell_66/dropout_1/Mul:z:0%while/lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_1/Mul_1
"while/lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_2/ConstÑ
 while/lstm_cell_66/dropout_2/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_2/Mul
"while/lstm_cell_66/dropout_2/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_2/Shape
9while/lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2§á¶2;
9while/lstm_cell_66/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_2/GreaterEqual/y
)while/lstm_cell_66/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_2/GreaterEqual¾
!while/lstm_cell_66/dropout_2/CastCast-while/lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_2/CastÎ
"while/lstm_cell_66/dropout_2/Mul_1Mul$while/lstm_cell_66/dropout_2/Mul:z:0%while/lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_2/Mul_1
"while/lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_3/ConstÑ
 while/lstm_cell_66/dropout_3/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_3/Mul
"while/lstm_cell_66/dropout_3/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_3/Shape
9while/lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¡úÏ2;
9while/lstm_cell_66/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_3/GreaterEqual/y
)while/lstm_cell_66/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_3/GreaterEqual¾
!while/lstm_cell_66/dropout_3/CastCast-while/lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_3/CastÎ
"while/lstm_cell_66/dropout_3/Mul_1Mul$while/lstm_cell_66/dropout_3/Mul:z:0%while/lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_3/Mul_1
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimÆ
'while/lstm_cell_66/split/ReadVariableOpReadVariableOp2while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_66/split/ReadVariableOpó
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_66/splitÇ
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMulË
while/lstm_cell_66/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_1Ë
while/lstm_cell_66/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_2Ë
while/lstm_cell_66/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_3
$while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_66/split_1/split_dimÈ
)while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_66/split_1/ReadVariableOpë
while/lstm_cell_66/split_1Split-while/lstm_cell_66/split_1/split_dim:output:01while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_66/split_1¿
while/lstm_cell_66/BiasAddBiasAdd#while/lstm_cell_66/MatMul:product:0#while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAddÅ
while/lstm_cell_66/BiasAdd_1BiasAdd%while/lstm_cell_66/MatMul_1:product:0#while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_1Å
while/lstm_cell_66/BiasAdd_2BiasAdd%while/lstm_cell_66/MatMul_2:product:0#while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_2Å
while/lstm_cell_66/BiasAdd_3BiasAdd%while/lstm_cell_66/MatMul_3:product:0#while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_3¤
while/lstm_cell_66/mulMulwhile_placeholder_2$while/lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mulª
while/lstm_cell_66/mul_1Mulwhile_placeholder_2&while/lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_1ª
while/lstm_cell_66/mul_2Mulwhile_placeholder_2&while/lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_2ª
while/lstm_cell_66/mul_3Mulwhile_placeholder_2&while/lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_3´
!while/lstm_cell_66/ReadVariableOpReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_66/ReadVariableOp¡
&while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_66/strided_slice/stack¥
(while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice/stack_1¥
(while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_66/strided_slice/stack_2î
 while/lstm_cell_66/strided_sliceStridedSlice)while/lstm_cell_66/ReadVariableOp:value:0/while/lstm_cell_66/strided_slice/stack:output:01while/lstm_cell_66/strided_slice/stack_1:output:01while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_66/strided_slice½
while/lstm_cell_66/MatMul_4MatMulwhile/lstm_cell_66/mul:z:0)while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_4·
while/lstm_cell_66/addAddV2#while/lstm_cell_66/BiasAdd:output:0%while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add
while/lstm_cell_66/SigmoidSigmoidwhile/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid¸
#while/lstm_cell_66/ReadVariableOp_1ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_1¥
(while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice_1/stack©
*while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_66/strided_slice_1/stack_1©
*while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_1/stack_2ú
"while/lstm_cell_66/strided_slice_1StridedSlice+while/lstm_cell_66/ReadVariableOp_1:value:01while/lstm_cell_66/strided_slice_1/stack:output:03while/lstm_cell_66/strided_slice_1/stack_1:output:03while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_1Á
while/lstm_cell_66/MatMul_5MatMulwhile/lstm_cell_66/mul_1:z:0+while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_5½
while/lstm_cell_66/add_1AddV2%while/lstm_cell_66/BiasAdd_1:output:0%while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_1
while/lstm_cell_66/Sigmoid_1Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_1¤
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_4¸
#while/lstm_cell_66/ReadVariableOp_2ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_2¥
(while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_66/strided_slice_2/stack©
*while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_66/strided_slice_2/stack_1©
*while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_2/stack_2ú
"while/lstm_cell_66/strided_slice_2StridedSlice+while/lstm_cell_66/ReadVariableOp_2:value:01while/lstm_cell_66/strided_slice_2/stack:output:03while/lstm_cell_66/strided_slice_2/stack_1:output:03while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_2Á
while/lstm_cell_66/MatMul_6MatMulwhile/lstm_cell_66/mul_2:z:0+while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_6½
while/lstm_cell_66/add_2AddV2%while/lstm_cell_66/BiasAdd_2:output:0%while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_2
while/lstm_cell_66/ReluReluwhile/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu´
while/lstm_cell_66/mul_5Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_5«
while/lstm_cell_66/add_3AddV2while/lstm_cell_66/mul_4:z:0while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_3¸
#while/lstm_cell_66/ReadVariableOp_3ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_3¥
(while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_66/strided_slice_3/stack©
*while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_66/strided_slice_3/stack_1©
*while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_3/stack_2ú
"while/lstm_cell_66/strided_slice_3StridedSlice+while/lstm_cell_66/ReadVariableOp_3:value:01while/lstm_cell_66/strided_slice_3/stack:output:03while/lstm_cell_66/strided_slice_3/stack_1:output:03while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_3Á
while/lstm_cell_66/MatMul_7MatMulwhile/lstm_cell_66/mul_3:z:0+while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_7½
while/lstm_cell_66/add_4AddV2%while/lstm_cell_66/BiasAdd_3:output:0%while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_4
while/lstm_cell_66/Sigmoid_2Sigmoidwhile/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_2
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu_1¸
while/lstm_cell_66/mul_6Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_66/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_66/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_66/ReadVariableOp$^while/lstm_cell_66/ReadVariableOp_1$^while/lstm_cell_66/ReadVariableOp_2$^while/lstm_cell_66/ReadVariableOp_3(^while/lstm_cell_66/split/ReadVariableOp*^while/lstm_cell_66/split_1/ReadVariableOp*"
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
*while_lstm_cell_66_readvariableop_resource,while_lstm_cell_66_readvariableop_resource_0"j
2while_lstm_cell_66_split_1_readvariableop_resource4while_lstm_cell_66_split_1_readvariableop_resource_0"f
0while_lstm_cell_66_split_readvariableop_resource2while_lstm_cell_66_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_66/ReadVariableOp!while/lstm_cell_66/ReadVariableOp2J
#while/lstm_cell_66/ReadVariableOp_1#while/lstm_cell_66/ReadVariableOp_12J
#while/lstm_cell_66/ReadVariableOp_2#while/lstm_cell_66/ReadVariableOp_22J
#while/lstm_cell_66/ReadVariableOp_3#while/lstm_cell_66/ReadVariableOp_32R
'while/lstm_cell_66/split/ReadVariableOp'while/lstm_cell_66/split/ReadVariableOp2V
)while/lstm_cell_66/split_1/ReadVariableOp)while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
.__inference_lstm_cell_66_layer_call_fn_2149716

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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_21464812
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
ú²
¥	
while_body_2147430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_66_split_readvariableop_resource_0:	C
4while_lstm_cell_66_split_1_readvariableop_resource_0:	?
,while_lstm_cell_66_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_66_split_readvariableop_resource:	A
2while_lstm_cell_66_split_1_readvariableop_resource:	=
*while_lstm_cell_66_readvariableop_resource:	 ¢!while/lstm_cell_66/ReadVariableOp¢#while/lstm_cell_66/ReadVariableOp_1¢#while/lstm_cell_66/ReadVariableOp_2¢#while/lstm_cell_66/ReadVariableOp_3¢'while/lstm_cell_66/split/ReadVariableOp¢)while/lstm_cell_66/split_1/ReadVariableOpÃ
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
"while/lstm_cell_66/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_66/ones_like/Shape
"while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_66/ones_like/ConstÐ
while/lstm_cell_66/ones_likeFill+while/lstm_cell_66/ones_like/Shape:output:0+while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/ones_like
 while/lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_66/dropout/ConstË
while/lstm_cell_66/dropout/MulMul%while/lstm_cell_66/ones_like:output:0)while/lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_66/dropout/Mul
 while/lstm_cell_66/dropout/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_66/dropout/Shape
7while/lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2å®ä29
7while/lstm_cell_66/dropout/random_uniform/RandomUniform
)while/lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_66/dropout/GreaterEqual/y
'while/lstm_cell_66/dropout/GreaterEqualGreaterEqual@while/lstm_cell_66/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_66/dropout/GreaterEqual¸
while/lstm_cell_66/dropout/CastCast+while/lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_66/dropout/CastÆ
 while/lstm_cell_66/dropout/Mul_1Mul"while/lstm_cell_66/dropout/Mul:z:0#while/lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout/Mul_1
"while/lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_1/ConstÑ
 while/lstm_cell_66/dropout_1/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_1/Mul
"while/lstm_cell_66/dropout_1/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_1/Shape
9while/lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2éY2;
9while/lstm_cell_66/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_1/GreaterEqual/y
)while/lstm_cell_66/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_1/GreaterEqual¾
!while/lstm_cell_66/dropout_1/CastCast-while/lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_1/CastÎ
"while/lstm_cell_66/dropout_1/Mul_1Mul$while/lstm_cell_66/dropout_1/Mul:z:0%while/lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_1/Mul_1
"while/lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_2/ConstÑ
 while/lstm_cell_66/dropout_2/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_2/Mul
"while/lstm_cell_66/dropout_2/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_2/Shape
9while/lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ý·È2;
9while/lstm_cell_66/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_2/GreaterEqual/y
)while/lstm_cell_66/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_2/GreaterEqual¾
!while/lstm_cell_66/dropout_2/CastCast-while/lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_2/CastÎ
"while/lstm_cell_66/dropout_2/Mul_1Mul$while/lstm_cell_66/dropout_2/Mul:z:0%while/lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_2/Mul_1
"while/lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_3/ConstÑ
 while/lstm_cell_66/dropout_3/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_3/Mul
"while/lstm_cell_66/dropout_3/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_3/Shape
9while/lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ö¶Q2;
9while/lstm_cell_66/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_3/GreaterEqual/y
)while/lstm_cell_66/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_3/GreaterEqual¾
!while/lstm_cell_66/dropout_3/CastCast-while/lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_3/CastÎ
"while/lstm_cell_66/dropout_3/Mul_1Mul$while/lstm_cell_66/dropout_3/Mul:z:0%while/lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_3/Mul_1
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimÆ
'while/lstm_cell_66/split/ReadVariableOpReadVariableOp2while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_66/split/ReadVariableOpó
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_66/splitÇ
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMulË
while/lstm_cell_66/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_1Ë
while/lstm_cell_66/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_2Ë
while/lstm_cell_66/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_3
$while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_66/split_1/split_dimÈ
)while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_66/split_1/ReadVariableOpë
while/lstm_cell_66/split_1Split-while/lstm_cell_66/split_1/split_dim:output:01while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_66/split_1¿
while/lstm_cell_66/BiasAddBiasAdd#while/lstm_cell_66/MatMul:product:0#while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAddÅ
while/lstm_cell_66/BiasAdd_1BiasAdd%while/lstm_cell_66/MatMul_1:product:0#while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_1Å
while/lstm_cell_66/BiasAdd_2BiasAdd%while/lstm_cell_66/MatMul_2:product:0#while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_2Å
while/lstm_cell_66/BiasAdd_3BiasAdd%while/lstm_cell_66/MatMul_3:product:0#while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_3¤
while/lstm_cell_66/mulMulwhile_placeholder_2$while/lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mulª
while/lstm_cell_66/mul_1Mulwhile_placeholder_2&while/lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_1ª
while/lstm_cell_66/mul_2Mulwhile_placeholder_2&while/lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_2ª
while/lstm_cell_66/mul_3Mulwhile_placeholder_2&while/lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_3´
!while/lstm_cell_66/ReadVariableOpReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_66/ReadVariableOp¡
&while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_66/strided_slice/stack¥
(while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice/stack_1¥
(while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_66/strided_slice/stack_2î
 while/lstm_cell_66/strided_sliceStridedSlice)while/lstm_cell_66/ReadVariableOp:value:0/while/lstm_cell_66/strided_slice/stack:output:01while/lstm_cell_66/strided_slice/stack_1:output:01while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_66/strided_slice½
while/lstm_cell_66/MatMul_4MatMulwhile/lstm_cell_66/mul:z:0)while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_4·
while/lstm_cell_66/addAddV2#while/lstm_cell_66/BiasAdd:output:0%while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add
while/lstm_cell_66/SigmoidSigmoidwhile/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid¸
#while/lstm_cell_66/ReadVariableOp_1ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_1¥
(while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice_1/stack©
*while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_66/strided_slice_1/stack_1©
*while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_1/stack_2ú
"while/lstm_cell_66/strided_slice_1StridedSlice+while/lstm_cell_66/ReadVariableOp_1:value:01while/lstm_cell_66/strided_slice_1/stack:output:03while/lstm_cell_66/strided_slice_1/stack_1:output:03while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_1Á
while/lstm_cell_66/MatMul_5MatMulwhile/lstm_cell_66/mul_1:z:0+while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_5½
while/lstm_cell_66/add_1AddV2%while/lstm_cell_66/BiasAdd_1:output:0%while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_1
while/lstm_cell_66/Sigmoid_1Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_1¤
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_4¸
#while/lstm_cell_66/ReadVariableOp_2ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_2¥
(while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_66/strided_slice_2/stack©
*while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_66/strided_slice_2/stack_1©
*while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_2/stack_2ú
"while/lstm_cell_66/strided_slice_2StridedSlice+while/lstm_cell_66/ReadVariableOp_2:value:01while/lstm_cell_66/strided_slice_2/stack:output:03while/lstm_cell_66/strided_slice_2/stack_1:output:03while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_2Á
while/lstm_cell_66/MatMul_6MatMulwhile/lstm_cell_66/mul_2:z:0+while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_6½
while/lstm_cell_66/add_2AddV2%while/lstm_cell_66/BiasAdd_2:output:0%while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_2
while/lstm_cell_66/ReluReluwhile/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu´
while/lstm_cell_66/mul_5Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_5«
while/lstm_cell_66/add_3AddV2while/lstm_cell_66/mul_4:z:0while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_3¸
#while/lstm_cell_66/ReadVariableOp_3ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_3¥
(while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_66/strided_slice_3/stack©
*while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_66/strided_slice_3/stack_1©
*while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_3/stack_2ú
"while/lstm_cell_66/strided_slice_3StridedSlice+while/lstm_cell_66/ReadVariableOp_3:value:01while/lstm_cell_66/strided_slice_3/stack:output:03while/lstm_cell_66/strided_slice_3/stack_1:output:03while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_3Á
while/lstm_cell_66/MatMul_7MatMulwhile/lstm_cell_66/mul_3:z:0+while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_7½
while/lstm_cell_66/add_4AddV2%while/lstm_cell_66/BiasAdd_3:output:0%while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_4
while/lstm_cell_66/Sigmoid_2Sigmoidwhile/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_2
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu_1¸
while/lstm_cell_66/mul_6Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_66/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_66/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_66/ReadVariableOp$^while/lstm_cell_66/ReadVariableOp_1$^while/lstm_cell_66/ReadVariableOp_2$^while/lstm_cell_66/ReadVariableOp_3(^while/lstm_cell_66/split/ReadVariableOp*^while/lstm_cell_66/split_1/ReadVariableOp*"
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
*while_lstm_cell_66_readvariableop_resource,while_lstm_cell_66_readvariableop_resource_0"j
2while_lstm_cell_66_split_1_readvariableop_resource4while_lstm_cell_66_split_1_readvariableop_resource_0"f
0while_lstm_cell_66_split_readvariableop_resource2while_lstm_cell_66_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_66/ReadVariableOp!while/lstm_cell_66/ReadVariableOp2J
#while/lstm_cell_66/ReadVariableOp_1#while/lstm_cell_66/ReadVariableOp_12J
#while/lstm_cell_66/ReadVariableOp_2#while/lstm_cell_66/ReadVariableOp_22J
#while/lstm_cell_66/ReadVariableOp_3#while/lstm_cell_66/ReadVariableOp_32R
'while/lstm_cell_66/split/ReadVariableOp'while/lstm_cell_66/split/ReadVariableOp2V
)while/lstm_cell_66/split_1/ReadVariableOp)while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2146261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2146261___redundant_placeholder05
1while_while_cond_2146261___redundant_placeholder15
1while_while_cond_2146261___redundant_placeholder25
1while_while_cond_2146261___redundant_placeholder3
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
á¡
¨
D__inference_lstm_66_layer_call_and_return_conditional_losses_2147157

inputs=
*lstm_cell_66_split_readvariableop_resource:	;
,lstm_cell_66_split_1_readvariableop_resource:	7
$lstm_cell_66_readvariableop_resource:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_66/ReadVariableOp¢lstm_cell_66/ReadVariableOp_1¢lstm_cell_66/ReadVariableOp_2¢lstm_cell_66/ReadVariableOp_3¢!lstm_cell_66/split/ReadVariableOp¢#lstm_cell_66/split_1/ReadVariableOp¢whileD
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
lstm_cell_66/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_66/ones_like/Shape
lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_66/ones_like/Const¸
lstm_cell_66/ones_likeFill%lstm_cell_66/ones_like/Shape:output:0%lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/ones_like~
lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_66/split/split_dim²
!lstm_cell_66/split/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_66/split/ReadVariableOpÛ
lstm_cell_66/splitSplit%lstm_cell_66/split/split_dim:output:0)lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_66/split
lstm_cell_66/MatMulMatMulstrided_slice_2:output:0lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul¡
lstm_cell_66/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_1¡
lstm_cell_66/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_2¡
lstm_cell_66/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_3
lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_66/split_1/split_dim´
#lstm_cell_66/split_1/ReadVariableOpReadVariableOp,lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_66/split_1/ReadVariableOpÓ
lstm_cell_66/split_1Split'lstm_cell_66/split_1/split_dim:output:0+lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_66/split_1§
lstm_cell_66/BiasAddBiasAddlstm_cell_66/MatMul:product:0lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd­
lstm_cell_66/BiasAdd_1BiasAddlstm_cell_66/MatMul_1:product:0lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_1­
lstm_cell_66/BiasAdd_2BiasAddlstm_cell_66/MatMul_2:product:0lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_2­
lstm_cell_66/BiasAdd_3BiasAddlstm_cell_66/MatMul_3:product:0lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/BiasAdd_3
lstm_cell_66/mulMulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul
lstm_cell_66/mul_1Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_1
lstm_cell_66/mul_2Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_2
lstm_cell_66/mul_3Mulzeros:output:0lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_3 
lstm_cell_66/ReadVariableOpReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp
 lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_66/strided_slice/stack
"lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice/stack_1
"lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_66/strided_slice/stack_2Ê
lstm_cell_66/strided_sliceStridedSlice#lstm_cell_66/ReadVariableOp:value:0)lstm_cell_66/strided_slice/stack:output:0+lstm_cell_66/strided_slice/stack_1:output:0+lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice¥
lstm_cell_66/MatMul_4MatMullstm_cell_66/mul:z:0#lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_4
lstm_cell_66/addAddV2lstm_cell_66/BiasAdd:output:0lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add
lstm_cell_66/SigmoidSigmoidlstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid¤
lstm_cell_66/ReadVariableOp_1ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_1
"lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_66/strided_slice_1/stack
$lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_66/strided_slice_1/stack_1
$lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_1/stack_2Ö
lstm_cell_66/strided_slice_1StridedSlice%lstm_cell_66/ReadVariableOp_1:value:0+lstm_cell_66/strided_slice_1/stack:output:0-lstm_cell_66/strided_slice_1/stack_1:output:0-lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_1©
lstm_cell_66/MatMul_5MatMullstm_cell_66/mul_1:z:0%lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_5¥
lstm_cell_66/add_1AddV2lstm_cell_66/BiasAdd_1:output:0lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_1
lstm_cell_66/Sigmoid_1Sigmoidlstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_1
lstm_cell_66/mul_4Mullstm_cell_66/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_4¤
lstm_cell_66/ReadVariableOp_2ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_2
"lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_66/strided_slice_2/stack
$lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_66/strided_slice_2/stack_1
$lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_2/stack_2Ö
lstm_cell_66/strided_slice_2StridedSlice%lstm_cell_66/ReadVariableOp_2:value:0+lstm_cell_66/strided_slice_2/stack:output:0-lstm_cell_66/strided_slice_2/stack_1:output:0-lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_2©
lstm_cell_66/MatMul_6MatMullstm_cell_66/mul_2:z:0%lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_6¥
lstm_cell_66/add_2AddV2lstm_cell_66/BiasAdd_2:output:0lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_2x
lstm_cell_66/ReluRelulstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu
lstm_cell_66/mul_5Mullstm_cell_66/Sigmoid:y:0lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_5
lstm_cell_66/add_3AddV2lstm_cell_66/mul_4:z:0lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_3¤
lstm_cell_66/ReadVariableOp_3ReadVariableOp$lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_66/ReadVariableOp_3
"lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_66/strided_slice_3/stack
$lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_66/strided_slice_3/stack_1
$lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_66/strided_slice_3/stack_2Ö
lstm_cell_66/strided_slice_3StridedSlice%lstm_cell_66/ReadVariableOp_3:value:0+lstm_cell_66/strided_slice_3/stack:output:0-lstm_cell_66/strided_slice_3/stack_1:output:0-lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_66/strided_slice_3©
lstm_cell_66/MatMul_7MatMullstm_cell_66/mul_3:z:0%lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/MatMul_7¥
lstm_cell_66/add_4AddV2lstm_cell_66/BiasAdd_3:output:0lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/add_4
lstm_cell_66/Sigmoid_2Sigmoidlstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Sigmoid_2|
lstm_cell_66/Relu_1Relulstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/Relu_1 
lstm_cell_66/mul_6Mullstm_cell_66/Sigmoid_2:y:0!lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_66/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_66_split_readvariableop_resource,lstm_cell_66_split_1_readvariableop_resource$lstm_cell_66_readvariableop_resource*
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
while_body_2147024*
condR
while_cond_2147023*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_66/ReadVariableOp^lstm_cell_66/ReadVariableOp_1^lstm_cell_66/ReadVariableOp_2^lstm_cell_66/ReadVariableOp_3"^lstm_cell_66/split/ReadVariableOp$^lstm_cell_66/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_66/ReadVariableOplstm_cell_66/ReadVariableOp2>
lstm_cell_66/ReadVariableOp_1lstm_cell_66/ReadVariableOp_12>
lstm_cell_66/ReadVariableOp_2lstm_cell_66/ReadVariableOp_22>
lstm_cell_66/ReadVariableOp_3lstm_cell_66/ReadVariableOp_32F
!lstm_cell_66/split/ReadVariableOp!lstm_cell_66/split/ReadVariableOp2J
#lstm_cell_66/split_1/ReadVariableOp#lstm_cell_66/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò+
³
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147659

inputs"
lstm_66_2147628:	
lstm_66_2147630:	"
lstm_66_2147632:	 "
dense_80_2147635:  
dense_80_2147637: "
dense_81_2147640: 
dense_81_2147642:
identity¢ dense_80/StatefulPartitionedCall¢ dense_81/StatefulPartitionedCall¢/dense_81/bias/Regularizer/Square/ReadVariableOp¢lstm_66/StatefulPartitionedCall¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¥
lstm_66/StatefulPartitionedCallStatefulPartitionedCallinputslstm_66_2147628lstm_66_2147630lstm_66_2147632*
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21475952!
lstm_66/StatefulPartitionedCall¹
 dense_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_66/StatefulPartitionedCall:output:0dense_80_2147635dense_80_2147637*
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
E__inference_dense_80_layer_call_and_return_conditional_losses_21471762"
 dense_80/StatefulPartitionedCallº
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_2147640dense_81_2147642*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_21471982"
 dense_81/StatefulPartitionedCall
reshape_40/PartitionedCallPartitionedCall)dense_81/StatefulPartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_21472172
reshape_40/PartitionedCallÏ
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_66_2147628*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/mul¯
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_2147642*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mul
IdentityIdentity#reshape_40/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall0^dense_81/bias/Regularizer/Square/ReadVariableOp ^lstm_66/StatefulPartitionedCall>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp2B
lstm_66/StatefulPartitionedCalllstm_66/StatefulPartitionedCall2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
÷
.__inference_lstm_cell_66_layer_call_fn_2149699

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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_21462482
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

c
G__inference_reshape_40_layer_call_and_return_conditional_losses_2149665

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
¹
©
(sequential_27_lstm_66_while_body_2145975H
Dsequential_27_lstm_66_while_sequential_27_lstm_66_while_loop_counterN
Jsequential_27_lstm_66_while_sequential_27_lstm_66_while_maximum_iterations+
'sequential_27_lstm_66_while_placeholder-
)sequential_27_lstm_66_while_placeholder_1-
)sequential_27_lstm_66_while_placeholder_2-
)sequential_27_lstm_66_while_placeholder_3G
Csequential_27_lstm_66_while_sequential_27_lstm_66_strided_slice_1_0
sequential_27_lstm_66_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_66_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_27_lstm_66_while_lstm_cell_66_split_readvariableop_resource_0:	Y
Jsequential_27_lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0:	U
Bsequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource_0:	 (
$sequential_27_lstm_66_while_identity*
&sequential_27_lstm_66_while_identity_1*
&sequential_27_lstm_66_while_identity_2*
&sequential_27_lstm_66_while_identity_3*
&sequential_27_lstm_66_while_identity_4*
&sequential_27_lstm_66_while_identity_5E
Asequential_27_lstm_66_while_sequential_27_lstm_66_strided_slice_1
}sequential_27_lstm_66_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_66_tensorarrayunstack_tensorlistfromtensorY
Fsequential_27_lstm_66_while_lstm_cell_66_split_readvariableop_resource:	W
Hsequential_27_lstm_66_while_lstm_cell_66_split_1_readvariableop_resource:	S
@sequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource:	 ¢7sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp¢9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_1¢9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_2¢9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_3¢=sequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOp¢?sequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOpï
Msequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_27_lstm_66_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_66_tensorarrayunstack_tensorlistfromtensor_0'sequential_27_lstm_66_while_placeholderVsequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItemÍ
8sequential_27/lstm_66/while/lstm_cell_66/ones_like/ShapeShape)sequential_27_lstm_66_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_27/lstm_66/while/lstm_cell_66/ones_like/Shape¹
8sequential_27/lstm_66/while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_27/lstm_66/while/lstm_cell_66/ones_like/Const¨
2sequential_27/lstm_66/while/lstm_cell_66/ones_likeFillAsequential_27/lstm_66/while/lstm_cell_66/ones_like/Shape:output:0Asequential_27/lstm_66/while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_27/lstm_66/while/lstm_cell_66/ones_like¶
8sequential_27/lstm_66/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_27/lstm_66/while/lstm_cell_66/split/split_dim
=sequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOpReadVariableOpHsequential_27_lstm_66_while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02?
=sequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOpË
.sequential_27/lstm_66/while/lstm_cell_66/splitSplitAsequential_27/lstm_66/while/lstm_cell_66/split/split_dim:output:0Esequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_27/lstm_66/while/lstm_cell_66/split
/sequential_27/lstm_66/while/lstm_cell_66/MatMulMatMulFsequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_27/lstm_66/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_27/lstm_66/while/lstm_cell_66/MatMul£
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_1MatMulFsequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_27/lstm_66/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_1£
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_2MatMulFsequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_27/lstm_66/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_2£
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_3MatMulFsequential_27/lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_27/lstm_66/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_3º
:sequential_27/lstm_66/while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_27/lstm_66/while/lstm_cell_66/split_1/split_dim
?sequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOpReadVariableOpJsequential_27_lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02A
?sequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOpÃ
0sequential_27/lstm_66/while/lstm_cell_66/split_1SplitCsequential_27/lstm_66/while/lstm_cell_66/split_1/split_dim:output:0Gsequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_27/lstm_66/while/lstm_cell_66/split_1
0sequential_27/lstm_66/while/lstm_cell_66/BiasAddBiasAdd9sequential_27/lstm_66/while/lstm_cell_66/MatMul:product:09sequential_27/lstm_66/while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_27/lstm_66/while/lstm_cell_66/BiasAdd
2sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_1BiasAdd;sequential_27/lstm_66/while/lstm_cell_66/MatMul_1:product:09sequential_27/lstm_66/while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_1
2sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_2BiasAdd;sequential_27/lstm_66/while/lstm_cell_66/MatMul_2:product:09sequential_27/lstm_66/while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_2
2sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_3BiasAdd;sequential_27/lstm_66/while/lstm_cell_66/MatMul_3:product:09sequential_27/lstm_66/while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_3ý
,sequential_27/lstm_66/while/lstm_cell_66/mulMul)sequential_27_lstm_66_while_placeholder_2;sequential_27/lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/while/lstm_cell_66/mul
.sequential_27/lstm_66/while/lstm_cell_66/mul_1Mul)sequential_27_lstm_66_while_placeholder_2;sequential_27/lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/mul_1
.sequential_27/lstm_66/while/lstm_cell_66/mul_2Mul)sequential_27_lstm_66_while_placeholder_2;sequential_27/lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/mul_2
.sequential_27/lstm_66/while/lstm_cell_66/mul_3Mul)sequential_27_lstm_66_while_placeholder_2;sequential_27/lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/mul_3ö
7sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOpReadVariableOpBsequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype029
7sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOpÍ
<sequential_27/lstm_66/while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_27/lstm_66/while/lstm_cell_66/strided_slice/stackÑ
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack_1Ñ
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack_2ò
6sequential_27/lstm_66/while/lstm_cell_66/strided_sliceStridedSlice?sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp:value:0Esequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack:output:0Gsequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack_1:output:0Gsequential_27/lstm_66/while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_27/lstm_66/while/lstm_cell_66/strided_slice
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_4MatMul0sequential_27/lstm_66/while/lstm_cell_66/mul:z:0?sequential_27/lstm_66/while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_4
,sequential_27/lstm_66/while/lstm_cell_66/addAddV29sequential_27/lstm_66/while/lstm_cell_66/BiasAdd:output:0;sequential_27/lstm_66/while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/while/lstm_cell_66/addÓ
0sequential_27/lstm_66/while/lstm_cell_66/SigmoidSigmoid0sequential_27/lstm_66/while/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_27/lstm_66/while/lstm_cell_66/Sigmoidú
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_1ReadVariableOpBsequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_1Ñ
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stackÕ
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack_1Õ
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack_2þ
8sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1StridedSliceAsequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_1:value:0Gsequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack:output:0Isequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack_1:output:0Isequential_27/lstm_66/while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_27/lstm_66/while/lstm_cell_66/strided_slice_1
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_5MatMul2sequential_27/lstm_66/while/lstm_cell_66/mul_1:z:0Asequential_27/lstm_66/while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_5
.sequential_27/lstm_66/while/lstm_cell_66/add_1AddV2;sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_1:output:0;sequential_27/lstm_66/while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/add_1Ù
2sequential_27/lstm_66/while/lstm_cell_66/Sigmoid_1Sigmoid2sequential_27/lstm_66/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_27/lstm_66/while/lstm_cell_66/Sigmoid_1ü
.sequential_27/lstm_66/while/lstm_cell_66/mul_4Mul6sequential_27/lstm_66/while/lstm_cell_66/Sigmoid_1:y:0)sequential_27_lstm_66_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/mul_4ú
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_2ReadVariableOpBsequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_2Ñ
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stackÕ
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack_1Õ
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack_2þ
8sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2StridedSliceAsequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_2:value:0Gsequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack:output:0Isequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack_1:output:0Isequential_27/lstm_66/while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_27/lstm_66/while/lstm_cell_66/strided_slice_2
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_6MatMul2sequential_27/lstm_66/while/lstm_cell_66/mul_2:z:0Asequential_27/lstm_66/while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_6
.sequential_27/lstm_66/while/lstm_cell_66/add_2AddV2;sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_2:output:0;sequential_27/lstm_66/while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/add_2Ì
-sequential_27/lstm_66/while/lstm_cell_66/ReluRelu2sequential_27/lstm_66/while/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_27/lstm_66/while/lstm_cell_66/Relu
.sequential_27/lstm_66/while/lstm_cell_66/mul_5Mul4sequential_27/lstm_66/while/lstm_cell_66/Sigmoid:y:0;sequential_27/lstm_66/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/mul_5
.sequential_27/lstm_66/while/lstm_cell_66/add_3AddV22sequential_27/lstm_66/while/lstm_cell_66/mul_4:z:02sequential_27/lstm_66/while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/add_3ú
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_3ReadVariableOpBsequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_3Ñ
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stackÕ
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack_1Õ
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack_2þ
8sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3StridedSliceAsequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_3:value:0Gsequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack:output:0Isequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack_1:output:0Isequential_27/lstm_66/while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_27/lstm_66/while/lstm_cell_66/strided_slice_3
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_7MatMul2sequential_27/lstm_66/while/lstm_cell_66/mul_3:z:0Asequential_27/lstm_66/while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_27/lstm_66/while/lstm_cell_66/MatMul_7
.sequential_27/lstm_66/while/lstm_cell_66/add_4AddV2;sequential_27/lstm_66/while/lstm_cell_66/BiasAdd_3:output:0;sequential_27/lstm_66/while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/add_4Ù
2sequential_27/lstm_66/while/lstm_cell_66/Sigmoid_2Sigmoid2sequential_27/lstm_66/while/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_27/lstm_66/while/lstm_cell_66/Sigmoid_2Ð
/sequential_27/lstm_66/while/lstm_cell_66/Relu_1Relu2sequential_27/lstm_66/while/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_27/lstm_66/while/lstm_cell_66/Relu_1
.sequential_27/lstm_66/while/lstm_cell_66/mul_6Mul6sequential_27/lstm_66/while/lstm_cell_66/Sigmoid_2:y:0=sequential_27/lstm_66/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_27/lstm_66/while/lstm_cell_66/mul_6Î
@sequential_27/lstm_66/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_27_lstm_66_while_placeholder_1'sequential_27_lstm_66_while_placeholder2sequential_27/lstm_66/while/lstm_cell_66/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_27/lstm_66/while/TensorArrayV2Write/TensorListSetItem
!sequential_27/lstm_66/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_27/lstm_66/while/add/yÁ
sequential_27/lstm_66/while/addAddV2'sequential_27_lstm_66_while_placeholder*sequential_27/lstm_66/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_27/lstm_66/while/add
#sequential_27/lstm_66/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_27/lstm_66/while/add_1/yä
!sequential_27/lstm_66/while/add_1AddV2Dsequential_27_lstm_66_while_sequential_27_lstm_66_while_loop_counter,sequential_27/lstm_66/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_27/lstm_66/while/add_1Ã
$sequential_27/lstm_66/while/IdentityIdentity%sequential_27/lstm_66/while/add_1:z:0!^sequential_27/lstm_66/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_27/lstm_66/while/Identityì
&sequential_27/lstm_66/while/Identity_1IdentityJsequential_27_lstm_66_while_sequential_27_lstm_66_while_maximum_iterations!^sequential_27/lstm_66/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_27/lstm_66/while/Identity_1Å
&sequential_27/lstm_66/while/Identity_2Identity#sequential_27/lstm_66/while/add:z:0!^sequential_27/lstm_66/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_27/lstm_66/while/Identity_2ò
&sequential_27/lstm_66/while/Identity_3IdentityPsequential_27/lstm_66/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_27/lstm_66/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_27/lstm_66/while/Identity_3å
&sequential_27/lstm_66/while/Identity_4Identity2sequential_27/lstm_66/while/lstm_cell_66/mul_6:z:0!^sequential_27/lstm_66/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_27/lstm_66/while/Identity_4å
&sequential_27/lstm_66/while/Identity_5Identity2sequential_27/lstm_66/while/lstm_cell_66/add_3:z:0!^sequential_27/lstm_66/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_27/lstm_66/while/Identity_5ö
 sequential_27/lstm_66/while/NoOpNoOp8^sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp:^sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_1:^sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_2:^sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_3>^sequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOp@^sequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_27/lstm_66/while/NoOp"U
$sequential_27_lstm_66_while_identity-sequential_27/lstm_66/while/Identity:output:0"Y
&sequential_27_lstm_66_while_identity_1/sequential_27/lstm_66/while/Identity_1:output:0"Y
&sequential_27_lstm_66_while_identity_2/sequential_27/lstm_66/while/Identity_2:output:0"Y
&sequential_27_lstm_66_while_identity_3/sequential_27/lstm_66/while/Identity_3:output:0"Y
&sequential_27_lstm_66_while_identity_4/sequential_27/lstm_66/while/Identity_4:output:0"Y
&sequential_27_lstm_66_while_identity_5/sequential_27/lstm_66/while/Identity_5:output:0"
@sequential_27_lstm_66_while_lstm_cell_66_readvariableop_resourceBsequential_27_lstm_66_while_lstm_cell_66_readvariableop_resource_0"
Hsequential_27_lstm_66_while_lstm_cell_66_split_1_readvariableop_resourceJsequential_27_lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0"
Fsequential_27_lstm_66_while_lstm_cell_66_split_readvariableop_resourceHsequential_27_lstm_66_while_lstm_cell_66_split_readvariableop_resource_0"
Asequential_27_lstm_66_while_sequential_27_lstm_66_strided_slice_1Csequential_27_lstm_66_while_sequential_27_lstm_66_strided_slice_1_0"
}sequential_27_lstm_66_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_66_tensorarrayunstack_tensorlistfromtensorsequential_27_lstm_66_while_tensorarrayv2read_tensorlistgetitem_sequential_27_lstm_66_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2r
7sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp7sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp2v
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_19sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_12v
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_29sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_22v
9sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_39sequential_27/lstm_66/while/lstm_cell_66/ReadVariableOp_32~
=sequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOp=sequential_27/lstm_66/while/lstm_cell_66/split/ReadVariableOp2
?sequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOp?sequential_27/lstm_66/while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2148605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2148605___redundant_placeholder05
1while_while_cond_2148605___redundant_placeholder15
1while_while_cond_2148605___redundant_placeholder25
1while_while_cond_2148605___redundant_placeholder3
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
 __inference__traced_save_2150028
file_prefix.
*savev2_dense_80_kernel_read_readvariableop,
(savev2_dense_80_bias_read_readvariableop.
*savev2_dense_81_kernel_read_readvariableop,
(savev2_dense_81_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_66_lstm_cell_66_kernel_read_readvariableopD
@savev2_lstm_66_lstm_cell_66_recurrent_kernel_read_readvariableop8
4savev2_lstm_66_lstm_cell_66_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_80_kernel_m_read_readvariableop3
/savev2_adam_dense_80_bias_m_read_readvariableop5
1savev2_adam_dense_81_kernel_m_read_readvariableop3
/savev2_adam_dense_81_bias_m_read_readvariableopA
=savev2_adam_lstm_66_lstm_cell_66_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_66_lstm_cell_66_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_66_lstm_cell_66_bias_m_read_readvariableop5
1savev2_adam_dense_80_kernel_v_read_readvariableop3
/savev2_adam_dense_80_bias_v_read_readvariableop5
1savev2_adam_dense_81_kernel_v_read_readvariableop3
/savev2_adam_dense_81_bias_v_read_readvariableopA
=savev2_adam_lstm_66_lstm_cell_66_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_66_lstm_cell_66_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_66_lstm_cell_66_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_80_kernel_read_readvariableop(savev2_dense_80_bias_read_readvariableop*savev2_dense_81_kernel_read_readvariableop(savev2_dense_81_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_66_lstm_cell_66_kernel_read_readvariableop@savev2_lstm_66_lstm_cell_66_recurrent_kernel_read_readvariableop4savev2_lstm_66_lstm_cell_66_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_80_kernel_m_read_readvariableop/savev2_adam_dense_80_bias_m_read_readvariableop1savev2_adam_dense_81_kernel_m_read_readvariableop/savev2_adam_dense_81_bias_m_read_readvariableop=savev2_adam_lstm_66_lstm_cell_66_kernel_m_read_readvariableopGsavev2_adam_lstm_66_lstm_cell_66_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_66_lstm_cell_66_bias_m_read_readvariableop1savev2_adam_dense_80_kernel_v_read_readvariableop/savev2_adam_dense_80_bias_v_read_readvariableop1savev2_adam_dense_81_kernel_v_read_readvariableop/savev2_adam_dense_81_bias_v_read_readvariableop=savev2_adam_lstm_66_lstm_cell_66_kernel_v_read_readvariableopGsavev2_adam_lstm_66_lstm_cell_66_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_66_lstm_cell_66_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
À
¸
)__inference_lstm_66_layer_call_fn_2148463
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21463372
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
R
É
D__inference_lstm_66_layer_call_and_return_conditional_losses_2146634

inputs'
lstm_cell_66_2146546:	#
lstm_cell_66_2146548:	'
lstm_cell_66_2146550:	 
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_66/StatefulPartitionedCall¢whileD
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
$lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_66_2146546lstm_cell_66_2146548lstm_cell_66_2146550*
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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_21464812&
$lstm_cell_66/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_66_2146546lstm_cell_66_2146548lstm_cell_66_2146550*
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
while_body_2146559*
condR
while_cond_2146558*K
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_66_2146546*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_66/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_66/StatefulPartitionedCall$lstm_cell_66/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

c
G__inference_reshape_40_layer_call_and_return_conditional_losses_2147217

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
Ë

è
lstm_66_while_cond_2147949,
(lstm_66_while_lstm_66_while_loop_counter2
.lstm_66_while_lstm_66_while_maximum_iterations
lstm_66_while_placeholder
lstm_66_while_placeholder_1
lstm_66_while_placeholder_2
lstm_66_while_placeholder_3.
*lstm_66_while_less_lstm_66_strided_slice_1E
Alstm_66_while_lstm_66_while_cond_2147949___redundant_placeholder0E
Alstm_66_while_lstm_66_while_cond_2147949___redundant_placeholder1E
Alstm_66_while_lstm_66_while_cond_2147949___redundant_placeholder2E
Alstm_66_while_lstm_66_while_cond_2147949___redundant_placeholder3
lstm_66_while_identity

lstm_66/while/LessLesslstm_66_while_placeholder*lstm_66_while_less_lstm_66_strided_slice_1*
T0*
_output_shapes
: 2
lstm_66/while/Lessu
lstm_66/while/IdentityIdentitylstm_66/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_66/while/Identity"9
lstm_66_while_identitylstm_66/while/Identity:output:0*(
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
while_cond_2146558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2146558___redundant_placeholder05
1while_while_cond_2146558___redundant_placeholder15
1while_while_cond_2146558___redundant_placeholder25
1while_while_cond_2146558___redundant_placeholder3
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
°þ
	
"__inference__wrapped_model_2146124
input_28S
@sequential_27_lstm_66_lstm_cell_66_split_readvariableop_resource:	Q
Bsequential_27_lstm_66_lstm_cell_66_split_1_readvariableop_resource:	M
:sequential_27_lstm_66_lstm_cell_66_readvariableop_resource:	 G
5sequential_27_dense_80_matmul_readvariableop_resource:  D
6sequential_27_dense_80_biasadd_readvariableop_resource: G
5sequential_27_dense_81_matmul_readvariableop_resource: D
6sequential_27_dense_81_biasadd_readvariableop_resource:
identity¢-sequential_27/dense_80/BiasAdd/ReadVariableOp¢,sequential_27/dense_80/MatMul/ReadVariableOp¢-sequential_27/dense_81/BiasAdd/ReadVariableOp¢,sequential_27/dense_81/MatMul/ReadVariableOp¢1sequential_27/lstm_66/lstm_cell_66/ReadVariableOp¢3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_1¢3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_2¢3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_3¢7sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOp¢9sequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOp¢sequential_27/lstm_66/whiler
sequential_27/lstm_66/ShapeShapeinput_28*
T0*
_output_shapes
:2
sequential_27/lstm_66/Shape 
)sequential_27/lstm_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_27/lstm_66/strided_slice/stack¤
+sequential_27/lstm_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_27/lstm_66/strided_slice/stack_1¤
+sequential_27/lstm_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_27/lstm_66/strided_slice/stack_2æ
#sequential_27/lstm_66/strided_sliceStridedSlice$sequential_27/lstm_66/Shape:output:02sequential_27/lstm_66/strided_slice/stack:output:04sequential_27/lstm_66/strided_slice/stack_1:output:04sequential_27/lstm_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_27/lstm_66/strided_slice
!sequential_27/lstm_66/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_27/lstm_66/zeros/mul/yÄ
sequential_27/lstm_66/zeros/mulMul,sequential_27/lstm_66/strided_slice:output:0*sequential_27/lstm_66/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_27/lstm_66/zeros/mul
"sequential_27/lstm_66/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_27/lstm_66/zeros/Less/y¿
 sequential_27/lstm_66/zeros/LessLess#sequential_27/lstm_66/zeros/mul:z:0+sequential_27/lstm_66/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_27/lstm_66/zeros/Less
$sequential_27/lstm_66/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_27/lstm_66/zeros/packed/1Û
"sequential_27/lstm_66/zeros/packedPack,sequential_27/lstm_66/strided_slice:output:0-sequential_27/lstm_66/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_27/lstm_66/zeros/packed
!sequential_27/lstm_66/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_27/lstm_66/zeros/ConstÍ
sequential_27/lstm_66/zerosFill+sequential_27/lstm_66/zeros/packed:output:0*sequential_27/lstm_66/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_27/lstm_66/zeros
#sequential_27/lstm_66/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_27/lstm_66/zeros_1/mul/yÊ
!sequential_27/lstm_66/zeros_1/mulMul,sequential_27/lstm_66/strided_slice:output:0,sequential_27/lstm_66/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_27/lstm_66/zeros_1/mul
$sequential_27/lstm_66/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_27/lstm_66/zeros_1/Less/yÇ
"sequential_27/lstm_66/zeros_1/LessLess%sequential_27/lstm_66/zeros_1/mul:z:0-sequential_27/lstm_66/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_27/lstm_66/zeros_1/Less
&sequential_27/lstm_66/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_27/lstm_66/zeros_1/packed/1á
$sequential_27/lstm_66/zeros_1/packedPack,sequential_27/lstm_66/strided_slice:output:0/sequential_27/lstm_66/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_27/lstm_66/zeros_1/packed
#sequential_27/lstm_66/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_27/lstm_66/zeros_1/ConstÕ
sequential_27/lstm_66/zeros_1Fill-sequential_27/lstm_66/zeros_1/packed:output:0,sequential_27/lstm_66/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_27/lstm_66/zeros_1¡
$sequential_27/lstm_66/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_27/lstm_66/transpose/perm¾
sequential_27/lstm_66/transpose	Transposeinput_28-sequential_27/lstm_66/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_27/lstm_66/transpose
sequential_27/lstm_66/Shape_1Shape#sequential_27/lstm_66/transpose:y:0*
T0*
_output_shapes
:2
sequential_27/lstm_66/Shape_1¤
+sequential_27/lstm_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_27/lstm_66/strided_slice_1/stack¨
-sequential_27/lstm_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_27/lstm_66/strided_slice_1/stack_1¨
-sequential_27/lstm_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_27/lstm_66/strided_slice_1/stack_2ò
%sequential_27/lstm_66/strided_slice_1StridedSlice&sequential_27/lstm_66/Shape_1:output:04sequential_27/lstm_66/strided_slice_1/stack:output:06sequential_27/lstm_66/strided_slice_1/stack_1:output:06sequential_27/lstm_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_27/lstm_66/strided_slice_1±
1sequential_27/lstm_66/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_27/lstm_66/TensorArrayV2/element_shape
#sequential_27/lstm_66/TensorArrayV2TensorListReserve:sequential_27/lstm_66/TensorArrayV2/element_shape:output:0.sequential_27/lstm_66/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_27/lstm_66/TensorArrayV2ë
Ksequential_27/lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_27/lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_27/lstm_66/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_27/lstm_66/transpose:y:0Tsequential_27/lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_27/lstm_66/TensorArrayUnstack/TensorListFromTensor¤
+sequential_27/lstm_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_27/lstm_66/strided_slice_2/stack¨
-sequential_27/lstm_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_27/lstm_66/strided_slice_2/stack_1¨
-sequential_27/lstm_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_27/lstm_66/strided_slice_2/stack_2
%sequential_27/lstm_66/strided_slice_2StridedSlice#sequential_27/lstm_66/transpose:y:04sequential_27/lstm_66/strided_slice_2/stack:output:06sequential_27/lstm_66/strided_slice_2/stack_1:output:06sequential_27/lstm_66/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_27/lstm_66/strided_slice_2¼
2sequential_27/lstm_66/lstm_cell_66/ones_like/ShapeShape$sequential_27/lstm_66/zeros:output:0*
T0*
_output_shapes
:24
2sequential_27/lstm_66/lstm_cell_66/ones_like/Shape­
2sequential_27/lstm_66/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2sequential_27/lstm_66/lstm_cell_66/ones_like/Const
,sequential_27/lstm_66/lstm_cell_66/ones_likeFill;sequential_27/lstm_66/lstm_cell_66/ones_like/Shape:output:0;sequential_27/lstm_66/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/lstm_cell_66/ones_likeª
2sequential_27/lstm_66/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_27/lstm_66/lstm_cell_66/split/split_dimô
7sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOpReadVariableOp@sequential_27_lstm_66_lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype029
7sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOp³
(sequential_27/lstm_66/lstm_cell_66/splitSplit;sequential_27/lstm_66/lstm_cell_66/split/split_dim:output:0?sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_27/lstm_66/lstm_cell_66/splitõ
)sequential_27/lstm_66/lstm_cell_66/MatMulMatMul.sequential_27/lstm_66/strided_slice_2:output:01sequential_27/lstm_66/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_27/lstm_66/lstm_cell_66/MatMulù
+sequential_27/lstm_66/lstm_cell_66/MatMul_1MatMul.sequential_27/lstm_66/strided_slice_2:output:01sequential_27/lstm_66/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_1ù
+sequential_27/lstm_66/lstm_cell_66/MatMul_2MatMul.sequential_27/lstm_66/strided_slice_2:output:01sequential_27/lstm_66/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_2ù
+sequential_27/lstm_66/lstm_cell_66/MatMul_3MatMul.sequential_27/lstm_66/strided_slice_2:output:01sequential_27/lstm_66/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_3®
4sequential_27/lstm_66/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_27/lstm_66/lstm_cell_66/split_1/split_dimö
9sequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOpReadVariableOpBsequential_27_lstm_66_lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02;
9sequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOp«
*sequential_27/lstm_66/lstm_cell_66/split_1Split=sequential_27/lstm_66/lstm_cell_66/split_1/split_dim:output:0Asequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_27/lstm_66/lstm_cell_66/split_1ÿ
*sequential_27/lstm_66/lstm_cell_66/BiasAddBiasAdd3sequential_27/lstm_66/lstm_cell_66/MatMul:product:03sequential_27/lstm_66/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_27/lstm_66/lstm_cell_66/BiasAdd
,sequential_27/lstm_66/lstm_cell_66/BiasAdd_1BiasAdd5sequential_27/lstm_66/lstm_cell_66/MatMul_1:product:03sequential_27/lstm_66/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/lstm_cell_66/BiasAdd_1
,sequential_27/lstm_66/lstm_cell_66/BiasAdd_2BiasAdd5sequential_27/lstm_66/lstm_cell_66/MatMul_2:product:03sequential_27/lstm_66/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/lstm_cell_66/BiasAdd_2
,sequential_27/lstm_66/lstm_cell_66/BiasAdd_3BiasAdd5sequential_27/lstm_66/lstm_cell_66/MatMul_3:product:03sequential_27/lstm_66/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/lstm_cell_66/BiasAdd_3æ
&sequential_27/lstm_66/lstm_cell_66/mulMul$sequential_27/lstm_66/zeros:output:05sequential_27/lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_27/lstm_66/lstm_cell_66/mulê
(sequential_27/lstm_66/lstm_cell_66/mul_1Mul$sequential_27/lstm_66/zeros:output:05sequential_27/lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/mul_1ê
(sequential_27/lstm_66/lstm_cell_66/mul_2Mul$sequential_27/lstm_66/zeros:output:05sequential_27/lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/mul_2ê
(sequential_27/lstm_66/lstm_cell_66/mul_3Mul$sequential_27/lstm_66/zeros:output:05sequential_27/lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/mul_3â
1sequential_27/lstm_66/lstm_cell_66/ReadVariableOpReadVariableOp:sequential_27_lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype023
1sequential_27/lstm_66/lstm_cell_66/ReadVariableOpÁ
6sequential_27/lstm_66/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_27/lstm_66/lstm_cell_66/strided_slice/stackÅ
8sequential_27/lstm_66/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_27/lstm_66/lstm_cell_66/strided_slice/stack_1Å
8sequential_27/lstm_66/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_27/lstm_66/lstm_cell_66/strided_slice/stack_2Î
0sequential_27/lstm_66/lstm_cell_66/strided_sliceStridedSlice9sequential_27/lstm_66/lstm_cell_66/ReadVariableOp:value:0?sequential_27/lstm_66/lstm_cell_66/strided_slice/stack:output:0Asequential_27/lstm_66/lstm_cell_66/strided_slice/stack_1:output:0Asequential_27/lstm_66/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_27/lstm_66/lstm_cell_66/strided_sliceý
+sequential_27/lstm_66/lstm_cell_66/MatMul_4MatMul*sequential_27/lstm_66/lstm_cell_66/mul:z:09sequential_27/lstm_66/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_4÷
&sequential_27/lstm_66/lstm_cell_66/addAddV23sequential_27/lstm_66/lstm_cell_66/BiasAdd:output:05sequential_27/lstm_66/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_27/lstm_66/lstm_cell_66/addÁ
*sequential_27/lstm_66/lstm_cell_66/SigmoidSigmoid*sequential_27/lstm_66/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_27/lstm_66/lstm_cell_66/Sigmoidæ
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_1ReadVariableOp:sequential_27_lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_1Å
8sequential_27/lstm_66/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_27/lstm_66/lstm_cell_66/strided_slice_1/stackÉ
:sequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack_1É
:sequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack_2Ú
2sequential_27/lstm_66/lstm_cell_66/strided_slice_1StridedSlice;sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_1:value:0Asequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack:output:0Csequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack_1:output:0Csequential_27/lstm_66/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_27/lstm_66/lstm_cell_66/strided_slice_1
+sequential_27/lstm_66/lstm_cell_66/MatMul_5MatMul,sequential_27/lstm_66/lstm_cell_66/mul_1:z:0;sequential_27/lstm_66/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_5ý
(sequential_27/lstm_66/lstm_cell_66/add_1AddV25sequential_27/lstm_66/lstm_cell_66/BiasAdd_1:output:05sequential_27/lstm_66/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/add_1Ç
,sequential_27/lstm_66/lstm_cell_66/Sigmoid_1Sigmoid,sequential_27/lstm_66/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/lstm_cell_66/Sigmoid_1ç
(sequential_27/lstm_66/lstm_cell_66/mul_4Mul0sequential_27/lstm_66/lstm_cell_66/Sigmoid_1:y:0&sequential_27/lstm_66/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/mul_4æ
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_2ReadVariableOp:sequential_27_lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_2Å
8sequential_27/lstm_66/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_27/lstm_66/lstm_cell_66/strided_slice_2/stackÉ
:sequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack_1É
:sequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack_2Ú
2sequential_27/lstm_66/lstm_cell_66/strided_slice_2StridedSlice;sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_2:value:0Asequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack:output:0Csequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack_1:output:0Csequential_27/lstm_66/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_27/lstm_66/lstm_cell_66/strided_slice_2
+sequential_27/lstm_66/lstm_cell_66/MatMul_6MatMul,sequential_27/lstm_66/lstm_cell_66/mul_2:z:0;sequential_27/lstm_66/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_6ý
(sequential_27/lstm_66/lstm_cell_66/add_2AddV25sequential_27/lstm_66/lstm_cell_66/BiasAdd_2:output:05sequential_27/lstm_66/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/add_2º
'sequential_27/lstm_66/lstm_cell_66/ReluRelu,sequential_27/lstm_66/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_27/lstm_66/lstm_cell_66/Reluô
(sequential_27/lstm_66/lstm_cell_66/mul_5Mul.sequential_27/lstm_66/lstm_cell_66/Sigmoid:y:05sequential_27/lstm_66/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/mul_5ë
(sequential_27/lstm_66/lstm_cell_66/add_3AddV2,sequential_27/lstm_66/lstm_cell_66/mul_4:z:0,sequential_27/lstm_66/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/add_3æ
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_3ReadVariableOp:sequential_27_lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_3Å
8sequential_27/lstm_66/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_27/lstm_66/lstm_cell_66/strided_slice_3/stackÉ
:sequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack_1É
:sequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack_2Ú
2sequential_27/lstm_66/lstm_cell_66/strided_slice_3StridedSlice;sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_3:value:0Asequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack:output:0Csequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack_1:output:0Csequential_27/lstm_66/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_27/lstm_66/lstm_cell_66/strided_slice_3
+sequential_27/lstm_66/lstm_cell_66/MatMul_7MatMul,sequential_27/lstm_66/lstm_cell_66/mul_3:z:0;sequential_27/lstm_66/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_27/lstm_66/lstm_cell_66/MatMul_7ý
(sequential_27/lstm_66/lstm_cell_66/add_4AddV25sequential_27/lstm_66/lstm_cell_66/BiasAdd_3:output:05sequential_27/lstm_66/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/add_4Ç
,sequential_27/lstm_66/lstm_cell_66/Sigmoid_2Sigmoid,sequential_27/lstm_66/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_27/lstm_66/lstm_cell_66/Sigmoid_2¾
)sequential_27/lstm_66/lstm_cell_66/Relu_1Relu,sequential_27/lstm_66/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_27/lstm_66/lstm_cell_66/Relu_1ø
(sequential_27/lstm_66/lstm_cell_66/mul_6Mul0sequential_27/lstm_66/lstm_cell_66/Sigmoid_2:y:07sequential_27/lstm_66/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_27/lstm_66/lstm_cell_66/mul_6»
3sequential_27/lstm_66/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    25
3sequential_27/lstm_66/TensorArrayV2_1/element_shape
%sequential_27/lstm_66/TensorArrayV2_1TensorListReserve<sequential_27/lstm_66/TensorArrayV2_1/element_shape:output:0.sequential_27/lstm_66/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_27/lstm_66/TensorArrayV2_1z
sequential_27/lstm_66/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_27/lstm_66/time«
.sequential_27/lstm_66/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_27/lstm_66/while/maximum_iterations
(sequential_27/lstm_66/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_27/lstm_66/while/loop_counterÍ
sequential_27/lstm_66/whileWhile1sequential_27/lstm_66/while/loop_counter:output:07sequential_27/lstm_66/while/maximum_iterations:output:0#sequential_27/lstm_66/time:output:0.sequential_27/lstm_66/TensorArrayV2_1:handle:0$sequential_27/lstm_66/zeros:output:0&sequential_27/lstm_66/zeros_1:output:0.sequential_27/lstm_66/strided_slice_1:output:0Msequential_27/lstm_66/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_27_lstm_66_lstm_cell_66_split_readvariableop_resourceBsequential_27_lstm_66_lstm_cell_66_split_1_readvariableop_resource:sequential_27_lstm_66_lstm_cell_66_readvariableop_resource*
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
(sequential_27_lstm_66_while_body_2145975*4
cond,R*
(sequential_27_lstm_66_while_cond_2145974*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_27/lstm_66/whileá
Fsequential_27/lstm_66/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2H
Fsequential_27/lstm_66/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_27/lstm_66/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_27/lstm_66/while:output:3Osequential_27/lstm_66/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02:
8sequential_27/lstm_66/TensorArrayV2Stack/TensorListStack­
+sequential_27/lstm_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_27/lstm_66/strided_slice_3/stack¨
-sequential_27/lstm_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_27/lstm_66/strided_slice_3/stack_1¨
-sequential_27/lstm_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_27/lstm_66/strided_slice_3/stack_2
%sequential_27/lstm_66/strided_slice_3StridedSliceAsequential_27/lstm_66/TensorArrayV2Stack/TensorListStack:tensor:04sequential_27/lstm_66/strided_slice_3/stack:output:06sequential_27/lstm_66/strided_slice_3/stack_1:output:06sequential_27/lstm_66/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2'
%sequential_27/lstm_66/strided_slice_3¥
&sequential_27/lstm_66/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_27/lstm_66/transpose_1/permý
!sequential_27/lstm_66/transpose_1	TransposeAsequential_27/lstm_66/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_27/lstm_66/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!sequential_27/lstm_66/transpose_1
sequential_27/lstm_66/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_27/lstm_66/runtimeÒ
,sequential_27/dense_80/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_80_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_27/dense_80/MatMul/ReadVariableOpà
sequential_27/dense_80/MatMulMatMul.sequential_27/lstm_66/strided_slice_3:output:04sequential_27/dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_27/dense_80/MatMulÑ
-sequential_27/dense_80/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_27/dense_80/BiasAdd/ReadVariableOpÝ
sequential_27/dense_80/BiasAddBiasAdd'sequential_27/dense_80/MatMul:product:05sequential_27/dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_27/dense_80/BiasAdd
sequential_27/dense_80/ReluRelu'sequential_27/dense_80/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_27/dense_80/ReluÒ
,sequential_27/dense_81/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_81_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_27/dense_81/MatMul/ReadVariableOpÛ
sequential_27/dense_81/MatMulMatMul)sequential_27/dense_80/Relu:activations:04sequential_27/dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_27/dense_81/MatMulÑ
-sequential_27/dense_81/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_27/dense_81/BiasAdd/ReadVariableOpÝ
sequential_27/dense_81/BiasAddBiasAdd'sequential_27/dense_81/MatMul:product:05sequential_27/dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_27/dense_81/BiasAdd
sequential_27/reshape_40/ShapeShape'sequential_27/dense_81/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_27/reshape_40/Shape¦
,sequential_27/reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_27/reshape_40/strided_slice/stackª
.sequential_27/reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_40/strided_slice/stack_1ª
.sequential_27/reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_40/strided_slice/stack_2ø
&sequential_27/reshape_40/strided_sliceStridedSlice'sequential_27/reshape_40/Shape:output:05sequential_27/reshape_40/strided_slice/stack:output:07sequential_27/reshape_40/strided_slice/stack_1:output:07sequential_27/reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_27/reshape_40/strided_slice
(sequential_27/reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_40/Reshape/shape/1
(sequential_27/reshape_40/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_40/Reshape/shape/2
&sequential_27/reshape_40/Reshape/shapePack/sequential_27/reshape_40/strided_slice:output:01sequential_27/reshape_40/Reshape/shape/1:output:01sequential_27/reshape_40/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_27/reshape_40/Reshape/shapeß
 sequential_27/reshape_40/ReshapeReshape'sequential_27/dense_81/BiasAdd:output:0/sequential_27/reshape_40/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_27/reshape_40/Reshape
IdentityIdentity)sequential_27/reshape_40/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp.^sequential_27/dense_80/BiasAdd/ReadVariableOp-^sequential_27/dense_80/MatMul/ReadVariableOp.^sequential_27/dense_81/BiasAdd/ReadVariableOp-^sequential_27/dense_81/MatMul/ReadVariableOp2^sequential_27/lstm_66/lstm_cell_66/ReadVariableOp4^sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_14^sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_24^sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_38^sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOp:^sequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOp^sequential_27/lstm_66/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2^
-sequential_27/dense_80/BiasAdd/ReadVariableOp-sequential_27/dense_80/BiasAdd/ReadVariableOp2\
,sequential_27/dense_80/MatMul/ReadVariableOp,sequential_27/dense_80/MatMul/ReadVariableOp2^
-sequential_27/dense_81/BiasAdd/ReadVariableOp-sequential_27/dense_81/BiasAdd/ReadVariableOp2\
,sequential_27/dense_81/MatMul/ReadVariableOp,sequential_27/dense_81/MatMul/ReadVariableOp2f
1sequential_27/lstm_66/lstm_cell_66/ReadVariableOp1sequential_27/lstm_66/lstm_cell_66/ReadVariableOp2j
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_13sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_12j
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_23sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_22j
3sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_33sequential_27/lstm_66/lstm_cell_66/ReadVariableOp_32r
7sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOp7sequential_27/lstm_66/lstm_cell_66/split/ReadVariableOp2v
9sequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOp9sequential_27/lstm_66/lstm_cell_66/split_1/ReadVariableOp2:
sequential_27/lstm_66/whilesequential_27/lstm_66/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_28
í
¨
E__inference_dense_81_layer_call_and_return_conditional_losses_2149647

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_81/bias/Regularizer/Square/ReadVariableOp
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
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_81/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ú
È
while_cond_2147429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2147429___redundant_placeholder05
1while_while_cond_2147429___redundant_placeholder15
1while_while_cond_2147429___redundant_placeholder25
1while_while_cond_2147429___redundant_placeholder3
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
while_body_2146262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_66_2146286_0:	+
while_lstm_cell_66_2146288_0:	/
while_lstm_cell_66_2146290_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_66_2146286:	)
while_lstm_cell_66_2146288:	-
while_lstm_cell_66_2146290:	 ¢*while/lstm_cell_66/StatefulPartitionedCallÃ
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
*while/lstm_cell_66/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_66_2146286_0while_lstm_cell_66_2146288_0while_lstm_cell_66_2146290_0*
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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_21462482,
*while/lstm_cell_66/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_66/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_66/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_66/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_66/StatefulPartitionedCall*"
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
while_lstm_cell_66_2146286while_lstm_cell_66_2146286_0":
while_lstm_cell_66_2146288while_lstm_cell_66_2146288_0":
while_lstm_cell_66_2146290while_lstm_cell_66_2146290_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_66/StatefulPartitionedCall*while/lstm_cell_66/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147763
input_28"
lstm_66_2147732:	
lstm_66_2147734:	"
lstm_66_2147736:	 "
dense_80_2147739:  
dense_80_2147741: "
dense_81_2147744: 
dense_81_2147746:
identity¢ dense_80/StatefulPartitionedCall¢ dense_81/StatefulPartitionedCall¢/dense_81/bias/Regularizer/Square/ReadVariableOp¢lstm_66/StatefulPartitionedCall¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp§
lstm_66/StatefulPartitionedCallStatefulPartitionedCallinput_28lstm_66_2147732lstm_66_2147734lstm_66_2147736*
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21475952!
lstm_66/StatefulPartitionedCall¹
 dense_80/StatefulPartitionedCallStatefulPartitionedCall(lstm_66/StatefulPartitionedCall:output:0dense_80_2147739dense_80_2147741*
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
E__inference_dense_80_layer_call_and_return_conditional_losses_21471762"
 dense_80/StatefulPartitionedCallº
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_2147744dense_81_2147746*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_21471982"
 dense_81/StatefulPartitionedCall
reshape_40/PartitionedCallPartitionedCall)dense_81/StatefulPartitionedCall:output:0*
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_21472172
reshape_40/PartitionedCallÏ
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_66_2147732*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/mul¯
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_2147746*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mul
IdentityIdentity#reshape_40/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_80/StatefulPartitionedCall!^dense_81/StatefulPartitionedCall0^dense_81/bias/Regularizer/Square/ReadVariableOp ^lstm_66/StatefulPartitionedCall>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp2B
lstm_66/StatefulPartitionedCalllstm_66/StatefulPartitionedCall2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_28
¨
¶
)__inference_lstm_66_layer_call_fn_2148485

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
D__inference_lstm_66_layer_call_and_return_conditional_losses_21471572
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
Ê
H
,__inference_reshape_40_layer_call_fn_2149652

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
G__inference_reshape_40_layer_call_and_return_conditional_losses_21472172
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
÷
ª
__inference_loss_fn_0_2149676F
8dense_81_bias_regularizer_square_readvariableop_resource:
identity¢/dense_81/bias/Regularizer/Square/ReadVariableOp×
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_81_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mulk
IdentityIdentity!dense_81/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp0^dense_81/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp
ÏR
ê
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2146248

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2,
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
ä	
¨
/__inference_sequential_27_layer_call_fn_2147821

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
J__inference_sequential_27_layer_call_and_return_conditional_losses_21472322
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
while_cond_2147023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2147023___redundant_placeholder05
1while_while_cond_2147023___redundant_placeholder15
1while_while_cond_2147023___redundant_placeholder25
1while_while_cond_2147023___redundant_placeholder3
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
û²
¥	
while_body_2148881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_66_split_readvariableop_resource_0:	C
4while_lstm_cell_66_split_1_readvariableop_resource_0:	?
,while_lstm_cell_66_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_66_split_readvariableop_resource:	A
2while_lstm_cell_66_split_1_readvariableop_resource:	=
*while_lstm_cell_66_readvariableop_resource:	 ¢!while/lstm_cell_66/ReadVariableOp¢#while/lstm_cell_66/ReadVariableOp_1¢#while/lstm_cell_66/ReadVariableOp_2¢#while/lstm_cell_66/ReadVariableOp_3¢'while/lstm_cell_66/split/ReadVariableOp¢)while/lstm_cell_66/split_1/ReadVariableOpÃ
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
"while/lstm_cell_66/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_66/ones_like/Shape
"while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_66/ones_like/ConstÐ
while/lstm_cell_66/ones_likeFill+while/lstm_cell_66/ones_like/Shape:output:0+while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/ones_like
 while/lstm_cell_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_66/dropout/ConstË
while/lstm_cell_66/dropout/MulMul%while/lstm_cell_66/ones_like:output:0)while/lstm_cell_66/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_66/dropout/Mul
 while/lstm_cell_66/dropout/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_66/dropout/Shape
7while/lstm_cell_66/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_66/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2è29
7while/lstm_cell_66/dropout/random_uniform/RandomUniform
)while/lstm_cell_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_66/dropout/GreaterEqual/y
'while/lstm_cell_66/dropout/GreaterEqualGreaterEqual@while/lstm_cell_66/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_66/dropout/GreaterEqual¸
while/lstm_cell_66/dropout/CastCast+while/lstm_cell_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_66/dropout/CastÆ
 while/lstm_cell_66/dropout/Mul_1Mul"while/lstm_cell_66/dropout/Mul:z:0#while/lstm_cell_66/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout/Mul_1
"while/lstm_cell_66/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_1/ConstÑ
 while/lstm_cell_66/dropout_1/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_1/Mul
"while/lstm_cell_66/dropout_1/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_1/Shape
9while/lstm_cell_66/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2éþô2;
9while/lstm_cell_66/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_1/GreaterEqual/y
)while/lstm_cell_66/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_1/GreaterEqual¾
!while/lstm_cell_66/dropout_1/CastCast-while/lstm_cell_66/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_1/CastÎ
"while/lstm_cell_66/dropout_1/Mul_1Mul$while/lstm_cell_66/dropout_1/Mul:z:0%while/lstm_cell_66/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_1/Mul_1
"while/lstm_cell_66/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_2/ConstÑ
 while/lstm_cell_66/dropout_2/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_2/Mul
"while/lstm_cell_66/dropout_2/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_2/Shape
9while/lstm_cell_66/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÑÃÉ2;
9while/lstm_cell_66/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_2/GreaterEqual/y
)while/lstm_cell_66/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_2/GreaterEqual¾
!while/lstm_cell_66/dropout_2/CastCast-while/lstm_cell_66/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_2/CastÎ
"while/lstm_cell_66/dropout_2/Mul_1Mul$while/lstm_cell_66/dropout_2/Mul:z:0%while/lstm_cell_66/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_2/Mul_1
"while/lstm_cell_66/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_66/dropout_3/ConstÑ
 while/lstm_cell_66/dropout_3/MulMul%while/lstm_cell_66/ones_like:output:0+while/lstm_cell_66/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_66/dropout_3/Mul
"while/lstm_cell_66/dropout_3/ShapeShape%while/lstm_cell_66/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_66/dropout_3/Shape
9while/lstm_cell_66/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_66/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Â2;
9while/lstm_cell_66/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_66/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_66/dropout_3/GreaterEqual/y
)while/lstm_cell_66/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_66/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_66/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_66/dropout_3/GreaterEqual¾
!while/lstm_cell_66/dropout_3/CastCast-while/lstm_cell_66/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_66/dropout_3/CastÎ
"while/lstm_cell_66/dropout_3/Mul_1Mul$while/lstm_cell_66/dropout_3/Mul:z:0%while/lstm_cell_66/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_66/dropout_3/Mul_1
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimÆ
'while/lstm_cell_66/split/ReadVariableOpReadVariableOp2while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_66/split/ReadVariableOpó
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_66/splitÇ
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMulË
while/lstm_cell_66/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_1Ë
while/lstm_cell_66/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_2Ë
while/lstm_cell_66/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_3
$while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_66/split_1/split_dimÈ
)while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_66/split_1/ReadVariableOpë
while/lstm_cell_66/split_1Split-while/lstm_cell_66/split_1/split_dim:output:01while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_66/split_1¿
while/lstm_cell_66/BiasAddBiasAdd#while/lstm_cell_66/MatMul:product:0#while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAddÅ
while/lstm_cell_66/BiasAdd_1BiasAdd%while/lstm_cell_66/MatMul_1:product:0#while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_1Å
while/lstm_cell_66/BiasAdd_2BiasAdd%while/lstm_cell_66/MatMul_2:product:0#while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_2Å
while/lstm_cell_66/BiasAdd_3BiasAdd%while/lstm_cell_66/MatMul_3:product:0#while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_3¤
while/lstm_cell_66/mulMulwhile_placeholder_2$while/lstm_cell_66/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mulª
while/lstm_cell_66/mul_1Mulwhile_placeholder_2&while/lstm_cell_66/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_1ª
while/lstm_cell_66/mul_2Mulwhile_placeholder_2&while/lstm_cell_66/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_2ª
while/lstm_cell_66/mul_3Mulwhile_placeholder_2&while/lstm_cell_66/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_3´
!while/lstm_cell_66/ReadVariableOpReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_66/ReadVariableOp¡
&while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_66/strided_slice/stack¥
(while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice/stack_1¥
(while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_66/strided_slice/stack_2î
 while/lstm_cell_66/strided_sliceStridedSlice)while/lstm_cell_66/ReadVariableOp:value:0/while/lstm_cell_66/strided_slice/stack:output:01while/lstm_cell_66/strided_slice/stack_1:output:01while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_66/strided_slice½
while/lstm_cell_66/MatMul_4MatMulwhile/lstm_cell_66/mul:z:0)while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_4·
while/lstm_cell_66/addAddV2#while/lstm_cell_66/BiasAdd:output:0%while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add
while/lstm_cell_66/SigmoidSigmoidwhile/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid¸
#while/lstm_cell_66/ReadVariableOp_1ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_1¥
(while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice_1/stack©
*while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_66/strided_slice_1/stack_1©
*while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_1/stack_2ú
"while/lstm_cell_66/strided_slice_1StridedSlice+while/lstm_cell_66/ReadVariableOp_1:value:01while/lstm_cell_66/strided_slice_1/stack:output:03while/lstm_cell_66/strided_slice_1/stack_1:output:03while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_1Á
while/lstm_cell_66/MatMul_5MatMulwhile/lstm_cell_66/mul_1:z:0+while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_5½
while/lstm_cell_66/add_1AddV2%while/lstm_cell_66/BiasAdd_1:output:0%while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_1
while/lstm_cell_66/Sigmoid_1Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_1¤
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_4¸
#while/lstm_cell_66/ReadVariableOp_2ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_2¥
(while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_66/strided_slice_2/stack©
*while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_66/strided_slice_2/stack_1©
*while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_2/stack_2ú
"while/lstm_cell_66/strided_slice_2StridedSlice+while/lstm_cell_66/ReadVariableOp_2:value:01while/lstm_cell_66/strided_slice_2/stack:output:03while/lstm_cell_66/strided_slice_2/stack_1:output:03while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_2Á
while/lstm_cell_66/MatMul_6MatMulwhile/lstm_cell_66/mul_2:z:0+while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_6½
while/lstm_cell_66/add_2AddV2%while/lstm_cell_66/BiasAdd_2:output:0%while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_2
while/lstm_cell_66/ReluReluwhile/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu´
while/lstm_cell_66/mul_5Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_5«
while/lstm_cell_66/add_3AddV2while/lstm_cell_66/mul_4:z:0while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_3¸
#while/lstm_cell_66/ReadVariableOp_3ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_3¥
(while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_66/strided_slice_3/stack©
*while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_66/strided_slice_3/stack_1©
*while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_3/stack_2ú
"while/lstm_cell_66/strided_slice_3StridedSlice+while/lstm_cell_66/ReadVariableOp_3:value:01while/lstm_cell_66/strided_slice_3/stack:output:03while/lstm_cell_66/strided_slice_3/stack_1:output:03while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_3Á
while/lstm_cell_66/MatMul_7MatMulwhile/lstm_cell_66/mul_3:z:0+while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_7½
while/lstm_cell_66/add_4AddV2%while/lstm_cell_66/BiasAdd_3:output:0%while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_4
while/lstm_cell_66/Sigmoid_2Sigmoidwhile/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_2
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu_1¸
while/lstm_cell_66/mul_6Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_66/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_66/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_66/ReadVariableOp$^while/lstm_cell_66/ReadVariableOp_1$^while/lstm_cell_66/ReadVariableOp_2$^while/lstm_cell_66/ReadVariableOp_3(^while/lstm_cell_66/split/ReadVariableOp*^while/lstm_cell_66/split_1/ReadVariableOp*"
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
*while_lstm_cell_66_readvariableop_resource,while_lstm_cell_66_readvariableop_resource_0"j
2while_lstm_cell_66_split_1_readvariableop_resource4while_lstm_cell_66_split_1_readvariableop_resource_0"f
0while_lstm_cell_66_split_readvariableop_resource2while_lstm_cell_66_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_66/ReadVariableOp!while/lstm_cell_66/ReadVariableOp2J
#while/lstm_cell_66/ReadVariableOp_1#while/lstm_cell_66/ReadVariableOp_12J
#while/lstm_cell_66/ReadVariableOp_2#while/lstm_cell_66/ReadVariableOp_22J
#while/lstm_cell_66/ReadVariableOp_3#while/lstm_cell_66/ReadVariableOp_32R
'while/lstm_cell_66/split/ReadVariableOp'while/lstm_cell_66/split/ReadVariableOp2V
)while/lstm_cell_66/split_1/ReadVariableOp)while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
¨v
ê
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2146481

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
seed2¨2&
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
seed2Ú2(
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
seed2Û«2(
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
seed2²Âÿ2(
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2,
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
ý
½
lstm_66_while_body_2147950,
(lstm_66_while_lstm_66_while_loop_counter2
.lstm_66_while_lstm_66_while_maximum_iterations
lstm_66_while_placeholder
lstm_66_while_placeholder_1
lstm_66_while_placeholder_2
lstm_66_while_placeholder_3+
'lstm_66_while_lstm_66_strided_slice_1_0g
clstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_66_while_lstm_cell_66_split_readvariableop_resource_0:	K
<lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0:	G
4lstm_66_while_lstm_cell_66_readvariableop_resource_0:	 
lstm_66_while_identity
lstm_66_while_identity_1
lstm_66_while_identity_2
lstm_66_while_identity_3
lstm_66_while_identity_4
lstm_66_while_identity_5)
%lstm_66_while_lstm_66_strided_slice_1e
alstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensorK
8lstm_66_while_lstm_cell_66_split_readvariableop_resource:	I
:lstm_66_while_lstm_cell_66_split_1_readvariableop_resource:	E
2lstm_66_while_lstm_cell_66_readvariableop_resource:	 ¢)lstm_66/while/lstm_cell_66/ReadVariableOp¢+lstm_66/while/lstm_cell_66/ReadVariableOp_1¢+lstm_66/while/lstm_cell_66/ReadVariableOp_2¢+lstm_66/while/lstm_cell_66/ReadVariableOp_3¢/lstm_66/while/lstm_cell_66/split/ReadVariableOp¢1lstm_66/while/lstm_cell_66/split_1/ReadVariableOpÓ
?lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_66/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensor_0lstm_66_while_placeholderHlstm_66/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_66/while/TensorArrayV2Read/TensorListGetItem£
*lstm_66/while/lstm_cell_66/ones_like/ShapeShapelstm_66_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_66/while/lstm_cell_66/ones_like/Shape
*lstm_66/while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_66/while/lstm_cell_66/ones_like/Constð
$lstm_66/while/lstm_cell_66/ones_likeFill3lstm_66/while/lstm_cell_66/ones_like/Shape:output:03lstm_66/while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/ones_like
*lstm_66/while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_66/while/lstm_cell_66/split/split_dimÞ
/lstm_66/while/lstm_cell_66/split/ReadVariableOpReadVariableOp:lstm_66_while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_66/while/lstm_cell_66/split/ReadVariableOp
 lstm_66/while/lstm_cell_66/splitSplit3lstm_66/while/lstm_cell_66/split/split_dim:output:07lstm_66/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_66/while/lstm_cell_66/splitç
!lstm_66/while/lstm_cell_66/MatMulMatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_66/while/lstm_cell_66/MatMulë
#lstm_66/while/lstm_cell_66/MatMul_1MatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_1ë
#lstm_66/while/lstm_cell_66/MatMul_2MatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_2ë
#lstm_66/while/lstm_cell_66/MatMul_3MatMul8lstm_66/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_66/while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_3
,lstm_66/while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_66/while/lstm_cell_66/split_1/split_dimà
1lstm_66/while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp<lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_66/while/lstm_cell_66/split_1/ReadVariableOp
"lstm_66/while/lstm_cell_66/split_1Split5lstm_66/while/lstm_cell_66/split_1/split_dim:output:09lstm_66/while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_66/while/lstm_cell_66/split_1ß
"lstm_66/while/lstm_cell_66/BiasAddBiasAdd+lstm_66/while/lstm_cell_66/MatMul:product:0+lstm_66/while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/while/lstm_cell_66/BiasAddå
$lstm_66/while/lstm_cell_66/BiasAdd_1BiasAdd-lstm_66/while/lstm_cell_66/MatMul_1:product:0+lstm_66/while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/BiasAdd_1å
$lstm_66/while/lstm_cell_66/BiasAdd_2BiasAdd-lstm_66/while/lstm_cell_66/MatMul_2:product:0+lstm_66/while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/BiasAdd_2å
$lstm_66/while/lstm_cell_66/BiasAdd_3BiasAdd-lstm_66/while/lstm_cell_66/MatMul_3:product:0+lstm_66/while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/BiasAdd_3Å
lstm_66/while/lstm_cell_66/mulMullstm_66_while_placeholder_2-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/while/lstm_cell_66/mulÉ
 lstm_66/while/lstm_cell_66/mul_1Mullstm_66_while_placeholder_2-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_1É
 lstm_66/while/lstm_cell_66/mul_2Mullstm_66_while_placeholder_2-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_2É
 lstm_66/while/lstm_cell_66/mul_3Mullstm_66_while_placeholder_2-lstm_66/while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_3Ì
)lstm_66/while/lstm_cell_66/ReadVariableOpReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_66/while/lstm_cell_66/ReadVariableOp±
.lstm_66/while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_66/while/lstm_cell_66/strided_slice/stackµ
0lstm_66/while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_66/while/lstm_cell_66/strided_slice/stack_1µ
0lstm_66/while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_66/while/lstm_cell_66/strided_slice/stack_2
(lstm_66/while/lstm_cell_66/strided_sliceStridedSlice1lstm_66/while/lstm_cell_66/ReadVariableOp:value:07lstm_66/while/lstm_cell_66/strided_slice/stack:output:09lstm_66/while/lstm_cell_66/strided_slice/stack_1:output:09lstm_66/while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_66/while/lstm_cell_66/strided_sliceÝ
#lstm_66/while/lstm_cell_66/MatMul_4MatMul"lstm_66/while/lstm_cell_66/mul:z:01lstm_66/while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_4×
lstm_66/while/lstm_cell_66/addAddV2+lstm_66/while/lstm_cell_66/BiasAdd:output:0-lstm_66/while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/while/lstm_cell_66/add©
"lstm_66/while/lstm_cell_66/SigmoidSigmoid"lstm_66/while/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_66/while/lstm_cell_66/SigmoidÐ
+lstm_66/while/lstm_cell_66/ReadVariableOp_1ReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_66/while/lstm_cell_66/ReadVariableOp_1µ
0lstm_66/while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_66/while/lstm_cell_66/strided_slice_1/stack¹
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_1¹
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_66/while/lstm_cell_66/strided_slice_1/stack_2ª
*lstm_66/while/lstm_cell_66/strided_slice_1StridedSlice3lstm_66/while/lstm_cell_66/ReadVariableOp_1:value:09lstm_66/while/lstm_cell_66/strided_slice_1/stack:output:0;lstm_66/while/lstm_cell_66/strided_slice_1/stack_1:output:0;lstm_66/while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_66/while/lstm_cell_66/strided_slice_1á
#lstm_66/while/lstm_cell_66/MatMul_5MatMul$lstm_66/while/lstm_cell_66/mul_1:z:03lstm_66/while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_5Ý
 lstm_66/while/lstm_cell_66/add_1AddV2-lstm_66/while/lstm_cell_66/BiasAdd_1:output:0-lstm_66/while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_1¯
$lstm_66/while/lstm_cell_66/Sigmoid_1Sigmoid$lstm_66/while/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/Sigmoid_1Ä
 lstm_66/while/lstm_cell_66/mul_4Mul(lstm_66/while/lstm_cell_66/Sigmoid_1:y:0lstm_66_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_4Ð
+lstm_66/while/lstm_cell_66/ReadVariableOp_2ReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_66/while/lstm_cell_66/ReadVariableOp_2µ
0lstm_66/while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_66/while/lstm_cell_66/strided_slice_2/stack¹
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_1¹
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_66/while/lstm_cell_66/strided_slice_2/stack_2ª
*lstm_66/while/lstm_cell_66/strided_slice_2StridedSlice3lstm_66/while/lstm_cell_66/ReadVariableOp_2:value:09lstm_66/while/lstm_cell_66/strided_slice_2/stack:output:0;lstm_66/while/lstm_cell_66/strided_slice_2/stack_1:output:0;lstm_66/while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_66/while/lstm_cell_66/strided_slice_2á
#lstm_66/while/lstm_cell_66/MatMul_6MatMul$lstm_66/while/lstm_cell_66/mul_2:z:03lstm_66/while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_6Ý
 lstm_66/while/lstm_cell_66/add_2AddV2-lstm_66/while/lstm_cell_66/BiasAdd_2:output:0-lstm_66/while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_2¢
lstm_66/while/lstm_cell_66/ReluRelu$lstm_66/while/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_66/while/lstm_cell_66/ReluÔ
 lstm_66/while/lstm_cell_66/mul_5Mul&lstm_66/while/lstm_cell_66/Sigmoid:y:0-lstm_66/while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_5Ë
 lstm_66/while/lstm_cell_66/add_3AddV2$lstm_66/while/lstm_cell_66/mul_4:z:0$lstm_66/while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_3Ð
+lstm_66/while/lstm_cell_66/ReadVariableOp_3ReadVariableOp4lstm_66_while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_66/while/lstm_cell_66/ReadVariableOp_3µ
0lstm_66/while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_66/while/lstm_cell_66/strided_slice_3/stack¹
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_1¹
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_66/while/lstm_cell_66/strided_slice_3/stack_2ª
*lstm_66/while/lstm_cell_66/strided_slice_3StridedSlice3lstm_66/while/lstm_cell_66/ReadVariableOp_3:value:09lstm_66/while/lstm_cell_66/strided_slice_3/stack:output:0;lstm_66/while/lstm_cell_66/strided_slice_3/stack_1:output:0;lstm_66/while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_66/while/lstm_cell_66/strided_slice_3á
#lstm_66/while/lstm_cell_66/MatMul_7MatMul$lstm_66/while/lstm_cell_66/mul_3:z:03lstm_66/while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_66/while/lstm_cell_66/MatMul_7Ý
 lstm_66/while/lstm_cell_66/add_4AddV2-lstm_66/while/lstm_cell_66/BiasAdd_3:output:0-lstm_66/while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/add_4¯
$lstm_66/while/lstm_cell_66/Sigmoid_2Sigmoid$lstm_66/while/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_66/while/lstm_cell_66/Sigmoid_2¦
!lstm_66/while/lstm_cell_66/Relu_1Relu$lstm_66/while/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_66/while/lstm_cell_66/Relu_1Ø
 lstm_66/while/lstm_cell_66/mul_6Mul(lstm_66/while/lstm_cell_66/Sigmoid_2:y:0/lstm_66/while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_66/while/lstm_cell_66/mul_6
2lstm_66/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_66_while_placeholder_1lstm_66_while_placeholder$lstm_66/while/lstm_cell_66/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_66/while/TensorArrayV2Write/TensorListSetIteml
lstm_66/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_66/while/add/y
lstm_66/while/addAddV2lstm_66_while_placeholderlstm_66/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_66/while/addp
lstm_66/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_66/while/add_1/y
lstm_66/while/add_1AddV2(lstm_66_while_lstm_66_while_loop_counterlstm_66/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_66/while/add_1
lstm_66/while/IdentityIdentitylstm_66/while/add_1:z:0^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity¦
lstm_66/while/Identity_1Identity.lstm_66_while_lstm_66_while_maximum_iterations^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity_1
lstm_66/while/Identity_2Identitylstm_66/while/add:z:0^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity_2º
lstm_66/while/Identity_3IdentityBlstm_66/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_66/while/NoOp*
T0*
_output_shapes
: 2
lstm_66/while/Identity_3­
lstm_66/while/Identity_4Identity$lstm_66/while/lstm_cell_66/mul_6:z:0^lstm_66/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/while/Identity_4­
lstm_66/while/Identity_5Identity$lstm_66/while/lstm_cell_66/add_3:z:0^lstm_66/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/while/Identity_5
lstm_66/while/NoOpNoOp*^lstm_66/while/lstm_cell_66/ReadVariableOp,^lstm_66/while/lstm_cell_66/ReadVariableOp_1,^lstm_66/while/lstm_cell_66/ReadVariableOp_2,^lstm_66/while/lstm_cell_66/ReadVariableOp_30^lstm_66/while/lstm_cell_66/split/ReadVariableOp2^lstm_66/while/lstm_cell_66/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_66/while/NoOp"9
lstm_66_while_identitylstm_66/while/Identity:output:0"=
lstm_66_while_identity_1!lstm_66/while/Identity_1:output:0"=
lstm_66_while_identity_2!lstm_66/while/Identity_2:output:0"=
lstm_66_while_identity_3!lstm_66/while/Identity_3:output:0"=
lstm_66_while_identity_4!lstm_66/while/Identity_4:output:0"=
lstm_66_while_identity_5!lstm_66/while/Identity_5:output:0"P
%lstm_66_while_lstm_66_strided_slice_1'lstm_66_while_lstm_66_strided_slice_1_0"j
2lstm_66_while_lstm_cell_66_readvariableop_resource4lstm_66_while_lstm_cell_66_readvariableop_resource_0"z
:lstm_66_while_lstm_cell_66_split_1_readvariableop_resource<lstm_66_while_lstm_cell_66_split_1_readvariableop_resource_0"v
8lstm_66_while_lstm_cell_66_split_readvariableop_resource:lstm_66_while_lstm_cell_66_split_readvariableop_resource_0"È
alstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensorclstm_66_while_tensorarrayv2read_tensorlistgetitem_lstm_66_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_66/while/lstm_cell_66/ReadVariableOp)lstm_66/while/lstm_cell_66/ReadVariableOp2Z
+lstm_66/while/lstm_cell_66/ReadVariableOp_1+lstm_66/while/lstm_cell_66/ReadVariableOp_12Z
+lstm_66/while/lstm_cell_66/ReadVariableOp_2+lstm_66/while/lstm_cell_66/ReadVariableOp_22Z
+lstm_66/while/lstm_cell_66/ReadVariableOp_3+lstm_66/while/lstm_cell_66/ReadVariableOp_32b
/lstm_66/while/lstm_cell_66/split/ReadVariableOp/lstm_66/while/lstm_cell_66/split/ReadVariableOp2f
1lstm_66/while/lstm_cell_66/split_1/ReadVariableOp1lstm_66/while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ë

è
lstm_66_while_cond_2148252,
(lstm_66_while_lstm_66_while_loop_counter2
.lstm_66_while_lstm_66_while_maximum_iterations
lstm_66_while_placeholder
lstm_66_while_placeholder_1
lstm_66_while_placeholder_2
lstm_66_while_placeholder_3.
*lstm_66_while_less_lstm_66_strided_slice_1E
Alstm_66_while_lstm_66_while_cond_2148252___redundant_placeholder0E
Alstm_66_while_lstm_66_while_cond_2148252___redundant_placeholder1E
Alstm_66_while_lstm_66_while_cond_2148252___redundant_placeholder2E
Alstm_66_while_lstm_66_while_cond_2148252___redundant_placeholder3
lstm_66_while_identity

lstm_66/while/LessLesslstm_66_while_placeholder*lstm_66_while_less_lstm_66_strided_slice_1*
T0*
_output_shapes
: 2
lstm_66/while/Lessu
lstm_66/while/IdentityIdentitylstm_66/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_66/while/Identity"9
lstm_66_while_identitylstm_66/while/Identity:output:0*(
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
while_body_2149156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_66_split_readvariableop_resource_0:	C
4while_lstm_cell_66_split_1_readvariableop_resource_0:	?
,while_lstm_cell_66_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_66_split_readvariableop_resource:	A
2while_lstm_cell_66_split_1_readvariableop_resource:	=
*while_lstm_cell_66_readvariableop_resource:	 ¢!while/lstm_cell_66/ReadVariableOp¢#while/lstm_cell_66/ReadVariableOp_1¢#while/lstm_cell_66/ReadVariableOp_2¢#while/lstm_cell_66/ReadVariableOp_3¢'while/lstm_cell_66/split/ReadVariableOp¢)while/lstm_cell_66/split_1/ReadVariableOpÃ
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
"while/lstm_cell_66/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_66/ones_like/Shape
"while/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_66/ones_like/ConstÐ
while/lstm_cell_66/ones_likeFill+while/lstm_cell_66/ones_like/Shape:output:0+while/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/ones_like
"while/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_66/split/split_dimÆ
'while/lstm_cell_66/split/ReadVariableOpReadVariableOp2while_lstm_cell_66_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_66/split/ReadVariableOpó
while/lstm_cell_66/splitSplit+while/lstm_cell_66/split/split_dim:output:0/while/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_66/splitÇ
while/lstm_cell_66/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMulË
while/lstm_cell_66/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_1Ë
while/lstm_cell_66/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_2Ë
while/lstm_cell_66/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_3
$while/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_66/split_1/split_dimÈ
)while/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_66_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_66/split_1/ReadVariableOpë
while/lstm_cell_66/split_1Split-while/lstm_cell_66/split_1/split_dim:output:01while/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_66/split_1¿
while/lstm_cell_66/BiasAddBiasAdd#while/lstm_cell_66/MatMul:product:0#while/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAddÅ
while/lstm_cell_66/BiasAdd_1BiasAdd%while/lstm_cell_66/MatMul_1:product:0#while/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_1Å
while/lstm_cell_66/BiasAdd_2BiasAdd%while/lstm_cell_66/MatMul_2:product:0#while/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_2Å
while/lstm_cell_66/BiasAdd_3BiasAdd%while/lstm_cell_66/MatMul_3:product:0#while/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/BiasAdd_3¥
while/lstm_cell_66/mulMulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul©
while/lstm_cell_66/mul_1Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_1©
while/lstm_cell_66/mul_2Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_2©
while/lstm_cell_66/mul_3Mulwhile_placeholder_2%while/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_3´
!while/lstm_cell_66/ReadVariableOpReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_66/ReadVariableOp¡
&while/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_66/strided_slice/stack¥
(while/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice/stack_1¥
(while/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_66/strided_slice/stack_2î
 while/lstm_cell_66/strided_sliceStridedSlice)while/lstm_cell_66/ReadVariableOp:value:0/while/lstm_cell_66/strided_slice/stack:output:01while/lstm_cell_66/strided_slice/stack_1:output:01while/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_66/strided_slice½
while/lstm_cell_66/MatMul_4MatMulwhile/lstm_cell_66/mul:z:0)while/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_4·
while/lstm_cell_66/addAddV2#while/lstm_cell_66/BiasAdd:output:0%while/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add
while/lstm_cell_66/SigmoidSigmoidwhile/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid¸
#while/lstm_cell_66/ReadVariableOp_1ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_1¥
(while/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_66/strided_slice_1/stack©
*while/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_66/strided_slice_1/stack_1©
*while/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_1/stack_2ú
"while/lstm_cell_66/strided_slice_1StridedSlice+while/lstm_cell_66/ReadVariableOp_1:value:01while/lstm_cell_66/strided_slice_1/stack:output:03while/lstm_cell_66/strided_slice_1/stack_1:output:03while/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_1Á
while/lstm_cell_66/MatMul_5MatMulwhile/lstm_cell_66/mul_1:z:0+while/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_5½
while/lstm_cell_66/add_1AddV2%while/lstm_cell_66/BiasAdd_1:output:0%while/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_1
while/lstm_cell_66/Sigmoid_1Sigmoidwhile/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_1¤
while/lstm_cell_66/mul_4Mul while/lstm_cell_66/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_4¸
#while/lstm_cell_66/ReadVariableOp_2ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_2¥
(while/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_66/strided_slice_2/stack©
*while/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_66/strided_slice_2/stack_1©
*while/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_2/stack_2ú
"while/lstm_cell_66/strided_slice_2StridedSlice+while/lstm_cell_66/ReadVariableOp_2:value:01while/lstm_cell_66/strided_slice_2/stack:output:03while/lstm_cell_66/strided_slice_2/stack_1:output:03while/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_2Á
while/lstm_cell_66/MatMul_6MatMulwhile/lstm_cell_66/mul_2:z:0+while/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_6½
while/lstm_cell_66/add_2AddV2%while/lstm_cell_66/BiasAdd_2:output:0%while/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_2
while/lstm_cell_66/ReluReluwhile/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu´
while/lstm_cell_66/mul_5Mulwhile/lstm_cell_66/Sigmoid:y:0%while/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_5«
while/lstm_cell_66/add_3AddV2while/lstm_cell_66/mul_4:z:0while/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_3¸
#while/lstm_cell_66/ReadVariableOp_3ReadVariableOp,while_lstm_cell_66_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_66/ReadVariableOp_3¥
(while/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_66/strided_slice_3/stack©
*while/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_66/strided_slice_3/stack_1©
*while/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_66/strided_slice_3/stack_2ú
"while/lstm_cell_66/strided_slice_3StridedSlice+while/lstm_cell_66/ReadVariableOp_3:value:01while/lstm_cell_66/strided_slice_3/stack:output:03while/lstm_cell_66/strided_slice_3/stack_1:output:03while/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_66/strided_slice_3Á
while/lstm_cell_66/MatMul_7MatMulwhile/lstm_cell_66/mul_3:z:0+while/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/MatMul_7½
while/lstm_cell_66/add_4AddV2%while/lstm_cell_66/BiasAdd_3:output:0%while/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/add_4
while/lstm_cell_66/Sigmoid_2Sigmoidwhile/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Sigmoid_2
while/lstm_cell_66/Relu_1Reluwhile/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/Relu_1¸
while/lstm_cell_66/mul_6Mul while/lstm_cell_66/Sigmoid_2:y:0'while/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_66/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_66/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_66/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_66/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_66/ReadVariableOp$^while/lstm_cell_66/ReadVariableOp_1$^while/lstm_cell_66/ReadVariableOp_2$^while/lstm_cell_66/ReadVariableOp_3(^while/lstm_cell_66/split/ReadVariableOp*^while/lstm_cell_66/split_1/ReadVariableOp*"
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
*while_lstm_cell_66_readvariableop_resource,while_lstm_cell_66_readvariableop_resource_0"j
2while_lstm_cell_66_split_1_readvariableop_resource4while_lstm_cell_66_split_1_readvariableop_resource_0"f
0while_lstm_cell_66_split_readvariableop_resource2while_lstm_cell_66_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_66/ReadVariableOp!while/lstm_cell_66/ReadVariableOp2J
#while/lstm_cell_66/ReadVariableOp_1#while/lstm_cell_66/ReadVariableOp_12J
#while/lstm_cell_66/ReadVariableOp_2#while/lstm_cell_66/ReadVariableOp_22J
#while/lstm_cell_66/ReadVariableOp_3#while/lstm_cell_66/ReadVariableOp_32R
'while/lstm_cell_66/split/ReadVariableOp'while/lstm_cell_66/split/ReadVariableOp2V
)while/lstm_cell_66/split_1/ReadVariableOp)while/lstm_cell_66/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

ö
E__inference_dense_80_layer_call_and_return_conditional_losses_2147176

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
á

J__inference_sequential_27_layer_call_and_return_conditional_losses_2148111

inputsE
2lstm_66_lstm_cell_66_split_readvariableop_resource:	C
4lstm_66_lstm_cell_66_split_1_readvariableop_resource:	?
,lstm_66_lstm_cell_66_readvariableop_resource:	 9
'dense_80_matmul_readvariableop_resource:  6
(dense_80_biasadd_readvariableop_resource: 9
'dense_81_matmul_readvariableop_resource: 6
(dense_81_biasadd_readvariableop_resource:
identity¢dense_80/BiasAdd/ReadVariableOp¢dense_80/MatMul/ReadVariableOp¢dense_81/BiasAdd/ReadVariableOp¢dense_81/MatMul/ReadVariableOp¢/dense_81/bias/Regularizer/Square/ReadVariableOp¢#lstm_66/lstm_cell_66/ReadVariableOp¢%lstm_66/lstm_cell_66/ReadVariableOp_1¢%lstm_66/lstm_cell_66/ReadVariableOp_2¢%lstm_66/lstm_cell_66/ReadVariableOp_3¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢)lstm_66/lstm_cell_66/split/ReadVariableOp¢+lstm_66/lstm_cell_66/split_1/ReadVariableOp¢lstm_66/whileT
lstm_66/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_66/Shape
lstm_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_66/strided_slice/stack
lstm_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_66/strided_slice/stack_1
lstm_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_66/strided_slice/stack_2
lstm_66/strided_sliceStridedSlicelstm_66/Shape:output:0$lstm_66/strided_slice/stack:output:0&lstm_66/strided_slice/stack_1:output:0&lstm_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_66/strided_slicel
lstm_66/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros/mul/y
lstm_66/zeros/mulMullstm_66/strided_slice:output:0lstm_66/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros/mulo
lstm_66/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_66/zeros/Less/y
lstm_66/zeros/LessLesslstm_66/zeros/mul:z:0lstm_66/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros/Lessr
lstm_66/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros/packed/1£
lstm_66/zeros/packedPacklstm_66/strided_slice:output:0lstm_66/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_66/zeros/packedo
lstm_66/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_66/zeros/Const
lstm_66/zerosFilllstm_66/zeros/packed:output:0lstm_66/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/zerosp
lstm_66/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros_1/mul/y
lstm_66/zeros_1/mulMullstm_66/strided_slice:output:0lstm_66/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros_1/muls
lstm_66/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_66/zeros_1/Less/y
lstm_66/zeros_1/LessLesslstm_66/zeros_1/mul:z:0lstm_66/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_66/zeros_1/Lessv
lstm_66/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/zeros_1/packed/1©
lstm_66/zeros_1/packedPacklstm_66/strided_slice:output:0!lstm_66/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_66/zeros_1/packeds
lstm_66/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_66/zeros_1/Const
lstm_66/zeros_1Filllstm_66/zeros_1/packed:output:0lstm_66/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/zeros_1
lstm_66/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_66/transpose/perm
lstm_66/transpose	Transposeinputslstm_66/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_66/transposeg
lstm_66/Shape_1Shapelstm_66/transpose:y:0*
T0*
_output_shapes
:2
lstm_66/Shape_1
lstm_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_66/strided_slice_1/stack
lstm_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_1/stack_1
lstm_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_1/stack_2
lstm_66/strided_slice_1StridedSlicelstm_66/Shape_1:output:0&lstm_66/strided_slice_1/stack:output:0(lstm_66/strided_slice_1/stack_1:output:0(lstm_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_66/strided_slice_1
#lstm_66/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_66/TensorArrayV2/element_shapeÒ
lstm_66/TensorArrayV2TensorListReserve,lstm_66/TensorArrayV2/element_shape:output:0 lstm_66/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_66/TensorArrayV2Ï
=lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_66/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_66/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_66/transpose:y:0Flstm_66/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_66/TensorArrayUnstack/TensorListFromTensor
lstm_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_66/strided_slice_2/stack
lstm_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_2/stack_1
lstm_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_2/stack_2¬
lstm_66/strided_slice_2StridedSlicelstm_66/transpose:y:0&lstm_66/strided_slice_2/stack:output:0(lstm_66/strided_slice_2/stack_1:output:0(lstm_66/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_66/strided_slice_2
$lstm_66/lstm_cell_66/ones_like/ShapeShapelstm_66/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_66/lstm_cell_66/ones_like/Shape
$lstm_66/lstm_cell_66/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_66/lstm_cell_66/ones_like/ConstØ
lstm_66/lstm_cell_66/ones_likeFill-lstm_66/lstm_cell_66/ones_like/Shape:output:0-lstm_66/lstm_cell_66/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/ones_like
$lstm_66/lstm_cell_66/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_66/lstm_cell_66/split/split_dimÊ
)lstm_66/lstm_cell_66/split/ReadVariableOpReadVariableOp2lstm_66_lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_66/lstm_cell_66/split/ReadVariableOpû
lstm_66/lstm_cell_66/splitSplit-lstm_66/lstm_cell_66/split/split_dim:output:01lstm_66/lstm_cell_66/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_66/lstm_cell_66/split½
lstm_66/lstm_cell_66/MatMulMatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMulÁ
lstm_66/lstm_cell_66/MatMul_1MatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_1Á
lstm_66/lstm_cell_66/MatMul_2MatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_2Á
lstm_66/lstm_cell_66/MatMul_3MatMul lstm_66/strided_slice_2:output:0#lstm_66/lstm_cell_66/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_3
&lstm_66/lstm_cell_66/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_66/lstm_cell_66/split_1/split_dimÌ
+lstm_66/lstm_cell_66/split_1/ReadVariableOpReadVariableOp4lstm_66_lstm_cell_66_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_66/lstm_cell_66/split_1/ReadVariableOpó
lstm_66/lstm_cell_66/split_1Split/lstm_66/lstm_cell_66/split_1/split_dim:output:03lstm_66/lstm_cell_66/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_66/lstm_cell_66/split_1Ç
lstm_66/lstm_cell_66/BiasAddBiasAdd%lstm_66/lstm_cell_66/MatMul:product:0%lstm_66/lstm_cell_66/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/BiasAddÍ
lstm_66/lstm_cell_66/BiasAdd_1BiasAdd'lstm_66/lstm_cell_66/MatMul_1:product:0%lstm_66/lstm_cell_66/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/BiasAdd_1Í
lstm_66/lstm_cell_66/BiasAdd_2BiasAdd'lstm_66/lstm_cell_66/MatMul_2:product:0%lstm_66/lstm_cell_66/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/BiasAdd_2Í
lstm_66/lstm_cell_66/BiasAdd_3BiasAdd'lstm_66/lstm_cell_66/MatMul_3:product:0%lstm_66/lstm_cell_66/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/BiasAdd_3®
lstm_66/lstm_cell_66/mulMullstm_66/zeros:output:0'lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul²
lstm_66/lstm_cell_66/mul_1Mullstm_66/zeros:output:0'lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_1²
lstm_66/lstm_cell_66/mul_2Mullstm_66/zeros:output:0'lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_2²
lstm_66/lstm_cell_66/mul_3Mullstm_66/zeros:output:0'lstm_66/lstm_cell_66/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_3¸
#lstm_66/lstm_cell_66/ReadVariableOpReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_66/lstm_cell_66/ReadVariableOp¥
(lstm_66/lstm_cell_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_66/lstm_cell_66/strided_slice/stack©
*lstm_66/lstm_cell_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_66/lstm_cell_66/strided_slice/stack_1©
*lstm_66/lstm_cell_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_66/lstm_cell_66/strided_slice/stack_2ú
"lstm_66/lstm_cell_66/strided_sliceStridedSlice+lstm_66/lstm_cell_66/ReadVariableOp:value:01lstm_66/lstm_cell_66/strided_slice/stack:output:03lstm_66/lstm_cell_66/strided_slice/stack_1:output:03lstm_66/lstm_cell_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_66/lstm_cell_66/strided_sliceÅ
lstm_66/lstm_cell_66/MatMul_4MatMullstm_66/lstm_cell_66/mul:z:0+lstm_66/lstm_cell_66/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_4¿
lstm_66/lstm_cell_66/addAddV2%lstm_66/lstm_cell_66/BiasAdd:output:0'lstm_66/lstm_cell_66/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add
lstm_66/lstm_cell_66/SigmoidSigmoidlstm_66/lstm_cell_66/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/Sigmoid¼
%lstm_66/lstm_cell_66/ReadVariableOp_1ReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_66/lstm_cell_66/ReadVariableOp_1©
*lstm_66/lstm_cell_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_66/lstm_cell_66/strided_slice_1/stack­
,lstm_66/lstm_cell_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_66/lstm_cell_66/strided_slice_1/stack_1­
,lstm_66/lstm_cell_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_66/lstm_cell_66/strided_slice_1/stack_2
$lstm_66/lstm_cell_66/strided_slice_1StridedSlice-lstm_66/lstm_cell_66/ReadVariableOp_1:value:03lstm_66/lstm_cell_66/strided_slice_1/stack:output:05lstm_66/lstm_cell_66/strided_slice_1/stack_1:output:05lstm_66/lstm_cell_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_66/lstm_cell_66/strided_slice_1É
lstm_66/lstm_cell_66/MatMul_5MatMullstm_66/lstm_cell_66/mul_1:z:0-lstm_66/lstm_cell_66/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_5Å
lstm_66/lstm_cell_66/add_1AddV2'lstm_66/lstm_cell_66/BiasAdd_1:output:0'lstm_66/lstm_cell_66/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_1
lstm_66/lstm_cell_66/Sigmoid_1Sigmoidlstm_66/lstm_cell_66/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/Sigmoid_1¯
lstm_66/lstm_cell_66/mul_4Mul"lstm_66/lstm_cell_66/Sigmoid_1:y:0lstm_66/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_4¼
%lstm_66/lstm_cell_66/ReadVariableOp_2ReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_66/lstm_cell_66/ReadVariableOp_2©
*lstm_66/lstm_cell_66/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_66/lstm_cell_66/strided_slice_2/stack­
,lstm_66/lstm_cell_66/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_66/lstm_cell_66/strided_slice_2/stack_1­
,lstm_66/lstm_cell_66/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_66/lstm_cell_66/strided_slice_2/stack_2
$lstm_66/lstm_cell_66/strided_slice_2StridedSlice-lstm_66/lstm_cell_66/ReadVariableOp_2:value:03lstm_66/lstm_cell_66/strided_slice_2/stack:output:05lstm_66/lstm_cell_66/strided_slice_2/stack_1:output:05lstm_66/lstm_cell_66/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_66/lstm_cell_66/strided_slice_2É
lstm_66/lstm_cell_66/MatMul_6MatMullstm_66/lstm_cell_66/mul_2:z:0-lstm_66/lstm_cell_66/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_6Å
lstm_66/lstm_cell_66/add_2AddV2'lstm_66/lstm_cell_66/BiasAdd_2:output:0'lstm_66/lstm_cell_66/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_2
lstm_66/lstm_cell_66/ReluRelulstm_66/lstm_cell_66/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/Relu¼
lstm_66/lstm_cell_66/mul_5Mul lstm_66/lstm_cell_66/Sigmoid:y:0'lstm_66/lstm_cell_66/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_5³
lstm_66/lstm_cell_66/add_3AddV2lstm_66/lstm_cell_66/mul_4:z:0lstm_66/lstm_cell_66/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_3¼
%lstm_66/lstm_cell_66/ReadVariableOp_3ReadVariableOp,lstm_66_lstm_cell_66_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_66/lstm_cell_66/ReadVariableOp_3©
*lstm_66/lstm_cell_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_66/lstm_cell_66/strided_slice_3/stack­
,lstm_66/lstm_cell_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_66/lstm_cell_66/strided_slice_3/stack_1­
,lstm_66/lstm_cell_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_66/lstm_cell_66/strided_slice_3/stack_2
$lstm_66/lstm_cell_66/strided_slice_3StridedSlice-lstm_66/lstm_cell_66/ReadVariableOp_3:value:03lstm_66/lstm_cell_66/strided_slice_3/stack:output:05lstm_66/lstm_cell_66/strided_slice_3/stack_1:output:05lstm_66/lstm_cell_66/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_66/lstm_cell_66/strided_slice_3É
lstm_66/lstm_cell_66/MatMul_7MatMullstm_66/lstm_cell_66/mul_3:z:0-lstm_66/lstm_cell_66/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/MatMul_7Å
lstm_66/lstm_cell_66/add_4AddV2'lstm_66/lstm_cell_66/BiasAdd_3:output:0'lstm_66/lstm_cell_66/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/add_4
lstm_66/lstm_cell_66/Sigmoid_2Sigmoidlstm_66/lstm_cell_66/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_66/lstm_cell_66/Sigmoid_2
lstm_66/lstm_cell_66/Relu_1Relulstm_66/lstm_cell_66/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/Relu_1À
lstm_66/lstm_cell_66/mul_6Mul"lstm_66/lstm_cell_66/Sigmoid_2:y:0)lstm_66/lstm_cell_66/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/lstm_cell_66/mul_6
%lstm_66/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_66/TensorArrayV2_1/element_shapeØ
lstm_66/TensorArrayV2_1TensorListReserve.lstm_66/TensorArrayV2_1/element_shape:output:0 lstm_66/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_66/TensorArrayV2_1^
lstm_66/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/time
 lstm_66/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_66/while/maximum_iterationsz
lstm_66/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_66/while/loop_counterû
lstm_66/whileWhile#lstm_66/while/loop_counter:output:0)lstm_66/while/maximum_iterations:output:0lstm_66/time:output:0 lstm_66/TensorArrayV2_1:handle:0lstm_66/zeros:output:0lstm_66/zeros_1:output:0 lstm_66/strided_slice_1:output:0?lstm_66/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_66_lstm_cell_66_split_readvariableop_resource4lstm_66_lstm_cell_66_split_1_readvariableop_resource,lstm_66_lstm_cell_66_readvariableop_resource*
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
lstm_66_while_body_2147950*&
condR
lstm_66_while_cond_2147949*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_66/whileÅ
8lstm_66/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_66/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_66/TensorArrayV2Stack/TensorListStackTensorListStacklstm_66/while:output:3Alstm_66/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_66/TensorArrayV2Stack/TensorListStack
lstm_66/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_66/strided_slice_3/stack
lstm_66/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_66/strided_slice_3/stack_1
lstm_66/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_66/strided_slice_3/stack_2Ê
lstm_66/strided_slice_3StridedSlice3lstm_66/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_66/strided_slice_3/stack:output:0(lstm_66/strided_slice_3/stack_1:output:0(lstm_66/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_66/strided_slice_3
lstm_66/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_66/transpose_1/permÅ
lstm_66/transpose_1	Transpose3lstm_66/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_66/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_66/transpose_1v
lstm_66/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_66/runtime¨
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_80/MatMul/ReadVariableOp¨
dense_80/MatMulMatMul lstm_66/strided_slice_3:output:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_80/MatMul§
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_80/BiasAdd/ReadVariableOp¥
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_80/BiasAdds
dense_80/ReluReludense_80/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_80/Relu¨
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_81/MatMul/ReadVariableOp£
dense_81/MatMulMatMuldense_80/Relu:activations:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_81/MatMul§
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_81/BiasAdd/ReadVariableOp¥
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_81/BiasAddm
reshape_40/ShapeShapedense_81/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_40/Shape
reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_40/strided_slice/stack
 reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_1
 reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_40/strided_slice/stack_2¤
reshape_40/strided_sliceStridedSlicereshape_40/Shape:output:0'reshape_40/strided_slice/stack:output:0)reshape_40/strided_slice/stack_1:output:0)reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_40/strided_slicez
reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_40/Reshape/shape/1z
reshape_40/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_40/Reshape/shape/2×
reshape_40/Reshape/shapePack!reshape_40/strided_slice:output:0#reshape_40/Reshape/shape/1:output:0#reshape_40/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_40/Reshape/shape§
reshape_40/ReshapeReshapedense_81/BiasAdd:output:0!reshape_40/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_40/Reshapeò
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_66_lstm_cell_66_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/mulÇ
/dense_81/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_81/bias/Regularizer/Square/ReadVariableOp¬
 dense_81/bias/Regularizer/SquareSquare7dense_81/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_81/bias/Regularizer/Square
dense_81/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_81/bias/Regularizer/Const¶
dense_81/bias/Regularizer/SumSum$dense_81/bias/Regularizer/Square:y:0(dense_81/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/Sum
dense_81/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_81/bias/Regularizer/mul/x¸
dense_81/bias/Regularizer/mulMul(dense_81/bias/Regularizer/mul/x:output:0&dense_81/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_81/bias/Regularizer/mulz
IdentityIdentityreshape_40/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp0^dense_81/bias/Regularizer/Square/ReadVariableOp$^lstm_66/lstm_cell_66/ReadVariableOp&^lstm_66/lstm_cell_66/ReadVariableOp_1&^lstm_66/lstm_cell_66/ReadVariableOp_2&^lstm_66/lstm_cell_66/ReadVariableOp_3>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*^lstm_66/lstm_cell_66/split/ReadVariableOp,^lstm_66/lstm_cell_66/split_1/ReadVariableOp^lstm_66/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2b
/dense_81/bias/Regularizer/Square/ReadVariableOp/dense_81/bias/Regularizer/Square/ReadVariableOp2J
#lstm_66/lstm_cell_66/ReadVariableOp#lstm_66/lstm_cell_66/ReadVariableOp2N
%lstm_66/lstm_cell_66/ReadVariableOp_1%lstm_66/lstm_cell_66/ReadVariableOp_12N
%lstm_66/lstm_cell_66/ReadVariableOp_2%lstm_66/lstm_cell_66/ReadVariableOp_22N
%lstm_66/lstm_cell_66/ReadVariableOp_3%lstm_66/lstm_cell_66/ReadVariableOp_32~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_66/lstm_cell_66/split/ReadVariableOp)lstm_66/lstm_cell_66/split/ReadVariableOp2Z
+lstm_66/lstm_cell_66/split_1/ReadVariableOp+lstm_66/lstm_cell_66/split_1/ReadVariableOp2
lstm_66/whilelstm_66/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

*__inference_dense_81_layer_call_fn_2149631

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
E__inference_dense_81_layer_call_and_return_conditional_losses_21471982
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
ê	
ª
/__inference_sequential_27_layer_call_fn_2147249
input_28
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_21472322
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
input_28

ö
E__inference_dense_80_layer_call_and_return_conditional_losses_2149616

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
Ý
Ë
__inference_loss_fn_1_2149921Y
Flstm_66_lstm_cell_66_kernel_regularizer_square_readvariableop_resource:	
identity¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_66_lstm_cell_66_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muly
IdentityIdentity/lstm_66/lstm_cell_66/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp
ä	
¨
/__inference_sequential_27_layer_call_fn_2147840

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
J__inference_sequential_27_layer_call_and_return_conditional_losses_21476592
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
ßR
ì
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2149797

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_66/lstm_cell_66/kernel/Regularizer/SquareSquareElstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_66/lstm_cell_66/kernel/Regularizer/Square¯
-lstm_66/lstm_cell_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_66/lstm_cell_66/kernel/Regularizer/Constî
+lstm_66/lstm_cell_66/kernel/Regularizer/SumSum2lstm_66/lstm_cell_66/kernel/Regularizer/Square:y:06lstm_66/lstm_cell_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/Sum£
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_66/lstm_cell_66/kernel/Regularizer/mul/xð
+lstm_66/lstm_cell_66/kernel/Regularizer/mulMul6lstm_66/lstm_cell_66/kernel/Regularizer/mul/x:output:04lstm_66/lstm_cell_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_66/lstm_cell_66/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp=lstm_66/lstm_cell_66/kernel/Regularizer/Square/ReadVariableOp2,
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
states/1"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
A
input_285
serving_default_input_28:0ÿÿÿÿÿÿÿÿÿB

reshape_404
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
!:  2dense_80/kernel
: 2dense_80/bias
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
!: 2dense_81/kernel
:2dense_81/bias
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
.:,	2lstm_66/lstm_cell_66/kernel
8:6	 2%lstm_66/lstm_cell_66/recurrent_kernel
(:&2lstm_66/lstm_cell_66/bias
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
&:$  2Adam/dense_80/kernel/m
 : 2Adam/dense_80/bias/m
&:$ 2Adam/dense_81/kernel/m
 :2Adam/dense_81/bias/m
3:1	2"Adam/lstm_66/lstm_cell_66/kernel/m
=:;	 2,Adam/lstm_66/lstm_cell_66/recurrent_kernel/m
-:+2 Adam/lstm_66/lstm_cell_66/bias/m
&:$  2Adam/dense_80/kernel/v
 : 2Adam/dense_80/bias/v
&:$ 2Adam/dense_81/kernel/v
 :2Adam/dense_81/bias/v
3:1	2"Adam/lstm_66/lstm_cell_66/kernel/v
=:;	 2,Adam/lstm_66/lstm_cell_66/recurrent_kernel/v
-:+2 Adam/lstm_66/lstm_cell_66/bias/v
ÎBË
"__inference__wrapped_model_2146124input_28"
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
/__inference_sequential_27_layer_call_fn_2147249
/__inference_sequential_27_layer_call_fn_2147821
/__inference_sequential_27_layer_call_fn_2147840
/__inference_sequential_27_layer_call_fn_2147695À
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_2148111
J__inference_sequential_27_layer_call_and_return_conditional_losses_2148446
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147729
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147763À
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
)__inference_lstm_66_layer_call_fn_2148463
)__inference_lstm_66_layer_call_fn_2148474
)__inference_lstm_66_layer_call_fn_2148485
)__inference_lstm_66_layer_call_fn_2148496Õ
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_2148739
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149046
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149289
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149596Õ
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
*__inference_dense_80_layer_call_fn_2149605¢
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
E__inference_dense_80_layer_call_and_return_conditional_losses_2149616¢
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
*__inference_dense_81_layer_call_fn_2149631¢
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
E__inference_dense_81_layer_call_and_return_conditional_losses_2149647¢
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
,__inference_reshape_40_layer_call_fn_2149652¢
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_2149665¢
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
__inference_loss_fn_0_2149676
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
%__inference_signature_wrapper_2147802input_28"
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
.__inference_lstm_cell_66_layer_call_fn_2149699
.__inference_lstm_cell_66_layer_call_fn_2149716¾
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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2149797
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2149910¾
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
__inference_loss_fn_1_2149921
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
"__inference__wrapped_model_2146124}&('5¢2
+¢(
&#
input_28ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_40(%

reshape_40ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_80_layer_call_and_return_conditional_losses_2149616\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dense_80_layer_call_fn_2149605O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_81_layer_call_and_return_conditional_losses_2149647\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_81_layer_call_fn_2149631O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_2149676¢

¢ 
ª " <
__inference_loss_fn_1_2149921&¢

¢ 
ª " Å
D__inference_lstm_66_layer_call_and_return_conditional_losses_2148739}&('O¢L
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149046}&('O¢L
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149289m&('?¢<
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
D__inference_lstm_66_layer_call_and_return_conditional_losses_2149596m&('?¢<
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
)__inference_lstm_66_layer_call_fn_2148463p&('O¢L
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
)__inference_lstm_66_layer_call_fn_2148474p&('O¢L
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
)__inference_lstm_66_layer_call_fn_2148485`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
)__inference_lstm_66_layer_call_fn_2148496`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ë
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2149797ý&('¢}
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
I__inference_lstm_cell_66_layer_call_and_return_conditional_losses_2149910ý&('¢}
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
.__inference_lstm_cell_66_layer_call_fn_2149699í&('¢}
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
.__inference_lstm_cell_66_layer_call_fn_2149716í&('¢}
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
G__inference_reshape_40_layer_call_and_return_conditional_losses_2149665\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_40_layer_call_fn_2149652O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147729s&('=¢:
3¢0
&#
input_28ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_27_layer_call_and_return_conditional_losses_2147763s&('=¢:
3¢0
&#
input_28ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_27_layer_call_and_return_conditional_losses_2148111q&(';¢8
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
J__inference_sequential_27_layer_call_and_return_conditional_losses_2148446q&(';¢8
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
/__inference_sequential_27_layer_call_fn_2147249f&('=¢:
3¢0
&#
input_28ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_27_layer_call_fn_2147695f&('=¢:
3¢0
&#
input_28ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_27_layer_call_fn_2147821d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_27_layer_call_fn_2147840d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
%__inference_signature_wrapper_2147802&('A¢>
¢ 
7ª4
2
input_28&#
input_28ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_40(%

reshape_40ÿÿÿÿÿÿÿÿÿ