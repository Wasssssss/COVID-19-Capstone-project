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
|
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_110/kernel
u
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes

:  *
dtype0
t
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_110/bias
m
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
_output_shapes
: *
dtype0
|
dense_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_111/kernel
u
$dense_111/kernel/Read/ReadVariableOpReadVariableOpdense_111/kernel*
_output_shapes

: *
dtype0
t
dense_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_111/bias
m
"dense_111/bias/Read/ReadVariableOpReadVariableOpdense_111/bias*
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
lstm_91/lstm_cell_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_91/lstm_cell_91/kernel
?
/lstm_91/lstm_cell_91/kernel/Read/ReadVariableOpReadVariableOplstm_91/lstm_cell_91/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_91/lstm_cell_91/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_91/lstm_cell_91/recurrent_kernel
?
9lstm_91/lstm_cell_91/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_91/lstm_cell_91/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_91/lstm_cell_91/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_91/lstm_cell_91/bias
?
-lstm_91/lstm_cell_91/bias/Read/ReadVariableOpReadVariableOplstm_91/lstm_cell_91/bias*
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
Adam/dense_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_110/kernel/m
?
+Adam/dense_110/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_110/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_110/bias/m
{
)Adam/dense_110/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_110/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_111/kernel/m
?
+Adam/dense_111/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_111/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_111/bias/m
{
)Adam/dense_111/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_111/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_91/lstm_cell_91/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_91/lstm_cell_91/kernel/m
?
6Adam/lstm_91/lstm_cell_91/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_91/lstm_cell_91/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_91/lstm_cell_91/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_91/lstm_cell_91/recurrent_kernel/m
?
@Adam/lstm_91/lstm_cell_91/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_91/lstm_cell_91/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_91/lstm_cell_91/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_91/lstm_cell_91/bias/m
?
4Adam/lstm_91/lstm_cell_91/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_91/lstm_cell_91/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_110/kernel/v
?
+Adam/dense_110/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_110/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_110/bias/v
{
)Adam/dense_110/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_110/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_111/kernel/v
?
+Adam/dense_111/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_111/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_111/bias/v
{
)Adam/dense_111/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_111/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_91/lstm_cell_91/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_91/lstm_cell_91/kernel/v
?
6Adam/lstm_91/lstm_cell_91/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_91/lstm_cell_91/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_91/lstm_cell_91/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_91/lstm_cell_91/recurrent_kernel/v
?
@Adam/lstm_91/lstm_cell_91/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_91/lstm_cell_91/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_91/lstm_cell_91/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_91/lstm_cell_91/bias/v
?
4Adam/lstm_91/lstm_cell_91/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_91/lstm_cell_91/bias/v*
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
\Z
VARIABLE_VALUEdense_110/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_110/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEdense_111/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_111/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_91/lstm_cell_91/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_91/lstm_cell_91/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_91/lstm_cell_91/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
}
VARIABLE_VALUEAdam/dense_110/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_110/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_111/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_111/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_91/lstm_cell_91/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_91/lstm_cell_91/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_91/lstm_cell_91/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_110/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_110/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_111/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_111/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_91/lstm_cell_91/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_91/lstm_cell_91/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_91/lstm_cell_91/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_38Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_38lstm_91/lstm_cell_91/kernellstm_91/lstm_cell_91/bias%lstm_91/lstm_cell_91/recurrent_kerneldense_110/kerneldense_110/biasdense_111/kerneldense_111/bias*
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
GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2933095
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOp$dense_111/kernel/Read/ReadVariableOp"dense_111/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_91/lstm_cell_91/kernel/Read/ReadVariableOp9lstm_91/lstm_cell_91/recurrent_kernel/Read/ReadVariableOp-lstm_91/lstm_cell_91/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_110/kernel/m/Read/ReadVariableOp)Adam/dense_110/bias/m/Read/ReadVariableOp+Adam/dense_111/kernel/m/Read/ReadVariableOp)Adam/dense_111/bias/m/Read/ReadVariableOp6Adam/lstm_91/lstm_cell_91/kernel/m/Read/ReadVariableOp@Adam/lstm_91/lstm_cell_91/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_91/lstm_cell_91/bias/m/Read/ReadVariableOp+Adam/dense_110/kernel/v/Read/ReadVariableOp)Adam/dense_110/bias/v/Read/ReadVariableOp+Adam/dense_111/kernel/v/Read/ReadVariableOp)Adam/dense_111/bias/v/Read/ReadVariableOp6Adam/lstm_91/lstm_cell_91/kernel/v/Read/ReadVariableOp@Adam/lstm_91/lstm_cell_91/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_91/lstm_cell_91/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_2935321
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_110/kerneldense_110/biasdense_111/kerneldense_111/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_91/lstm_cell_91/kernel%lstm_91/lstm_cell_91/recurrent_kernellstm_91/lstm_cell_91/biastotalcountAdam/dense_110/kernel/mAdam/dense_110/bias/mAdam/dense_111/kernel/mAdam/dense_111/bias/m"Adam/lstm_91/lstm_cell_91/kernel/m,Adam/lstm_91/lstm_cell_91/recurrent_kernel/m Adam/lstm_91/lstm_cell_91/bias/mAdam/dense_110/kernel/vAdam/dense_110/bias/vAdam/dense_111/kernel/vAdam/dense_111/bias/v"Adam/lstm_91/lstm_cell_91/kernel/v,Adam/lstm_91/lstm_cell_91/recurrent_kernel/v Adam/lstm_91/lstm_cell_91/bias/v*(
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_2935415??$
?%
?
while_body_2931852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_91_2931876_0:	?+
while_lstm_cell_91_2931878_0:	?/
while_lstm_cell_91_2931880_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_91_2931876:	?)
while_lstm_cell_91_2931878:	?-
while_lstm_cell_91_2931880:	 ???*while/lstm_cell_91/StatefulPartitionedCall?
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
*while/lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_91_2931876_0while_lstm_cell_91_2931878_0while_lstm_cell_91_2931880_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_29317742,
*while/lstm_cell_91/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_91/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_91/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_91/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_91/StatefulPartitionedCall*"
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
while_lstm_cell_91_2931876while_lstm_cell_91_2931876_0":
while_lstm_cell_91_2931878while_lstm_cell_91_2931878_0":
while_lstm_cell_91_2931880while_lstm_cell_91_2931880_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_91/StatefulPartitionedCall*while/lstm_cell_91/StatefulPartitionedCall: 
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
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2932450

inputs=
*lstm_cell_91_split_readvariableop_resource:	?;
,lstm_cell_91_split_1_readvariableop_resource:	?7
$lstm_cell_91_readvariableop_resource:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_91/ReadVariableOp?lstm_cell_91/ReadVariableOp_1?lstm_cell_91/ReadVariableOp_2?lstm_cell_91/ReadVariableOp_3?!lstm_cell_91/split/ReadVariableOp?#lstm_cell_91/split_1/ReadVariableOp?whileD
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
lstm_cell_91/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_91/ones_like/Shape?
lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_91/ones_like/Const?
lstm_cell_91/ones_likeFill%lstm_cell_91/ones_like/Shape:output:0%lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/ones_like~
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_91/split/split_dim?
!lstm_cell_91/split/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_91/split/ReadVariableOp?
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0)lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_91/split?
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul?
lstm_cell_91/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_1?
lstm_cell_91/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_2?
lstm_cell_91/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_3?
lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_91/split_1/split_dim?
#lstm_cell_91/split_1/ReadVariableOpReadVariableOp,lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_91/split_1/ReadVariableOp?
lstm_cell_91/split_1Split'lstm_cell_91/split_1/split_dim:output:0+lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_91/split_1?
lstm_cell_91/BiasAddBiasAddlstm_cell_91/MatMul:product:0lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd?
lstm_cell_91/BiasAdd_1BiasAddlstm_cell_91/MatMul_1:product:0lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_1?
lstm_cell_91/BiasAdd_2BiasAddlstm_cell_91/MatMul_2:product:0lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_2?
lstm_cell_91/BiasAdd_3BiasAddlstm_cell_91/MatMul_3:product:0lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_3?
lstm_cell_91/mulMulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul?
lstm_cell_91/mul_1Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_1?
lstm_cell_91/mul_2Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_2?
lstm_cell_91/mul_3Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_3?
lstm_cell_91/ReadVariableOpReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp?
 lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_91/strided_slice/stack?
"lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice/stack_1?
"lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_91/strided_slice/stack_2?
lstm_cell_91/strided_sliceStridedSlice#lstm_cell_91/ReadVariableOp:value:0)lstm_cell_91/strided_slice/stack:output:0+lstm_cell_91/strided_slice/stack_1:output:0+lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice?
lstm_cell_91/MatMul_4MatMullstm_cell_91/mul:z:0#lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_4?
lstm_cell_91/addAddV2lstm_cell_91/BiasAdd:output:0lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add
lstm_cell_91/SigmoidSigmoidlstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid?
lstm_cell_91/ReadVariableOp_1ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_1?
"lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice_1/stack?
$lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_91/strided_slice_1/stack_1?
$lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_1/stack_2?
lstm_cell_91/strided_slice_1StridedSlice%lstm_cell_91/ReadVariableOp_1:value:0+lstm_cell_91/strided_slice_1/stack:output:0-lstm_cell_91/strided_slice_1/stack_1:output:0-lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_1?
lstm_cell_91/MatMul_5MatMullstm_cell_91/mul_1:z:0%lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_5?
lstm_cell_91/add_1AddV2lstm_cell_91/BiasAdd_1:output:0lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_1?
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_1?
lstm_cell_91/mul_4Mullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_4?
lstm_cell_91/ReadVariableOp_2ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_2?
"lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_91/strided_slice_2/stack?
$lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_91/strided_slice_2/stack_1?
$lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_2/stack_2?
lstm_cell_91/strided_slice_2StridedSlice%lstm_cell_91/ReadVariableOp_2:value:0+lstm_cell_91/strided_slice_2/stack:output:0-lstm_cell_91/strided_slice_2/stack_1:output:0-lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_2?
lstm_cell_91/MatMul_6MatMullstm_cell_91/mul_2:z:0%lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_6?
lstm_cell_91/add_2AddV2lstm_cell_91/BiasAdd_2:output:0lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_2x
lstm_cell_91/ReluRelulstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu?
lstm_cell_91/mul_5Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_5?
lstm_cell_91/add_3AddV2lstm_cell_91/mul_4:z:0lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_3?
lstm_cell_91/ReadVariableOp_3ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_3?
"lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_91/strided_slice_3/stack?
$lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_91/strided_slice_3/stack_1?
$lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_3/stack_2?
lstm_cell_91/strided_slice_3StridedSlice%lstm_cell_91/ReadVariableOp_3:value:0+lstm_cell_91/strided_slice_3/stack:output:0-lstm_cell_91/strided_slice_3/stack_1:output:0-lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_3?
lstm_cell_91/MatMul_7MatMullstm_cell_91/mul_3:z:0%lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_7?
lstm_cell_91/add_4AddV2lstm_cell_91/BiasAdd_3:output:0lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_4?
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_2|
lstm_cell_91/Relu_1Relulstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu_1?
lstm_cell_91/mul_6Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_91_split_readvariableop_resource,lstm_cell_91_split_1_readvariableop_resource$lstm_cell_91_readvariableop_resource*
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
bodyR
while_body_2932317*
condR
while_cond_2932316*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_91/ReadVariableOp^lstm_cell_91/ReadVariableOp_1^lstm_cell_91/ReadVariableOp_2^lstm_cell_91/ReadVariableOp_3"^lstm_cell_91/split/ReadVariableOp$^lstm_cell_91/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_91/ReadVariableOplstm_cell_91/ReadVariableOp2>
lstm_cell_91/ReadVariableOp_1lstm_cell_91/ReadVariableOp_12>
lstm_cell_91/ReadVariableOp_2lstm_cell_91/ReadVariableOp_22>
lstm_cell_91/ReadVariableOp_3lstm_cell_91/ReadVariableOp_32F
!lstm_cell_91/split/ReadVariableOp!lstm_cell_91/split/ReadVariableOp2J
#lstm_cell_91/split_1/ReadVariableOp#lstm_cell_91/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
while_body_2932317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_91_split_readvariableop_resource_0:	?C
4while_lstm_cell_91_split_1_readvariableop_resource_0:	??
,while_lstm_cell_91_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_91_split_readvariableop_resource:	?A
2while_lstm_cell_91_split_1_readvariableop_resource:	?=
*while_lstm_cell_91_readvariableop_resource:	 ???!while/lstm_cell_91/ReadVariableOp?#while/lstm_cell_91/ReadVariableOp_1?#while/lstm_cell_91/ReadVariableOp_2?#while/lstm_cell_91/ReadVariableOp_3?'while/lstm_cell_91/split/ReadVariableOp?)while/lstm_cell_91/split_1/ReadVariableOp?
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
"while/lstm_cell_91/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_91/ones_like/Shape?
"while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_91/ones_like/Const?
while/lstm_cell_91/ones_likeFill+while/lstm_cell_91/ones_like/Shape:output:0+while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/ones_like?
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_91/split/split_dim?
'while/lstm_cell_91/split/ReadVariableOpReadVariableOp2while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_91/split/ReadVariableOp?
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_91/split?
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul?
while/lstm_cell_91/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_1?
while/lstm_cell_91/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_2?
while/lstm_cell_91/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_3?
$while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_91/split_1/split_dim?
)while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_91/split_1/ReadVariableOp?
while/lstm_cell_91/split_1Split-while/lstm_cell_91/split_1/split_dim:output:01while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_91/split_1?
while/lstm_cell_91/BiasAddBiasAdd#while/lstm_cell_91/MatMul:product:0#while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd?
while/lstm_cell_91/BiasAdd_1BiasAdd%while/lstm_cell_91/MatMul_1:product:0#while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_1?
while/lstm_cell_91/BiasAdd_2BiasAdd%while/lstm_cell_91/MatMul_2:product:0#while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_2?
while/lstm_cell_91/BiasAdd_3BiasAdd%while/lstm_cell_91/MatMul_3:product:0#while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_3?
while/lstm_cell_91/mulMulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul?
while/lstm_cell_91/mul_1Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_1?
while/lstm_cell_91/mul_2Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_2?
while/lstm_cell_91/mul_3Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_3?
!while/lstm_cell_91/ReadVariableOpReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_91/ReadVariableOp?
&while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_91/strided_slice/stack?
(while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice/stack_1?
(while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_91/strided_slice/stack_2?
 while/lstm_cell_91/strided_sliceStridedSlice)while/lstm_cell_91/ReadVariableOp:value:0/while/lstm_cell_91/strided_slice/stack:output:01while/lstm_cell_91/strided_slice/stack_1:output:01while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_91/strided_slice?
while/lstm_cell_91/MatMul_4MatMulwhile/lstm_cell_91/mul:z:0)while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_4?
while/lstm_cell_91/addAddV2#while/lstm_cell_91/BiasAdd:output:0%while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add?
while/lstm_cell_91/SigmoidSigmoidwhile/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid?
#while/lstm_cell_91/ReadVariableOp_1ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_1?
(while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice_1/stack?
*while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_91/strided_slice_1/stack_1?
*while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_1/stack_2?
"while/lstm_cell_91/strided_slice_1StridedSlice+while/lstm_cell_91/ReadVariableOp_1:value:01while/lstm_cell_91/strided_slice_1/stack:output:03while/lstm_cell_91/strided_slice_1/stack_1:output:03while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_1?
while/lstm_cell_91/MatMul_5MatMulwhile/lstm_cell_91/mul_1:z:0+while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_5?
while/lstm_cell_91/add_1AddV2%while/lstm_cell_91/BiasAdd_1:output:0%while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_1?
while/lstm_cell_91/Sigmoid_1Sigmoidwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_1?
while/lstm_cell_91/mul_4Mul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_4?
#while/lstm_cell_91/ReadVariableOp_2ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_2?
(while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_91/strided_slice_2/stack?
*while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_91/strided_slice_2/stack_1?
*while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_2/stack_2?
"while/lstm_cell_91/strided_slice_2StridedSlice+while/lstm_cell_91/ReadVariableOp_2:value:01while/lstm_cell_91/strided_slice_2/stack:output:03while/lstm_cell_91/strided_slice_2/stack_1:output:03while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_2?
while/lstm_cell_91/MatMul_6MatMulwhile/lstm_cell_91/mul_2:z:0+while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_6?
while/lstm_cell_91/add_2AddV2%while/lstm_cell_91/BiasAdd_2:output:0%while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_2?
while/lstm_cell_91/ReluReluwhile/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu?
while/lstm_cell_91/mul_5Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_5?
while/lstm_cell_91/add_3AddV2while/lstm_cell_91/mul_4:z:0while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_3?
#while/lstm_cell_91/ReadVariableOp_3ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_3?
(while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_91/strided_slice_3/stack?
*while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_91/strided_slice_3/stack_1?
*while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_3/stack_2?
"while/lstm_cell_91/strided_slice_3StridedSlice+while/lstm_cell_91/ReadVariableOp_3:value:01while/lstm_cell_91/strided_slice_3/stack:output:03while/lstm_cell_91/strided_slice_3/stack_1:output:03while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_3?
while/lstm_cell_91/MatMul_7MatMulwhile/lstm_cell_91/mul_3:z:0+while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_7?
while/lstm_cell_91/add_4AddV2%while/lstm_cell_91/BiasAdd_3:output:0%while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_4?
while/lstm_cell_91/Sigmoid_2Sigmoidwhile/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_2?
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu_1?
while/lstm_cell_91/mul_6Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_91/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_91/ReadVariableOp$^while/lstm_cell_91/ReadVariableOp_1$^while/lstm_cell_91/ReadVariableOp_2$^while/lstm_cell_91/ReadVariableOp_3(^while/lstm_cell_91/split/ReadVariableOp*^while/lstm_cell_91/split_1/ReadVariableOp*"
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
*while_lstm_cell_91_readvariableop_resource,while_lstm_cell_91_readvariableop_resource_0"j
2while_lstm_cell_91_split_1_readvariableop_resource4while_lstm_cell_91_split_1_readvariableop_resource_0"f
0while_lstm_cell_91_split_readvariableop_resource2while_lstm_cell_91_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_91/ReadVariableOp!while/lstm_cell_91/ReadVariableOp2J
#while/lstm_cell_91/ReadVariableOp_1#while/lstm_cell_91/ReadVariableOp_12J
#while/lstm_cell_91/ReadVariableOp_2#while/lstm_cell_91/ReadVariableOp_22J
#while/lstm_cell_91/ReadVariableOp_3#while/lstm_cell_91/ReadVariableOp_32R
'while/lstm_cell_91/split/ReadVariableOp'while/lstm_cell_91/split/ReadVariableOp2V
)while/lstm_cell_91/split_1/ReadVariableOp)while/lstm_cell_91/split_1/ReadVariableOp: 
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
?%
?
while_body_2931555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_91_2931579_0:	?+
while_lstm_cell_91_2931581_0:	?/
while_lstm_cell_91_2931583_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_91_2931579:	?)
while_lstm_cell_91_2931581:	?-
while_lstm_cell_91_2931583:	 ???*while/lstm_cell_91/StatefulPartitionedCall?
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
*while/lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_91_2931579_0while_lstm_cell_91_2931581_0while_lstm_cell_91_2931583_0*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_29315412,
*while/lstm_cell_91/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_91/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_91/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_91/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_91/StatefulPartitionedCall*"
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
while_lstm_cell_91_2931579while_lstm_cell_91_2931579_0":
while_lstm_cell_91_2931581while_lstm_cell_91_2931581_0":
while_lstm_cell_91_2931583while_lstm_cell_91_2931583_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_91/StatefulPartitionedCall*while/lstm_cell_91/StatefulPartitionedCall: 
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
lstm_91_while_body_2933546,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3+
'lstm_91_while_lstm_91_strided_slice_1_0g
clstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_91_while_lstm_cell_91_split_readvariableop_resource_0:	?K
<lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0:	?G
4lstm_91_while_lstm_cell_91_readvariableop_resource_0:	 ?
lstm_91_while_identity
lstm_91_while_identity_1
lstm_91_while_identity_2
lstm_91_while_identity_3
lstm_91_while_identity_4
lstm_91_while_identity_5)
%lstm_91_while_lstm_91_strided_slice_1e
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensorK
8lstm_91_while_lstm_cell_91_split_readvariableop_resource:	?I
:lstm_91_while_lstm_cell_91_split_1_readvariableop_resource:	?E
2lstm_91_while_lstm_cell_91_readvariableop_resource:	 ???)lstm_91/while/lstm_cell_91/ReadVariableOp?+lstm_91/while/lstm_cell_91/ReadVariableOp_1?+lstm_91/while/lstm_cell_91/ReadVariableOp_2?+lstm_91/while/lstm_cell_91/ReadVariableOp_3?/lstm_91/while/lstm_cell_91/split/ReadVariableOp?1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0lstm_91_while_placeholderHlstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_91/while/TensorArrayV2Read/TensorListGetItem?
*lstm_91/while/lstm_cell_91/ones_like/ShapeShapelstm_91_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_91/while/lstm_cell_91/ones_like/Shape?
*lstm_91/while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_91/while/lstm_cell_91/ones_like/Const?
$lstm_91/while/lstm_cell_91/ones_likeFill3lstm_91/while/lstm_cell_91/ones_like/Shape:output:03lstm_91/while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/ones_like?
(lstm_91/while/lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2*
(lstm_91/while/lstm_cell_91/dropout/Const?
&lstm_91/while/lstm_cell_91/dropout/MulMul-lstm_91/while/lstm_cell_91/ones_like:output:01lstm_91/while/lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_91/while/lstm_cell_91/dropout/Mul?
(lstm_91/while/lstm_cell_91/dropout/ShapeShape-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_91/while/lstm_cell_91/dropout/Shape?
?lstm_91/while/lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform1lstm_91/while/lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??2A
?lstm_91/while/lstm_cell_91/dropout/random_uniform/RandomUniform?
1lstm_91/while/lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_91/while/lstm_cell_91/dropout/GreaterEqual/y?
/lstm_91/while/lstm_cell_91/dropout/GreaterEqualGreaterEqualHlstm_91/while/lstm_cell_91/dropout/random_uniform/RandomUniform:output:0:lstm_91/while/lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_91/while/lstm_cell_91/dropout/GreaterEqual?
'lstm_91/while/lstm_cell_91/dropout/CastCast3lstm_91/while/lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_91/while/lstm_cell_91/dropout/Cast?
(lstm_91/while/lstm_cell_91/dropout/Mul_1Mul*lstm_91/while/lstm_cell_91/dropout/Mul:z:0+lstm_91/while/lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_91/while/lstm_cell_91/dropout/Mul_1?
*lstm_91/while/lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_91/while/lstm_cell_91/dropout_1/Const?
(lstm_91/while/lstm_cell_91/dropout_1/MulMul-lstm_91/while/lstm_cell_91/ones_like:output:03lstm_91/while/lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_91/while/lstm_cell_91/dropout_1/Mul?
*lstm_91/while/lstm_cell_91/dropout_1/ShapeShape-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_91/while/lstm_cell_91/dropout_1/Shape?
Alstm_91/while/lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_91/while/lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_91/while/lstm_cell_91/dropout_1/random_uniform/RandomUniform?
3lstm_91/while/lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_91/while/lstm_cell_91/dropout_1/GreaterEqual/y?
1lstm_91/while/lstm_cell_91/dropout_1/GreaterEqualGreaterEqualJlstm_91/while/lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:0<lstm_91/while/lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_91/while/lstm_cell_91/dropout_1/GreaterEqual?
)lstm_91/while/lstm_cell_91/dropout_1/CastCast5lstm_91/while/lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_91/while/lstm_cell_91/dropout_1/Cast?
*lstm_91/while/lstm_cell_91/dropout_1/Mul_1Mul,lstm_91/while/lstm_cell_91/dropout_1/Mul:z:0-lstm_91/while/lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_91/while/lstm_cell_91/dropout_1/Mul_1?
*lstm_91/while/lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_91/while/lstm_cell_91/dropout_2/Const?
(lstm_91/while/lstm_cell_91/dropout_2/MulMul-lstm_91/while/lstm_cell_91/ones_like:output:03lstm_91/while/lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_91/while/lstm_cell_91/dropout_2/Mul?
*lstm_91/while/lstm_cell_91/dropout_2/ShapeShape-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_91/while/lstm_cell_91/dropout_2/Shape?
Alstm_91/while/lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_91/while/lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??^2C
Alstm_91/while/lstm_cell_91/dropout_2/random_uniform/RandomUniform?
3lstm_91/while/lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_91/while/lstm_cell_91/dropout_2/GreaterEqual/y?
1lstm_91/while/lstm_cell_91/dropout_2/GreaterEqualGreaterEqualJlstm_91/while/lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:0<lstm_91/while/lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_91/while/lstm_cell_91/dropout_2/GreaterEqual?
)lstm_91/while/lstm_cell_91/dropout_2/CastCast5lstm_91/while/lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_91/while/lstm_cell_91/dropout_2/Cast?
*lstm_91/while/lstm_cell_91/dropout_2/Mul_1Mul,lstm_91/while/lstm_cell_91/dropout_2/Mul:z:0-lstm_91/while/lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_91/while/lstm_cell_91/dropout_2/Mul_1?
*lstm_91/while/lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_91/while/lstm_cell_91/dropout_3/Const?
(lstm_91/while/lstm_cell_91/dropout_3/MulMul-lstm_91/while/lstm_cell_91/ones_like:output:03lstm_91/while/lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_91/while/lstm_cell_91/dropout_3/Mul?
*lstm_91/while/lstm_cell_91/dropout_3/ShapeShape-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_91/while/lstm_cell_91/dropout_3/Shape?
Alstm_91/while/lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_91/while/lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ͷ?2C
Alstm_91/while/lstm_cell_91/dropout_3/random_uniform/RandomUniform?
3lstm_91/while/lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_91/while/lstm_cell_91/dropout_3/GreaterEqual/y?
1lstm_91/while/lstm_cell_91/dropout_3/GreaterEqualGreaterEqualJlstm_91/while/lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:0<lstm_91/while/lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_91/while/lstm_cell_91/dropout_3/GreaterEqual?
)lstm_91/while/lstm_cell_91/dropout_3/CastCast5lstm_91/while/lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_91/while/lstm_cell_91/dropout_3/Cast?
*lstm_91/while/lstm_cell_91/dropout_3/Mul_1Mul,lstm_91/while/lstm_cell_91/dropout_3/Mul:z:0-lstm_91/while/lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_91/while/lstm_cell_91/dropout_3/Mul_1?
*lstm_91/while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_91/while/lstm_cell_91/split/split_dim?
/lstm_91/while/lstm_cell_91/split/ReadVariableOpReadVariableOp:lstm_91_while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_91/while/lstm_cell_91/split/ReadVariableOp?
 lstm_91/while/lstm_cell_91/splitSplit3lstm_91/while/lstm_cell_91/split/split_dim:output:07lstm_91/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_91/while/lstm_cell_91/split?
!lstm_91/while/lstm_cell_91/MatMulMatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_91/while/lstm_cell_91/MatMul?
#lstm_91/while/lstm_cell_91/MatMul_1MatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_1?
#lstm_91/while/lstm_cell_91/MatMul_2MatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_2?
#lstm_91/while/lstm_cell_91/MatMul_3MatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_3?
,lstm_91/while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_91/while/lstm_cell_91/split_1/split_dim?
1lstm_91/while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp<lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?
"lstm_91/while/lstm_cell_91/split_1Split5lstm_91/while/lstm_cell_91/split_1/split_dim:output:09lstm_91/while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_91/while/lstm_cell_91/split_1?
"lstm_91/while/lstm_cell_91/BiasAddBiasAdd+lstm_91/while/lstm_cell_91/MatMul:product:0+lstm_91/while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/while/lstm_cell_91/BiasAdd?
$lstm_91/while/lstm_cell_91/BiasAdd_1BiasAdd-lstm_91/while/lstm_cell_91/MatMul_1:product:0+lstm_91/while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/BiasAdd_1?
$lstm_91/while/lstm_cell_91/BiasAdd_2BiasAdd-lstm_91/while/lstm_cell_91/MatMul_2:product:0+lstm_91/while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/BiasAdd_2?
$lstm_91/while/lstm_cell_91/BiasAdd_3BiasAdd-lstm_91/while/lstm_cell_91/MatMul_3:product:0+lstm_91/while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/BiasAdd_3?
lstm_91/while/lstm_cell_91/mulMullstm_91_while_placeholder_2,lstm_91/while/lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/while/lstm_cell_91/mul?
 lstm_91/while/lstm_cell_91/mul_1Mullstm_91_while_placeholder_2.lstm_91/while/lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_1?
 lstm_91/while/lstm_cell_91/mul_2Mullstm_91_while_placeholder_2.lstm_91/while/lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_2?
 lstm_91/while/lstm_cell_91/mul_3Mullstm_91_while_placeholder_2.lstm_91/while/lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_3?
)lstm_91/while/lstm_cell_91/ReadVariableOpReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_91/while/lstm_cell_91/ReadVariableOp?
.lstm_91/while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_91/while/lstm_cell_91/strided_slice/stack?
0lstm_91/while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_91/while/lstm_cell_91/strided_slice/stack_1?
0lstm_91/while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_91/while/lstm_cell_91/strided_slice/stack_2?
(lstm_91/while/lstm_cell_91/strided_sliceStridedSlice1lstm_91/while/lstm_cell_91/ReadVariableOp:value:07lstm_91/while/lstm_cell_91/strided_slice/stack:output:09lstm_91/while/lstm_cell_91/strided_slice/stack_1:output:09lstm_91/while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_91/while/lstm_cell_91/strided_slice?
#lstm_91/while/lstm_cell_91/MatMul_4MatMul"lstm_91/while/lstm_cell_91/mul:z:01lstm_91/while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_4?
lstm_91/while/lstm_cell_91/addAddV2+lstm_91/while/lstm_cell_91/BiasAdd:output:0-lstm_91/while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/while/lstm_cell_91/add?
"lstm_91/while/lstm_cell_91/SigmoidSigmoid"lstm_91/while/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/while/lstm_cell_91/Sigmoid?
+lstm_91/while/lstm_cell_91/ReadVariableOp_1ReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_91/while/lstm_cell_91/ReadVariableOp_1?
0lstm_91/while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_91/while/lstm_cell_91/strided_slice_1/stack?
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_1?
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_2?
*lstm_91/while/lstm_cell_91/strided_slice_1StridedSlice3lstm_91/while/lstm_cell_91/ReadVariableOp_1:value:09lstm_91/while/lstm_cell_91/strided_slice_1/stack:output:0;lstm_91/while/lstm_cell_91/strided_slice_1/stack_1:output:0;lstm_91/while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_91/while/lstm_cell_91/strided_slice_1?
#lstm_91/while/lstm_cell_91/MatMul_5MatMul$lstm_91/while/lstm_cell_91/mul_1:z:03lstm_91/while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_5?
 lstm_91/while/lstm_cell_91/add_1AddV2-lstm_91/while/lstm_cell_91/BiasAdd_1:output:0-lstm_91/while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_1?
$lstm_91/while/lstm_cell_91/Sigmoid_1Sigmoid$lstm_91/while/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/Sigmoid_1?
 lstm_91/while/lstm_cell_91/mul_4Mul(lstm_91/while/lstm_cell_91/Sigmoid_1:y:0lstm_91_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_4?
+lstm_91/while/lstm_cell_91/ReadVariableOp_2ReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_91/while/lstm_cell_91/ReadVariableOp_2?
0lstm_91/while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_91/while/lstm_cell_91/strided_slice_2/stack?
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_1?
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_2?
*lstm_91/while/lstm_cell_91/strided_slice_2StridedSlice3lstm_91/while/lstm_cell_91/ReadVariableOp_2:value:09lstm_91/while/lstm_cell_91/strided_slice_2/stack:output:0;lstm_91/while/lstm_cell_91/strided_slice_2/stack_1:output:0;lstm_91/while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_91/while/lstm_cell_91/strided_slice_2?
#lstm_91/while/lstm_cell_91/MatMul_6MatMul$lstm_91/while/lstm_cell_91/mul_2:z:03lstm_91/while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_6?
 lstm_91/while/lstm_cell_91/add_2AddV2-lstm_91/while/lstm_cell_91/BiasAdd_2:output:0-lstm_91/while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_2?
lstm_91/while/lstm_cell_91/ReluRelu$lstm_91/while/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_91/while/lstm_cell_91/Relu?
 lstm_91/while/lstm_cell_91/mul_5Mul&lstm_91/while/lstm_cell_91/Sigmoid:y:0-lstm_91/while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_5?
 lstm_91/while/lstm_cell_91/add_3AddV2$lstm_91/while/lstm_cell_91/mul_4:z:0$lstm_91/while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_3?
+lstm_91/while/lstm_cell_91/ReadVariableOp_3ReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_91/while/lstm_cell_91/ReadVariableOp_3?
0lstm_91/while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_91/while/lstm_cell_91/strided_slice_3/stack?
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_1?
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_2?
*lstm_91/while/lstm_cell_91/strided_slice_3StridedSlice3lstm_91/while/lstm_cell_91/ReadVariableOp_3:value:09lstm_91/while/lstm_cell_91/strided_slice_3/stack:output:0;lstm_91/while/lstm_cell_91/strided_slice_3/stack_1:output:0;lstm_91/while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_91/while/lstm_cell_91/strided_slice_3?
#lstm_91/while/lstm_cell_91/MatMul_7MatMul$lstm_91/while/lstm_cell_91/mul_3:z:03lstm_91/while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_7?
 lstm_91/while/lstm_cell_91/add_4AddV2-lstm_91/while/lstm_cell_91/BiasAdd_3:output:0-lstm_91/while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_4?
$lstm_91/while/lstm_cell_91/Sigmoid_2Sigmoid$lstm_91/while/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/Sigmoid_2?
!lstm_91/while/lstm_cell_91/Relu_1Relu$lstm_91/while/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_91/while/lstm_cell_91/Relu_1?
 lstm_91/while/lstm_cell_91/mul_6Mul(lstm_91/while/lstm_cell_91/Sigmoid_2:y:0/lstm_91/while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_6?
2lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_91_while_placeholder_1lstm_91_while_placeholder$lstm_91/while/lstm_cell_91/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_91/while/TensorArrayV2Write/TensorListSetIteml
lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add/y?
lstm_91/while/addAddV2lstm_91_while_placeholderlstm_91/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/addp
lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add_1/y?
lstm_91/while/add_1AddV2(lstm_91_while_lstm_91_while_loop_counterlstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/add_1?
lstm_91/while/IdentityIdentitylstm_91/while/add_1:z:0^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity?
lstm_91/while/Identity_1Identity.lstm_91_while_lstm_91_while_maximum_iterations^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_1?
lstm_91/while/Identity_2Identitylstm_91/while/add:z:0^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_2?
lstm_91/while/Identity_3IdentityBlstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_3?
lstm_91/while/Identity_4Identity$lstm_91/while/lstm_cell_91/mul_6:z:0^lstm_91/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_91/while/Identity_4?
lstm_91/while/Identity_5Identity$lstm_91/while/lstm_cell_91/add_3:z:0^lstm_91/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_91/while/Identity_5?
lstm_91/while/NoOpNoOp*^lstm_91/while/lstm_cell_91/ReadVariableOp,^lstm_91/while/lstm_cell_91/ReadVariableOp_1,^lstm_91/while/lstm_cell_91/ReadVariableOp_2,^lstm_91/while/lstm_cell_91/ReadVariableOp_30^lstm_91/while/lstm_cell_91/split/ReadVariableOp2^lstm_91/while/lstm_cell_91/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_91/while/NoOp"9
lstm_91_while_identitylstm_91/while/Identity:output:0"=
lstm_91_while_identity_1!lstm_91/while/Identity_1:output:0"=
lstm_91_while_identity_2!lstm_91/while/Identity_2:output:0"=
lstm_91_while_identity_3!lstm_91/while/Identity_3:output:0"=
lstm_91_while_identity_4!lstm_91/while/Identity_4:output:0"=
lstm_91_while_identity_5!lstm_91/while/Identity_5:output:0"P
%lstm_91_while_lstm_91_strided_slice_1'lstm_91_while_lstm_91_strided_slice_1_0"j
2lstm_91_while_lstm_cell_91_readvariableop_resource4lstm_91_while_lstm_cell_91_readvariableop_resource_0"z
:lstm_91_while_lstm_cell_91_split_1_readvariableop_resource<lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0"v
8lstm_91_while_lstm_cell_91_split_readvariableop_resource:lstm_91_while_lstm_cell_91_split_readvariableop_resource_0"?
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensorclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_91/while/lstm_cell_91/ReadVariableOp)lstm_91/while/lstm_cell_91/ReadVariableOp2Z
+lstm_91/while/lstm_cell_91/ReadVariableOp_1+lstm_91/while/lstm_cell_91/ReadVariableOp_12Z
+lstm_91/while/lstm_cell_91/ReadVariableOp_2+lstm_91/while/lstm_cell_91/ReadVariableOp_22Z
+lstm_91/while/lstm_cell_91/ReadVariableOp_3+lstm_91/while/lstm_cell_91/ReadVariableOp_32b
/lstm_91/while/lstm_cell_91/split/ReadVariableOp/lstm_91/while/lstm_cell_91/split/ReadVariableOp2f
1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp: 
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
?R
?
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2931541

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2,
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
?v
?
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2931774

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed?	*
seed2??52&
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
seed2?ʲ2(
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
seed2???2(
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2,
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
?	
while_body_2932723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_91_split_readvariableop_resource_0:	?C
4while_lstm_cell_91_split_1_readvariableop_resource_0:	??
,while_lstm_cell_91_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_91_split_readvariableop_resource:	?A
2while_lstm_cell_91_split_1_readvariableop_resource:	?=
*while_lstm_cell_91_readvariableop_resource:	 ???!while/lstm_cell_91/ReadVariableOp?#while/lstm_cell_91/ReadVariableOp_1?#while/lstm_cell_91/ReadVariableOp_2?#while/lstm_cell_91/ReadVariableOp_3?'while/lstm_cell_91/split/ReadVariableOp?)while/lstm_cell_91/split_1/ReadVariableOp?
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
"while/lstm_cell_91/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_91/ones_like/Shape?
"while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_91/ones_like/Const?
while/lstm_cell_91/ones_likeFill+while/lstm_cell_91/ones_like/Shape:output:0+while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/ones_like?
 while/lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_91/dropout/Const?
while/lstm_cell_91/dropout/MulMul%while/lstm_cell_91/ones_like:output:0)while/lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_91/dropout/Mul?
 while/lstm_cell_91/dropout/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_91/dropout/Shape?
7while/lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_91/dropout/random_uniform/RandomUniform?
)while/lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_91/dropout/GreaterEqual/y?
'while/lstm_cell_91/dropout/GreaterEqualGreaterEqual@while/lstm_cell_91/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_91/dropout/GreaterEqual?
while/lstm_cell_91/dropout/CastCast+while/lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_91/dropout/Cast?
 while/lstm_cell_91/dropout/Mul_1Mul"while/lstm_cell_91/dropout/Mul:z:0#while/lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout/Mul_1?
"while/lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_1/Const?
 while/lstm_cell_91/dropout_1/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_1/Mul?
"while/lstm_cell_91/dropout_1/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_1/Shape?
9while/lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_91/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_1/GreaterEqual/y?
)while/lstm_cell_91/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_1/GreaterEqual?
!while/lstm_cell_91/dropout_1/CastCast-while/lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_1/Cast?
"while/lstm_cell_91/dropout_1/Mul_1Mul$while/lstm_cell_91/dropout_1/Mul:z:0%while/lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_1/Mul_1?
"while/lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_2/Const?
 while/lstm_cell_91/dropout_2/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_2/Mul?
"while/lstm_cell_91/dropout_2/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_2/Shape?
9while/lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_91/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_2/GreaterEqual/y?
)while/lstm_cell_91/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_2/GreaterEqual?
!while/lstm_cell_91/dropout_2/CastCast-while/lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_2/Cast?
"while/lstm_cell_91/dropout_2/Mul_1Mul$while/lstm_cell_91/dropout_2/Mul:z:0%while/lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_2/Mul_1?
"while/lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_3/Const?
 while/lstm_cell_91/dropout_3/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_3/Mul?
"while/lstm_cell_91/dropout_3/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_3/Shape?
9while/lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_91/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_3/GreaterEqual/y?
)while/lstm_cell_91/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_3/GreaterEqual?
!while/lstm_cell_91/dropout_3/CastCast-while/lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_3/Cast?
"while/lstm_cell_91/dropout_3/Mul_1Mul$while/lstm_cell_91/dropout_3/Mul:z:0%while/lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_3/Mul_1?
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_91/split/split_dim?
'while/lstm_cell_91/split/ReadVariableOpReadVariableOp2while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_91/split/ReadVariableOp?
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_91/split?
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul?
while/lstm_cell_91/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_1?
while/lstm_cell_91/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_2?
while/lstm_cell_91/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_3?
$while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_91/split_1/split_dim?
)while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_91/split_1/ReadVariableOp?
while/lstm_cell_91/split_1Split-while/lstm_cell_91/split_1/split_dim:output:01while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_91/split_1?
while/lstm_cell_91/BiasAddBiasAdd#while/lstm_cell_91/MatMul:product:0#while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd?
while/lstm_cell_91/BiasAdd_1BiasAdd%while/lstm_cell_91/MatMul_1:product:0#while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_1?
while/lstm_cell_91/BiasAdd_2BiasAdd%while/lstm_cell_91/MatMul_2:product:0#while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_2?
while/lstm_cell_91/BiasAdd_3BiasAdd%while/lstm_cell_91/MatMul_3:product:0#while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_3?
while/lstm_cell_91/mulMulwhile_placeholder_2$while/lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul?
while/lstm_cell_91/mul_1Mulwhile_placeholder_2&while/lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_1?
while/lstm_cell_91/mul_2Mulwhile_placeholder_2&while/lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_2?
while/lstm_cell_91/mul_3Mulwhile_placeholder_2&while/lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_3?
!while/lstm_cell_91/ReadVariableOpReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_91/ReadVariableOp?
&while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_91/strided_slice/stack?
(while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice/stack_1?
(while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_91/strided_slice/stack_2?
 while/lstm_cell_91/strided_sliceStridedSlice)while/lstm_cell_91/ReadVariableOp:value:0/while/lstm_cell_91/strided_slice/stack:output:01while/lstm_cell_91/strided_slice/stack_1:output:01while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_91/strided_slice?
while/lstm_cell_91/MatMul_4MatMulwhile/lstm_cell_91/mul:z:0)while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_4?
while/lstm_cell_91/addAddV2#while/lstm_cell_91/BiasAdd:output:0%while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add?
while/lstm_cell_91/SigmoidSigmoidwhile/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid?
#while/lstm_cell_91/ReadVariableOp_1ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_1?
(while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice_1/stack?
*while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_91/strided_slice_1/stack_1?
*while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_1/stack_2?
"while/lstm_cell_91/strided_slice_1StridedSlice+while/lstm_cell_91/ReadVariableOp_1:value:01while/lstm_cell_91/strided_slice_1/stack:output:03while/lstm_cell_91/strided_slice_1/stack_1:output:03while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_1?
while/lstm_cell_91/MatMul_5MatMulwhile/lstm_cell_91/mul_1:z:0+while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_5?
while/lstm_cell_91/add_1AddV2%while/lstm_cell_91/BiasAdd_1:output:0%while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_1?
while/lstm_cell_91/Sigmoid_1Sigmoidwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_1?
while/lstm_cell_91/mul_4Mul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_4?
#while/lstm_cell_91/ReadVariableOp_2ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_2?
(while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_91/strided_slice_2/stack?
*while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_91/strided_slice_2/stack_1?
*while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_2/stack_2?
"while/lstm_cell_91/strided_slice_2StridedSlice+while/lstm_cell_91/ReadVariableOp_2:value:01while/lstm_cell_91/strided_slice_2/stack:output:03while/lstm_cell_91/strided_slice_2/stack_1:output:03while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_2?
while/lstm_cell_91/MatMul_6MatMulwhile/lstm_cell_91/mul_2:z:0+while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_6?
while/lstm_cell_91/add_2AddV2%while/lstm_cell_91/BiasAdd_2:output:0%while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_2?
while/lstm_cell_91/ReluReluwhile/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu?
while/lstm_cell_91/mul_5Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_5?
while/lstm_cell_91/add_3AddV2while/lstm_cell_91/mul_4:z:0while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_3?
#while/lstm_cell_91/ReadVariableOp_3ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_3?
(while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_91/strided_slice_3/stack?
*while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_91/strided_slice_3/stack_1?
*while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_3/stack_2?
"while/lstm_cell_91/strided_slice_3StridedSlice+while/lstm_cell_91/ReadVariableOp_3:value:01while/lstm_cell_91/strided_slice_3/stack:output:03while/lstm_cell_91/strided_slice_3/stack_1:output:03while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_3?
while/lstm_cell_91/MatMul_7MatMulwhile/lstm_cell_91/mul_3:z:0+while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_7?
while/lstm_cell_91/add_4AddV2%while/lstm_cell_91/BiasAdd_3:output:0%while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_4?
while/lstm_cell_91/Sigmoid_2Sigmoidwhile/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_2?
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu_1?
while/lstm_cell_91/mul_6Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_91/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_91/ReadVariableOp$^while/lstm_cell_91/ReadVariableOp_1$^while/lstm_cell_91/ReadVariableOp_2$^while/lstm_cell_91/ReadVariableOp_3(^while/lstm_cell_91/split/ReadVariableOp*^while/lstm_cell_91/split_1/ReadVariableOp*"
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
*while_lstm_cell_91_readvariableop_resource,while_lstm_cell_91_readvariableop_resource_0"j
2while_lstm_cell_91_split_1_readvariableop_resource4while_lstm_cell_91_split_1_readvariableop_resource_0"f
0while_lstm_cell_91_split_readvariableop_resource2while_lstm_cell_91_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_91/ReadVariableOp!while/lstm_cell_91/ReadVariableOp2J
#while/lstm_cell_91/ReadVariableOp_1#while/lstm_cell_91/ReadVariableOp_12J
#while/lstm_cell_91/ReadVariableOp_2#while/lstm_cell_91/ReadVariableOp_22J
#while/lstm_cell_91/ReadVariableOp_3#while/lstm_cell_91/ReadVariableOp_32R
'while/lstm_cell_91/split/ReadVariableOp'while/lstm_cell_91/split/ReadVariableOp2V
)while/lstm_cell_91/split_1/ReadVariableOp)while/lstm_cell_91/split_1/ReadVariableOp: 
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
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934889

inputs=
*lstm_cell_91_split_readvariableop_resource:	?;
,lstm_cell_91_split_1_readvariableop_resource:	?7
$lstm_cell_91_readvariableop_resource:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_91/ReadVariableOp?lstm_cell_91/ReadVariableOp_1?lstm_cell_91/ReadVariableOp_2?lstm_cell_91/ReadVariableOp_3?!lstm_cell_91/split/ReadVariableOp?#lstm_cell_91/split_1/ReadVariableOp?whileD
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
lstm_cell_91/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_91/ones_like/Shape?
lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_91/ones_like/Const?
lstm_cell_91/ones_likeFill%lstm_cell_91/ones_like/Shape:output:0%lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/ones_like}
lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout/Const?
lstm_cell_91/dropout/MulMullstm_cell_91/ones_like:output:0#lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Mul?
lstm_cell_91/dropout/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout/Shape?
1lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2˖?23
1lstm_cell_91/dropout/random_uniform/RandomUniform?
#lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_91/dropout/GreaterEqual/y?
!lstm_cell_91/dropout/GreaterEqualGreaterEqual:lstm_cell_91/dropout/random_uniform/RandomUniform:output:0,lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_91/dropout/GreaterEqual?
lstm_cell_91/dropout/CastCast%lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Cast?
lstm_cell_91/dropout/Mul_1Mullstm_cell_91/dropout/Mul:z:0lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Mul_1?
lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_1/Const?
lstm_cell_91/dropout_1/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Mul?
lstm_cell_91/dropout_1/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_1/Shape?
3lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_91/dropout_1/random_uniform/RandomUniform?
%lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_1/GreaterEqual/y?
#lstm_cell_91/dropout_1/GreaterEqualGreaterEqual<lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_1/GreaterEqual?
lstm_cell_91/dropout_1/CastCast'lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Cast?
lstm_cell_91/dropout_1/Mul_1Mullstm_cell_91/dropout_1/Mul:z:0lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Mul_1?
lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_2/Const?
lstm_cell_91/dropout_2/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Mul?
lstm_cell_91/dropout_2/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_2/Shape?
3lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_91/dropout_2/random_uniform/RandomUniform?
%lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_2/GreaterEqual/y?
#lstm_cell_91/dropout_2/GreaterEqualGreaterEqual<lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_2/GreaterEqual?
lstm_cell_91/dropout_2/CastCast'lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Cast?
lstm_cell_91/dropout_2/Mul_1Mullstm_cell_91/dropout_2/Mul:z:0lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Mul_1?
lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_3/Const?
lstm_cell_91/dropout_3/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Mul?
lstm_cell_91/dropout_3/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_3/Shape?
3lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_91/dropout_3/random_uniform/RandomUniform?
%lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_3/GreaterEqual/y?
#lstm_cell_91/dropout_3/GreaterEqualGreaterEqual<lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_3/GreaterEqual?
lstm_cell_91/dropout_3/CastCast'lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Cast?
lstm_cell_91/dropout_3/Mul_1Mullstm_cell_91/dropout_3/Mul:z:0lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Mul_1~
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_91/split/split_dim?
!lstm_cell_91/split/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_91/split/ReadVariableOp?
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0)lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_91/split?
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul?
lstm_cell_91/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_1?
lstm_cell_91/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_2?
lstm_cell_91/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_3?
lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_91/split_1/split_dim?
#lstm_cell_91/split_1/ReadVariableOpReadVariableOp,lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_91/split_1/ReadVariableOp?
lstm_cell_91/split_1Split'lstm_cell_91/split_1/split_dim:output:0+lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_91/split_1?
lstm_cell_91/BiasAddBiasAddlstm_cell_91/MatMul:product:0lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd?
lstm_cell_91/BiasAdd_1BiasAddlstm_cell_91/MatMul_1:product:0lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_1?
lstm_cell_91/BiasAdd_2BiasAddlstm_cell_91/MatMul_2:product:0lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_2?
lstm_cell_91/BiasAdd_3BiasAddlstm_cell_91/MatMul_3:product:0lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_3?
lstm_cell_91/mulMulzeros:output:0lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul?
lstm_cell_91/mul_1Mulzeros:output:0 lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_1?
lstm_cell_91/mul_2Mulzeros:output:0 lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_2?
lstm_cell_91/mul_3Mulzeros:output:0 lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_3?
lstm_cell_91/ReadVariableOpReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp?
 lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_91/strided_slice/stack?
"lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice/stack_1?
"lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_91/strided_slice/stack_2?
lstm_cell_91/strided_sliceStridedSlice#lstm_cell_91/ReadVariableOp:value:0)lstm_cell_91/strided_slice/stack:output:0+lstm_cell_91/strided_slice/stack_1:output:0+lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice?
lstm_cell_91/MatMul_4MatMullstm_cell_91/mul:z:0#lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_4?
lstm_cell_91/addAddV2lstm_cell_91/BiasAdd:output:0lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add
lstm_cell_91/SigmoidSigmoidlstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid?
lstm_cell_91/ReadVariableOp_1ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_1?
"lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice_1/stack?
$lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_91/strided_slice_1/stack_1?
$lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_1/stack_2?
lstm_cell_91/strided_slice_1StridedSlice%lstm_cell_91/ReadVariableOp_1:value:0+lstm_cell_91/strided_slice_1/stack:output:0-lstm_cell_91/strided_slice_1/stack_1:output:0-lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_1?
lstm_cell_91/MatMul_5MatMullstm_cell_91/mul_1:z:0%lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_5?
lstm_cell_91/add_1AddV2lstm_cell_91/BiasAdd_1:output:0lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_1?
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_1?
lstm_cell_91/mul_4Mullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_4?
lstm_cell_91/ReadVariableOp_2ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_2?
"lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_91/strided_slice_2/stack?
$lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_91/strided_slice_2/stack_1?
$lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_2/stack_2?
lstm_cell_91/strided_slice_2StridedSlice%lstm_cell_91/ReadVariableOp_2:value:0+lstm_cell_91/strided_slice_2/stack:output:0-lstm_cell_91/strided_slice_2/stack_1:output:0-lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_2?
lstm_cell_91/MatMul_6MatMullstm_cell_91/mul_2:z:0%lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_6?
lstm_cell_91/add_2AddV2lstm_cell_91/BiasAdd_2:output:0lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_2x
lstm_cell_91/ReluRelulstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu?
lstm_cell_91/mul_5Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_5?
lstm_cell_91/add_3AddV2lstm_cell_91/mul_4:z:0lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_3?
lstm_cell_91/ReadVariableOp_3ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_3?
"lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_91/strided_slice_3/stack?
$lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_91/strided_slice_3/stack_1?
$lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_3/stack_2?
lstm_cell_91/strided_slice_3StridedSlice%lstm_cell_91/ReadVariableOp_3:value:0+lstm_cell_91/strided_slice_3/stack:output:0-lstm_cell_91/strided_slice_3/stack_1:output:0-lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_3?
lstm_cell_91/MatMul_7MatMullstm_cell_91/mul_3:z:0%lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_7?
lstm_cell_91/add_4AddV2lstm_cell_91/BiasAdd_3:output:0lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_4?
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_2|
lstm_cell_91/Relu_1Relulstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu_1?
lstm_cell_91/mul_6Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_91_split_readvariableop_resource,lstm_cell_91_split_1_readvariableop_resource$lstm_cell_91_readvariableop_resource*
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
bodyR
while_body_2934724*
condR
while_cond_2934723*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_91/ReadVariableOp^lstm_cell_91/ReadVariableOp_1^lstm_cell_91/ReadVariableOp_2^lstm_cell_91/ReadVariableOp_3"^lstm_cell_91/split/ReadVariableOp$^lstm_cell_91/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_91/ReadVariableOplstm_cell_91/ReadVariableOp2>
lstm_cell_91/ReadVariableOp_1lstm_cell_91/ReadVariableOp_12>
lstm_cell_91/ReadVariableOp_2lstm_cell_91/ReadVariableOp_22>
lstm_cell_91/ReadVariableOp_3lstm_cell_91/ReadVariableOp_32F
!lstm_cell_91/split/ReadVariableOp!lstm_cell_91/split/ReadVariableOp2J
#lstm_cell_91/split_1/ReadVariableOp#lstm_cell_91/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2934723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2934723___redundant_placeholder05
1while_while_cond_2934723___redundant_placeholder15
1while_while_cond_2934723___redundant_placeholder25
1while_while_cond_2934723___redundant_placeholder3
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
?
?
)__inference_lstm_91_layer_call_fn_2933778

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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29324502
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
?
/__inference_sequential_37_layer_call_fn_2933133

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
GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_29329522
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
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934582

inputs=
*lstm_cell_91_split_readvariableop_resource:	?;
,lstm_cell_91_split_1_readvariableop_resource:	?7
$lstm_cell_91_readvariableop_resource:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_91/ReadVariableOp?lstm_cell_91/ReadVariableOp_1?lstm_cell_91/ReadVariableOp_2?lstm_cell_91/ReadVariableOp_3?!lstm_cell_91/split/ReadVariableOp?#lstm_cell_91/split_1/ReadVariableOp?whileD
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
lstm_cell_91/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_91/ones_like/Shape?
lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_91/ones_like/Const?
lstm_cell_91/ones_likeFill%lstm_cell_91/ones_like/Shape:output:0%lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/ones_like~
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_91/split/split_dim?
!lstm_cell_91/split/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_91/split/ReadVariableOp?
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0)lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_91/split?
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul?
lstm_cell_91/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_1?
lstm_cell_91/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_2?
lstm_cell_91/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_3?
lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_91/split_1/split_dim?
#lstm_cell_91/split_1/ReadVariableOpReadVariableOp,lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_91/split_1/ReadVariableOp?
lstm_cell_91/split_1Split'lstm_cell_91/split_1/split_dim:output:0+lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_91/split_1?
lstm_cell_91/BiasAddBiasAddlstm_cell_91/MatMul:product:0lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd?
lstm_cell_91/BiasAdd_1BiasAddlstm_cell_91/MatMul_1:product:0lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_1?
lstm_cell_91/BiasAdd_2BiasAddlstm_cell_91/MatMul_2:product:0lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_2?
lstm_cell_91/BiasAdd_3BiasAddlstm_cell_91/MatMul_3:product:0lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_3?
lstm_cell_91/mulMulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul?
lstm_cell_91/mul_1Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_1?
lstm_cell_91/mul_2Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_2?
lstm_cell_91/mul_3Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_3?
lstm_cell_91/ReadVariableOpReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp?
 lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_91/strided_slice/stack?
"lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice/stack_1?
"lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_91/strided_slice/stack_2?
lstm_cell_91/strided_sliceStridedSlice#lstm_cell_91/ReadVariableOp:value:0)lstm_cell_91/strided_slice/stack:output:0+lstm_cell_91/strided_slice/stack_1:output:0+lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice?
lstm_cell_91/MatMul_4MatMullstm_cell_91/mul:z:0#lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_4?
lstm_cell_91/addAddV2lstm_cell_91/BiasAdd:output:0lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add
lstm_cell_91/SigmoidSigmoidlstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid?
lstm_cell_91/ReadVariableOp_1ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_1?
"lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice_1/stack?
$lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_91/strided_slice_1/stack_1?
$lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_1/stack_2?
lstm_cell_91/strided_slice_1StridedSlice%lstm_cell_91/ReadVariableOp_1:value:0+lstm_cell_91/strided_slice_1/stack:output:0-lstm_cell_91/strided_slice_1/stack_1:output:0-lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_1?
lstm_cell_91/MatMul_5MatMullstm_cell_91/mul_1:z:0%lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_5?
lstm_cell_91/add_1AddV2lstm_cell_91/BiasAdd_1:output:0lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_1?
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_1?
lstm_cell_91/mul_4Mullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_4?
lstm_cell_91/ReadVariableOp_2ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_2?
"lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_91/strided_slice_2/stack?
$lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_91/strided_slice_2/stack_1?
$lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_2/stack_2?
lstm_cell_91/strided_slice_2StridedSlice%lstm_cell_91/ReadVariableOp_2:value:0+lstm_cell_91/strided_slice_2/stack:output:0-lstm_cell_91/strided_slice_2/stack_1:output:0-lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_2?
lstm_cell_91/MatMul_6MatMullstm_cell_91/mul_2:z:0%lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_6?
lstm_cell_91/add_2AddV2lstm_cell_91/BiasAdd_2:output:0lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_2x
lstm_cell_91/ReluRelulstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu?
lstm_cell_91/mul_5Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_5?
lstm_cell_91/add_3AddV2lstm_cell_91/mul_4:z:0lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_3?
lstm_cell_91/ReadVariableOp_3ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_3?
"lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_91/strided_slice_3/stack?
$lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_91/strided_slice_3/stack_1?
$lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_3/stack_2?
lstm_cell_91/strided_slice_3StridedSlice%lstm_cell_91/ReadVariableOp_3:value:0+lstm_cell_91/strided_slice_3/stack:output:0-lstm_cell_91/strided_slice_3/stack_1:output:0-lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_3?
lstm_cell_91/MatMul_7MatMullstm_cell_91/mul_3:z:0%lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_7?
lstm_cell_91/add_4AddV2lstm_cell_91/BiasAdd_3:output:0lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_4?
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_2|
lstm_cell_91/Relu_1Relulstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu_1?
lstm_cell_91/mul_6Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_91_split_readvariableop_resource,lstm_cell_91_split_1_readvariableop_resource$lstm_cell_91_readvariableop_resource*
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
bodyR
while_body_2934449*
condR
while_cond_2934448*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_91/ReadVariableOp^lstm_cell_91/ReadVariableOp_1^lstm_cell_91/ReadVariableOp_2^lstm_cell_91/ReadVariableOp_3"^lstm_cell_91/split/ReadVariableOp$^lstm_cell_91/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_91/ReadVariableOplstm_cell_91/ReadVariableOp2>
lstm_cell_91/ReadVariableOp_1lstm_cell_91/ReadVariableOp_12>
lstm_cell_91/ReadVariableOp_2lstm_cell_91/ReadVariableOp_22>
lstm_cell_91/ReadVariableOp_3lstm_cell_91/ReadVariableOp_32F
!lstm_cell_91/split/ReadVariableOp!lstm_cell_91/split/ReadVariableOp2J
#lstm_cell_91/split_1/ReadVariableOp#lstm_cell_91/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_reshape_55_layer_call_and_return_conditional_losses_2934958

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
while_cond_2933898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2933898___redundant_placeholder05
1while_while_cond_2933898___redundant_placeholder15
1while_while_cond_2933898___redundant_placeholder25
1while_while_cond_2933898___redundant_placeholder3
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
?,
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2932952

inputs"
lstm_91_2932921:	?
lstm_91_2932923:	?"
lstm_91_2932925:	 ?#
dense_110_2932928:  
dense_110_2932930: #
dense_111_2932933: 
dense_111_2932935:
identity??!dense_110/StatefulPartitionedCall?!dense_111/StatefulPartitionedCall?0dense_111/bias/Regularizer/Square/ReadVariableOp?lstm_91/StatefulPartitionedCall?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputslstm_91_2932921lstm_91_2932923lstm_91_2932925*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29328882!
lstm_91/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_110_2932928dense_110_2932930*
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
GPU 2J 8? *O
fJRH
F__inference_dense_110_layer_call_and_return_conditional_losses_29324692#
!dense_110/StatefulPartitionedCall?
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_2932933dense_111_2932935*
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
GPU 2J 8? *O
fJRH
F__inference_dense_111_layer_call_and_return_conditional_losses_29324912#
!dense_111/StatefulPartitionedCall?
reshape_55/PartitionedCallPartitionedCall*dense_111/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_29325102
reshape_55/PartitionedCall?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_91_2932921*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/mul?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_111_2932935*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mul?
IdentityIdentity#reshape_55/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall1^dense_111/bias/Regularizer/Square/ReadVariableOp ^lstm_91/StatefulPartitionedCall>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_91_layer_call_fn_2933789

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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29328882
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
?
F__inference_dense_110_layer_call_and_return_conditional_losses_2934909

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
?
?
)__inference_lstm_91_layer_call_fn_2933756
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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29316302
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
??
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933404

inputsE
2lstm_91_lstm_cell_91_split_readvariableop_resource:	?C
4lstm_91_lstm_cell_91_split_1_readvariableop_resource:	??
,lstm_91_lstm_cell_91_readvariableop_resource:	 ?:
(dense_110_matmul_readvariableop_resource:  7
)dense_110_biasadd_readvariableop_resource: :
(dense_111_matmul_readvariableop_resource: 7
)dense_111_biasadd_readvariableop_resource:
identity?? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp? dense_111/BiasAdd/ReadVariableOp?dense_111/MatMul/ReadVariableOp?0dense_111/bias/Regularizer/Square/ReadVariableOp?#lstm_91/lstm_cell_91/ReadVariableOp?%lstm_91/lstm_cell_91/ReadVariableOp_1?%lstm_91/lstm_cell_91/ReadVariableOp_2?%lstm_91/lstm_cell_91/ReadVariableOp_3?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?)lstm_91/lstm_cell_91/split/ReadVariableOp?+lstm_91/lstm_cell_91/split_1/ReadVariableOp?lstm_91/whileT
lstm_91/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_91/Shape?
lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice/stack?
lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_1?
lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_2?
lstm_91/strided_sliceStridedSlicelstm_91/Shape:output:0$lstm_91/strided_slice/stack:output:0&lstm_91/strided_slice/stack_1:output:0&lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slicel
lstm_91/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros/mul/y?
lstm_91/zeros/mulMullstm_91/strided_slice:output:0lstm_91/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/mulo
lstm_91/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_91/zeros/Less/y?
lstm_91/zeros/LessLesslstm_91/zeros/mul:z:0lstm_91/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/Lessr
lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros/packed/1?
lstm_91/zeros/packedPacklstm_91/strided_slice:output:0lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros/packedo
lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros/Const?
lstm_91/zerosFilllstm_91/zeros/packed:output:0lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/zerosp
lstm_91/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros_1/mul/y?
lstm_91/zeros_1/mulMullstm_91/strided_slice:output:0lstm_91/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/muls
lstm_91/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_91/zeros_1/Less/y?
lstm_91/zeros_1/LessLesslstm_91/zeros_1/mul:z:0lstm_91/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/Lessv
lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros_1/packed/1?
lstm_91/zeros_1/packedPacklstm_91/strided_slice:output:0!lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros_1/packeds
lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros_1/Const?
lstm_91/zeros_1Filllstm_91/zeros_1/packed:output:0lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/zeros_1?
lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose/perm?
lstm_91/transpose	Transposeinputslstm_91/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_91/transposeg
lstm_91/Shape_1Shapelstm_91/transpose:y:0*
T0*
_output_shapes
:2
lstm_91/Shape_1?
lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_1/stack?
lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_1?
lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_2?
lstm_91/strided_slice_1StridedSlicelstm_91/Shape_1:output:0&lstm_91/strided_slice_1/stack:output:0(lstm_91/strided_slice_1/stack_1:output:0(lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slice_1?
#lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_91/TensorArrayV2/element_shape?
lstm_91/TensorArrayV2TensorListReserve,lstm_91/TensorArrayV2/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2?
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_91/transpose:y:0Flstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_91/TensorArrayUnstack/TensorListFromTensor?
lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_2/stack?
lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_1?
lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_2?
lstm_91/strided_slice_2StridedSlicelstm_91/transpose:y:0&lstm_91/strided_slice_2/stack:output:0(lstm_91/strided_slice_2/stack_1:output:0(lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_91/strided_slice_2?
$lstm_91/lstm_cell_91/ones_like/ShapeShapelstm_91/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_91/lstm_cell_91/ones_like/Shape?
$lstm_91/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_91/lstm_cell_91/ones_like/Const?
lstm_91/lstm_cell_91/ones_likeFill-lstm_91/lstm_cell_91/ones_like/Shape:output:0-lstm_91/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/ones_like?
$lstm_91/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_91/lstm_cell_91/split/split_dim?
)lstm_91/lstm_cell_91/split/ReadVariableOpReadVariableOp2lstm_91_lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_91/lstm_cell_91/split/ReadVariableOp?
lstm_91/lstm_cell_91/splitSplit-lstm_91/lstm_cell_91/split/split_dim:output:01lstm_91/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_91/lstm_cell_91/split?
lstm_91/lstm_cell_91/MatMulMatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul?
lstm_91/lstm_cell_91/MatMul_1MatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_1?
lstm_91/lstm_cell_91/MatMul_2MatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_2?
lstm_91/lstm_cell_91/MatMul_3MatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_3?
&lstm_91/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_91/lstm_cell_91/split_1/split_dim?
+lstm_91/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4lstm_91_lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_91/lstm_cell_91/split_1/ReadVariableOp?
lstm_91/lstm_cell_91/split_1Split/lstm_91/lstm_cell_91/split_1/split_dim:output:03lstm_91/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_91/lstm_cell_91/split_1?
lstm_91/lstm_cell_91/BiasAddBiasAdd%lstm_91/lstm_cell_91/MatMul:product:0%lstm_91/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/BiasAdd?
lstm_91/lstm_cell_91/BiasAdd_1BiasAdd'lstm_91/lstm_cell_91/MatMul_1:product:0%lstm_91/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/BiasAdd_1?
lstm_91/lstm_cell_91/BiasAdd_2BiasAdd'lstm_91/lstm_cell_91/MatMul_2:product:0%lstm_91/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/BiasAdd_2?
lstm_91/lstm_cell_91/BiasAdd_3BiasAdd'lstm_91/lstm_cell_91/MatMul_3:product:0%lstm_91/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/BiasAdd_3?
lstm_91/lstm_cell_91/mulMullstm_91/zeros:output:0'lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul?
lstm_91/lstm_cell_91/mul_1Mullstm_91/zeros:output:0'lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_1?
lstm_91/lstm_cell_91/mul_2Mullstm_91/zeros:output:0'lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_2?
lstm_91/lstm_cell_91/mul_3Mullstm_91/zeros:output:0'lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_3?
#lstm_91/lstm_cell_91/ReadVariableOpReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_91/lstm_cell_91/ReadVariableOp?
(lstm_91/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_91/lstm_cell_91/strided_slice/stack?
*lstm_91/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_91/lstm_cell_91/strided_slice/stack_1?
*lstm_91/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_91/lstm_cell_91/strided_slice/stack_2?
"lstm_91/lstm_cell_91/strided_sliceStridedSlice+lstm_91/lstm_cell_91/ReadVariableOp:value:01lstm_91/lstm_cell_91/strided_slice/stack:output:03lstm_91/lstm_cell_91/strided_slice/stack_1:output:03lstm_91/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_91/lstm_cell_91/strided_slice?
lstm_91/lstm_cell_91/MatMul_4MatMullstm_91/lstm_cell_91/mul:z:0+lstm_91/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_4?
lstm_91/lstm_cell_91/addAddV2%lstm_91/lstm_cell_91/BiasAdd:output:0'lstm_91/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add?
lstm_91/lstm_cell_91/SigmoidSigmoidlstm_91/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/Sigmoid?
%lstm_91/lstm_cell_91/ReadVariableOp_1ReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_91/lstm_cell_91/ReadVariableOp_1?
*lstm_91/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_91/lstm_cell_91/strided_slice_1/stack?
,lstm_91/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_91/lstm_cell_91/strided_slice_1/stack_1?
,lstm_91/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_91/lstm_cell_91/strided_slice_1/stack_2?
$lstm_91/lstm_cell_91/strided_slice_1StridedSlice-lstm_91/lstm_cell_91/ReadVariableOp_1:value:03lstm_91/lstm_cell_91/strided_slice_1/stack:output:05lstm_91/lstm_cell_91/strided_slice_1/stack_1:output:05lstm_91/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_91/lstm_cell_91/strided_slice_1?
lstm_91/lstm_cell_91/MatMul_5MatMullstm_91/lstm_cell_91/mul_1:z:0-lstm_91/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_5?
lstm_91/lstm_cell_91/add_1AddV2'lstm_91/lstm_cell_91/BiasAdd_1:output:0'lstm_91/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_1?
lstm_91/lstm_cell_91/Sigmoid_1Sigmoidlstm_91/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/Sigmoid_1?
lstm_91/lstm_cell_91/mul_4Mul"lstm_91/lstm_cell_91/Sigmoid_1:y:0lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_4?
%lstm_91/lstm_cell_91/ReadVariableOp_2ReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_91/lstm_cell_91/ReadVariableOp_2?
*lstm_91/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_91/lstm_cell_91/strided_slice_2/stack?
,lstm_91/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_91/lstm_cell_91/strided_slice_2/stack_1?
,lstm_91/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_91/lstm_cell_91/strided_slice_2/stack_2?
$lstm_91/lstm_cell_91/strided_slice_2StridedSlice-lstm_91/lstm_cell_91/ReadVariableOp_2:value:03lstm_91/lstm_cell_91/strided_slice_2/stack:output:05lstm_91/lstm_cell_91/strided_slice_2/stack_1:output:05lstm_91/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_91/lstm_cell_91/strided_slice_2?
lstm_91/lstm_cell_91/MatMul_6MatMullstm_91/lstm_cell_91/mul_2:z:0-lstm_91/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_6?
lstm_91/lstm_cell_91/add_2AddV2'lstm_91/lstm_cell_91/BiasAdd_2:output:0'lstm_91/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_2?
lstm_91/lstm_cell_91/ReluRelulstm_91/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/Relu?
lstm_91/lstm_cell_91/mul_5Mul lstm_91/lstm_cell_91/Sigmoid:y:0'lstm_91/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_5?
lstm_91/lstm_cell_91/add_3AddV2lstm_91/lstm_cell_91/mul_4:z:0lstm_91/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_3?
%lstm_91/lstm_cell_91/ReadVariableOp_3ReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_91/lstm_cell_91/ReadVariableOp_3?
*lstm_91/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_91/lstm_cell_91/strided_slice_3/stack?
,lstm_91/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_91/lstm_cell_91/strided_slice_3/stack_1?
,lstm_91/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_91/lstm_cell_91/strided_slice_3/stack_2?
$lstm_91/lstm_cell_91/strided_slice_3StridedSlice-lstm_91/lstm_cell_91/ReadVariableOp_3:value:03lstm_91/lstm_cell_91/strided_slice_3/stack:output:05lstm_91/lstm_cell_91/strided_slice_3/stack_1:output:05lstm_91/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_91/lstm_cell_91/strided_slice_3?
lstm_91/lstm_cell_91/MatMul_7MatMullstm_91/lstm_cell_91/mul_3:z:0-lstm_91/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_7?
lstm_91/lstm_cell_91/add_4AddV2'lstm_91/lstm_cell_91/BiasAdd_3:output:0'lstm_91/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_4?
lstm_91/lstm_cell_91/Sigmoid_2Sigmoidlstm_91/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/Sigmoid_2?
lstm_91/lstm_cell_91/Relu_1Relulstm_91/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/Relu_1?
lstm_91/lstm_cell_91/mul_6Mul"lstm_91/lstm_cell_91/Sigmoid_2:y:0)lstm_91/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_6?
%lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_91/TensorArrayV2_1/element_shape?
lstm_91/TensorArrayV2_1TensorListReserve.lstm_91/TensorArrayV2_1/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2_1^
lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/time?
 lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_91/while/maximum_iterationsz
lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/while/loop_counter?
lstm_91/whileWhile#lstm_91/while/loop_counter:output:0)lstm_91/while/maximum_iterations:output:0lstm_91/time:output:0 lstm_91/TensorArrayV2_1:handle:0lstm_91/zeros:output:0lstm_91/zeros_1:output:0 lstm_91/strided_slice_1:output:0?lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_91_lstm_cell_91_split_readvariableop_resource4lstm_91_lstm_cell_91_split_1_readvariableop_resource,lstm_91_lstm_cell_91_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_91_while_body_2933243*&
condR
lstm_91_while_cond_2933242*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_91/while?
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_91/TensorArrayV2Stack/TensorListStackTensorListStacklstm_91/while:output:3Alstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_91/TensorArrayV2Stack/TensorListStack?
lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_91/strided_slice_3/stack?
lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_91/strided_slice_3/stack_1?
lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_3/stack_2?
lstm_91/strided_slice_3StridedSlice3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_91/strided_slice_3/stack:output:0(lstm_91/strided_slice_3/stack_1:output:0(lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_91/strided_slice_3?
lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose_1/perm?
lstm_91/transpose_1	Transpose3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_91/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_91/transpose_1v
lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/runtime?
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_110/MatMul/ReadVariableOp?
dense_110/MatMulMatMul lstm_91/strided_slice_3:output:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_110/MatMul?
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_110/BiasAdd/ReadVariableOp?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_110/BiasAddv
dense_110/ReluReludense_110/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_110/Relu?
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_111/MatMul/ReadVariableOp?
dense_111/MatMulMatMuldense_110/Relu:activations:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_111/MatMul?
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_111/BiasAdd/ReadVariableOp?
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_111/BiasAddn
reshape_55/ShapeShapedense_111/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_55/Shape?
reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_55/strided_slice/stack?
 reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_1?
 reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_2?
reshape_55/strided_sliceStridedSlicereshape_55/Shape:output:0'reshape_55/strided_slice/stack:output:0)reshape_55/strided_slice/stack_1:output:0)reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_55/strided_slicez
reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/1z
reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/2?
reshape_55/Reshape/shapePack!reshape_55/strided_slice:output:0#reshape_55/Reshape/shape/1:output:0#reshape_55/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_55/Reshape/shape?
reshape_55/ReshapeReshapedense_111/BiasAdd:output:0!reshape_55/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_55/Reshape?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_91_lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/mul?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mulz
IdentityIdentityreshape_55/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp1^dense_111/bias/Regularizer/Square/ReadVariableOp$^lstm_91/lstm_cell_91/ReadVariableOp&^lstm_91/lstm_cell_91/ReadVariableOp_1&^lstm_91/lstm_cell_91/ReadVariableOp_2&^lstm_91/lstm_cell_91/ReadVariableOp_3>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*^lstm_91/lstm_cell_91/split/ReadVariableOp,^lstm_91/lstm_cell_91/split_1/ReadVariableOp^lstm_91/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp2J
#lstm_91/lstm_cell_91/ReadVariableOp#lstm_91/lstm_cell_91/ReadVariableOp2N
%lstm_91/lstm_cell_91/ReadVariableOp_1%lstm_91/lstm_cell_91/ReadVariableOp_12N
%lstm_91/lstm_cell_91/ReadVariableOp_2%lstm_91/lstm_cell_91/ReadVariableOp_22N
%lstm_91/lstm_cell_91/ReadVariableOp_3%lstm_91/lstm_cell_91/ReadVariableOp_32~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_91/lstm_cell_91/split/ReadVariableOp)lstm_91/lstm_cell_91/split/ReadVariableOp2Z
+lstm_91/lstm_cell_91/split_1/ReadVariableOp+lstm_91/lstm_cell_91/split_1/ReadVariableOp2
lstm_91/whilelstm_91/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
lstm_91_while_body_2933243,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3+
'lstm_91_while_lstm_91_strided_slice_1_0g
clstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_91_while_lstm_cell_91_split_readvariableop_resource_0:	?K
<lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0:	?G
4lstm_91_while_lstm_cell_91_readvariableop_resource_0:	 ?
lstm_91_while_identity
lstm_91_while_identity_1
lstm_91_while_identity_2
lstm_91_while_identity_3
lstm_91_while_identity_4
lstm_91_while_identity_5)
%lstm_91_while_lstm_91_strided_slice_1e
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensorK
8lstm_91_while_lstm_cell_91_split_readvariableop_resource:	?I
:lstm_91_while_lstm_cell_91_split_1_readvariableop_resource:	?E
2lstm_91_while_lstm_cell_91_readvariableop_resource:	 ???)lstm_91/while/lstm_cell_91/ReadVariableOp?+lstm_91/while/lstm_cell_91/ReadVariableOp_1?+lstm_91/while/lstm_cell_91/ReadVariableOp_2?+lstm_91/while/lstm_cell_91/ReadVariableOp_3?/lstm_91/while/lstm_cell_91/split/ReadVariableOp?1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0lstm_91_while_placeholderHlstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_91/while/TensorArrayV2Read/TensorListGetItem?
*lstm_91/while/lstm_cell_91/ones_like/ShapeShapelstm_91_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_91/while/lstm_cell_91/ones_like/Shape?
*lstm_91/while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_91/while/lstm_cell_91/ones_like/Const?
$lstm_91/while/lstm_cell_91/ones_likeFill3lstm_91/while/lstm_cell_91/ones_like/Shape:output:03lstm_91/while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/ones_like?
*lstm_91/while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_91/while/lstm_cell_91/split/split_dim?
/lstm_91/while/lstm_cell_91/split/ReadVariableOpReadVariableOp:lstm_91_while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_91/while/lstm_cell_91/split/ReadVariableOp?
 lstm_91/while/lstm_cell_91/splitSplit3lstm_91/while/lstm_cell_91/split/split_dim:output:07lstm_91/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_91/while/lstm_cell_91/split?
!lstm_91/while/lstm_cell_91/MatMulMatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_91/while/lstm_cell_91/MatMul?
#lstm_91/while/lstm_cell_91/MatMul_1MatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_1?
#lstm_91/while/lstm_cell_91/MatMul_2MatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_2?
#lstm_91/while/lstm_cell_91/MatMul_3MatMul8lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_91/while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_3?
,lstm_91/while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_91/while/lstm_cell_91/split_1/split_dim?
1lstm_91/while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp<lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?
"lstm_91/while/lstm_cell_91/split_1Split5lstm_91/while/lstm_cell_91/split_1/split_dim:output:09lstm_91/while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_91/while/lstm_cell_91/split_1?
"lstm_91/while/lstm_cell_91/BiasAddBiasAdd+lstm_91/while/lstm_cell_91/MatMul:product:0+lstm_91/while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/while/lstm_cell_91/BiasAdd?
$lstm_91/while/lstm_cell_91/BiasAdd_1BiasAdd-lstm_91/while/lstm_cell_91/MatMul_1:product:0+lstm_91/while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/BiasAdd_1?
$lstm_91/while/lstm_cell_91/BiasAdd_2BiasAdd-lstm_91/while/lstm_cell_91/MatMul_2:product:0+lstm_91/while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/BiasAdd_2?
$lstm_91/while/lstm_cell_91/BiasAdd_3BiasAdd-lstm_91/while/lstm_cell_91/MatMul_3:product:0+lstm_91/while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/BiasAdd_3?
lstm_91/while/lstm_cell_91/mulMullstm_91_while_placeholder_2-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/while/lstm_cell_91/mul?
 lstm_91/while/lstm_cell_91/mul_1Mullstm_91_while_placeholder_2-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_1?
 lstm_91/while/lstm_cell_91/mul_2Mullstm_91_while_placeholder_2-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_2?
 lstm_91/while/lstm_cell_91/mul_3Mullstm_91_while_placeholder_2-lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_3?
)lstm_91/while/lstm_cell_91/ReadVariableOpReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_91/while/lstm_cell_91/ReadVariableOp?
.lstm_91/while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_91/while/lstm_cell_91/strided_slice/stack?
0lstm_91/while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_91/while/lstm_cell_91/strided_slice/stack_1?
0lstm_91/while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_91/while/lstm_cell_91/strided_slice/stack_2?
(lstm_91/while/lstm_cell_91/strided_sliceStridedSlice1lstm_91/while/lstm_cell_91/ReadVariableOp:value:07lstm_91/while/lstm_cell_91/strided_slice/stack:output:09lstm_91/while/lstm_cell_91/strided_slice/stack_1:output:09lstm_91/while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_91/while/lstm_cell_91/strided_slice?
#lstm_91/while/lstm_cell_91/MatMul_4MatMul"lstm_91/while/lstm_cell_91/mul:z:01lstm_91/while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_4?
lstm_91/while/lstm_cell_91/addAddV2+lstm_91/while/lstm_cell_91/BiasAdd:output:0-lstm_91/while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/while/lstm_cell_91/add?
"lstm_91/while/lstm_cell_91/SigmoidSigmoid"lstm_91/while/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/while/lstm_cell_91/Sigmoid?
+lstm_91/while/lstm_cell_91/ReadVariableOp_1ReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_91/while/lstm_cell_91/ReadVariableOp_1?
0lstm_91/while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_91/while/lstm_cell_91/strided_slice_1/stack?
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_1?
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_91/while/lstm_cell_91/strided_slice_1/stack_2?
*lstm_91/while/lstm_cell_91/strided_slice_1StridedSlice3lstm_91/while/lstm_cell_91/ReadVariableOp_1:value:09lstm_91/while/lstm_cell_91/strided_slice_1/stack:output:0;lstm_91/while/lstm_cell_91/strided_slice_1/stack_1:output:0;lstm_91/while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_91/while/lstm_cell_91/strided_slice_1?
#lstm_91/while/lstm_cell_91/MatMul_5MatMul$lstm_91/while/lstm_cell_91/mul_1:z:03lstm_91/while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_5?
 lstm_91/while/lstm_cell_91/add_1AddV2-lstm_91/while/lstm_cell_91/BiasAdd_1:output:0-lstm_91/while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_1?
$lstm_91/while/lstm_cell_91/Sigmoid_1Sigmoid$lstm_91/while/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/Sigmoid_1?
 lstm_91/while/lstm_cell_91/mul_4Mul(lstm_91/while/lstm_cell_91/Sigmoid_1:y:0lstm_91_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_4?
+lstm_91/while/lstm_cell_91/ReadVariableOp_2ReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_91/while/lstm_cell_91/ReadVariableOp_2?
0lstm_91/while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_91/while/lstm_cell_91/strided_slice_2/stack?
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_1?
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_91/while/lstm_cell_91/strided_slice_2/stack_2?
*lstm_91/while/lstm_cell_91/strided_slice_2StridedSlice3lstm_91/while/lstm_cell_91/ReadVariableOp_2:value:09lstm_91/while/lstm_cell_91/strided_slice_2/stack:output:0;lstm_91/while/lstm_cell_91/strided_slice_2/stack_1:output:0;lstm_91/while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_91/while/lstm_cell_91/strided_slice_2?
#lstm_91/while/lstm_cell_91/MatMul_6MatMul$lstm_91/while/lstm_cell_91/mul_2:z:03lstm_91/while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_6?
 lstm_91/while/lstm_cell_91/add_2AddV2-lstm_91/while/lstm_cell_91/BiasAdd_2:output:0-lstm_91/while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_2?
lstm_91/while/lstm_cell_91/ReluRelu$lstm_91/while/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_91/while/lstm_cell_91/Relu?
 lstm_91/while/lstm_cell_91/mul_5Mul&lstm_91/while/lstm_cell_91/Sigmoid:y:0-lstm_91/while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_5?
 lstm_91/while/lstm_cell_91/add_3AddV2$lstm_91/while/lstm_cell_91/mul_4:z:0$lstm_91/while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_3?
+lstm_91/while/lstm_cell_91/ReadVariableOp_3ReadVariableOp4lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_91/while/lstm_cell_91/ReadVariableOp_3?
0lstm_91/while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_91/while/lstm_cell_91/strided_slice_3/stack?
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_1?
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_91/while/lstm_cell_91/strided_slice_3/stack_2?
*lstm_91/while/lstm_cell_91/strided_slice_3StridedSlice3lstm_91/while/lstm_cell_91/ReadVariableOp_3:value:09lstm_91/while/lstm_cell_91/strided_slice_3/stack:output:0;lstm_91/while/lstm_cell_91/strided_slice_3/stack_1:output:0;lstm_91/while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_91/while/lstm_cell_91/strided_slice_3?
#lstm_91/while/lstm_cell_91/MatMul_7MatMul$lstm_91/while/lstm_cell_91/mul_3:z:03lstm_91/while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_91/while/lstm_cell_91/MatMul_7?
 lstm_91/while/lstm_cell_91/add_4AddV2-lstm_91/while/lstm_cell_91/BiasAdd_3:output:0-lstm_91/while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/add_4?
$lstm_91/while/lstm_cell_91/Sigmoid_2Sigmoid$lstm_91/while/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/while/lstm_cell_91/Sigmoid_2?
!lstm_91/while/lstm_cell_91/Relu_1Relu$lstm_91/while/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_91/while/lstm_cell_91/Relu_1?
 lstm_91/while/lstm_cell_91/mul_6Mul(lstm_91/while/lstm_cell_91/Sigmoid_2:y:0/lstm_91/while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/while/lstm_cell_91/mul_6?
2lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_91_while_placeholder_1lstm_91_while_placeholder$lstm_91/while/lstm_cell_91/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_91/while/TensorArrayV2Write/TensorListSetIteml
lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add/y?
lstm_91/while/addAddV2lstm_91_while_placeholderlstm_91/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/addp
lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_91/while/add_1/y?
lstm_91/while/add_1AddV2(lstm_91_while_lstm_91_while_loop_counterlstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_91/while/add_1?
lstm_91/while/IdentityIdentitylstm_91/while/add_1:z:0^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity?
lstm_91/while/Identity_1Identity.lstm_91_while_lstm_91_while_maximum_iterations^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_1?
lstm_91/while/Identity_2Identitylstm_91/while/add:z:0^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_2?
lstm_91/while/Identity_3IdentityBlstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_91/while/NoOp*
T0*
_output_shapes
: 2
lstm_91/while/Identity_3?
lstm_91/while/Identity_4Identity$lstm_91/while/lstm_cell_91/mul_6:z:0^lstm_91/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_91/while/Identity_4?
lstm_91/while/Identity_5Identity$lstm_91/while/lstm_cell_91/add_3:z:0^lstm_91/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_91/while/Identity_5?
lstm_91/while/NoOpNoOp*^lstm_91/while/lstm_cell_91/ReadVariableOp,^lstm_91/while/lstm_cell_91/ReadVariableOp_1,^lstm_91/while/lstm_cell_91/ReadVariableOp_2,^lstm_91/while/lstm_cell_91/ReadVariableOp_30^lstm_91/while/lstm_cell_91/split/ReadVariableOp2^lstm_91/while/lstm_cell_91/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_91/while/NoOp"9
lstm_91_while_identitylstm_91/while/Identity:output:0"=
lstm_91_while_identity_1!lstm_91/while/Identity_1:output:0"=
lstm_91_while_identity_2!lstm_91/while/Identity_2:output:0"=
lstm_91_while_identity_3!lstm_91/while/Identity_3:output:0"=
lstm_91_while_identity_4!lstm_91/while/Identity_4:output:0"=
lstm_91_while_identity_5!lstm_91/while/Identity_5:output:0"P
%lstm_91_while_lstm_91_strided_slice_1'lstm_91_while_lstm_91_strided_slice_1_0"j
2lstm_91_while_lstm_cell_91_readvariableop_resource4lstm_91_while_lstm_cell_91_readvariableop_resource_0"z
:lstm_91_while_lstm_cell_91_split_1_readvariableop_resource<lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0"v
8lstm_91_while_lstm_cell_91_split_readvariableop_resource:lstm_91_while_lstm_cell_91_split_readvariableop_resource_0"?
alstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensorclstm_91_while_tensorarrayv2read_tensorlistgetitem_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_91/while/lstm_cell_91/ReadVariableOp)lstm_91/while/lstm_cell_91/ReadVariableOp2Z
+lstm_91/while/lstm_cell_91/ReadVariableOp_1+lstm_91/while/lstm_cell_91/ReadVariableOp_12Z
+lstm_91/while/lstm_cell_91/ReadVariableOp_2+lstm_91/while/lstm_cell_91/ReadVariableOp_22Z
+lstm_91/while/lstm_cell_91/ReadVariableOp_3+lstm_91/while/lstm_cell_91/ReadVariableOp_32b
/lstm_91/while/lstm_cell_91/split/ReadVariableOp/lstm_91/while/lstm_cell_91/split/ReadVariableOp2f
1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp1lstm_91/while/lstm_cell_91/split_1/ReadVariableOp: 
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
?
(sequential_37_lstm_91_while_body_2931268H
Dsequential_37_lstm_91_while_sequential_37_lstm_91_while_loop_counterN
Jsequential_37_lstm_91_while_sequential_37_lstm_91_while_maximum_iterations+
'sequential_37_lstm_91_while_placeholder-
)sequential_37_lstm_91_while_placeholder_1-
)sequential_37_lstm_91_while_placeholder_2-
)sequential_37_lstm_91_while_placeholder_3G
Csequential_37_lstm_91_while_sequential_37_lstm_91_strided_slice_1_0?
sequential_37_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_91_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_37_lstm_91_while_lstm_cell_91_split_readvariableop_resource_0:	?Y
Jsequential_37_lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0:	?U
Bsequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource_0:	 ?(
$sequential_37_lstm_91_while_identity*
&sequential_37_lstm_91_while_identity_1*
&sequential_37_lstm_91_while_identity_2*
&sequential_37_lstm_91_while_identity_3*
&sequential_37_lstm_91_while_identity_4*
&sequential_37_lstm_91_while_identity_5E
Asequential_37_lstm_91_while_sequential_37_lstm_91_strided_slice_1?
}sequential_37_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_91_tensorarrayunstack_tensorlistfromtensorY
Fsequential_37_lstm_91_while_lstm_cell_91_split_readvariableop_resource:	?W
Hsequential_37_lstm_91_while_lstm_cell_91_split_1_readvariableop_resource:	?S
@sequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource:	 ???7sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp?9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_1?9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_2?9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_3?=sequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOp??sequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?
Msequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_37_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_91_tensorarrayunstack_tensorlistfromtensor_0'sequential_37_lstm_91_while_placeholderVsequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem?
8sequential_37/lstm_91/while/lstm_cell_91/ones_like/ShapeShape)sequential_37_lstm_91_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_37/lstm_91/while/lstm_cell_91/ones_like/Shape?
8sequential_37/lstm_91/while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8sequential_37/lstm_91/while/lstm_cell_91/ones_like/Const?
2sequential_37/lstm_91/while/lstm_cell_91/ones_likeFillAsequential_37/lstm_91/while/lstm_cell_91/ones_like/Shape:output:0Asequential_37/lstm_91/while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_91/while/lstm_cell_91/ones_like?
8sequential_37/lstm_91/while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_37/lstm_91/while/lstm_cell_91/split/split_dim?
=sequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOpReadVariableOpHsequential_37_lstm_91_while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOp?
.sequential_37/lstm_91/while/lstm_cell_91/splitSplitAsequential_37/lstm_91/while/lstm_cell_91/split/split_dim:output:0Esequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_37/lstm_91/while/lstm_cell_91/split?
/sequential_37/lstm_91/while/lstm_cell_91/MatMulMatMulFsequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_37/lstm_91/while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_37/lstm_91/while/lstm_cell_91/MatMul?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_1MatMulFsequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_37/lstm_91/while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_1?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_2MatMulFsequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_37/lstm_91/while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_2?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_3MatMulFsequential_37/lstm_91/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_37/lstm_91/while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_3?
:sequential_37/lstm_91/while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_37/lstm_91/while/lstm_cell_91/split_1/split_dim?
?sequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOpReadVariableOpJsequential_37_lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?
0sequential_37/lstm_91/while/lstm_cell_91/split_1SplitCsequential_37/lstm_91/while/lstm_cell_91/split_1/split_dim:output:0Gsequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_37/lstm_91/while/lstm_cell_91/split_1?
0sequential_37/lstm_91/while/lstm_cell_91/BiasAddBiasAdd9sequential_37/lstm_91/while/lstm_cell_91/MatMul:product:09sequential_37/lstm_91/while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_91/while/lstm_cell_91/BiasAdd?
2sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_1BiasAdd;sequential_37/lstm_91/while/lstm_cell_91/MatMul_1:product:09sequential_37/lstm_91/while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_1?
2sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_2BiasAdd;sequential_37/lstm_91/while/lstm_cell_91/MatMul_2:product:09sequential_37/lstm_91/while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_2?
2sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_3BiasAdd;sequential_37/lstm_91/while/lstm_cell_91/MatMul_3:product:09sequential_37/lstm_91/while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_3?
,sequential_37/lstm_91/while/lstm_cell_91/mulMul)sequential_37_lstm_91_while_placeholder_2;sequential_37/lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/while/lstm_cell_91/mul?
.sequential_37/lstm_91/while/lstm_cell_91/mul_1Mul)sequential_37_lstm_91_while_placeholder_2;sequential_37/lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/mul_1?
.sequential_37/lstm_91/while/lstm_cell_91/mul_2Mul)sequential_37_lstm_91_while_placeholder_2;sequential_37/lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/mul_2?
.sequential_37/lstm_91/while/lstm_cell_91/mul_3Mul)sequential_37_lstm_91_while_placeholder_2;sequential_37/lstm_91/while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/mul_3?
7sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOpReadVariableOpBsequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype029
7sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp?
<sequential_37/lstm_91/while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack?
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack_1?
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack_2?
6sequential_37/lstm_91/while/lstm_cell_91/strided_sliceStridedSlice?sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp:value:0Esequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack:output:0Gsequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack_1:output:0Gsequential_37/lstm_91/while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_37/lstm_91/while/lstm_cell_91/strided_slice?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_4MatMul0sequential_37/lstm_91/while/lstm_cell_91/mul:z:0?sequential_37/lstm_91/while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_4?
,sequential_37/lstm_91/while/lstm_cell_91/addAddV29sequential_37/lstm_91/while/lstm_cell_91/BiasAdd:output:0;sequential_37/lstm_91/while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/while/lstm_cell_91/add?
0sequential_37/lstm_91/while/lstm_cell_91/SigmoidSigmoid0sequential_37/lstm_91/while/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_37/lstm_91/while/lstm_cell_91/Sigmoid?
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_1ReadVariableOpBsequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_1?
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack?
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack_1?
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack_2?
8sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1StridedSliceAsequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_1:value:0Gsequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack:output:0Isequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack_1:output:0Isequential_37/lstm_91/while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_37/lstm_91/while/lstm_cell_91/strided_slice_1?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_5MatMul2sequential_37/lstm_91/while/lstm_cell_91/mul_1:z:0Asequential_37/lstm_91/while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_5?
.sequential_37/lstm_91/while/lstm_cell_91/add_1AddV2;sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_1:output:0;sequential_37/lstm_91/while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/add_1?
2sequential_37/lstm_91/while/lstm_cell_91/Sigmoid_1Sigmoid2sequential_37/lstm_91/while/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_91/while/lstm_cell_91/Sigmoid_1?
.sequential_37/lstm_91/while/lstm_cell_91/mul_4Mul6sequential_37/lstm_91/while/lstm_cell_91/Sigmoid_1:y:0)sequential_37_lstm_91_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/mul_4?
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_2ReadVariableOpBsequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_2?
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack?
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack_1?
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack_2?
8sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2StridedSliceAsequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_2:value:0Gsequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack:output:0Isequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack_1:output:0Isequential_37/lstm_91/while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_37/lstm_91/while/lstm_cell_91/strided_slice_2?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_6MatMul2sequential_37/lstm_91/while/lstm_cell_91/mul_2:z:0Asequential_37/lstm_91/while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_6?
.sequential_37/lstm_91/while/lstm_cell_91/add_2AddV2;sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_2:output:0;sequential_37/lstm_91/while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/add_2?
-sequential_37/lstm_91/while/lstm_cell_91/ReluRelu2sequential_37/lstm_91/while/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_37/lstm_91/while/lstm_cell_91/Relu?
.sequential_37/lstm_91/while/lstm_cell_91/mul_5Mul4sequential_37/lstm_91/while/lstm_cell_91/Sigmoid:y:0;sequential_37/lstm_91/while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/mul_5?
.sequential_37/lstm_91/while/lstm_cell_91/add_3AddV22sequential_37/lstm_91/while/lstm_cell_91/mul_4:z:02sequential_37/lstm_91/while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/add_3?
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_3ReadVariableOpBsequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_3?
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack?
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack_1?
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack_2?
8sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3StridedSliceAsequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_3:value:0Gsequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack:output:0Isequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack_1:output:0Isequential_37/lstm_91/while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_37/lstm_91/while/lstm_cell_91/strided_slice_3?
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_7MatMul2sequential_37/lstm_91/while/lstm_cell_91/mul_3:z:0Asequential_37/lstm_91/while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_37/lstm_91/while/lstm_cell_91/MatMul_7?
.sequential_37/lstm_91/while/lstm_cell_91/add_4AddV2;sequential_37/lstm_91/while/lstm_cell_91/BiasAdd_3:output:0;sequential_37/lstm_91/while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/add_4?
2sequential_37/lstm_91/while/lstm_cell_91/Sigmoid_2Sigmoid2sequential_37/lstm_91/while/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_37/lstm_91/while/lstm_cell_91/Sigmoid_2?
/sequential_37/lstm_91/while/lstm_cell_91/Relu_1Relu2sequential_37/lstm_91/while/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_37/lstm_91/while/lstm_cell_91/Relu_1?
.sequential_37/lstm_91/while/lstm_cell_91/mul_6Mul6sequential_37/lstm_91/while/lstm_cell_91/Sigmoid_2:y:0=sequential_37/lstm_91/while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_37/lstm_91/while/lstm_cell_91/mul_6?
@sequential_37/lstm_91/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_37_lstm_91_while_placeholder_1'sequential_37_lstm_91_while_placeholder2sequential_37/lstm_91/while/lstm_cell_91/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_37/lstm_91/while/TensorArrayV2Write/TensorListSetItem?
!sequential_37/lstm_91/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_37/lstm_91/while/add/y?
sequential_37/lstm_91/while/addAddV2'sequential_37_lstm_91_while_placeholder*sequential_37/lstm_91/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_37/lstm_91/while/add?
#sequential_37/lstm_91/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_37/lstm_91/while/add_1/y?
!sequential_37/lstm_91/while/add_1AddV2Dsequential_37_lstm_91_while_sequential_37_lstm_91_while_loop_counter,sequential_37/lstm_91/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_37/lstm_91/while/add_1?
$sequential_37/lstm_91/while/IdentityIdentity%sequential_37/lstm_91/while/add_1:z:0!^sequential_37/lstm_91/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_37/lstm_91/while/Identity?
&sequential_37/lstm_91/while/Identity_1IdentityJsequential_37_lstm_91_while_sequential_37_lstm_91_while_maximum_iterations!^sequential_37/lstm_91/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_37/lstm_91/while/Identity_1?
&sequential_37/lstm_91/while/Identity_2Identity#sequential_37/lstm_91/while/add:z:0!^sequential_37/lstm_91/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_37/lstm_91/while/Identity_2?
&sequential_37/lstm_91/while/Identity_3IdentityPsequential_37/lstm_91/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_37/lstm_91/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_37/lstm_91/while/Identity_3?
&sequential_37/lstm_91/while/Identity_4Identity2sequential_37/lstm_91/while/lstm_cell_91/mul_6:z:0!^sequential_37/lstm_91/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_37/lstm_91/while/Identity_4?
&sequential_37/lstm_91/while/Identity_5Identity2sequential_37/lstm_91/while/lstm_cell_91/add_3:z:0!^sequential_37/lstm_91/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_37/lstm_91/while/Identity_5?
 sequential_37/lstm_91/while/NoOpNoOp8^sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp:^sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_1:^sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_2:^sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_3>^sequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOp@^sequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_37/lstm_91/while/NoOp"U
$sequential_37_lstm_91_while_identity-sequential_37/lstm_91/while/Identity:output:0"Y
&sequential_37_lstm_91_while_identity_1/sequential_37/lstm_91/while/Identity_1:output:0"Y
&sequential_37_lstm_91_while_identity_2/sequential_37/lstm_91/while/Identity_2:output:0"Y
&sequential_37_lstm_91_while_identity_3/sequential_37/lstm_91/while/Identity_3:output:0"Y
&sequential_37_lstm_91_while_identity_4/sequential_37/lstm_91/while/Identity_4:output:0"Y
&sequential_37_lstm_91_while_identity_5/sequential_37/lstm_91/while/Identity_5:output:0"?
@sequential_37_lstm_91_while_lstm_cell_91_readvariableop_resourceBsequential_37_lstm_91_while_lstm_cell_91_readvariableop_resource_0"?
Hsequential_37_lstm_91_while_lstm_cell_91_split_1_readvariableop_resourceJsequential_37_lstm_91_while_lstm_cell_91_split_1_readvariableop_resource_0"?
Fsequential_37_lstm_91_while_lstm_cell_91_split_readvariableop_resourceHsequential_37_lstm_91_while_lstm_cell_91_split_readvariableop_resource_0"?
Asequential_37_lstm_91_while_sequential_37_lstm_91_strided_slice_1Csequential_37_lstm_91_while_sequential_37_lstm_91_strided_slice_1_0"?
}sequential_37_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_91_tensorarrayunstack_tensorlistfromtensorsequential_37_lstm_91_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_91_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2r
7sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp7sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp2v
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_19sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_12v
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_29sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_22v
9sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_39sequential_37/lstm_91/while/lstm_cell_91/ReadVariableOp_32~
=sequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOp=sequential_37/lstm_91/while/lstm_cell_91/split/ReadVariableOp2?
?sequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOp?sequential_37/lstm_91/while/lstm_cell_91/split_1/ReadVariableOp: 
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
/__inference_sequential_37_layer_call_fn_2932988
input_38
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_38unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_29329522
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
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_38
?,
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933022
input_38"
lstm_91_2932991:	?
lstm_91_2932993:	?"
lstm_91_2932995:	 ?#
dense_110_2932998:  
dense_110_2933000: #
dense_111_2933003: 
dense_111_2933005:
identity??!dense_110/StatefulPartitionedCall?!dense_111/StatefulPartitionedCall?0dense_111/bias/Regularizer/Square/ReadVariableOp?lstm_91/StatefulPartitionedCall?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
lstm_91/StatefulPartitionedCallStatefulPartitionedCallinput_38lstm_91_2932991lstm_91_2932993lstm_91_2932995*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29324502!
lstm_91/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_110_2932998dense_110_2933000*
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
GPU 2J 8? *O
fJRH
F__inference_dense_110_layer_call_and_return_conditional_losses_29324692#
!dense_110/StatefulPartitionedCall?
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_2933003dense_111_2933005*
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
GPU 2J 8? *O
fJRH
F__inference_dense_111_layer_call_and_return_conditional_losses_29324912#
!dense_111/StatefulPartitionedCall?
reshape_55/PartitionedCallPartitionedCall*dense_111/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_29325102
reshape_55/PartitionedCall?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_91_2932991*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/mul?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_111_2933005*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mul?
IdentityIdentity#reshape_55/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall1^dense_111/bias/Regularizer/Square/ReadVariableOp ^lstm_91/StatefulPartitionedCall>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_38
?
?
F__inference_dense_110_layer_call_and_return_conditional_losses_2932469

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
?

?
lstm_91_while_cond_2933242,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3.
*lstm_91_while_less_lstm_91_strided_slice_1E
Alstm_91_while_lstm_91_while_cond_2933242___redundant_placeholder0E
Alstm_91_while_lstm_91_while_cond_2933242___redundant_placeholder1E
Alstm_91_while_lstm_91_while_cond_2933242___redundant_placeholder2E
Alstm_91_while_lstm_91_while_cond_2933242___redundant_placeholder3
lstm_91_while_identity
?
lstm_91/while/LessLesslstm_91_while_placeholder*lstm_91_while_less_lstm_91_strided_slice_1*
T0*
_output_shapes
: 2
lstm_91/while/Lessu
lstm_91/while/IdentityIdentitylstm_91/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_91/while/Identity"9
lstm_91_while_identitylstm_91/while/Identity:output:0*(
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
?,
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2932525

inputs"
lstm_91_2932451:	?
lstm_91_2932453:	?"
lstm_91_2932455:	 ?#
dense_110_2932470:  
dense_110_2932472: #
dense_111_2932492: 
dense_111_2932494:
identity??!dense_110/StatefulPartitionedCall?!dense_111/StatefulPartitionedCall?0dense_111/bias/Regularizer/Square/ReadVariableOp?lstm_91/StatefulPartitionedCall?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
lstm_91/StatefulPartitionedCallStatefulPartitionedCallinputslstm_91_2932451lstm_91_2932453lstm_91_2932455*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29324502!
lstm_91/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_110_2932470dense_110_2932472*
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
GPU 2J 8? *O
fJRH
F__inference_dense_110_layer_call_and_return_conditional_losses_29324692#
!dense_110/StatefulPartitionedCall?
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_2932492dense_111_2932494*
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
GPU 2J 8? *O
fJRH
F__inference_dense_111_layer_call_and_return_conditional_losses_29324912#
!dense_111/StatefulPartitionedCall?
reshape_55/PartitionedCallPartitionedCall*dense_111/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_29325102
reshape_55/PartitionedCall?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_91_2932451*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/mul?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_111_2932494*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mul?
IdentityIdentity#reshape_55/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall1^dense_111/bias/Regularizer/Square/ReadVariableOp ^lstm_91/StatefulPartitionedCall>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933056
input_38"
lstm_91_2933025:	?
lstm_91_2933027:	?"
lstm_91_2933029:	 ?#
dense_110_2933032:  
dense_110_2933034: #
dense_111_2933037: 
dense_111_2933039:
identity??!dense_110/StatefulPartitionedCall?!dense_111/StatefulPartitionedCall?0dense_111/bias/Regularizer/Square/ReadVariableOp?lstm_91/StatefulPartitionedCall?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
lstm_91/StatefulPartitionedCallStatefulPartitionedCallinput_38lstm_91_2933025lstm_91_2933027lstm_91_2933029*
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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29328882!
lstm_91/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall(lstm_91/StatefulPartitionedCall:output:0dense_110_2933032dense_110_2933034*
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
GPU 2J 8? *O
fJRH
F__inference_dense_110_layer_call_and_return_conditional_losses_29324692#
!dense_110/StatefulPartitionedCall?
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_2933037dense_111_2933039*
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
GPU 2J 8? *O
fJRH
F__inference_dense_111_layer_call_and_return_conditional_losses_29324912#
!dense_111/StatefulPartitionedCall?
reshape_55/PartitionedCallPartitionedCall*dense_111/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_29325102
reshape_55/PartitionedCall?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_91_2933025*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/mul?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_111_2933039*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mul?
IdentityIdentity#reshape_55/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall1^dense_111/bias/Regularizer/Square/ReadVariableOp ^lstm_91/StatefulPartitionedCall>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp2B
lstm_91/StatefulPartitionedCalllstm_91/StatefulPartitionedCall2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_38
?
?
+__inference_dense_110_layer_call_fn_2934898

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
GPU 2J 8? *O
fJRH
F__inference_dense_110_layer_call_and_return_conditional_losses_29324692
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
while_cond_2932722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932722___redundant_placeholder05
1while_while_cond_2932722___redundant_placeholder15
1while_while_cond_2932722___redundant_placeholder25
1while_while_cond_2932722___redundant_placeholder3
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
?
?
while_cond_2932316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2932316___redundant_placeholder05
1while_while_cond_2932316___redundant_placeholder15
1while_while_cond_2932316___redundant_placeholder25
1while_while_cond_2932316___redundant_placeholder3
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
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2931630

inputs'
lstm_cell_91_2931542:	?#
lstm_cell_91_2931544:	?'
lstm_cell_91_2931546:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_91/StatefulPartitionedCall?whileD
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
$lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_91_2931542lstm_cell_91_2931544lstm_cell_91_2931546*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_29315412&
$lstm_cell_91/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_91_2931542lstm_cell_91_2931544lstm_cell_91_2931546*
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
bodyR
while_body_2931555*
condR
while_cond_2931554*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_91_2931542*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_91/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_91/StatefulPartitionedCall$lstm_cell_91/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2934173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2934173___redundant_placeholder05
1while_while_cond_2934173___redundant_placeholder15
1while_while_cond_2934173___redundant_placeholder25
1while_while_cond_2934173___redundant_placeholder3
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
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2935090

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2,
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
?
?
)__inference_lstm_91_layer_call_fn_2933767
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
GPU 2J 8? *M
fHRF
D__inference_lstm_91_layer_call_and_return_conditional_losses_29319272
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
c
G__inference_reshape_55_layer_call_and_return_conditional_losses_2932510

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
??
?	
while_body_2934724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_91_split_readvariableop_resource_0:	?C
4while_lstm_cell_91_split_1_readvariableop_resource_0:	??
,while_lstm_cell_91_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_91_split_readvariableop_resource:	?A
2while_lstm_cell_91_split_1_readvariableop_resource:	?=
*while_lstm_cell_91_readvariableop_resource:	 ???!while/lstm_cell_91/ReadVariableOp?#while/lstm_cell_91/ReadVariableOp_1?#while/lstm_cell_91/ReadVariableOp_2?#while/lstm_cell_91/ReadVariableOp_3?'while/lstm_cell_91/split/ReadVariableOp?)while/lstm_cell_91/split_1/ReadVariableOp?
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
"while/lstm_cell_91/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_91/ones_like/Shape?
"while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_91/ones_like/Const?
while/lstm_cell_91/ones_likeFill+while/lstm_cell_91/ones_like/Shape:output:0+while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/ones_like?
 while/lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_91/dropout/Const?
while/lstm_cell_91/dropout/MulMul%while/lstm_cell_91/ones_like:output:0)while/lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_91/dropout/Mul?
 while/lstm_cell_91/dropout/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_91/dropout/Shape?
7while/lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_91/dropout/random_uniform/RandomUniform?
)while/lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_91/dropout/GreaterEqual/y?
'while/lstm_cell_91/dropout/GreaterEqualGreaterEqual@while/lstm_cell_91/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_91/dropout/GreaterEqual?
while/lstm_cell_91/dropout/CastCast+while/lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_91/dropout/Cast?
 while/lstm_cell_91/dropout/Mul_1Mul"while/lstm_cell_91/dropout/Mul:z:0#while/lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout/Mul_1?
"while/lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_1/Const?
 while/lstm_cell_91/dropout_1/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_1/Mul?
"while/lstm_cell_91/dropout_1/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_1/Shape?
9while/lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?߭2;
9while/lstm_cell_91/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_1/GreaterEqual/y?
)while/lstm_cell_91/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_1/GreaterEqual?
!while/lstm_cell_91/dropout_1/CastCast-while/lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_1/Cast?
"while/lstm_cell_91/dropout_1/Mul_1Mul$while/lstm_cell_91/dropout_1/Mul:z:0%while/lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_1/Mul_1?
"while/lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_2/Const?
 while/lstm_cell_91/dropout_2/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_2/Mul?
"while/lstm_cell_91/dropout_2/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_2/Shape?
9while/lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2͗?2;
9while/lstm_cell_91/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_2/GreaterEqual/y?
)while/lstm_cell_91/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_2/GreaterEqual?
!while/lstm_cell_91/dropout_2/CastCast-while/lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_2/Cast?
"while/lstm_cell_91/dropout_2/Mul_1Mul$while/lstm_cell_91/dropout_2/Mul:z:0%while/lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_2/Mul_1?
"while/lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_3/Const?
 while/lstm_cell_91/dropout_3/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_3/Mul?
"while/lstm_cell_91/dropout_3/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_3/Shape?
9while/lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ܓ,2;
9while/lstm_cell_91/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_3/GreaterEqual/y?
)while/lstm_cell_91/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_3/GreaterEqual?
!while/lstm_cell_91/dropout_3/CastCast-while/lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_3/Cast?
"while/lstm_cell_91/dropout_3/Mul_1Mul$while/lstm_cell_91/dropout_3/Mul:z:0%while/lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_3/Mul_1?
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_91/split/split_dim?
'while/lstm_cell_91/split/ReadVariableOpReadVariableOp2while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_91/split/ReadVariableOp?
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_91/split?
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul?
while/lstm_cell_91/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_1?
while/lstm_cell_91/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_2?
while/lstm_cell_91/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_3?
$while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_91/split_1/split_dim?
)while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_91/split_1/ReadVariableOp?
while/lstm_cell_91/split_1Split-while/lstm_cell_91/split_1/split_dim:output:01while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_91/split_1?
while/lstm_cell_91/BiasAddBiasAdd#while/lstm_cell_91/MatMul:product:0#while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd?
while/lstm_cell_91/BiasAdd_1BiasAdd%while/lstm_cell_91/MatMul_1:product:0#while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_1?
while/lstm_cell_91/BiasAdd_2BiasAdd%while/lstm_cell_91/MatMul_2:product:0#while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_2?
while/lstm_cell_91/BiasAdd_3BiasAdd%while/lstm_cell_91/MatMul_3:product:0#while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_3?
while/lstm_cell_91/mulMulwhile_placeholder_2$while/lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul?
while/lstm_cell_91/mul_1Mulwhile_placeholder_2&while/lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_1?
while/lstm_cell_91/mul_2Mulwhile_placeholder_2&while/lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_2?
while/lstm_cell_91/mul_3Mulwhile_placeholder_2&while/lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_3?
!while/lstm_cell_91/ReadVariableOpReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_91/ReadVariableOp?
&while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_91/strided_slice/stack?
(while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice/stack_1?
(while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_91/strided_slice/stack_2?
 while/lstm_cell_91/strided_sliceStridedSlice)while/lstm_cell_91/ReadVariableOp:value:0/while/lstm_cell_91/strided_slice/stack:output:01while/lstm_cell_91/strided_slice/stack_1:output:01while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_91/strided_slice?
while/lstm_cell_91/MatMul_4MatMulwhile/lstm_cell_91/mul:z:0)while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_4?
while/lstm_cell_91/addAddV2#while/lstm_cell_91/BiasAdd:output:0%while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add?
while/lstm_cell_91/SigmoidSigmoidwhile/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid?
#while/lstm_cell_91/ReadVariableOp_1ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_1?
(while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice_1/stack?
*while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_91/strided_slice_1/stack_1?
*while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_1/stack_2?
"while/lstm_cell_91/strided_slice_1StridedSlice+while/lstm_cell_91/ReadVariableOp_1:value:01while/lstm_cell_91/strided_slice_1/stack:output:03while/lstm_cell_91/strided_slice_1/stack_1:output:03while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_1?
while/lstm_cell_91/MatMul_5MatMulwhile/lstm_cell_91/mul_1:z:0+while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_5?
while/lstm_cell_91/add_1AddV2%while/lstm_cell_91/BiasAdd_1:output:0%while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_1?
while/lstm_cell_91/Sigmoid_1Sigmoidwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_1?
while/lstm_cell_91/mul_4Mul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_4?
#while/lstm_cell_91/ReadVariableOp_2ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_2?
(while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_91/strided_slice_2/stack?
*while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_91/strided_slice_2/stack_1?
*while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_2/stack_2?
"while/lstm_cell_91/strided_slice_2StridedSlice+while/lstm_cell_91/ReadVariableOp_2:value:01while/lstm_cell_91/strided_slice_2/stack:output:03while/lstm_cell_91/strided_slice_2/stack_1:output:03while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_2?
while/lstm_cell_91/MatMul_6MatMulwhile/lstm_cell_91/mul_2:z:0+while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_6?
while/lstm_cell_91/add_2AddV2%while/lstm_cell_91/BiasAdd_2:output:0%while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_2?
while/lstm_cell_91/ReluReluwhile/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu?
while/lstm_cell_91/mul_5Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_5?
while/lstm_cell_91/add_3AddV2while/lstm_cell_91/mul_4:z:0while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_3?
#while/lstm_cell_91/ReadVariableOp_3ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_3?
(while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_91/strided_slice_3/stack?
*while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_91/strided_slice_3/stack_1?
*while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_3/stack_2?
"while/lstm_cell_91/strided_slice_3StridedSlice+while/lstm_cell_91/ReadVariableOp_3:value:01while/lstm_cell_91/strided_slice_3/stack:output:03while/lstm_cell_91/strided_slice_3/stack_1:output:03while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_3?
while/lstm_cell_91/MatMul_7MatMulwhile/lstm_cell_91/mul_3:z:0+while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_7?
while/lstm_cell_91/add_4AddV2%while/lstm_cell_91/BiasAdd_3:output:0%while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_4?
while/lstm_cell_91/Sigmoid_2Sigmoidwhile/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_2?
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu_1?
while/lstm_cell_91/mul_6Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_91/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_91/ReadVariableOp$^while/lstm_cell_91/ReadVariableOp_1$^while/lstm_cell_91/ReadVariableOp_2$^while/lstm_cell_91/ReadVariableOp_3(^while/lstm_cell_91/split/ReadVariableOp*^while/lstm_cell_91/split_1/ReadVariableOp*"
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
*while_lstm_cell_91_readvariableop_resource,while_lstm_cell_91_readvariableop_resource_0"j
2while_lstm_cell_91_split_1_readvariableop_resource4while_lstm_cell_91_split_1_readvariableop_resource_0"f
0while_lstm_cell_91_split_readvariableop_resource2while_lstm_cell_91_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_91/ReadVariableOp!while/lstm_cell_91/ReadVariableOp2J
#while/lstm_cell_91/ReadVariableOp_1#while/lstm_cell_91/ReadVariableOp_12J
#while/lstm_cell_91/ReadVariableOp_2#while/lstm_cell_91/ReadVariableOp_22J
#while/lstm_cell_91/ReadVariableOp_3#while/lstm_cell_91/ReadVariableOp_32R
'while/lstm_cell_91/split/ReadVariableOp'while/lstm_cell_91/split/ReadVariableOp2V
)while/lstm_cell_91/split_1/ReadVariableOp)while/lstm_cell_91/split_1/ReadVariableOp: 
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
while_body_2934449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_91_split_readvariableop_resource_0:	?C
4while_lstm_cell_91_split_1_readvariableop_resource_0:	??
,while_lstm_cell_91_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_91_split_readvariableop_resource:	?A
2while_lstm_cell_91_split_1_readvariableop_resource:	?=
*while_lstm_cell_91_readvariableop_resource:	 ???!while/lstm_cell_91/ReadVariableOp?#while/lstm_cell_91/ReadVariableOp_1?#while/lstm_cell_91/ReadVariableOp_2?#while/lstm_cell_91/ReadVariableOp_3?'while/lstm_cell_91/split/ReadVariableOp?)while/lstm_cell_91/split_1/ReadVariableOp?
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
"while/lstm_cell_91/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_91/ones_like/Shape?
"while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_91/ones_like/Const?
while/lstm_cell_91/ones_likeFill+while/lstm_cell_91/ones_like/Shape:output:0+while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/ones_like?
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_91/split/split_dim?
'while/lstm_cell_91/split/ReadVariableOpReadVariableOp2while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_91/split/ReadVariableOp?
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_91/split?
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul?
while/lstm_cell_91/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_1?
while/lstm_cell_91/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_2?
while/lstm_cell_91/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_3?
$while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_91/split_1/split_dim?
)while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_91/split_1/ReadVariableOp?
while/lstm_cell_91/split_1Split-while/lstm_cell_91/split_1/split_dim:output:01while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_91/split_1?
while/lstm_cell_91/BiasAddBiasAdd#while/lstm_cell_91/MatMul:product:0#while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd?
while/lstm_cell_91/BiasAdd_1BiasAdd%while/lstm_cell_91/MatMul_1:product:0#while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_1?
while/lstm_cell_91/BiasAdd_2BiasAdd%while/lstm_cell_91/MatMul_2:product:0#while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_2?
while/lstm_cell_91/BiasAdd_3BiasAdd%while/lstm_cell_91/MatMul_3:product:0#while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_3?
while/lstm_cell_91/mulMulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul?
while/lstm_cell_91/mul_1Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_1?
while/lstm_cell_91/mul_2Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_2?
while/lstm_cell_91/mul_3Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_3?
!while/lstm_cell_91/ReadVariableOpReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_91/ReadVariableOp?
&while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_91/strided_slice/stack?
(while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice/stack_1?
(while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_91/strided_slice/stack_2?
 while/lstm_cell_91/strided_sliceStridedSlice)while/lstm_cell_91/ReadVariableOp:value:0/while/lstm_cell_91/strided_slice/stack:output:01while/lstm_cell_91/strided_slice/stack_1:output:01while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_91/strided_slice?
while/lstm_cell_91/MatMul_4MatMulwhile/lstm_cell_91/mul:z:0)while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_4?
while/lstm_cell_91/addAddV2#while/lstm_cell_91/BiasAdd:output:0%while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add?
while/lstm_cell_91/SigmoidSigmoidwhile/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid?
#while/lstm_cell_91/ReadVariableOp_1ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_1?
(while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice_1/stack?
*while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_91/strided_slice_1/stack_1?
*while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_1/stack_2?
"while/lstm_cell_91/strided_slice_1StridedSlice+while/lstm_cell_91/ReadVariableOp_1:value:01while/lstm_cell_91/strided_slice_1/stack:output:03while/lstm_cell_91/strided_slice_1/stack_1:output:03while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_1?
while/lstm_cell_91/MatMul_5MatMulwhile/lstm_cell_91/mul_1:z:0+while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_5?
while/lstm_cell_91/add_1AddV2%while/lstm_cell_91/BiasAdd_1:output:0%while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_1?
while/lstm_cell_91/Sigmoid_1Sigmoidwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_1?
while/lstm_cell_91/mul_4Mul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_4?
#while/lstm_cell_91/ReadVariableOp_2ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_2?
(while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_91/strided_slice_2/stack?
*while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_91/strided_slice_2/stack_1?
*while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_2/stack_2?
"while/lstm_cell_91/strided_slice_2StridedSlice+while/lstm_cell_91/ReadVariableOp_2:value:01while/lstm_cell_91/strided_slice_2/stack:output:03while/lstm_cell_91/strided_slice_2/stack_1:output:03while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_2?
while/lstm_cell_91/MatMul_6MatMulwhile/lstm_cell_91/mul_2:z:0+while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_6?
while/lstm_cell_91/add_2AddV2%while/lstm_cell_91/BiasAdd_2:output:0%while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_2?
while/lstm_cell_91/ReluReluwhile/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu?
while/lstm_cell_91/mul_5Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_5?
while/lstm_cell_91/add_3AddV2while/lstm_cell_91/mul_4:z:0while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_3?
#while/lstm_cell_91/ReadVariableOp_3ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_3?
(while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_91/strided_slice_3/stack?
*while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_91/strided_slice_3/stack_1?
*while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_3/stack_2?
"while/lstm_cell_91/strided_slice_3StridedSlice+while/lstm_cell_91/ReadVariableOp_3:value:01while/lstm_cell_91/strided_slice_3/stack:output:03while/lstm_cell_91/strided_slice_3/stack_1:output:03while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_3?
while/lstm_cell_91/MatMul_7MatMulwhile/lstm_cell_91/mul_3:z:0+while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_7?
while/lstm_cell_91/add_4AddV2%while/lstm_cell_91/BiasAdd_3:output:0%while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_4?
while/lstm_cell_91/Sigmoid_2Sigmoidwhile/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_2?
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu_1?
while/lstm_cell_91/mul_6Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_91/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_91/ReadVariableOp$^while/lstm_cell_91/ReadVariableOp_1$^while/lstm_cell_91/ReadVariableOp_2$^while/lstm_cell_91/ReadVariableOp_3(^while/lstm_cell_91/split/ReadVariableOp*^while/lstm_cell_91/split_1/ReadVariableOp*"
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
*while_lstm_cell_91_readvariableop_resource,while_lstm_cell_91_readvariableop_resource_0"j
2while_lstm_cell_91_split_1_readvariableop_resource4while_lstm_cell_91_split_1_readvariableop_resource_0"f
0while_lstm_cell_91_split_readvariableop_resource2while_lstm_cell_91_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_91/ReadVariableOp!while/lstm_cell_91/ReadVariableOp2J
#while/lstm_cell_91/ReadVariableOp_1#while/lstm_cell_91/ReadVariableOp_12J
#while/lstm_cell_91/ReadVariableOp_2#while/lstm_cell_91/ReadVariableOp_22J
#while/lstm_cell_91/ReadVariableOp_3#while/lstm_cell_91/ReadVariableOp_32R
'while/lstm_cell_91/split/ReadVariableOp'while/lstm_cell_91/split/ReadVariableOp2V
)while/lstm_cell_91/split_1/ReadVariableOp)while/lstm_cell_91/split_1/ReadVariableOp: 
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
while_cond_2934448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2934448___redundant_placeholder05
1while_while_cond_2934448___redundant_placeholder15
1while_while_cond_2934448___redundant_placeholder25
1while_while_cond_2934448___redundant_placeholder3
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
while_body_2934174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_91_split_readvariableop_resource_0:	?C
4while_lstm_cell_91_split_1_readvariableop_resource_0:	??
,while_lstm_cell_91_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_91_split_readvariableop_resource:	?A
2while_lstm_cell_91_split_1_readvariableop_resource:	?=
*while_lstm_cell_91_readvariableop_resource:	 ???!while/lstm_cell_91/ReadVariableOp?#while/lstm_cell_91/ReadVariableOp_1?#while/lstm_cell_91/ReadVariableOp_2?#while/lstm_cell_91/ReadVariableOp_3?'while/lstm_cell_91/split/ReadVariableOp?)while/lstm_cell_91/split_1/ReadVariableOp?
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
"while/lstm_cell_91/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_91/ones_like/Shape?
"while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_91/ones_like/Const?
while/lstm_cell_91/ones_likeFill+while/lstm_cell_91/ones_like/Shape:output:0+while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/ones_like?
 while/lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_91/dropout/Const?
while/lstm_cell_91/dropout/MulMul%while/lstm_cell_91/ones_like:output:0)while/lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_91/dropout/Mul?
 while/lstm_cell_91/dropout/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_91/dropout/Shape?
7while/lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_91/dropout/random_uniform/RandomUniform?
)while/lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_91/dropout/GreaterEqual/y?
'while/lstm_cell_91/dropout/GreaterEqualGreaterEqual@while/lstm_cell_91/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_91/dropout/GreaterEqual?
while/lstm_cell_91/dropout/CastCast+while/lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_91/dropout/Cast?
 while/lstm_cell_91/dropout/Mul_1Mul"while/lstm_cell_91/dropout/Mul:z:0#while/lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout/Mul_1?
"while/lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_1/Const?
 while/lstm_cell_91/dropout_1/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_1/Mul?
"while/lstm_cell_91/dropout_1/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_1/Shape?
9while/lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ˌ?2;
9while/lstm_cell_91/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_1/GreaterEqual/y?
)while/lstm_cell_91/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_1/GreaterEqual?
!while/lstm_cell_91/dropout_1/CastCast-while/lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_1/Cast?
"while/lstm_cell_91/dropout_1/Mul_1Mul$while/lstm_cell_91/dropout_1/Mul:z:0%while/lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_1/Mul_1?
"while/lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_2/Const?
 while/lstm_cell_91/dropout_2/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_2/Mul?
"while/lstm_cell_91/dropout_2/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_2/Shape?
9while/lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_91/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_2/GreaterEqual/y?
)while/lstm_cell_91/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_2/GreaterEqual?
!while/lstm_cell_91/dropout_2/CastCast-while/lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_2/Cast?
"while/lstm_cell_91/dropout_2/Mul_1Mul$while/lstm_cell_91/dropout_2/Mul:z:0%while/lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_2/Mul_1?
"while/lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_91/dropout_3/Const?
 while/lstm_cell_91/dropout_3/MulMul%while/lstm_cell_91/ones_like:output:0+while/lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_91/dropout_3/Mul?
"while/lstm_cell_91/dropout_3/ShapeShape%while/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_91/dropout_3/Shape?
9while/lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_91/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_91/dropout_3/GreaterEqual/y?
)while/lstm_cell_91/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_91/dropout_3/GreaterEqual?
!while/lstm_cell_91/dropout_3/CastCast-while/lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_91/dropout_3/Cast?
"while/lstm_cell_91/dropout_3/Mul_1Mul$while/lstm_cell_91/dropout_3/Mul:z:0%while/lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_91/dropout_3/Mul_1?
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_91/split/split_dim?
'while/lstm_cell_91/split/ReadVariableOpReadVariableOp2while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_91/split/ReadVariableOp?
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_91/split?
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul?
while/lstm_cell_91/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_1?
while/lstm_cell_91/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_2?
while/lstm_cell_91/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_3?
$while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_91/split_1/split_dim?
)while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_91/split_1/ReadVariableOp?
while/lstm_cell_91/split_1Split-while/lstm_cell_91/split_1/split_dim:output:01while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_91/split_1?
while/lstm_cell_91/BiasAddBiasAdd#while/lstm_cell_91/MatMul:product:0#while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd?
while/lstm_cell_91/BiasAdd_1BiasAdd%while/lstm_cell_91/MatMul_1:product:0#while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_1?
while/lstm_cell_91/BiasAdd_2BiasAdd%while/lstm_cell_91/MatMul_2:product:0#while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_2?
while/lstm_cell_91/BiasAdd_3BiasAdd%while/lstm_cell_91/MatMul_3:product:0#while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_3?
while/lstm_cell_91/mulMulwhile_placeholder_2$while/lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul?
while/lstm_cell_91/mul_1Mulwhile_placeholder_2&while/lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_1?
while/lstm_cell_91/mul_2Mulwhile_placeholder_2&while/lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_2?
while/lstm_cell_91/mul_3Mulwhile_placeholder_2&while/lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_3?
!while/lstm_cell_91/ReadVariableOpReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_91/ReadVariableOp?
&while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_91/strided_slice/stack?
(while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice/stack_1?
(while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_91/strided_slice/stack_2?
 while/lstm_cell_91/strided_sliceStridedSlice)while/lstm_cell_91/ReadVariableOp:value:0/while/lstm_cell_91/strided_slice/stack:output:01while/lstm_cell_91/strided_slice/stack_1:output:01while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_91/strided_slice?
while/lstm_cell_91/MatMul_4MatMulwhile/lstm_cell_91/mul:z:0)while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_4?
while/lstm_cell_91/addAddV2#while/lstm_cell_91/BiasAdd:output:0%while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add?
while/lstm_cell_91/SigmoidSigmoidwhile/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid?
#while/lstm_cell_91/ReadVariableOp_1ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_1?
(while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice_1/stack?
*while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_91/strided_slice_1/stack_1?
*while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_1/stack_2?
"while/lstm_cell_91/strided_slice_1StridedSlice+while/lstm_cell_91/ReadVariableOp_1:value:01while/lstm_cell_91/strided_slice_1/stack:output:03while/lstm_cell_91/strided_slice_1/stack_1:output:03while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_1?
while/lstm_cell_91/MatMul_5MatMulwhile/lstm_cell_91/mul_1:z:0+while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_5?
while/lstm_cell_91/add_1AddV2%while/lstm_cell_91/BiasAdd_1:output:0%while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_1?
while/lstm_cell_91/Sigmoid_1Sigmoidwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_1?
while/lstm_cell_91/mul_4Mul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_4?
#while/lstm_cell_91/ReadVariableOp_2ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_2?
(while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_91/strided_slice_2/stack?
*while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_91/strided_slice_2/stack_1?
*while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_2/stack_2?
"while/lstm_cell_91/strided_slice_2StridedSlice+while/lstm_cell_91/ReadVariableOp_2:value:01while/lstm_cell_91/strided_slice_2/stack:output:03while/lstm_cell_91/strided_slice_2/stack_1:output:03while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_2?
while/lstm_cell_91/MatMul_6MatMulwhile/lstm_cell_91/mul_2:z:0+while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_6?
while/lstm_cell_91/add_2AddV2%while/lstm_cell_91/BiasAdd_2:output:0%while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_2?
while/lstm_cell_91/ReluReluwhile/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu?
while/lstm_cell_91/mul_5Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_5?
while/lstm_cell_91/add_3AddV2while/lstm_cell_91/mul_4:z:0while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_3?
#while/lstm_cell_91/ReadVariableOp_3ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_3?
(while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_91/strided_slice_3/stack?
*while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_91/strided_slice_3/stack_1?
*while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_3/stack_2?
"while/lstm_cell_91/strided_slice_3StridedSlice+while/lstm_cell_91/ReadVariableOp_3:value:01while/lstm_cell_91/strided_slice_3/stack:output:03while/lstm_cell_91/strided_slice_3/stack_1:output:03while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_3?
while/lstm_cell_91/MatMul_7MatMulwhile/lstm_cell_91/mul_3:z:0+while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_7?
while/lstm_cell_91/add_4AddV2%while/lstm_cell_91/BiasAdd_3:output:0%while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_4?
while/lstm_cell_91/Sigmoid_2Sigmoidwhile/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_2?
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu_1?
while/lstm_cell_91/mul_6Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_91/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_91/ReadVariableOp$^while/lstm_cell_91/ReadVariableOp_1$^while/lstm_cell_91/ReadVariableOp_2$^while/lstm_cell_91/ReadVariableOp_3(^while/lstm_cell_91/split/ReadVariableOp*^while/lstm_cell_91/split_1/ReadVariableOp*"
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
*while_lstm_cell_91_readvariableop_resource,while_lstm_cell_91_readvariableop_resource_0"j
2while_lstm_cell_91_split_1_readvariableop_resource4while_lstm_cell_91_split_1_readvariableop_resource_0"f
0while_lstm_cell_91_split_readvariableop_resource2while_lstm_cell_91_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_91/ReadVariableOp!while/lstm_cell_91/ReadVariableOp2J
#while/lstm_cell_91/ReadVariableOp_1#while/lstm_cell_91/ReadVariableOp_12J
#while/lstm_cell_91/ReadVariableOp_2#while/lstm_cell_91/ReadVariableOp_22J
#while/lstm_cell_91/ReadVariableOp_3#while/lstm_cell_91/ReadVariableOp_32R
'while/lstm_cell_91/split/ReadVariableOp'while/lstm_cell_91/split/ReadVariableOp2V
)while/lstm_cell_91/split_1/ReadVariableOp)while/lstm_cell_91/split_1/ReadVariableOp: 
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
?|
?
#__inference__traced_restore_2935415
file_prefix3
!assignvariableop_dense_110_kernel:  /
!assignvariableop_1_dense_110_bias: 5
#assignvariableop_2_dense_111_kernel: /
!assignvariableop_3_dense_111_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_91_lstm_cell_91_kernel:	?L
9assignvariableop_10_lstm_91_lstm_cell_91_recurrent_kernel:	 ?<
-assignvariableop_11_lstm_91_lstm_cell_91_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: =
+assignvariableop_14_adam_dense_110_kernel_m:  7
)assignvariableop_15_adam_dense_110_bias_m: =
+assignvariableop_16_adam_dense_111_kernel_m: 7
)assignvariableop_17_adam_dense_111_bias_m:I
6assignvariableop_18_adam_lstm_91_lstm_cell_91_kernel_m:	?S
@assignvariableop_19_adam_lstm_91_lstm_cell_91_recurrent_kernel_m:	 ?C
4assignvariableop_20_adam_lstm_91_lstm_cell_91_bias_m:	?=
+assignvariableop_21_adam_dense_110_kernel_v:  7
)assignvariableop_22_adam_dense_110_bias_v: =
+assignvariableop_23_adam_dense_111_kernel_v: 7
)assignvariableop_24_adam_dense_111_bias_v:I
6assignvariableop_25_adam_lstm_91_lstm_cell_91_kernel_v:	?S
@assignvariableop_26_adam_lstm_91_lstm_cell_91_recurrent_kernel_v:	 ?C
4assignvariableop_27_adam_lstm_91_lstm_cell_91_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_110_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_110_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_111_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_111_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_91_lstm_cell_91_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_91_lstm_cell_91_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_91_lstm_cell_91_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_110_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_110_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_111_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_111_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_91_lstm_cell_91_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_91_lstm_cell_91_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_91_lstm_cell_91_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_110_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_110_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_111_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_111_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_91_lstm_cell_91_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_91_lstm_cell_91_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_91_lstm_cell_91_bias_vIdentity_27:output:0"/device:CPU:0*
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
?
H
,__inference_reshape_55_layer_call_fn_2934945

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
GPU 2J 8? *P
fKRI
G__inference_reshape_55_layer_call_and_return_conditional_losses_29325102
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
?R
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2931927

inputs'
lstm_cell_91_2931839:	?#
lstm_cell_91_2931841:	?'
lstm_cell_91_2931843:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_91/StatefulPartitionedCall?whileD
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
$lstm_cell_91/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_91_2931839lstm_cell_91_2931841lstm_cell_91_2931843*
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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_29317742&
$lstm_cell_91/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_91_2931839lstm_cell_91_2931841lstm_cell_91_2931843*
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
bodyR
while_body_2931852*
condR
while_cond_2931851*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_91_2931839*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_91/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_91/StatefulPartitionedCall$lstm_cell_91/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?	
"__inference__wrapped_model_2931417
input_38S
@sequential_37_lstm_91_lstm_cell_91_split_readvariableop_resource:	?Q
Bsequential_37_lstm_91_lstm_cell_91_split_1_readvariableop_resource:	?M
:sequential_37_lstm_91_lstm_cell_91_readvariableop_resource:	 ?H
6sequential_37_dense_110_matmul_readvariableop_resource:  E
7sequential_37_dense_110_biasadd_readvariableop_resource: H
6sequential_37_dense_111_matmul_readvariableop_resource: E
7sequential_37_dense_111_biasadd_readvariableop_resource:
identity??.sequential_37/dense_110/BiasAdd/ReadVariableOp?-sequential_37/dense_110/MatMul/ReadVariableOp?.sequential_37/dense_111/BiasAdd/ReadVariableOp?-sequential_37/dense_111/MatMul/ReadVariableOp?1sequential_37/lstm_91/lstm_cell_91/ReadVariableOp?3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_1?3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_2?3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_3?7sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOp?9sequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOp?sequential_37/lstm_91/whiler
sequential_37/lstm_91/ShapeShapeinput_38*
T0*
_output_shapes
:2
sequential_37/lstm_91/Shape?
)sequential_37/lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_37/lstm_91/strided_slice/stack?
+sequential_37/lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_37/lstm_91/strided_slice/stack_1?
+sequential_37/lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_37/lstm_91/strided_slice/stack_2?
#sequential_37/lstm_91/strided_sliceStridedSlice$sequential_37/lstm_91/Shape:output:02sequential_37/lstm_91/strided_slice/stack:output:04sequential_37/lstm_91/strided_slice/stack_1:output:04sequential_37/lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_37/lstm_91/strided_slice?
!sequential_37/lstm_91/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_37/lstm_91/zeros/mul/y?
sequential_37/lstm_91/zeros/mulMul,sequential_37/lstm_91/strided_slice:output:0*sequential_37/lstm_91/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_37/lstm_91/zeros/mul?
"sequential_37/lstm_91/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_37/lstm_91/zeros/Less/y?
 sequential_37/lstm_91/zeros/LessLess#sequential_37/lstm_91/zeros/mul:z:0+sequential_37/lstm_91/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_37/lstm_91/zeros/Less?
$sequential_37/lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_37/lstm_91/zeros/packed/1?
"sequential_37/lstm_91/zeros/packedPack,sequential_37/lstm_91/strided_slice:output:0-sequential_37/lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_37/lstm_91/zeros/packed?
!sequential_37/lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_37/lstm_91/zeros/Const?
sequential_37/lstm_91/zerosFill+sequential_37/lstm_91/zeros/packed:output:0*sequential_37/lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/lstm_91/zeros?
#sequential_37/lstm_91/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_37/lstm_91/zeros_1/mul/y?
!sequential_37/lstm_91/zeros_1/mulMul,sequential_37/lstm_91/strided_slice:output:0,sequential_37/lstm_91/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_37/lstm_91/zeros_1/mul?
$sequential_37/lstm_91/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_37/lstm_91/zeros_1/Less/y?
"sequential_37/lstm_91/zeros_1/LessLess%sequential_37/lstm_91/zeros_1/mul:z:0-sequential_37/lstm_91/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_37/lstm_91/zeros_1/Less?
&sequential_37/lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_37/lstm_91/zeros_1/packed/1?
$sequential_37/lstm_91/zeros_1/packedPack,sequential_37/lstm_91/strided_slice:output:0/sequential_37/lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_37/lstm_91/zeros_1/packed?
#sequential_37/lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_37/lstm_91/zeros_1/Const?
sequential_37/lstm_91/zeros_1Fill-sequential_37/lstm_91/zeros_1/packed:output:0,sequential_37/lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/lstm_91/zeros_1?
$sequential_37/lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_37/lstm_91/transpose/perm?
sequential_37/lstm_91/transpose	Transposeinput_38-sequential_37/lstm_91/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_37/lstm_91/transpose?
sequential_37/lstm_91/Shape_1Shape#sequential_37/lstm_91/transpose:y:0*
T0*
_output_shapes
:2
sequential_37/lstm_91/Shape_1?
+sequential_37/lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_37/lstm_91/strided_slice_1/stack?
-sequential_37/lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_37/lstm_91/strided_slice_1/stack_1?
-sequential_37/lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_37/lstm_91/strided_slice_1/stack_2?
%sequential_37/lstm_91/strided_slice_1StridedSlice&sequential_37/lstm_91/Shape_1:output:04sequential_37/lstm_91/strided_slice_1/stack:output:06sequential_37/lstm_91/strided_slice_1/stack_1:output:06sequential_37/lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_37/lstm_91/strided_slice_1?
1sequential_37/lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_37/lstm_91/TensorArrayV2/element_shape?
#sequential_37/lstm_91/TensorArrayV2TensorListReserve:sequential_37/lstm_91/TensorArrayV2/element_shape:output:0.sequential_37/lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_37/lstm_91/TensorArrayV2?
Ksequential_37/lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_37/lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_37/lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_37/lstm_91/transpose:y:0Tsequential_37/lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_37/lstm_91/TensorArrayUnstack/TensorListFromTensor?
+sequential_37/lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_37/lstm_91/strided_slice_2/stack?
-sequential_37/lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_37/lstm_91/strided_slice_2/stack_1?
-sequential_37/lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_37/lstm_91/strided_slice_2/stack_2?
%sequential_37/lstm_91/strided_slice_2StridedSlice#sequential_37/lstm_91/transpose:y:04sequential_37/lstm_91/strided_slice_2/stack:output:06sequential_37/lstm_91/strided_slice_2/stack_1:output:06sequential_37/lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_37/lstm_91/strided_slice_2?
2sequential_37/lstm_91/lstm_cell_91/ones_like/ShapeShape$sequential_37/lstm_91/zeros:output:0*
T0*
_output_shapes
:24
2sequential_37/lstm_91/lstm_cell_91/ones_like/Shape?
2sequential_37/lstm_91/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential_37/lstm_91/lstm_cell_91/ones_like/Const?
,sequential_37/lstm_91/lstm_cell_91/ones_likeFill;sequential_37/lstm_91/lstm_cell_91/ones_like/Shape:output:0;sequential_37/lstm_91/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/lstm_cell_91/ones_like?
2sequential_37/lstm_91/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_37/lstm_91/lstm_cell_91/split/split_dim?
7sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOpReadVariableOp@sequential_37_lstm_91_lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOp?
(sequential_37/lstm_91/lstm_cell_91/splitSplit;sequential_37/lstm_91/lstm_cell_91/split/split_dim:output:0?sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_37/lstm_91/lstm_cell_91/split?
)sequential_37/lstm_91/lstm_cell_91/MatMulMatMul.sequential_37/lstm_91/strided_slice_2:output:01sequential_37/lstm_91/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_37/lstm_91/lstm_cell_91/MatMul?
+sequential_37/lstm_91/lstm_cell_91/MatMul_1MatMul.sequential_37/lstm_91/strided_slice_2:output:01sequential_37/lstm_91/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_1?
+sequential_37/lstm_91/lstm_cell_91/MatMul_2MatMul.sequential_37/lstm_91/strided_slice_2:output:01sequential_37/lstm_91/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_2?
+sequential_37/lstm_91/lstm_cell_91/MatMul_3MatMul.sequential_37/lstm_91/strided_slice_2:output:01sequential_37/lstm_91/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_3?
4sequential_37/lstm_91/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_37/lstm_91/lstm_cell_91/split_1/split_dim?
9sequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOpReadVariableOpBsequential_37_lstm_91_lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOp?
*sequential_37/lstm_91/lstm_cell_91/split_1Split=sequential_37/lstm_91/lstm_cell_91/split_1/split_dim:output:0Asequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_37/lstm_91/lstm_cell_91/split_1?
*sequential_37/lstm_91/lstm_cell_91/BiasAddBiasAdd3sequential_37/lstm_91/lstm_cell_91/MatMul:product:03sequential_37/lstm_91/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_91/lstm_cell_91/BiasAdd?
,sequential_37/lstm_91/lstm_cell_91/BiasAdd_1BiasAdd5sequential_37/lstm_91/lstm_cell_91/MatMul_1:product:03sequential_37/lstm_91/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/lstm_cell_91/BiasAdd_1?
,sequential_37/lstm_91/lstm_cell_91/BiasAdd_2BiasAdd5sequential_37/lstm_91/lstm_cell_91/MatMul_2:product:03sequential_37/lstm_91/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/lstm_cell_91/BiasAdd_2?
,sequential_37/lstm_91/lstm_cell_91/BiasAdd_3BiasAdd5sequential_37/lstm_91/lstm_cell_91/MatMul_3:product:03sequential_37/lstm_91/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/lstm_cell_91/BiasAdd_3?
&sequential_37/lstm_91/lstm_cell_91/mulMul$sequential_37/lstm_91/zeros:output:05sequential_37/lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_37/lstm_91/lstm_cell_91/mul?
(sequential_37/lstm_91/lstm_cell_91/mul_1Mul$sequential_37/lstm_91/zeros:output:05sequential_37/lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/mul_1?
(sequential_37/lstm_91/lstm_cell_91/mul_2Mul$sequential_37/lstm_91/zeros:output:05sequential_37/lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/mul_2?
(sequential_37/lstm_91/lstm_cell_91/mul_3Mul$sequential_37/lstm_91/zeros:output:05sequential_37/lstm_91/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/mul_3?
1sequential_37/lstm_91/lstm_cell_91/ReadVariableOpReadVariableOp:sequential_37_lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1sequential_37/lstm_91/lstm_cell_91/ReadVariableOp?
6sequential_37/lstm_91/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_37/lstm_91/lstm_cell_91/strided_slice/stack?
8sequential_37/lstm_91/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_37/lstm_91/lstm_cell_91/strided_slice/stack_1?
8sequential_37/lstm_91/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_37/lstm_91/lstm_cell_91/strided_slice/stack_2?
0sequential_37/lstm_91/lstm_cell_91/strided_sliceStridedSlice9sequential_37/lstm_91/lstm_cell_91/ReadVariableOp:value:0?sequential_37/lstm_91/lstm_cell_91/strided_slice/stack:output:0Asequential_37/lstm_91/lstm_cell_91/strided_slice/stack_1:output:0Asequential_37/lstm_91/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_37/lstm_91/lstm_cell_91/strided_slice?
+sequential_37/lstm_91/lstm_cell_91/MatMul_4MatMul*sequential_37/lstm_91/lstm_cell_91/mul:z:09sequential_37/lstm_91/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_4?
&sequential_37/lstm_91/lstm_cell_91/addAddV23sequential_37/lstm_91/lstm_cell_91/BiasAdd:output:05sequential_37/lstm_91/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2(
&sequential_37/lstm_91/lstm_cell_91/add?
*sequential_37/lstm_91/lstm_cell_91/SigmoidSigmoid*sequential_37/lstm_91/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_37/lstm_91/lstm_cell_91/Sigmoid?
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_1ReadVariableOp:sequential_37_lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_1?
8sequential_37/lstm_91/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack?
:sequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack_1?
:sequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack_2?
2sequential_37/lstm_91/lstm_cell_91/strided_slice_1StridedSlice;sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_1:value:0Asequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack:output:0Csequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack_1:output:0Csequential_37/lstm_91/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_37/lstm_91/lstm_cell_91/strided_slice_1?
+sequential_37/lstm_91/lstm_cell_91/MatMul_5MatMul,sequential_37/lstm_91/lstm_cell_91/mul_1:z:0;sequential_37/lstm_91/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_5?
(sequential_37/lstm_91/lstm_cell_91/add_1AddV25sequential_37/lstm_91/lstm_cell_91/BiasAdd_1:output:05sequential_37/lstm_91/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/add_1?
,sequential_37/lstm_91/lstm_cell_91/Sigmoid_1Sigmoid,sequential_37/lstm_91/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/lstm_cell_91/Sigmoid_1?
(sequential_37/lstm_91/lstm_cell_91/mul_4Mul0sequential_37/lstm_91/lstm_cell_91/Sigmoid_1:y:0&sequential_37/lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/mul_4?
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_2ReadVariableOp:sequential_37_lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_2?
8sequential_37/lstm_91/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack?
:sequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack_1?
:sequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack_2?
2sequential_37/lstm_91/lstm_cell_91/strided_slice_2StridedSlice;sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_2:value:0Asequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack:output:0Csequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack_1:output:0Csequential_37/lstm_91/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_37/lstm_91/lstm_cell_91/strided_slice_2?
+sequential_37/lstm_91/lstm_cell_91/MatMul_6MatMul,sequential_37/lstm_91/lstm_cell_91/mul_2:z:0;sequential_37/lstm_91/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_6?
(sequential_37/lstm_91/lstm_cell_91/add_2AddV25sequential_37/lstm_91/lstm_cell_91/BiasAdd_2:output:05sequential_37/lstm_91/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/add_2?
'sequential_37/lstm_91/lstm_cell_91/ReluRelu,sequential_37/lstm_91/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_37/lstm_91/lstm_cell_91/Relu?
(sequential_37/lstm_91/lstm_cell_91/mul_5Mul.sequential_37/lstm_91/lstm_cell_91/Sigmoid:y:05sequential_37/lstm_91/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/mul_5?
(sequential_37/lstm_91/lstm_cell_91/add_3AddV2,sequential_37/lstm_91/lstm_cell_91/mul_4:z:0,sequential_37/lstm_91/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/add_3?
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_3ReadVariableOp:sequential_37_lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_3?
8sequential_37/lstm_91/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack?
:sequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack_1?
:sequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack_2?
2sequential_37/lstm_91/lstm_cell_91/strided_slice_3StridedSlice;sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_3:value:0Asequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack:output:0Csequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack_1:output:0Csequential_37/lstm_91/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_37/lstm_91/lstm_cell_91/strided_slice_3?
+sequential_37/lstm_91/lstm_cell_91/MatMul_7MatMul,sequential_37/lstm_91/lstm_cell_91/mul_3:z:0;sequential_37/lstm_91/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_37/lstm_91/lstm_cell_91/MatMul_7?
(sequential_37/lstm_91/lstm_cell_91/add_4AddV25sequential_37/lstm_91/lstm_cell_91/BiasAdd_3:output:05sequential_37/lstm_91/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/add_4?
,sequential_37/lstm_91/lstm_cell_91/Sigmoid_2Sigmoid,sequential_37/lstm_91/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_37/lstm_91/lstm_cell_91/Sigmoid_2?
)sequential_37/lstm_91/lstm_cell_91/Relu_1Relu,sequential_37/lstm_91/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_37/lstm_91/lstm_cell_91/Relu_1?
(sequential_37/lstm_91/lstm_cell_91/mul_6Mul0sequential_37/lstm_91/lstm_cell_91/Sigmoid_2:y:07sequential_37/lstm_91/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_37/lstm_91/lstm_cell_91/mul_6?
3sequential_37/lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    25
3sequential_37/lstm_91/TensorArrayV2_1/element_shape?
%sequential_37/lstm_91/TensorArrayV2_1TensorListReserve<sequential_37/lstm_91/TensorArrayV2_1/element_shape:output:0.sequential_37/lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_37/lstm_91/TensorArrayV2_1z
sequential_37/lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_37/lstm_91/time?
.sequential_37/lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_37/lstm_91/while/maximum_iterations?
(sequential_37/lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_37/lstm_91/while/loop_counter?
sequential_37/lstm_91/whileWhile1sequential_37/lstm_91/while/loop_counter:output:07sequential_37/lstm_91/while/maximum_iterations:output:0#sequential_37/lstm_91/time:output:0.sequential_37/lstm_91/TensorArrayV2_1:handle:0$sequential_37/lstm_91/zeros:output:0&sequential_37/lstm_91/zeros_1:output:0.sequential_37/lstm_91/strided_slice_1:output:0Msequential_37/lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_37_lstm_91_lstm_cell_91_split_readvariableop_resourceBsequential_37_lstm_91_lstm_cell_91_split_1_readvariableop_resource:sequential_37_lstm_91_lstm_cell_91_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_37_lstm_91_while_body_2931268*4
cond,R*
(sequential_37_lstm_91_while_cond_2931267*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_37/lstm_91/while?
Fsequential_37/lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fsequential_37/lstm_91/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_37/lstm_91/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_37/lstm_91/while:output:3Osequential_37/lstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02:
8sequential_37/lstm_91/TensorArrayV2Stack/TensorListStack?
+sequential_37/lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_37/lstm_91/strided_slice_3/stack?
-sequential_37/lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_37/lstm_91/strided_slice_3/stack_1?
-sequential_37/lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_37/lstm_91/strided_slice_3/stack_2?
%sequential_37/lstm_91/strided_slice_3StridedSliceAsequential_37/lstm_91/TensorArrayV2Stack/TensorListStack:tensor:04sequential_37/lstm_91/strided_slice_3/stack:output:06sequential_37/lstm_91/strided_slice_3/stack_1:output:06sequential_37/lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2'
%sequential_37/lstm_91/strided_slice_3?
&sequential_37/lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_37/lstm_91/transpose_1/perm?
!sequential_37/lstm_91/transpose_1	TransposeAsequential_37/lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_37/lstm_91/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2#
!sequential_37/lstm_91/transpose_1?
sequential_37/lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_37/lstm_91/runtime?
-sequential_37/dense_110/MatMul/ReadVariableOpReadVariableOp6sequential_37_dense_110_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_37/dense_110/MatMul/ReadVariableOp?
sequential_37/dense_110/MatMulMatMul.sequential_37/lstm_91/strided_slice_3:output:05sequential_37/dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_37/dense_110/MatMul?
.sequential_37/dense_110/BiasAdd/ReadVariableOpReadVariableOp7sequential_37_dense_110_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_37/dense_110/BiasAdd/ReadVariableOp?
sequential_37/dense_110/BiasAddBiasAdd(sequential_37/dense_110/MatMul:product:06sequential_37/dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2!
sequential_37/dense_110/BiasAdd?
sequential_37/dense_110/ReluRelu(sequential_37/dense_110/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_37/dense_110/Relu?
-sequential_37/dense_111/MatMul/ReadVariableOpReadVariableOp6sequential_37_dense_111_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_37/dense_111/MatMul/ReadVariableOp?
sequential_37/dense_111/MatMulMatMul*sequential_37/dense_110/Relu:activations:05sequential_37/dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_37/dense_111/MatMul?
.sequential_37/dense_111/BiasAdd/ReadVariableOpReadVariableOp7sequential_37_dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_37/dense_111/BiasAdd/ReadVariableOp?
sequential_37/dense_111/BiasAddBiasAdd(sequential_37/dense_111/MatMul:product:06sequential_37/dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_37/dense_111/BiasAdd?
sequential_37/reshape_55/ShapeShape(sequential_37/dense_111/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_37/reshape_55/Shape?
,sequential_37/reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_37/reshape_55/strided_slice/stack?
.sequential_37/reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/reshape_55/strided_slice/stack_1?
.sequential_37/reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_37/reshape_55/strided_slice/stack_2?
&sequential_37/reshape_55/strided_sliceStridedSlice'sequential_37/reshape_55/Shape:output:05sequential_37/reshape_55/strided_slice/stack:output:07sequential_37/reshape_55/strided_slice/stack_1:output:07sequential_37/reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_37/reshape_55/strided_slice?
(sequential_37/reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_37/reshape_55/Reshape/shape/1?
(sequential_37/reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_37/reshape_55/Reshape/shape/2?
&sequential_37/reshape_55/Reshape/shapePack/sequential_37/reshape_55/strided_slice:output:01sequential_37/reshape_55/Reshape/shape/1:output:01sequential_37/reshape_55/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_37/reshape_55/Reshape/shape?
 sequential_37/reshape_55/ReshapeReshape(sequential_37/dense_111/BiasAdd:output:0/sequential_37/reshape_55/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_37/reshape_55/Reshape?
IdentityIdentity)sequential_37/reshape_55/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp/^sequential_37/dense_110/BiasAdd/ReadVariableOp.^sequential_37/dense_110/MatMul/ReadVariableOp/^sequential_37/dense_111/BiasAdd/ReadVariableOp.^sequential_37/dense_111/MatMul/ReadVariableOp2^sequential_37/lstm_91/lstm_cell_91/ReadVariableOp4^sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_14^sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_24^sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_38^sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOp:^sequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOp^sequential_37/lstm_91/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2`
.sequential_37/dense_110/BiasAdd/ReadVariableOp.sequential_37/dense_110/BiasAdd/ReadVariableOp2^
-sequential_37/dense_110/MatMul/ReadVariableOp-sequential_37/dense_110/MatMul/ReadVariableOp2`
.sequential_37/dense_111/BiasAdd/ReadVariableOp.sequential_37/dense_111/BiasAdd/ReadVariableOp2^
-sequential_37/dense_111/MatMul/ReadVariableOp-sequential_37/dense_111/MatMul/ReadVariableOp2f
1sequential_37/lstm_91/lstm_cell_91/ReadVariableOp1sequential_37/lstm_91/lstm_cell_91/ReadVariableOp2j
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_13sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_12j
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_23sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_22j
3sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_33sequential_37/lstm_91/lstm_cell_91/ReadVariableOp_32r
7sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOp7sequential_37/lstm_91/lstm_cell_91/split/ReadVariableOp2v
9sequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOp9sequential_37/lstm_91/lstm_cell_91/split_1/ReadVariableOp2:
sequential_37/lstm_91/whilesequential_37/lstm_91/while:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_38
?
?
__inference_loss_fn_0_2934969G
9dense_111_bias_regularizer_square_readvariableop_resource:
identity??0dense_111/bias/Regularizer/Square/ReadVariableOp?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOp9dense_111_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mull
IdentityIdentity"dense_111/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_111/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp
?
?
while_cond_2931554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2931554___redundant_placeholder05
1while_while_cond_2931554___redundant_placeholder15
1while_while_cond_2931554___redundant_placeholder25
1while_while_cond_2931554___redundant_placeholder3
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
D__inference_lstm_91_layer_call_and_return_conditional_losses_2932888

inputs=
*lstm_cell_91_split_readvariableop_resource:	?;
,lstm_cell_91_split_1_readvariableop_resource:	?7
$lstm_cell_91_readvariableop_resource:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_91/ReadVariableOp?lstm_cell_91/ReadVariableOp_1?lstm_cell_91/ReadVariableOp_2?lstm_cell_91/ReadVariableOp_3?!lstm_cell_91/split/ReadVariableOp?#lstm_cell_91/split_1/ReadVariableOp?whileD
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
lstm_cell_91/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_91/ones_like/Shape?
lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_91/ones_like/Const?
lstm_cell_91/ones_likeFill%lstm_cell_91/ones_like/Shape:output:0%lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/ones_like}
lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout/Const?
lstm_cell_91/dropout/MulMullstm_cell_91/ones_like:output:0#lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Mul?
lstm_cell_91/dropout/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout/Shape?
1lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_91/dropout/random_uniform/RandomUniform?
#lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_91/dropout/GreaterEqual/y?
!lstm_cell_91/dropout/GreaterEqualGreaterEqual:lstm_cell_91/dropout/random_uniform/RandomUniform:output:0,lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_91/dropout/GreaterEqual?
lstm_cell_91/dropout/CastCast%lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Cast?
lstm_cell_91/dropout/Mul_1Mullstm_cell_91/dropout/Mul:z:0lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Mul_1?
lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_1/Const?
lstm_cell_91/dropout_1/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Mul?
lstm_cell_91/dropout_1/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_1/Shape?
3lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_91/dropout_1/random_uniform/RandomUniform?
%lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_1/GreaterEqual/y?
#lstm_cell_91/dropout_1/GreaterEqualGreaterEqual<lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_1/GreaterEqual?
lstm_cell_91/dropout_1/CastCast'lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Cast?
lstm_cell_91/dropout_1/Mul_1Mullstm_cell_91/dropout_1/Mul:z:0lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Mul_1?
lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_2/Const?
lstm_cell_91/dropout_2/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Mul?
lstm_cell_91/dropout_2/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_2/Shape?
3lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??Q25
3lstm_cell_91/dropout_2/random_uniform/RandomUniform?
%lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_2/GreaterEqual/y?
#lstm_cell_91/dropout_2/GreaterEqualGreaterEqual<lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_2/GreaterEqual?
lstm_cell_91/dropout_2/CastCast'lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Cast?
lstm_cell_91/dropout_2/Mul_1Mullstm_cell_91/dropout_2/Mul:z:0lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Mul_1?
lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_3/Const?
lstm_cell_91/dropout_3/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Mul?
lstm_cell_91/dropout_3/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_3/Shape?
3lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_91/dropout_3/random_uniform/RandomUniform?
%lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_3/GreaterEqual/y?
#lstm_cell_91/dropout_3/GreaterEqualGreaterEqual<lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_3/GreaterEqual?
lstm_cell_91/dropout_3/CastCast'lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Cast?
lstm_cell_91/dropout_3/Mul_1Mullstm_cell_91/dropout_3/Mul:z:0lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Mul_1~
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_91/split/split_dim?
!lstm_cell_91/split/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_91/split/ReadVariableOp?
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0)lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_91/split?
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul?
lstm_cell_91/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_1?
lstm_cell_91/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_2?
lstm_cell_91/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_3?
lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_91/split_1/split_dim?
#lstm_cell_91/split_1/ReadVariableOpReadVariableOp,lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_91/split_1/ReadVariableOp?
lstm_cell_91/split_1Split'lstm_cell_91/split_1/split_dim:output:0+lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_91/split_1?
lstm_cell_91/BiasAddBiasAddlstm_cell_91/MatMul:product:0lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd?
lstm_cell_91/BiasAdd_1BiasAddlstm_cell_91/MatMul_1:product:0lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_1?
lstm_cell_91/BiasAdd_2BiasAddlstm_cell_91/MatMul_2:product:0lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_2?
lstm_cell_91/BiasAdd_3BiasAddlstm_cell_91/MatMul_3:product:0lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_3?
lstm_cell_91/mulMulzeros:output:0lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul?
lstm_cell_91/mul_1Mulzeros:output:0 lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_1?
lstm_cell_91/mul_2Mulzeros:output:0 lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_2?
lstm_cell_91/mul_3Mulzeros:output:0 lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_3?
lstm_cell_91/ReadVariableOpReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp?
 lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_91/strided_slice/stack?
"lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice/stack_1?
"lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_91/strided_slice/stack_2?
lstm_cell_91/strided_sliceStridedSlice#lstm_cell_91/ReadVariableOp:value:0)lstm_cell_91/strided_slice/stack:output:0+lstm_cell_91/strided_slice/stack_1:output:0+lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice?
lstm_cell_91/MatMul_4MatMullstm_cell_91/mul:z:0#lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_4?
lstm_cell_91/addAddV2lstm_cell_91/BiasAdd:output:0lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add
lstm_cell_91/SigmoidSigmoidlstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid?
lstm_cell_91/ReadVariableOp_1ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_1?
"lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice_1/stack?
$lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_91/strided_slice_1/stack_1?
$lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_1/stack_2?
lstm_cell_91/strided_slice_1StridedSlice%lstm_cell_91/ReadVariableOp_1:value:0+lstm_cell_91/strided_slice_1/stack:output:0-lstm_cell_91/strided_slice_1/stack_1:output:0-lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_1?
lstm_cell_91/MatMul_5MatMullstm_cell_91/mul_1:z:0%lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_5?
lstm_cell_91/add_1AddV2lstm_cell_91/BiasAdd_1:output:0lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_1?
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_1?
lstm_cell_91/mul_4Mullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_4?
lstm_cell_91/ReadVariableOp_2ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_2?
"lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_91/strided_slice_2/stack?
$lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_91/strided_slice_2/stack_1?
$lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_2/stack_2?
lstm_cell_91/strided_slice_2StridedSlice%lstm_cell_91/ReadVariableOp_2:value:0+lstm_cell_91/strided_slice_2/stack:output:0-lstm_cell_91/strided_slice_2/stack_1:output:0-lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_2?
lstm_cell_91/MatMul_6MatMullstm_cell_91/mul_2:z:0%lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_6?
lstm_cell_91/add_2AddV2lstm_cell_91/BiasAdd_2:output:0lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_2x
lstm_cell_91/ReluRelulstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu?
lstm_cell_91/mul_5Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_5?
lstm_cell_91/add_3AddV2lstm_cell_91/mul_4:z:0lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_3?
lstm_cell_91/ReadVariableOp_3ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_3?
"lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_91/strided_slice_3/stack?
$lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_91/strided_slice_3/stack_1?
$lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_3/stack_2?
lstm_cell_91/strided_slice_3StridedSlice%lstm_cell_91/ReadVariableOp_3:value:0+lstm_cell_91/strided_slice_3/stack:output:0-lstm_cell_91/strided_slice_3/stack_1:output:0-lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_3?
lstm_cell_91/MatMul_7MatMullstm_cell_91/mul_3:z:0%lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_7?
lstm_cell_91/add_4AddV2lstm_cell_91/BiasAdd_3:output:0lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_4?
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_2|
lstm_cell_91/Relu_1Relulstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu_1?
lstm_cell_91/mul_6Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_91_split_readvariableop_resource,lstm_cell_91_split_1_readvariableop_resource$lstm_cell_91_readvariableop_resource*
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
bodyR
while_body_2932723*
condR
while_cond_2932722*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_91/ReadVariableOp^lstm_cell_91/ReadVariableOp_1^lstm_cell_91/ReadVariableOp_2^lstm_cell_91/ReadVariableOp_3"^lstm_cell_91/split/ReadVariableOp$^lstm_cell_91/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_91/ReadVariableOplstm_cell_91/ReadVariableOp2>
lstm_cell_91/ReadVariableOp_1lstm_cell_91/ReadVariableOp_12>
lstm_cell_91/ReadVariableOp_2lstm_cell_91/ReadVariableOp_22>
lstm_cell_91/ReadVariableOp_3lstm_cell_91/ReadVariableOp_32F
!lstm_cell_91/split/ReadVariableOp!lstm_cell_91/split/ReadVariableOp2J
#lstm_cell_91/split_1/ReadVariableOp#lstm_cell_91/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
while_body_2933899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_91_split_readvariableop_resource_0:	?C
4while_lstm_cell_91_split_1_readvariableop_resource_0:	??
,while_lstm_cell_91_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_91_split_readvariableop_resource:	?A
2while_lstm_cell_91_split_1_readvariableop_resource:	?=
*while_lstm_cell_91_readvariableop_resource:	 ???!while/lstm_cell_91/ReadVariableOp?#while/lstm_cell_91/ReadVariableOp_1?#while/lstm_cell_91/ReadVariableOp_2?#while/lstm_cell_91/ReadVariableOp_3?'while/lstm_cell_91/split/ReadVariableOp?)while/lstm_cell_91/split_1/ReadVariableOp?
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
"while/lstm_cell_91/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_91/ones_like/Shape?
"while/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_91/ones_like/Const?
while/lstm_cell_91/ones_likeFill+while/lstm_cell_91/ones_like/Shape:output:0+while/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/ones_like?
"while/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_91/split/split_dim?
'while/lstm_cell_91/split/ReadVariableOpReadVariableOp2while_lstm_cell_91_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_91/split/ReadVariableOp?
while/lstm_cell_91/splitSplit+while/lstm_cell_91/split/split_dim:output:0/while/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_91/split?
while/lstm_cell_91/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul?
while/lstm_cell_91/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_1?
while/lstm_cell_91/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_2?
while/lstm_cell_91/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_3?
$while/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_91/split_1/split_dim?
)while/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_91_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_91/split_1/ReadVariableOp?
while/lstm_cell_91/split_1Split-while/lstm_cell_91/split_1/split_dim:output:01while/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_91/split_1?
while/lstm_cell_91/BiasAddBiasAdd#while/lstm_cell_91/MatMul:product:0#while/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd?
while/lstm_cell_91/BiasAdd_1BiasAdd%while/lstm_cell_91/MatMul_1:product:0#while/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_1?
while/lstm_cell_91/BiasAdd_2BiasAdd%while/lstm_cell_91/MatMul_2:product:0#while/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_2?
while/lstm_cell_91/BiasAdd_3BiasAdd%while/lstm_cell_91/MatMul_3:product:0#while/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/BiasAdd_3?
while/lstm_cell_91/mulMulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul?
while/lstm_cell_91/mul_1Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_1?
while/lstm_cell_91/mul_2Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_2?
while/lstm_cell_91/mul_3Mulwhile_placeholder_2%while/lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_3?
!while/lstm_cell_91/ReadVariableOpReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_91/ReadVariableOp?
&while/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_91/strided_slice/stack?
(while/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice/stack_1?
(while/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_91/strided_slice/stack_2?
 while/lstm_cell_91/strided_sliceStridedSlice)while/lstm_cell_91/ReadVariableOp:value:0/while/lstm_cell_91/strided_slice/stack:output:01while/lstm_cell_91/strided_slice/stack_1:output:01while/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_91/strided_slice?
while/lstm_cell_91/MatMul_4MatMulwhile/lstm_cell_91/mul:z:0)while/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_4?
while/lstm_cell_91/addAddV2#while/lstm_cell_91/BiasAdd:output:0%while/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add?
while/lstm_cell_91/SigmoidSigmoidwhile/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid?
#while/lstm_cell_91/ReadVariableOp_1ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_1?
(while/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_91/strided_slice_1/stack?
*while/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_91/strided_slice_1/stack_1?
*while/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_1/stack_2?
"while/lstm_cell_91/strided_slice_1StridedSlice+while/lstm_cell_91/ReadVariableOp_1:value:01while/lstm_cell_91/strided_slice_1/stack:output:03while/lstm_cell_91/strided_slice_1/stack_1:output:03while/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_1?
while/lstm_cell_91/MatMul_5MatMulwhile/lstm_cell_91/mul_1:z:0+while/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_5?
while/lstm_cell_91/add_1AddV2%while/lstm_cell_91/BiasAdd_1:output:0%while/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_1?
while/lstm_cell_91/Sigmoid_1Sigmoidwhile/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_1?
while/lstm_cell_91/mul_4Mul while/lstm_cell_91/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_4?
#while/lstm_cell_91/ReadVariableOp_2ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_2?
(while/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_91/strided_slice_2/stack?
*while/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_91/strided_slice_2/stack_1?
*while/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_2/stack_2?
"while/lstm_cell_91/strided_slice_2StridedSlice+while/lstm_cell_91/ReadVariableOp_2:value:01while/lstm_cell_91/strided_slice_2/stack:output:03while/lstm_cell_91/strided_slice_2/stack_1:output:03while/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_2?
while/lstm_cell_91/MatMul_6MatMulwhile/lstm_cell_91/mul_2:z:0+while/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_6?
while/lstm_cell_91/add_2AddV2%while/lstm_cell_91/BiasAdd_2:output:0%while/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_2?
while/lstm_cell_91/ReluReluwhile/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu?
while/lstm_cell_91/mul_5Mulwhile/lstm_cell_91/Sigmoid:y:0%while/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_5?
while/lstm_cell_91/add_3AddV2while/lstm_cell_91/mul_4:z:0while/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_3?
#while/lstm_cell_91/ReadVariableOp_3ReadVariableOp,while_lstm_cell_91_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_91/ReadVariableOp_3?
(while/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_91/strided_slice_3/stack?
*while/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_91/strided_slice_3/stack_1?
*while/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_91/strided_slice_3/stack_2?
"while/lstm_cell_91/strided_slice_3StridedSlice+while/lstm_cell_91/ReadVariableOp_3:value:01while/lstm_cell_91/strided_slice_3/stack:output:03while/lstm_cell_91/strided_slice_3/stack_1:output:03while/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_91/strided_slice_3?
while/lstm_cell_91/MatMul_7MatMulwhile/lstm_cell_91/mul_3:z:0+while/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/MatMul_7?
while/lstm_cell_91/add_4AddV2%while/lstm_cell_91/BiasAdd_3:output:0%while/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/add_4?
while/lstm_cell_91/Sigmoid_2Sigmoidwhile/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Sigmoid_2?
while/lstm_cell_91/Relu_1Reluwhile/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/Relu_1?
while/lstm_cell_91/mul_6Mul while/lstm_cell_91/Sigmoid_2:y:0'while/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_91/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_91/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_91/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_91/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_91/ReadVariableOp$^while/lstm_cell_91/ReadVariableOp_1$^while/lstm_cell_91/ReadVariableOp_2$^while/lstm_cell_91/ReadVariableOp_3(^while/lstm_cell_91/split/ReadVariableOp*^while/lstm_cell_91/split_1/ReadVariableOp*"
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
*while_lstm_cell_91_readvariableop_resource,while_lstm_cell_91_readvariableop_resource_0"j
2while_lstm_cell_91_split_1_readvariableop_resource4while_lstm_cell_91_split_1_readvariableop_resource_0"f
0while_lstm_cell_91_split_readvariableop_resource2while_lstm_cell_91_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_91/ReadVariableOp!while/lstm_cell_91/ReadVariableOp2J
#while/lstm_cell_91/ReadVariableOp_1#while/lstm_cell_91/ReadVariableOp_12J
#while/lstm_cell_91/ReadVariableOp_2#while/lstm_cell_91/ReadVariableOp_22J
#while/lstm_cell_91/ReadVariableOp_3#while/lstm_cell_91/ReadVariableOp_32R
'while/lstm_cell_91/split/ReadVariableOp'while/lstm_cell_91/split/ReadVariableOp2V
)while/lstm_cell_91/split_1/ReadVariableOp)while/lstm_cell_91/split_1/ReadVariableOp: 
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
?
?
F__inference_dense_111_layer_call_and_return_conditional_losses_2932491

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_111/bias/Regularizer/Square/ReadVariableOp?
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
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_111/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_2933095
input_38
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_38unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *+
f&R$
"__inference__wrapped_model_29314172
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
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_38
?
?
+__inference_dense_111_layer_call_fn_2934924

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
GPU 2J 8? *O
fJRH
F__inference_dense_111_layer_call_and_return_conditional_losses_29324912
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
?
while_cond_2931851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2931851___redundant_placeholder05
1while_while_cond_2931851___redundant_placeholder15
1while_while_cond_2931851___redundant_placeholder25
1while_while_cond_2931851___redundant_placeholder3
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

?
lstm_91_while_cond_2933545,
(lstm_91_while_lstm_91_while_loop_counter2
.lstm_91_while_lstm_91_while_maximum_iterations
lstm_91_while_placeholder
lstm_91_while_placeholder_1
lstm_91_while_placeholder_2
lstm_91_while_placeholder_3.
*lstm_91_while_less_lstm_91_strided_slice_1E
Alstm_91_while_lstm_91_while_cond_2933545___redundant_placeholder0E
Alstm_91_while_lstm_91_while_cond_2933545___redundant_placeholder1E
Alstm_91_while_lstm_91_while_cond_2933545___redundant_placeholder2E
Alstm_91_while_lstm_91_while_cond_2933545___redundant_placeholder3
lstm_91_while_identity
?
lstm_91/while/LessLesslstm_91_while_placeholder*lstm_91_while_less_lstm_91_strided_slice_1*
T0*
_output_shapes
: 2
lstm_91/while/Lessu
lstm_91/while/IdentityIdentitylstm_91/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_91/while/Identity"9
lstm_91_while_identitylstm_91/while/Identity:output:0*(
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
?
.__inference_lstm_cell_91_layer_call_fn_2934992

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_29315412
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
?v
?
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2935203

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed?	*
seed2??h2(
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
seed2喆2(
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
seed2???2(
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2,
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
??
?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933739

inputsE
2lstm_91_lstm_cell_91_split_readvariableop_resource:	?C
4lstm_91_lstm_cell_91_split_1_readvariableop_resource:	??
,lstm_91_lstm_cell_91_readvariableop_resource:	 ?:
(dense_110_matmul_readvariableop_resource:  7
)dense_110_biasadd_readvariableop_resource: :
(dense_111_matmul_readvariableop_resource: 7
)dense_111_biasadd_readvariableop_resource:
identity?? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp? dense_111/BiasAdd/ReadVariableOp?dense_111/MatMul/ReadVariableOp?0dense_111/bias/Regularizer/Square/ReadVariableOp?#lstm_91/lstm_cell_91/ReadVariableOp?%lstm_91/lstm_cell_91/ReadVariableOp_1?%lstm_91/lstm_cell_91/ReadVariableOp_2?%lstm_91/lstm_cell_91/ReadVariableOp_3?=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?)lstm_91/lstm_cell_91/split/ReadVariableOp?+lstm_91/lstm_cell_91/split_1/ReadVariableOp?lstm_91/whileT
lstm_91/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_91/Shape?
lstm_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice/stack?
lstm_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_1?
lstm_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_91/strided_slice/stack_2?
lstm_91/strided_sliceStridedSlicelstm_91/Shape:output:0$lstm_91/strided_slice/stack:output:0&lstm_91/strided_slice/stack_1:output:0&lstm_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slicel
lstm_91/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros/mul/y?
lstm_91/zeros/mulMullstm_91/strided_slice:output:0lstm_91/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/mulo
lstm_91/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_91/zeros/Less/y?
lstm_91/zeros/LessLesslstm_91/zeros/mul:z:0lstm_91/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros/Lessr
lstm_91/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros/packed/1?
lstm_91/zeros/packedPacklstm_91/strided_slice:output:0lstm_91/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros/packedo
lstm_91/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros/Const?
lstm_91/zerosFilllstm_91/zeros/packed:output:0lstm_91/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/zerosp
lstm_91/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros_1/mul/y?
lstm_91/zeros_1/mulMullstm_91/strided_slice:output:0lstm_91/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/muls
lstm_91/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_91/zeros_1/Less/y?
lstm_91/zeros_1/LessLesslstm_91/zeros_1/mul:z:0lstm_91/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_91/zeros_1/Lessv
lstm_91/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/zeros_1/packed/1?
lstm_91/zeros_1/packedPacklstm_91/strided_slice:output:0!lstm_91/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_91/zeros_1/packeds
lstm_91/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/zeros_1/Const?
lstm_91/zeros_1Filllstm_91/zeros_1/packed:output:0lstm_91/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/zeros_1?
lstm_91/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose/perm?
lstm_91/transpose	Transposeinputslstm_91/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_91/transposeg
lstm_91/Shape_1Shapelstm_91/transpose:y:0*
T0*
_output_shapes
:2
lstm_91/Shape_1?
lstm_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_1/stack?
lstm_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_1?
lstm_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_1/stack_2?
lstm_91/strided_slice_1StridedSlicelstm_91/Shape_1:output:0&lstm_91/strided_slice_1/stack:output:0(lstm_91/strided_slice_1/stack_1:output:0(lstm_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_91/strided_slice_1?
#lstm_91/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_91/TensorArrayV2/element_shape?
lstm_91/TensorArrayV2TensorListReserve,lstm_91/TensorArrayV2/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2?
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_91/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_91/transpose:y:0Flstm_91/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_91/TensorArrayUnstack/TensorListFromTensor?
lstm_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_91/strided_slice_2/stack?
lstm_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_1?
lstm_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_2/stack_2?
lstm_91/strided_slice_2StridedSlicelstm_91/transpose:y:0&lstm_91/strided_slice_2/stack:output:0(lstm_91/strided_slice_2/stack_1:output:0(lstm_91/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_91/strided_slice_2?
$lstm_91/lstm_cell_91/ones_like/ShapeShapelstm_91/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_91/lstm_cell_91/ones_like/Shape?
$lstm_91/lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_91/lstm_cell_91/ones_like/Const?
lstm_91/lstm_cell_91/ones_likeFill-lstm_91/lstm_cell_91/ones_like/Shape:output:0-lstm_91/lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/ones_like?
"lstm_91/lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm_91/lstm_cell_91/dropout/Const?
 lstm_91/lstm_cell_91/dropout/MulMul'lstm_91/lstm_cell_91/ones_like:output:0+lstm_91/lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_91/lstm_cell_91/dropout/Mul?
"lstm_91/lstm_cell_91/dropout/ShapeShape'lstm_91/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_91/lstm_cell_91/dropout/Shape?
9lstm_91/lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform+lstm_91/lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9lstm_91/lstm_cell_91/dropout/random_uniform/RandomUniform?
+lstm_91/lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_91/lstm_cell_91/dropout/GreaterEqual/y?
)lstm_91/lstm_cell_91/dropout/GreaterEqualGreaterEqualBlstm_91/lstm_cell_91/dropout/random_uniform/RandomUniform:output:04lstm_91/lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_91/lstm_cell_91/dropout/GreaterEqual?
!lstm_91/lstm_cell_91/dropout/CastCast-lstm_91/lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_91/lstm_cell_91/dropout/Cast?
"lstm_91/lstm_cell_91/dropout/Mul_1Mul$lstm_91/lstm_cell_91/dropout/Mul:z:0%lstm_91/lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/lstm_cell_91/dropout/Mul_1?
$lstm_91/lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_91/lstm_cell_91/dropout_1/Const?
"lstm_91/lstm_cell_91/dropout_1/MulMul'lstm_91/lstm_cell_91/ones_like:output:0-lstm_91/lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/lstm_cell_91/dropout_1/Mul?
$lstm_91/lstm_cell_91/dropout_1/ShapeShape'lstm_91/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_91/lstm_cell_91/dropout_1/Shape?
;lstm_91/lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_91/lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_91/lstm_cell_91/dropout_1/random_uniform/RandomUniform?
-lstm_91/lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_91/lstm_cell_91/dropout_1/GreaterEqual/y?
+lstm_91/lstm_cell_91/dropout_1/GreaterEqualGreaterEqualDlstm_91/lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:06lstm_91/lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_91/lstm_cell_91/dropout_1/GreaterEqual?
#lstm_91/lstm_cell_91/dropout_1/CastCast/lstm_91/lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_91/lstm_cell_91/dropout_1/Cast?
$lstm_91/lstm_cell_91/dropout_1/Mul_1Mul&lstm_91/lstm_cell_91/dropout_1/Mul:z:0'lstm_91/lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/lstm_cell_91/dropout_1/Mul_1?
$lstm_91/lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_91/lstm_cell_91/dropout_2/Const?
"lstm_91/lstm_cell_91/dropout_2/MulMul'lstm_91/lstm_cell_91/ones_like:output:0-lstm_91/lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/lstm_cell_91/dropout_2/Mul?
$lstm_91/lstm_cell_91/dropout_2/ShapeShape'lstm_91/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_91/lstm_cell_91/dropout_2/Shape?
;lstm_91/lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_91/lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_91/lstm_cell_91/dropout_2/random_uniform/RandomUniform?
-lstm_91/lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_91/lstm_cell_91/dropout_2/GreaterEqual/y?
+lstm_91/lstm_cell_91/dropout_2/GreaterEqualGreaterEqualDlstm_91/lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:06lstm_91/lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_91/lstm_cell_91/dropout_2/GreaterEqual?
#lstm_91/lstm_cell_91/dropout_2/CastCast/lstm_91/lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_91/lstm_cell_91/dropout_2/Cast?
$lstm_91/lstm_cell_91/dropout_2/Mul_1Mul&lstm_91/lstm_cell_91/dropout_2/Mul:z:0'lstm_91/lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/lstm_cell_91/dropout_2/Mul_1?
$lstm_91/lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_91/lstm_cell_91/dropout_3/Const?
"lstm_91/lstm_cell_91/dropout_3/MulMul'lstm_91/lstm_cell_91/ones_like:output:0-lstm_91/lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_91/lstm_cell_91/dropout_3/Mul?
$lstm_91/lstm_cell_91/dropout_3/ShapeShape'lstm_91/lstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_91/lstm_cell_91/dropout_3/Shape?
;lstm_91/lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_91/lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_91/lstm_cell_91/dropout_3/random_uniform/RandomUniform?
-lstm_91/lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_91/lstm_cell_91/dropout_3/GreaterEqual/y?
+lstm_91/lstm_cell_91/dropout_3/GreaterEqualGreaterEqualDlstm_91/lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:06lstm_91/lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_91/lstm_cell_91/dropout_3/GreaterEqual?
#lstm_91/lstm_cell_91/dropout_3/CastCast/lstm_91/lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_91/lstm_cell_91/dropout_3/Cast?
$lstm_91/lstm_cell_91/dropout_3/Mul_1Mul&lstm_91/lstm_cell_91/dropout_3/Mul:z:0'lstm_91/lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_91/lstm_cell_91/dropout_3/Mul_1?
$lstm_91/lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_91/lstm_cell_91/split/split_dim?
)lstm_91/lstm_cell_91/split/ReadVariableOpReadVariableOp2lstm_91_lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_91/lstm_cell_91/split/ReadVariableOp?
lstm_91/lstm_cell_91/splitSplit-lstm_91/lstm_cell_91/split/split_dim:output:01lstm_91/lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_91/lstm_cell_91/split?
lstm_91/lstm_cell_91/MatMulMatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul?
lstm_91/lstm_cell_91/MatMul_1MatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_1?
lstm_91/lstm_cell_91/MatMul_2MatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_2?
lstm_91/lstm_cell_91/MatMul_3MatMul lstm_91/strided_slice_2:output:0#lstm_91/lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_3?
&lstm_91/lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_91/lstm_cell_91/split_1/split_dim?
+lstm_91/lstm_cell_91/split_1/ReadVariableOpReadVariableOp4lstm_91_lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_91/lstm_cell_91/split_1/ReadVariableOp?
lstm_91/lstm_cell_91/split_1Split/lstm_91/lstm_cell_91/split_1/split_dim:output:03lstm_91/lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_91/lstm_cell_91/split_1?
lstm_91/lstm_cell_91/BiasAddBiasAdd%lstm_91/lstm_cell_91/MatMul:product:0%lstm_91/lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/BiasAdd?
lstm_91/lstm_cell_91/BiasAdd_1BiasAdd'lstm_91/lstm_cell_91/MatMul_1:product:0%lstm_91/lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/BiasAdd_1?
lstm_91/lstm_cell_91/BiasAdd_2BiasAdd'lstm_91/lstm_cell_91/MatMul_2:product:0%lstm_91/lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/BiasAdd_2?
lstm_91/lstm_cell_91/BiasAdd_3BiasAdd'lstm_91/lstm_cell_91/MatMul_3:product:0%lstm_91/lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/BiasAdd_3?
lstm_91/lstm_cell_91/mulMullstm_91/zeros:output:0&lstm_91/lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul?
lstm_91/lstm_cell_91/mul_1Mullstm_91/zeros:output:0(lstm_91/lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_1?
lstm_91/lstm_cell_91/mul_2Mullstm_91/zeros:output:0(lstm_91/lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_2?
lstm_91/lstm_cell_91/mul_3Mullstm_91/zeros:output:0(lstm_91/lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_3?
#lstm_91/lstm_cell_91/ReadVariableOpReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_91/lstm_cell_91/ReadVariableOp?
(lstm_91/lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_91/lstm_cell_91/strided_slice/stack?
*lstm_91/lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_91/lstm_cell_91/strided_slice/stack_1?
*lstm_91/lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_91/lstm_cell_91/strided_slice/stack_2?
"lstm_91/lstm_cell_91/strided_sliceStridedSlice+lstm_91/lstm_cell_91/ReadVariableOp:value:01lstm_91/lstm_cell_91/strided_slice/stack:output:03lstm_91/lstm_cell_91/strided_slice/stack_1:output:03lstm_91/lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_91/lstm_cell_91/strided_slice?
lstm_91/lstm_cell_91/MatMul_4MatMullstm_91/lstm_cell_91/mul:z:0+lstm_91/lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_4?
lstm_91/lstm_cell_91/addAddV2%lstm_91/lstm_cell_91/BiasAdd:output:0'lstm_91/lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add?
lstm_91/lstm_cell_91/SigmoidSigmoidlstm_91/lstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/Sigmoid?
%lstm_91/lstm_cell_91/ReadVariableOp_1ReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_91/lstm_cell_91/ReadVariableOp_1?
*lstm_91/lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_91/lstm_cell_91/strided_slice_1/stack?
,lstm_91/lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_91/lstm_cell_91/strided_slice_1/stack_1?
,lstm_91/lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_91/lstm_cell_91/strided_slice_1/stack_2?
$lstm_91/lstm_cell_91/strided_slice_1StridedSlice-lstm_91/lstm_cell_91/ReadVariableOp_1:value:03lstm_91/lstm_cell_91/strided_slice_1/stack:output:05lstm_91/lstm_cell_91/strided_slice_1/stack_1:output:05lstm_91/lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_91/lstm_cell_91/strided_slice_1?
lstm_91/lstm_cell_91/MatMul_5MatMullstm_91/lstm_cell_91/mul_1:z:0-lstm_91/lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_5?
lstm_91/lstm_cell_91/add_1AddV2'lstm_91/lstm_cell_91/BiasAdd_1:output:0'lstm_91/lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_1?
lstm_91/lstm_cell_91/Sigmoid_1Sigmoidlstm_91/lstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/Sigmoid_1?
lstm_91/lstm_cell_91/mul_4Mul"lstm_91/lstm_cell_91/Sigmoid_1:y:0lstm_91/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_4?
%lstm_91/lstm_cell_91/ReadVariableOp_2ReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_91/lstm_cell_91/ReadVariableOp_2?
*lstm_91/lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_91/lstm_cell_91/strided_slice_2/stack?
,lstm_91/lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_91/lstm_cell_91/strided_slice_2/stack_1?
,lstm_91/lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_91/lstm_cell_91/strided_slice_2/stack_2?
$lstm_91/lstm_cell_91/strided_slice_2StridedSlice-lstm_91/lstm_cell_91/ReadVariableOp_2:value:03lstm_91/lstm_cell_91/strided_slice_2/stack:output:05lstm_91/lstm_cell_91/strided_slice_2/stack_1:output:05lstm_91/lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_91/lstm_cell_91/strided_slice_2?
lstm_91/lstm_cell_91/MatMul_6MatMullstm_91/lstm_cell_91/mul_2:z:0-lstm_91/lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_6?
lstm_91/lstm_cell_91/add_2AddV2'lstm_91/lstm_cell_91/BiasAdd_2:output:0'lstm_91/lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_2?
lstm_91/lstm_cell_91/ReluRelulstm_91/lstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/Relu?
lstm_91/lstm_cell_91/mul_5Mul lstm_91/lstm_cell_91/Sigmoid:y:0'lstm_91/lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_5?
lstm_91/lstm_cell_91/add_3AddV2lstm_91/lstm_cell_91/mul_4:z:0lstm_91/lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_3?
%lstm_91/lstm_cell_91/ReadVariableOp_3ReadVariableOp,lstm_91_lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_91/lstm_cell_91/ReadVariableOp_3?
*lstm_91/lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_91/lstm_cell_91/strided_slice_3/stack?
,lstm_91/lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_91/lstm_cell_91/strided_slice_3/stack_1?
,lstm_91/lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_91/lstm_cell_91/strided_slice_3/stack_2?
$lstm_91/lstm_cell_91/strided_slice_3StridedSlice-lstm_91/lstm_cell_91/ReadVariableOp_3:value:03lstm_91/lstm_cell_91/strided_slice_3/stack:output:05lstm_91/lstm_cell_91/strided_slice_3/stack_1:output:05lstm_91/lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_91/lstm_cell_91/strided_slice_3?
lstm_91/lstm_cell_91/MatMul_7MatMullstm_91/lstm_cell_91/mul_3:z:0-lstm_91/lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/MatMul_7?
lstm_91/lstm_cell_91/add_4AddV2'lstm_91/lstm_cell_91/BiasAdd_3:output:0'lstm_91/lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/add_4?
lstm_91/lstm_cell_91/Sigmoid_2Sigmoidlstm_91/lstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_91/lstm_cell_91/Sigmoid_2?
lstm_91/lstm_cell_91/Relu_1Relulstm_91/lstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/Relu_1?
lstm_91/lstm_cell_91/mul_6Mul"lstm_91/lstm_cell_91/Sigmoid_2:y:0)lstm_91/lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_91/lstm_cell_91/mul_6?
%lstm_91/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_91/TensorArrayV2_1/element_shape?
lstm_91/TensorArrayV2_1TensorListReserve.lstm_91/TensorArrayV2_1/element_shape:output:0 lstm_91/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_91/TensorArrayV2_1^
lstm_91/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/time?
 lstm_91/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_91/while/maximum_iterationsz
lstm_91/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_91/while/loop_counter?
lstm_91/whileWhile#lstm_91/while/loop_counter:output:0)lstm_91/while/maximum_iterations:output:0lstm_91/time:output:0 lstm_91/TensorArrayV2_1:handle:0lstm_91/zeros:output:0lstm_91/zeros_1:output:0 lstm_91/strided_slice_1:output:0?lstm_91/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_91_lstm_cell_91_split_readvariableop_resource4lstm_91_lstm_cell_91_split_1_readvariableop_resource,lstm_91_lstm_cell_91_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_91_while_body_2933546*&
condR
lstm_91_while_cond_2933545*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_91/while?
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_91/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_91/TensorArrayV2Stack/TensorListStackTensorListStacklstm_91/while:output:3Alstm_91/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_91/TensorArrayV2Stack/TensorListStack?
lstm_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_91/strided_slice_3/stack?
lstm_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_91/strided_slice_3/stack_1?
lstm_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_91/strided_slice_3/stack_2?
lstm_91/strided_slice_3StridedSlice3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_91/strided_slice_3/stack:output:0(lstm_91/strided_slice_3/stack_1:output:0(lstm_91/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_91/strided_slice_3?
lstm_91/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_91/transpose_1/perm?
lstm_91/transpose_1	Transpose3lstm_91/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_91/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_91/transpose_1v
lstm_91/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_91/runtime?
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_110/MatMul/ReadVariableOp?
dense_110/MatMulMatMul lstm_91/strided_slice_3:output:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_110/MatMul?
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_110/BiasAdd/ReadVariableOp?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_110/BiasAddv
dense_110/ReluReludense_110/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_110/Relu?
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_111/MatMul/ReadVariableOp?
dense_111/MatMulMatMuldense_110/Relu:activations:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_111/MatMul?
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_111/BiasAdd/ReadVariableOp?
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_111/BiasAddn
reshape_55/ShapeShapedense_111/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_55/Shape?
reshape_55/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_55/strided_slice/stack?
 reshape_55/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_1?
 reshape_55/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_55/strided_slice/stack_2?
reshape_55/strided_sliceStridedSlicereshape_55/Shape:output:0'reshape_55/strided_slice/stack:output:0)reshape_55/strided_slice/stack_1:output:0)reshape_55/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_55/strided_slicez
reshape_55/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/1z
reshape_55/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_55/Reshape/shape/2?
reshape_55/Reshape/shapePack!reshape_55/strided_slice:output:0#reshape_55/Reshape/shape/1:output:0#reshape_55/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_55/Reshape/shape?
reshape_55/ReshapeReshapedense_111/BiasAdd:output:0!reshape_55/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_55/Reshape?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_91_lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/mul?
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mulz
IdentityIdentityreshape_55/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp1^dense_111/bias/Regularizer/Square/ReadVariableOp$^lstm_91/lstm_cell_91/ReadVariableOp&^lstm_91/lstm_cell_91/ReadVariableOp_1&^lstm_91/lstm_cell_91/ReadVariableOp_2&^lstm_91/lstm_cell_91/ReadVariableOp_3>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*^lstm_91/lstm_cell_91/split/ReadVariableOp,^lstm_91/lstm_cell_91/split_1/ReadVariableOp^lstm_91/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp2J
#lstm_91/lstm_cell_91/ReadVariableOp#lstm_91/lstm_cell_91/ReadVariableOp2N
%lstm_91/lstm_cell_91/ReadVariableOp_1%lstm_91/lstm_cell_91/ReadVariableOp_12N
%lstm_91/lstm_cell_91/ReadVariableOp_2%lstm_91/lstm_cell_91/ReadVariableOp_22N
%lstm_91/lstm_cell_91/ReadVariableOp_3%lstm_91/lstm_cell_91/ReadVariableOp_32~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_91/lstm_cell_91/split/ReadVariableOp)lstm_91/lstm_cell_91/split/ReadVariableOp2Z
+lstm_91/lstm_cell_91/split_1/ReadVariableOp+lstm_91/lstm_cell_91/split_1/ReadVariableOp2
lstm_91/whilelstm_91/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(sequential_37_lstm_91_while_cond_2931267H
Dsequential_37_lstm_91_while_sequential_37_lstm_91_while_loop_counterN
Jsequential_37_lstm_91_while_sequential_37_lstm_91_while_maximum_iterations+
'sequential_37_lstm_91_while_placeholder-
)sequential_37_lstm_91_while_placeholder_1-
)sequential_37_lstm_91_while_placeholder_2-
)sequential_37_lstm_91_while_placeholder_3J
Fsequential_37_lstm_91_while_less_sequential_37_lstm_91_strided_slice_1a
]sequential_37_lstm_91_while_sequential_37_lstm_91_while_cond_2931267___redundant_placeholder0a
]sequential_37_lstm_91_while_sequential_37_lstm_91_while_cond_2931267___redundant_placeholder1a
]sequential_37_lstm_91_while_sequential_37_lstm_91_while_cond_2931267___redundant_placeholder2a
]sequential_37_lstm_91_while_sequential_37_lstm_91_while_cond_2931267___redundant_placeholder3(
$sequential_37_lstm_91_while_identity
?
 sequential_37/lstm_91/while/LessLess'sequential_37_lstm_91_while_placeholderFsequential_37_lstm_91_while_less_sequential_37_lstm_91_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_37/lstm_91/while/Less?
$sequential_37/lstm_91/while/IdentityIdentity$sequential_37/lstm_91/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_37/lstm_91/while/Identity"U
$sequential_37_lstm_91_while_identity-sequential_37/lstm_91/while/Identity:output:0*(
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
?
?
F__inference_dense_111_layer_call_and_return_conditional_losses_2934940

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_111/bias/Regularizer/Square/ReadVariableOp?
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
0dense_111/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_111/bias/Regularizer/Square/ReadVariableOp?
!dense_111/bias/Regularizer/SquareSquare8dense_111/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_111/bias/Regularizer/Square?
 dense_111/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_111/bias/Regularizer/Const?
dense_111/bias/Regularizer/SumSum%dense_111/bias/Regularizer/Square:y:0)dense_111/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/Sum?
 dense_111/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_111/bias/Regularizer/mul/x?
dense_111/bias/Regularizer/mulMul)dense_111/bias/Regularizer/mul/x:output:0'dense_111/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_111/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_111/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_111/bias/Regularizer/Square/ReadVariableOp0dense_111/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
/__inference_sequential_37_layer_call_fn_2932542
input_38
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_38unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_29325252
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
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_38
??
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934339
inputs_0=
*lstm_cell_91_split_readvariableop_resource:	?;
,lstm_cell_91_split_1_readvariableop_resource:	?7
$lstm_cell_91_readvariableop_resource:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_91/ReadVariableOp?lstm_cell_91/ReadVariableOp_1?lstm_cell_91/ReadVariableOp_2?lstm_cell_91/ReadVariableOp_3?!lstm_cell_91/split/ReadVariableOp?#lstm_cell_91/split_1/ReadVariableOp?whileF
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
lstm_cell_91/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_91/ones_like/Shape?
lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_91/ones_like/Const?
lstm_cell_91/ones_likeFill%lstm_cell_91/ones_like/Shape:output:0%lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/ones_like}
lstm_cell_91/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout/Const?
lstm_cell_91/dropout/MulMullstm_cell_91/ones_like:output:0#lstm_cell_91/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Mul?
lstm_cell_91/dropout/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout/Shape?
1lstm_cell_91/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_91/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_91/dropout/random_uniform/RandomUniform?
#lstm_cell_91/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_91/dropout/GreaterEqual/y?
!lstm_cell_91/dropout/GreaterEqualGreaterEqual:lstm_cell_91/dropout/random_uniform/RandomUniform:output:0,lstm_cell_91/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_91/dropout/GreaterEqual?
lstm_cell_91/dropout/CastCast%lstm_cell_91/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Cast?
lstm_cell_91/dropout/Mul_1Mullstm_cell_91/dropout/Mul:z:0lstm_cell_91/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout/Mul_1?
lstm_cell_91/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_1/Const?
lstm_cell_91/dropout_1/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Mul?
lstm_cell_91/dropout_1/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_1/Shape?
3lstm_cell_91/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??25
3lstm_cell_91/dropout_1/random_uniform/RandomUniform?
%lstm_cell_91/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_1/GreaterEqual/y?
#lstm_cell_91/dropout_1/GreaterEqualGreaterEqual<lstm_cell_91/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_1/GreaterEqual?
lstm_cell_91/dropout_1/CastCast'lstm_cell_91/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Cast?
lstm_cell_91/dropout_1/Mul_1Mullstm_cell_91/dropout_1/Mul:z:0lstm_cell_91/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_1/Mul_1?
lstm_cell_91/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_2/Const?
lstm_cell_91/dropout_2/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Mul?
lstm_cell_91/dropout_2/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_2/Shape?
3lstm_cell_91/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_91/dropout_2/random_uniform/RandomUniform?
%lstm_cell_91/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_2/GreaterEqual/y?
#lstm_cell_91/dropout_2/GreaterEqualGreaterEqual<lstm_cell_91/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_2/GreaterEqual?
lstm_cell_91/dropout_2/CastCast'lstm_cell_91/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Cast?
lstm_cell_91/dropout_2/Mul_1Mullstm_cell_91/dropout_2/Mul:z:0lstm_cell_91/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_2/Mul_1?
lstm_cell_91/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_91/dropout_3/Const?
lstm_cell_91/dropout_3/MulMullstm_cell_91/ones_like:output:0%lstm_cell_91/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Mul?
lstm_cell_91/dropout_3/ShapeShapelstm_cell_91/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_91/dropout_3/Shape?
3lstm_cell_91/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_91/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?Η25
3lstm_cell_91/dropout_3/random_uniform/RandomUniform?
%lstm_cell_91/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_91/dropout_3/GreaterEqual/y?
#lstm_cell_91/dropout_3/GreaterEqualGreaterEqual<lstm_cell_91/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_91/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_91/dropout_3/GreaterEqual?
lstm_cell_91/dropout_3/CastCast'lstm_cell_91/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Cast?
lstm_cell_91/dropout_3/Mul_1Mullstm_cell_91/dropout_3/Mul:z:0lstm_cell_91/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/dropout_3/Mul_1~
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_91/split/split_dim?
!lstm_cell_91/split/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_91/split/ReadVariableOp?
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0)lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_91/split?
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul?
lstm_cell_91/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_1?
lstm_cell_91/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_2?
lstm_cell_91/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_3?
lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_91/split_1/split_dim?
#lstm_cell_91/split_1/ReadVariableOpReadVariableOp,lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_91/split_1/ReadVariableOp?
lstm_cell_91/split_1Split'lstm_cell_91/split_1/split_dim:output:0+lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_91/split_1?
lstm_cell_91/BiasAddBiasAddlstm_cell_91/MatMul:product:0lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd?
lstm_cell_91/BiasAdd_1BiasAddlstm_cell_91/MatMul_1:product:0lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_1?
lstm_cell_91/BiasAdd_2BiasAddlstm_cell_91/MatMul_2:product:0lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_2?
lstm_cell_91/BiasAdd_3BiasAddlstm_cell_91/MatMul_3:product:0lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_3?
lstm_cell_91/mulMulzeros:output:0lstm_cell_91/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul?
lstm_cell_91/mul_1Mulzeros:output:0 lstm_cell_91/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_1?
lstm_cell_91/mul_2Mulzeros:output:0 lstm_cell_91/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_2?
lstm_cell_91/mul_3Mulzeros:output:0 lstm_cell_91/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_3?
lstm_cell_91/ReadVariableOpReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp?
 lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_91/strided_slice/stack?
"lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice/stack_1?
"lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_91/strided_slice/stack_2?
lstm_cell_91/strided_sliceStridedSlice#lstm_cell_91/ReadVariableOp:value:0)lstm_cell_91/strided_slice/stack:output:0+lstm_cell_91/strided_slice/stack_1:output:0+lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice?
lstm_cell_91/MatMul_4MatMullstm_cell_91/mul:z:0#lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_4?
lstm_cell_91/addAddV2lstm_cell_91/BiasAdd:output:0lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add
lstm_cell_91/SigmoidSigmoidlstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid?
lstm_cell_91/ReadVariableOp_1ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_1?
"lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice_1/stack?
$lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_91/strided_slice_1/stack_1?
$lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_1/stack_2?
lstm_cell_91/strided_slice_1StridedSlice%lstm_cell_91/ReadVariableOp_1:value:0+lstm_cell_91/strided_slice_1/stack:output:0-lstm_cell_91/strided_slice_1/stack_1:output:0-lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_1?
lstm_cell_91/MatMul_5MatMullstm_cell_91/mul_1:z:0%lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_5?
lstm_cell_91/add_1AddV2lstm_cell_91/BiasAdd_1:output:0lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_1?
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_1?
lstm_cell_91/mul_4Mullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_4?
lstm_cell_91/ReadVariableOp_2ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_2?
"lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_91/strided_slice_2/stack?
$lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_91/strided_slice_2/stack_1?
$lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_2/stack_2?
lstm_cell_91/strided_slice_2StridedSlice%lstm_cell_91/ReadVariableOp_2:value:0+lstm_cell_91/strided_slice_2/stack:output:0-lstm_cell_91/strided_slice_2/stack_1:output:0-lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_2?
lstm_cell_91/MatMul_6MatMullstm_cell_91/mul_2:z:0%lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_6?
lstm_cell_91/add_2AddV2lstm_cell_91/BiasAdd_2:output:0lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_2x
lstm_cell_91/ReluRelulstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu?
lstm_cell_91/mul_5Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_5?
lstm_cell_91/add_3AddV2lstm_cell_91/mul_4:z:0lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_3?
lstm_cell_91/ReadVariableOp_3ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_3?
"lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_91/strided_slice_3/stack?
$lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_91/strided_slice_3/stack_1?
$lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_3/stack_2?
lstm_cell_91/strided_slice_3StridedSlice%lstm_cell_91/ReadVariableOp_3:value:0+lstm_cell_91/strided_slice_3/stack:output:0-lstm_cell_91/strided_slice_3/stack_1:output:0-lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_3?
lstm_cell_91/MatMul_7MatMullstm_cell_91/mul_3:z:0%lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_7?
lstm_cell_91/add_4AddV2lstm_cell_91/BiasAdd_3:output:0lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_4?
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_2|
lstm_cell_91/Relu_1Relulstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu_1?
lstm_cell_91/mul_6Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_91_split_readvariableop_resource,lstm_cell_91_split_1_readvariableop_resource$lstm_cell_91_readvariableop_resource*
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
bodyR
while_body_2934174*
condR
while_cond_2934173*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_91/ReadVariableOp^lstm_cell_91/ReadVariableOp_1^lstm_cell_91/ReadVariableOp_2^lstm_cell_91/ReadVariableOp_3"^lstm_cell_91/split/ReadVariableOp$^lstm_cell_91/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_91/ReadVariableOplstm_cell_91/ReadVariableOp2>
lstm_cell_91/ReadVariableOp_1lstm_cell_91/ReadVariableOp_12>
lstm_cell_91/ReadVariableOp_2lstm_cell_91/ReadVariableOp_22>
lstm_cell_91/ReadVariableOp_3lstm_cell_91/ReadVariableOp_32F
!lstm_cell_91/split/ReadVariableOp!lstm_cell_91/split/ReadVariableOp2J
#lstm_cell_91/split_1/ReadVariableOp#lstm_cell_91/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
.__inference_lstm_cell_91_layer_call_fn_2935009

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
GPU 2J 8? *R
fMRK
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_29317742
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
?
?
__inference_loss_fn_1_2935214Y
Flstm_91_lstm_cell_91_kernel_regularizer_square_readvariableop_resource:	?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_91_lstm_cell_91_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muly
IdentityIdentity/lstm_91/lstm_cell_91/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp
?B
?
 __inference__traced_save_2935321
file_prefix/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableop/
+savev2_dense_111_kernel_read_readvariableop-
)savev2_dense_111_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_91_lstm_cell_91_kernel_read_readvariableopD
@savev2_lstm_91_lstm_cell_91_recurrent_kernel_read_readvariableop8
4savev2_lstm_91_lstm_cell_91_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_110_kernel_m_read_readvariableop4
0savev2_adam_dense_110_bias_m_read_readvariableop6
2savev2_adam_dense_111_kernel_m_read_readvariableop4
0savev2_adam_dense_111_bias_m_read_readvariableopA
=savev2_adam_lstm_91_lstm_cell_91_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_91_lstm_cell_91_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_91_lstm_cell_91_bias_m_read_readvariableop6
2savev2_adam_dense_110_kernel_v_read_readvariableop4
0savev2_adam_dense_110_bias_v_read_readvariableop6
2savev2_adam_dense_111_kernel_v_read_readvariableop4
0savev2_adam_dense_111_bias_v_read_readvariableopA
=savev2_adam_lstm_91_lstm_cell_91_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_91_lstm_cell_91_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_91_lstm_cell_91_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableop+savev2_dense_111_kernel_read_readvariableop)savev2_dense_111_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_91_lstm_cell_91_kernel_read_readvariableop@savev2_lstm_91_lstm_cell_91_recurrent_kernel_read_readvariableop4savev2_lstm_91_lstm_cell_91_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_110_kernel_m_read_readvariableop0savev2_adam_dense_110_bias_m_read_readvariableop2savev2_adam_dense_111_kernel_m_read_readvariableop0savev2_adam_dense_111_bias_m_read_readvariableop=savev2_adam_lstm_91_lstm_cell_91_kernel_m_read_readvariableopGsavev2_adam_lstm_91_lstm_cell_91_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_91_lstm_cell_91_bias_m_read_readvariableop2savev2_adam_dense_110_kernel_v_read_readvariableop0savev2_adam_dense_110_bias_v_read_readvariableop2savev2_adam_dense_111_kernel_v_read_readvariableop0savev2_adam_dense_111_bias_v_read_readvariableop=savev2_adam_lstm_91_lstm_cell_91_kernel_v_read_readvariableopGsavev2_adam_lstm_91_lstm_cell_91_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_91_lstm_cell_91_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
??
?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934032
inputs_0=
*lstm_cell_91_split_readvariableop_resource:	?;
,lstm_cell_91_split_1_readvariableop_resource:	?7
$lstm_cell_91_readvariableop_resource:	 ?
identity??=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_91/ReadVariableOp?lstm_cell_91/ReadVariableOp_1?lstm_cell_91/ReadVariableOp_2?lstm_cell_91/ReadVariableOp_3?!lstm_cell_91/split/ReadVariableOp?#lstm_cell_91/split_1/ReadVariableOp?whileF
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
lstm_cell_91/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_91/ones_like/Shape?
lstm_cell_91/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_91/ones_like/Const?
lstm_cell_91/ones_likeFill%lstm_cell_91/ones_like/Shape:output:0%lstm_cell_91/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/ones_like~
lstm_cell_91/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_91/split/split_dim?
!lstm_cell_91/split/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_91/split/ReadVariableOp?
lstm_cell_91/splitSplit%lstm_cell_91/split/split_dim:output:0)lstm_cell_91/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_91/split?
lstm_cell_91/MatMulMatMulstrided_slice_2:output:0lstm_cell_91/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul?
lstm_cell_91/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_91/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_1?
lstm_cell_91/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_91/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_2?
lstm_cell_91/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_91/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_3?
lstm_cell_91/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_91/split_1/split_dim?
#lstm_cell_91/split_1/ReadVariableOpReadVariableOp,lstm_cell_91_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_91/split_1/ReadVariableOp?
lstm_cell_91/split_1Split'lstm_cell_91/split_1/split_dim:output:0+lstm_cell_91/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_91/split_1?
lstm_cell_91/BiasAddBiasAddlstm_cell_91/MatMul:product:0lstm_cell_91/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd?
lstm_cell_91/BiasAdd_1BiasAddlstm_cell_91/MatMul_1:product:0lstm_cell_91/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_1?
lstm_cell_91/BiasAdd_2BiasAddlstm_cell_91/MatMul_2:product:0lstm_cell_91/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_2?
lstm_cell_91/BiasAdd_3BiasAddlstm_cell_91/MatMul_3:product:0lstm_cell_91/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/BiasAdd_3?
lstm_cell_91/mulMulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul?
lstm_cell_91/mul_1Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_1?
lstm_cell_91/mul_2Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_2?
lstm_cell_91/mul_3Mulzeros:output:0lstm_cell_91/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_3?
lstm_cell_91/ReadVariableOpReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp?
 lstm_cell_91/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_91/strided_slice/stack?
"lstm_cell_91/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice/stack_1?
"lstm_cell_91/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_91/strided_slice/stack_2?
lstm_cell_91/strided_sliceStridedSlice#lstm_cell_91/ReadVariableOp:value:0)lstm_cell_91/strided_slice/stack:output:0+lstm_cell_91/strided_slice/stack_1:output:0+lstm_cell_91/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice?
lstm_cell_91/MatMul_4MatMullstm_cell_91/mul:z:0#lstm_cell_91/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_4?
lstm_cell_91/addAddV2lstm_cell_91/BiasAdd:output:0lstm_cell_91/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add
lstm_cell_91/SigmoidSigmoidlstm_cell_91/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid?
lstm_cell_91/ReadVariableOp_1ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_1?
"lstm_cell_91/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_91/strided_slice_1/stack?
$lstm_cell_91/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_91/strided_slice_1/stack_1?
$lstm_cell_91/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_1/stack_2?
lstm_cell_91/strided_slice_1StridedSlice%lstm_cell_91/ReadVariableOp_1:value:0+lstm_cell_91/strided_slice_1/stack:output:0-lstm_cell_91/strided_slice_1/stack_1:output:0-lstm_cell_91/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_1?
lstm_cell_91/MatMul_5MatMullstm_cell_91/mul_1:z:0%lstm_cell_91/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_5?
lstm_cell_91/add_1AddV2lstm_cell_91/BiasAdd_1:output:0lstm_cell_91/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_1?
lstm_cell_91/Sigmoid_1Sigmoidlstm_cell_91/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_1?
lstm_cell_91/mul_4Mullstm_cell_91/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_4?
lstm_cell_91/ReadVariableOp_2ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_2?
"lstm_cell_91/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_91/strided_slice_2/stack?
$lstm_cell_91/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_91/strided_slice_2/stack_1?
$lstm_cell_91/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_2/stack_2?
lstm_cell_91/strided_slice_2StridedSlice%lstm_cell_91/ReadVariableOp_2:value:0+lstm_cell_91/strided_slice_2/stack:output:0-lstm_cell_91/strided_slice_2/stack_1:output:0-lstm_cell_91/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_2?
lstm_cell_91/MatMul_6MatMullstm_cell_91/mul_2:z:0%lstm_cell_91/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_6?
lstm_cell_91/add_2AddV2lstm_cell_91/BiasAdd_2:output:0lstm_cell_91/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_2x
lstm_cell_91/ReluRelulstm_cell_91/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu?
lstm_cell_91/mul_5Mullstm_cell_91/Sigmoid:y:0lstm_cell_91/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_5?
lstm_cell_91/add_3AddV2lstm_cell_91/mul_4:z:0lstm_cell_91/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_3?
lstm_cell_91/ReadVariableOp_3ReadVariableOp$lstm_cell_91_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_91/ReadVariableOp_3?
"lstm_cell_91/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_91/strided_slice_3/stack?
$lstm_cell_91/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_91/strided_slice_3/stack_1?
$lstm_cell_91/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_91/strided_slice_3/stack_2?
lstm_cell_91/strided_slice_3StridedSlice%lstm_cell_91/ReadVariableOp_3:value:0+lstm_cell_91/strided_slice_3/stack:output:0-lstm_cell_91/strided_slice_3/stack_1:output:0-lstm_cell_91/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_91/strided_slice_3?
lstm_cell_91/MatMul_7MatMullstm_cell_91/mul_3:z:0%lstm_cell_91/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/MatMul_7?
lstm_cell_91/add_4AddV2lstm_cell_91/BiasAdd_3:output:0lstm_cell_91/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/add_4?
lstm_cell_91/Sigmoid_2Sigmoidlstm_cell_91/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Sigmoid_2|
lstm_cell_91/Relu_1Relulstm_cell_91/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/Relu_1?
lstm_cell_91/mul_6Mullstm_cell_91/Sigmoid_2:y:0!lstm_cell_91/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_91/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_91_split_readvariableop_resource,lstm_cell_91_split_1_readvariableop_resource$lstm_cell_91_readvariableop_resource*
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
bodyR
while_body_2933899*
condR
while_cond_2933898*K
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
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_91_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp?
.lstm_91/lstm_cell_91/kernel/Regularizer/SquareSquareElstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_91/lstm_cell_91/kernel/Regularizer/Square?
-lstm_91/lstm_cell_91/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_91/lstm_cell_91/kernel/Regularizer/Const?
+lstm_91/lstm_cell_91/kernel/Regularizer/SumSum2lstm_91/lstm_cell_91/kernel/Regularizer/Square:y:06lstm_91/lstm_cell_91/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/Sum?
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_91/lstm_cell_91/kernel/Regularizer/mul/x?
+lstm_91/lstm_cell_91/kernel/Regularizer/mulMul6lstm_91/lstm_cell_91/kernel/Regularizer/mul/x:output:04lstm_91/lstm_cell_91/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_91/lstm_cell_91/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_91/ReadVariableOp^lstm_cell_91/ReadVariableOp_1^lstm_cell_91/ReadVariableOp_2^lstm_cell_91/ReadVariableOp_3"^lstm_cell_91/split/ReadVariableOp$^lstm_cell_91/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp=lstm_91/lstm_cell_91/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_91/ReadVariableOplstm_cell_91/ReadVariableOp2>
lstm_cell_91/ReadVariableOp_1lstm_cell_91/ReadVariableOp_12>
lstm_cell_91/ReadVariableOp_2lstm_cell_91/ReadVariableOp_22>
lstm_cell_91/ReadVariableOp_3lstm_cell_91/ReadVariableOp_32F
!lstm_cell_91/split/ReadVariableOp!lstm_cell_91/split/ReadVariableOp2J
#lstm_cell_91/split_1/ReadVariableOp#lstm_cell_91/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
/__inference_sequential_37_layer_call_fn_2933114

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
GPU 2J 8? *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_29325252
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input_385
serving_default_input_38:0?????????B

reshape_554
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
":   2dense_110/kernel
: 2dense_110/bias
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
":  2dense_111/kernel
:2dense_111/bias
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
.:,	?2lstm_91/lstm_cell_91/kernel
8:6	 ?2%lstm_91/lstm_cell_91/recurrent_kernel
(:&?2lstm_91/lstm_cell_91/bias
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
':%  2Adam/dense_110/kernel/m
!: 2Adam/dense_110/bias/m
':% 2Adam/dense_111/kernel/m
!:2Adam/dense_111/bias/m
3:1	?2"Adam/lstm_91/lstm_cell_91/kernel/m
=:;	 ?2,Adam/lstm_91/lstm_cell_91/recurrent_kernel/m
-:+?2 Adam/lstm_91/lstm_cell_91/bias/m
':%  2Adam/dense_110/kernel/v
!: 2Adam/dense_110/bias/v
':% 2Adam/dense_111/kernel/v
!:2Adam/dense_111/bias/v
3:1	?2"Adam/lstm_91/lstm_cell_91/kernel/v
=:;	 ?2,Adam/lstm_91/lstm_cell_91/recurrent_kernel/v
-:+?2 Adam/lstm_91/lstm_cell_91/bias/v
?B?
"__inference__wrapped_model_2931417input_38"?
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
?2?
/__inference_sequential_37_layer_call_fn_2932542
/__inference_sequential_37_layer_call_fn_2933114
/__inference_sequential_37_layer_call_fn_2933133
/__inference_sequential_37_layer_call_fn_2932988?
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933404
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933739
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933022
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933056?
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
)__inference_lstm_91_layer_call_fn_2933756
)__inference_lstm_91_layer_call_fn_2933767
)__inference_lstm_91_layer_call_fn_2933778
)__inference_lstm_91_layer_call_fn_2933789?
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
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934032
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934339
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934582
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934889?
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
+__inference_dense_110_layer_call_fn_2934898?
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
F__inference_dense_110_layer_call_and_return_conditional_losses_2934909?
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
+__inference_dense_111_layer_call_fn_2934924?
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
F__inference_dense_111_layer_call_and_return_conditional_losses_2934940?
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
,__inference_reshape_55_layer_call_fn_2934945?
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
G__inference_reshape_55_layer_call_and_return_conditional_losses_2934958?
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
__inference_loss_fn_0_2934969?
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
%__inference_signature_wrapper_2933095input_38"?
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
.__inference_lstm_cell_91_layer_call_fn_2934992
.__inference_lstm_cell_91_layer_call_fn_2935009?
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
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2935090
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2935203?
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
__inference_loss_fn_1_2935214?
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
"__inference__wrapped_model_2931417}&('5?2
+?(
&?#
input_38?????????
? ";?8
6

reshape_55(?%

reshape_55??????????
F__inference_dense_110_layer_call_and_return_conditional_losses_2934909\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ~
+__inference_dense_110_layer_call_fn_2934898O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
F__inference_dense_111_layer_call_and_return_conditional_losses_2934940\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
+__inference_dense_111_layer_call_fn_2934924O/?,
%?"
 ?
inputs????????? 
? "??????????<
__inference_loss_fn_0_2934969?

? 
? "? <
__inference_loss_fn_1_2935214&?

? 
? "? ?
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934032}&('O?L
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
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934339}&('O?L
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
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934582m&('??<
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
D__inference_lstm_91_layer_call_and_return_conditional_losses_2934889m&('??<
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
)__inference_lstm_91_layer_call_fn_2933756p&('O?L
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
)__inference_lstm_91_layer_call_fn_2933767p&('O?L
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
)__inference_lstm_91_layer_call_fn_2933778`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
)__inference_lstm_91_layer_call_fn_2933789`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2935090?&('??}
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
I__inference_lstm_cell_91_layer_call_and_return_conditional_losses_2935203?&('??}
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
.__inference_lstm_cell_91_layer_call_fn_2934992?&('??}
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
.__inference_lstm_cell_91_layer_call_fn_2935009?&('??}
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
G__inference_reshape_55_layer_call_and_return_conditional_losses_2934958\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? 
,__inference_reshape_55_layer_call_fn_2934945O/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933022s&('=?:
3?0
&?#
input_38?????????
p 

 
? ")?&
?
0?????????
? ?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933056s&('=?:
3?0
&?#
input_38?????????
p

 
? ")?&
?
0?????????
? ?
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933404q&(';?8
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
J__inference_sequential_37_layer_call_and_return_conditional_losses_2933739q&(';?8
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
/__inference_sequential_37_layer_call_fn_2932542f&('=?:
3?0
&?#
input_38?????????
p 

 
? "???????????
/__inference_sequential_37_layer_call_fn_2932988f&('=?:
3?0
&?#
input_38?????????
p

 
? "???????????
/__inference_sequential_37_layer_call_fn_2933114d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_37_layer_call_fn_2933133d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2933095?&('A?>
? 
7?4
2
input_38&?#
input_38?????????";?8
6

reshape_55(?%

reshape_55?????????