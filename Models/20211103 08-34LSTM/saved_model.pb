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
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_30/kernel
s
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes

:  *
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
: *
dtype0
z
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

: *
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
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
lstm_25/lstm_cell_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_25/lstm_cell_25/kernel
?
/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_25/lstm_cell_25/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_25/lstm_cell_25/recurrent_kernel
?
9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_25/lstm_cell_25/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_25/lstm_cell_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_25/lstm_cell_25/bias
?
-lstm_25/lstm_cell_25/bias/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/bias*
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
Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_30/kernel/m
?
*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_31/kernel/m
?
*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_25/lstm_cell_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_25/lstm_cell_25/kernel/m
?
6Adam/lstm_25/lstm_cell_25/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_25/lstm_cell_25/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_25/lstm_cell_25/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m
?
@Adam/lstm_25/lstm_cell_25/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_25/lstm_cell_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_25/lstm_cell_25/bias/m
?
4Adam/lstm_25/lstm_cell_25/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_25/lstm_cell_25/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_30/kernel/v
?
*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_31/kernel/v
?
*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_25/lstm_cell_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_25/lstm_cell_25/kernel/v
?
6Adam/lstm_25/lstm_cell_25/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_25/lstm_cell_25/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_25/lstm_cell_25/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v
?
@Adam/lstm_25/lstm_cell_25/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_25/lstm_cell_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_25/lstm_cell_25/bias/v
?
4Adam/lstm_25/lstm_cell_25/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_25/lstm_cell_25/bias/v*
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
trainable_variables
)layer_metrics
	variables
*metrics

+layers
,non_trainable_variables
regularization_losses
-layer_regularization_losses
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
VARIABLE_VALUEdense_30/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
9layer_metrics
:metrics
	variables

;layers
<non_trainable_variables
regularization_losses
=layer_regularization_losses
[Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
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
?
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
VARIABLE_VALUElstm_25/lstm_cell_25/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_25/lstm_cell_25/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_25/lstm_cell_25/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
?
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
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_25/lstm_cell_25/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_25/lstm_cell_25/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_25/lstm_cell_25/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_25/lstm_cell_25/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_25/lstm_cell_25/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_25/lstm_cell_25/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_11Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11lstm_25/lstm_cell_25/kernellstm_25/lstm_cell_25/bias%lstm_25/lstm_cell_25/recurrent_kerneldense_30/kerneldense_30/biasdense_31/kerneldense_31/bias*
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
$__inference_signature_wrapper_923640
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOp9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOp-lstm_25/lstm_cell_25/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOp6Adam/lstm_25/lstm_cell_25/kernel/m/Read/ReadVariableOp@Adam/lstm_25/lstm_cell_25/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_25/lstm_cell_25/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOp6Adam/lstm_25/lstm_cell_25/kernel/v/Read/ReadVariableOp@Adam/lstm_25/lstm_cell_25/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_25/lstm_cell_25/bias/v/Read/ReadVariableOpConst*)
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
__inference__traced_save_925866
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_30/kerneldense_30/biasdense_31/kerneldense_31/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/biastotalcountAdam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_31/kernel/mAdam/dense_31/bias/m"Adam/lstm_25/lstm_cell_25/kernel/m,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m Adam/lstm_25/lstm_cell_25/bias/mAdam/dense_30/kernel/vAdam/dense_30/bias/vAdam/dense_31/kernel/vAdam/dense_31/bias/v"Adam/lstm_25/lstm_cell_25/kernel/v,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v Adam/lstm_25/lstm_cell_25/bias/v*(
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
"__inference__traced_restore_925960??$
?+
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923070

inputs!
lstm_25_922996:	?
lstm_25_922998:	?!
lstm_25_923000:	 ?!
dense_30_923015:  
dense_30_923017: !
dense_31_923037: 
dense_31_923039:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?/dense_31/bias/Regularizer/Square/ReadVariableOp?lstm_25/StatefulPartitionedCall?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
lstm_25/StatefulPartitionedCallStatefulPartitionedCallinputslstm_25_922996lstm_25_922998lstm_25_923000*
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9229952!
lstm_25/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0dense_30_923015dense_30_923017*
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
D__inference_dense_30_layer_call_and_return_conditional_losses_9230142"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_923037dense_31_923039*
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
D__inference_dense_31_layer_call_and_return_conditional_losses_9230362"
 dense_31/StatefulPartitionedCall?
reshape_15/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_9230552
reshape_15/PartitionedCall?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_25_922996*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/mul?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_31_923039*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mul?
IdentityIdentity#reshape_15/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall0^dense_31/bias/Regularizer/Square/ReadVariableOp ^lstm_25/StatefulPartitionedCall>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ޡ
?
C__inference_lstm_25_layer_call_and_return_conditional_losses_925083

inputs=
*lstm_cell_25_split_readvariableop_resource:	?;
,lstm_cell_25_split_1_readvariableop_resource:	?7
$lstm_cell_25_readvariableop_resource:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_25/ReadVariableOp?lstm_cell_25/ReadVariableOp_1?lstm_cell_25/ReadVariableOp_2?lstm_cell_25/ReadVariableOp_3?!lstm_cell_25/split/ReadVariableOp?#lstm_cell_25/split_1/ReadVariableOp?whileD
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
lstm_cell_25/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_25/ones_like/Shape?
lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_25/ones_like/Const?
lstm_cell_25/ones_likeFill%lstm_cell_25/ones_like/Shape:output:0%lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/ones_like~
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_25/split/split_dim?
!lstm_cell_25/split/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_25/split/ReadVariableOp?
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0)lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_25/split?
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul?
lstm_cell_25/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_1?
lstm_cell_25/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_2?
lstm_cell_25/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_3?
lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_25/split_1/split_dim?
#lstm_cell_25/split_1/ReadVariableOpReadVariableOp,lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_25/split_1/ReadVariableOp?
lstm_cell_25/split_1Split'lstm_cell_25/split_1/split_dim:output:0+lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_25/split_1?
lstm_cell_25/BiasAddBiasAddlstm_cell_25/MatMul:product:0lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd?
lstm_cell_25/BiasAdd_1BiasAddlstm_cell_25/MatMul_1:product:0lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_1?
lstm_cell_25/BiasAdd_2BiasAddlstm_cell_25/MatMul_2:product:0lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_2?
lstm_cell_25/BiasAdd_3BiasAddlstm_cell_25/MatMul_3:product:0lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_3?
lstm_cell_25/mulMulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul?
lstm_cell_25/mul_1Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_1?
lstm_cell_25/mul_2Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_2?
lstm_cell_25/mul_3Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_3?
lstm_cell_25/ReadVariableOpReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp?
 lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_25/strided_slice/stack?
"lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice/stack_1?
"lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_25/strided_slice/stack_2?
lstm_cell_25/strided_sliceStridedSlice#lstm_cell_25/ReadVariableOp:value:0)lstm_cell_25/strided_slice/stack:output:0+lstm_cell_25/strided_slice/stack_1:output:0+lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice?
lstm_cell_25/MatMul_4MatMullstm_cell_25/mul:z:0#lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_4?
lstm_cell_25/addAddV2lstm_cell_25/BiasAdd:output:0lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add
lstm_cell_25/SigmoidSigmoidlstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid?
lstm_cell_25/ReadVariableOp_1ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_1?
"lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice_1/stack?
$lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_25/strided_slice_1/stack_1?
$lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_1/stack_2?
lstm_cell_25/strided_slice_1StridedSlice%lstm_cell_25/ReadVariableOp_1:value:0+lstm_cell_25/strided_slice_1/stack:output:0-lstm_cell_25/strided_slice_1/stack_1:output:0-lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_1?
lstm_cell_25/MatMul_5MatMullstm_cell_25/mul_1:z:0%lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_5?
lstm_cell_25/add_1AddV2lstm_cell_25/BiasAdd_1:output:0lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_1?
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_1?
lstm_cell_25/mul_4Mullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_4?
lstm_cell_25/ReadVariableOp_2ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_2?
"lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_25/strided_slice_2/stack?
$lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_25/strided_slice_2/stack_1?
$lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_2/stack_2?
lstm_cell_25/strided_slice_2StridedSlice%lstm_cell_25/ReadVariableOp_2:value:0+lstm_cell_25/strided_slice_2/stack:output:0-lstm_cell_25/strided_slice_2/stack_1:output:0-lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_2?
lstm_cell_25/MatMul_6MatMullstm_cell_25/mul_2:z:0%lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_6?
lstm_cell_25/add_2AddV2lstm_cell_25/BiasAdd_2:output:0lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_2x
lstm_cell_25/ReluRelulstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu?
lstm_cell_25/mul_5Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_5?
lstm_cell_25/add_3AddV2lstm_cell_25/mul_4:z:0lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_3?
lstm_cell_25/ReadVariableOp_3ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_3?
"lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_25/strided_slice_3/stack?
$lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_25/strided_slice_3/stack_1?
$lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_3/stack_2?
lstm_cell_25/strided_slice_3StridedSlice%lstm_cell_25/ReadVariableOp_3:value:0+lstm_cell_25/strided_slice_3/stack:output:0-lstm_cell_25/strided_slice_3/stack_1:output:0-lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_3?
lstm_cell_25/MatMul_7MatMullstm_cell_25/mul_3:z:0%lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_7?
lstm_cell_25/add_4AddV2lstm_cell_25/BiasAdd_3:output:0lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_4?
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_2|
lstm_cell_25/Relu_1Relulstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu_1?
lstm_cell_25/mul_6Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_25_split_readvariableop_resource,lstm_cell_25_split_1_readvariableop_resource$lstm_cell_25_readvariableop_resource*
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
while_body_924950*
condR
while_cond_924949*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_25/ReadVariableOp^lstm_cell_25/ReadVariableOp_1^lstm_cell_25/ReadVariableOp_2^lstm_cell_25/ReadVariableOp_3"^lstm_cell_25/split/ReadVariableOp$^lstm_cell_25/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_25/ReadVariableOplstm_cell_25/ReadVariableOp2>
lstm_cell_25/ReadVariableOp_1lstm_cell_25/ReadVariableOp_12>
lstm_cell_25/ReadVariableOp_2lstm_cell_25/ReadVariableOp_22>
lstm_cell_25/ReadVariableOp_3lstm_cell_25/ReadVariableOp_32F
!lstm_cell_25/split/ReadVariableOp!lstm_cell_25/split/ReadVariableOp2J
#lstm_cell_25/split_1/ReadVariableOp#lstm_cell_25/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_10_layer_call_fn_923533
input_11
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9234972
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
input_11
??
?
C__inference_lstm_25_layer_call_and_return_conditional_losses_923433

inputs=
*lstm_cell_25_split_readvariableop_resource:	?;
,lstm_cell_25_split_1_readvariableop_resource:	?7
$lstm_cell_25_readvariableop_resource:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_25/ReadVariableOp?lstm_cell_25/ReadVariableOp_1?lstm_cell_25/ReadVariableOp_2?lstm_cell_25/ReadVariableOp_3?!lstm_cell_25/split/ReadVariableOp?#lstm_cell_25/split_1/ReadVariableOp?whileD
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
lstm_cell_25/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_25/ones_like/Shape?
lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_25/ones_like/Const?
lstm_cell_25/ones_likeFill%lstm_cell_25/ones_like/Shape:output:0%lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/ones_like}
lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout/Const?
lstm_cell_25/dropout/MulMullstm_cell_25/ones_like:output:0#lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Mul?
lstm_cell_25/dropout/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout/Shape?
1lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ʹ423
1lstm_cell_25/dropout/random_uniform/RandomUniform?
#lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_25/dropout/GreaterEqual/y?
!lstm_cell_25/dropout/GreaterEqualGreaterEqual:lstm_cell_25/dropout/random_uniform/RandomUniform:output:0,lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_25/dropout/GreaterEqual?
lstm_cell_25/dropout/CastCast%lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Cast?
lstm_cell_25/dropout/Mul_1Mullstm_cell_25/dropout/Mul:z:0lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Mul_1?
lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_1/Const?
lstm_cell_25/dropout_1/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Mul?
lstm_cell_25/dropout_1/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_1/Shape?
3lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_25/dropout_1/random_uniform/RandomUniform?
%lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_1/GreaterEqual/y?
#lstm_cell_25/dropout_1/GreaterEqualGreaterEqual<lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_1/GreaterEqual?
lstm_cell_25/dropout_1/CastCast'lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Cast?
lstm_cell_25/dropout_1/Mul_1Mullstm_cell_25/dropout_1/Mul:z:0lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Mul_1?
lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_2/Const?
lstm_cell_25/dropout_2/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Mul?
lstm_cell_25/dropout_2/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_2/Shape?
3lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_25/dropout_2/random_uniform/RandomUniform?
%lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_2/GreaterEqual/y?
#lstm_cell_25/dropout_2/GreaterEqualGreaterEqual<lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_2/GreaterEqual?
lstm_cell_25/dropout_2/CastCast'lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Cast?
lstm_cell_25/dropout_2/Mul_1Mullstm_cell_25/dropout_2/Mul:z:0lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Mul_1?
lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_3/Const?
lstm_cell_25/dropout_3/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Mul?
lstm_cell_25/dropout_3/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_3/Shape?
3lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_25/dropout_3/random_uniform/RandomUniform?
%lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_3/GreaterEqual/y?
#lstm_cell_25/dropout_3/GreaterEqualGreaterEqual<lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_3/GreaterEqual?
lstm_cell_25/dropout_3/CastCast'lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Cast?
lstm_cell_25/dropout_3/Mul_1Mullstm_cell_25/dropout_3/Mul:z:0lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Mul_1~
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_25/split/split_dim?
!lstm_cell_25/split/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_25/split/ReadVariableOp?
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0)lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_25/split?
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul?
lstm_cell_25/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_1?
lstm_cell_25/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_2?
lstm_cell_25/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_3?
lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_25/split_1/split_dim?
#lstm_cell_25/split_1/ReadVariableOpReadVariableOp,lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_25/split_1/ReadVariableOp?
lstm_cell_25/split_1Split'lstm_cell_25/split_1/split_dim:output:0+lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_25/split_1?
lstm_cell_25/BiasAddBiasAddlstm_cell_25/MatMul:product:0lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd?
lstm_cell_25/BiasAdd_1BiasAddlstm_cell_25/MatMul_1:product:0lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_1?
lstm_cell_25/BiasAdd_2BiasAddlstm_cell_25/MatMul_2:product:0lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_2?
lstm_cell_25/BiasAdd_3BiasAddlstm_cell_25/MatMul_3:product:0lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_3?
lstm_cell_25/mulMulzeros:output:0lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul?
lstm_cell_25/mul_1Mulzeros:output:0 lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_1?
lstm_cell_25/mul_2Mulzeros:output:0 lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_2?
lstm_cell_25/mul_3Mulzeros:output:0 lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_3?
lstm_cell_25/ReadVariableOpReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp?
 lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_25/strided_slice/stack?
"lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice/stack_1?
"lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_25/strided_slice/stack_2?
lstm_cell_25/strided_sliceStridedSlice#lstm_cell_25/ReadVariableOp:value:0)lstm_cell_25/strided_slice/stack:output:0+lstm_cell_25/strided_slice/stack_1:output:0+lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice?
lstm_cell_25/MatMul_4MatMullstm_cell_25/mul:z:0#lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_4?
lstm_cell_25/addAddV2lstm_cell_25/BiasAdd:output:0lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add
lstm_cell_25/SigmoidSigmoidlstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid?
lstm_cell_25/ReadVariableOp_1ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_1?
"lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice_1/stack?
$lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_25/strided_slice_1/stack_1?
$lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_1/stack_2?
lstm_cell_25/strided_slice_1StridedSlice%lstm_cell_25/ReadVariableOp_1:value:0+lstm_cell_25/strided_slice_1/stack:output:0-lstm_cell_25/strided_slice_1/stack_1:output:0-lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_1?
lstm_cell_25/MatMul_5MatMullstm_cell_25/mul_1:z:0%lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_5?
lstm_cell_25/add_1AddV2lstm_cell_25/BiasAdd_1:output:0lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_1?
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_1?
lstm_cell_25/mul_4Mullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_4?
lstm_cell_25/ReadVariableOp_2ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_2?
"lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_25/strided_slice_2/stack?
$lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_25/strided_slice_2/stack_1?
$lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_2/stack_2?
lstm_cell_25/strided_slice_2StridedSlice%lstm_cell_25/ReadVariableOp_2:value:0+lstm_cell_25/strided_slice_2/stack:output:0-lstm_cell_25/strided_slice_2/stack_1:output:0-lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_2?
lstm_cell_25/MatMul_6MatMullstm_cell_25/mul_2:z:0%lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_6?
lstm_cell_25/add_2AddV2lstm_cell_25/BiasAdd_2:output:0lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_2x
lstm_cell_25/ReluRelulstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu?
lstm_cell_25/mul_5Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_5?
lstm_cell_25/add_3AddV2lstm_cell_25/mul_4:z:0lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_3?
lstm_cell_25/ReadVariableOp_3ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_3?
"lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_25/strided_slice_3/stack?
$lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_25/strided_slice_3/stack_1?
$lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_3/stack_2?
lstm_cell_25/strided_slice_3StridedSlice%lstm_cell_25/ReadVariableOp_3:value:0+lstm_cell_25/strided_slice_3/stack:output:0-lstm_cell_25/strided_slice_3/stack_1:output:0-lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_3?
lstm_cell_25/MatMul_7MatMullstm_cell_25/mul_3:z:0%lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_7?
lstm_cell_25/add_4AddV2lstm_cell_25/BiasAdd_3:output:0lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_4?
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_2|
lstm_cell_25/Relu_1Relulstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu_1?
lstm_cell_25/mul_6Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_25_split_readvariableop_resource,lstm_cell_25_split_1_readvariableop_resource$lstm_cell_25_readvariableop_resource*
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
while_body_923268*
condR
while_cond_923267*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_25/ReadVariableOp^lstm_cell_25/ReadVariableOp_1^lstm_cell_25/ReadVariableOp_2^lstm_cell_25/ReadVariableOp_3"^lstm_cell_25/split/ReadVariableOp$^lstm_cell_25/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_25/ReadVariableOplstm_cell_25/ReadVariableOp2>
lstm_cell_25/ReadVariableOp_1lstm_cell_25/ReadVariableOp_12>
lstm_cell_25/ReadVariableOp_2lstm_cell_25/ReadVariableOp_22>
lstm_cell_25/ReadVariableOp_3lstm_cell_25/ReadVariableOp_32F
!lstm_cell_25/split/ReadVariableOp!lstm_cell_25/split/ReadVariableOp2J
#lstm_cell_25/split_1/ReadVariableOp#lstm_cell_25/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_923267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_923267___redundant_placeholder04
0while_while_cond_923267___redundant_placeholder14
0while_while_cond_923267___redundant_placeholder24
0while_while_cond_923267___redundant_placeholder3
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
?
?
)__inference_dense_30_layer_call_fn_925454

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
D__inference_dense_30_layer_call_and_return_conditional_losses_9230142
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
?
b
F__inference_reshape_15_layer_call_and_return_conditional_losses_925498

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
?
C__inference_lstm_25_layer_call_and_return_conditional_losses_925390

inputs=
*lstm_cell_25_split_readvariableop_resource:	?;
,lstm_cell_25_split_1_readvariableop_resource:	?7
$lstm_cell_25_readvariableop_resource:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_25/ReadVariableOp?lstm_cell_25/ReadVariableOp_1?lstm_cell_25/ReadVariableOp_2?lstm_cell_25/ReadVariableOp_3?!lstm_cell_25/split/ReadVariableOp?#lstm_cell_25/split_1/ReadVariableOp?whileD
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
lstm_cell_25/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_25/ones_like/Shape?
lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_25/ones_like/Const?
lstm_cell_25/ones_likeFill%lstm_cell_25/ones_like/Shape:output:0%lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/ones_like}
lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout/Const?
lstm_cell_25/dropout/MulMullstm_cell_25/ones_like:output:0#lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Mul?
lstm_cell_25/dropout/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout/Shape?
1lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_25/dropout/random_uniform/RandomUniform?
#lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_25/dropout/GreaterEqual/y?
!lstm_cell_25/dropout/GreaterEqualGreaterEqual:lstm_cell_25/dropout/random_uniform/RandomUniform:output:0,lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_25/dropout/GreaterEqual?
lstm_cell_25/dropout/CastCast%lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Cast?
lstm_cell_25/dropout/Mul_1Mullstm_cell_25/dropout/Mul:z:0lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Mul_1?
lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_1/Const?
lstm_cell_25/dropout_1/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Mul?
lstm_cell_25/dropout_1/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_1/Shape?
3lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??25
3lstm_cell_25/dropout_1/random_uniform/RandomUniform?
%lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_1/GreaterEqual/y?
#lstm_cell_25/dropout_1/GreaterEqualGreaterEqual<lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_1/GreaterEqual?
lstm_cell_25/dropout_1/CastCast'lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Cast?
lstm_cell_25/dropout_1/Mul_1Mullstm_cell_25/dropout_1/Mul:z:0lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Mul_1?
lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_2/Const?
lstm_cell_25/dropout_2/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Mul?
lstm_cell_25/dropout_2/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_2/Shape?
3lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_25/dropout_2/random_uniform/RandomUniform?
%lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_2/GreaterEqual/y?
#lstm_cell_25/dropout_2/GreaterEqualGreaterEqual<lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_2/GreaterEqual?
lstm_cell_25/dropout_2/CastCast'lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Cast?
lstm_cell_25/dropout_2/Mul_1Mullstm_cell_25/dropout_2/Mul:z:0lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Mul_1?
lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_3/Const?
lstm_cell_25/dropout_3/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Mul?
lstm_cell_25/dropout_3/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_3/Shape?
3lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??t25
3lstm_cell_25/dropout_3/random_uniform/RandomUniform?
%lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_3/GreaterEqual/y?
#lstm_cell_25/dropout_3/GreaterEqualGreaterEqual<lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_3/GreaterEqual?
lstm_cell_25/dropout_3/CastCast'lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Cast?
lstm_cell_25/dropout_3/Mul_1Mullstm_cell_25/dropout_3/Mul:z:0lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Mul_1~
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_25/split/split_dim?
!lstm_cell_25/split/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_25/split/ReadVariableOp?
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0)lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_25/split?
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul?
lstm_cell_25/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_1?
lstm_cell_25/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_2?
lstm_cell_25/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_3?
lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_25/split_1/split_dim?
#lstm_cell_25/split_1/ReadVariableOpReadVariableOp,lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_25/split_1/ReadVariableOp?
lstm_cell_25/split_1Split'lstm_cell_25/split_1/split_dim:output:0+lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_25/split_1?
lstm_cell_25/BiasAddBiasAddlstm_cell_25/MatMul:product:0lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd?
lstm_cell_25/BiasAdd_1BiasAddlstm_cell_25/MatMul_1:product:0lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_1?
lstm_cell_25/BiasAdd_2BiasAddlstm_cell_25/MatMul_2:product:0lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_2?
lstm_cell_25/BiasAdd_3BiasAddlstm_cell_25/MatMul_3:product:0lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_3?
lstm_cell_25/mulMulzeros:output:0lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul?
lstm_cell_25/mul_1Mulzeros:output:0 lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_1?
lstm_cell_25/mul_2Mulzeros:output:0 lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_2?
lstm_cell_25/mul_3Mulzeros:output:0 lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_3?
lstm_cell_25/ReadVariableOpReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp?
 lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_25/strided_slice/stack?
"lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice/stack_1?
"lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_25/strided_slice/stack_2?
lstm_cell_25/strided_sliceStridedSlice#lstm_cell_25/ReadVariableOp:value:0)lstm_cell_25/strided_slice/stack:output:0+lstm_cell_25/strided_slice/stack_1:output:0+lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice?
lstm_cell_25/MatMul_4MatMullstm_cell_25/mul:z:0#lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_4?
lstm_cell_25/addAddV2lstm_cell_25/BiasAdd:output:0lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add
lstm_cell_25/SigmoidSigmoidlstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid?
lstm_cell_25/ReadVariableOp_1ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_1?
"lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice_1/stack?
$lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_25/strided_slice_1/stack_1?
$lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_1/stack_2?
lstm_cell_25/strided_slice_1StridedSlice%lstm_cell_25/ReadVariableOp_1:value:0+lstm_cell_25/strided_slice_1/stack:output:0-lstm_cell_25/strided_slice_1/stack_1:output:0-lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_1?
lstm_cell_25/MatMul_5MatMullstm_cell_25/mul_1:z:0%lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_5?
lstm_cell_25/add_1AddV2lstm_cell_25/BiasAdd_1:output:0lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_1?
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_1?
lstm_cell_25/mul_4Mullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_4?
lstm_cell_25/ReadVariableOp_2ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_2?
"lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_25/strided_slice_2/stack?
$lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_25/strided_slice_2/stack_1?
$lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_2/stack_2?
lstm_cell_25/strided_slice_2StridedSlice%lstm_cell_25/ReadVariableOp_2:value:0+lstm_cell_25/strided_slice_2/stack:output:0-lstm_cell_25/strided_slice_2/stack_1:output:0-lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_2?
lstm_cell_25/MatMul_6MatMullstm_cell_25/mul_2:z:0%lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_6?
lstm_cell_25/add_2AddV2lstm_cell_25/BiasAdd_2:output:0lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_2x
lstm_cell_25/ReluRelulstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu?
lstm_cell_25/mul_5Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_5?
lstm_cell_25/add_3AddV2lstm_cell_25/mul_4:z:0lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_3?
lstm_cell_25/ReadVariableOp_3ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_3?
"lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_25/strided_slice_3/stack?
$lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_25/strided_slice_3/stack_1?
$lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_3/stack_2?
lstm_cell_25/strided_slice_3StridedSlice%lstm_cell_25/ReadVariableOp_3:value:0+lstm_cell_25/strided_slice_3/stack:output:0-lstm_cell_25/strided_slice_3/stack_1:output:0-lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_3?
lstm_cell_25/MatMul_7MatMullstm_cell_25/mul_3:z:0%lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_7?
lstm_cell_25/add_4AddV2lstm_cell_25/BiasAdd_3:output:0lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_4?
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_2|
lstm_cell_25/Relu_1Relulstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu_1?
lstm_cell_25/mul_6Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_25_split_readvariableop_resource,lstm_cell_25_split_1_readvariableop_resource$lstm_cell_25_readvariableop_resource*
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
while_body_925225*
condR
while_cond_925224*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_25/ReadVariableOp^lstm_cell_25/ReadVariableOp_1^lstm_cell_25/ReadVariableOp_2^lstm_cell_25/ReadVariableOp_3"^lstm_cell_25/split/ReadVariableOp$^lstm_cell_25/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_25/ReadVariableOplstm_cell_25/ReadVariableOp2>
lstm_cell_25/ReadVariableOp_1lstm_cell_25/ReadVariableOp_12>
lstm_cell_25/ReadVariableOp_2lstm_cell_25/ReadVariableOp_22>
lstm_cell_25/ReadVariableOp_3lstm_cell_25/ReadVariableOp_32F
!lstm_cell_25/split/ReadVariableOp!lstm_cell_25/split/ReadVariableOp2J
#lstm_cell_25/split_1/ReadVariableOp#lstm_cell_25/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_924674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924674___redundant_placeholder04
0while_while_cond_924674___redundant_placeholder14
0while_while_cond_924674___redundant_placeholder24
0while_while_cond_924674___redundant_placeholder3
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
D__inference_dense_31_layer_call_and_return_conditional_losses_923036

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_31/bias/Regularizer/Square/ReadVariableOp?
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
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_31/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_lstm_25_layer_call_fn_925423

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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9229952
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
?
'sequential_10_lstm_25_while_cond_921812H
Dsequential_10_lstm_25_while_sequential_10_lstm_25_while_loop_counterN
Jsequential_10_lstm_25_while_sequential_10_lstm_25_while_maximum_iterations+
'sequential_10_lstm_25_while_placeholder-
)sequential_10_lstm_25_while_placeholder_1-
)sequential_10_lstm_25_while_placeholder_2-
)sequential_10_lstm_25_while_placeholder_3J
Fsequential_10_lstm_25_while_less_sequential_10_lstm_25_strided_slice_1`
\sequential_10_lstm_25_while_sequential_10_lstm_25_while_cond_921812___redundant_placeholder0`
\sequential_10_lstm_25_while_sequential_10_lstm_25_while_cond_921812___redundant_placeholder1`
\sequential_10_lstm_25_while_sequential_10_lstm_25_while_cond_921812___redundant_placeholder2`
\sequential_10_lstm_25_while_sequential_10_lstm_25_while_cond_921812___redundant_placeholder3(
$sequential_10_lstm_25_while_identity
?
 sequential_10/lstm_25/while/LessLess'sequential_10_lstm_25_while_placeholderFsequential_10_lstm_25_while_less_sequential_10_lstm_25_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_10/lstm_25/while/Less?
$sequential_10/lstm_25/while/IdentityIdentity$sequential_10/lstm_25/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_10/lstm_25/while/Identity"U
$sequential_10_lstm_25_while_identity-sequential_10/lstm_25/while/Identity:output:0*(
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_923055

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
?%
?
while_body_922100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_922124_0:	?*
while_lstm_cell_25_922126_0:	?.
while_lstm_cell_25_922128_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_922124:	?(
while_lstm_cell_25_922126:	?,
while_lstm_cell_25_922128:	 ???*while/lstm_cell_25/StatefulPartitionedCall?
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
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_922124_0while_lstm_cell_25_922126_0while_lstm_cell_25_922128_0*
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_9220862,
*while/lstm_cell_25/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_25/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
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
while_lstm_cell_25_922124while_lstm_cell_25_922124_0"8
while_lstm_cell_25_922126while_lstm_cell_25_922126_0"8
while_lstm_cell_25_922128while_lstm_cell_25_922128_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall: 
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_922995

inputs=
*lstm_cell_25_split_readvariableop_resource:	?;
,lstm_cell_25_split_1_readvariableop_resource:	?7
$lstm_cell_25_readvariableop_resource:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_25/ReadVariableOp?lstm_cell_25/ReadVariableOp_1?lstm_cell_25/ReadVariableOp_2?lstm_cell_25/ReadVariableOp_3?!lstm_cell_25/split/ReadVariableOp?#lstm_cell_25/split_1/ReadVariableOp?whileD
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
lstm_cell_25/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_25/ones_like/Shape?
lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_25/ones_like/Const?
lstm_cell_25/ones_likeFill%lstm_cell_25/ones_like/Shape:output:0%lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/ones_like~
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_25/split/split_dim?
!lstm_cell_25/split/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_25/split/ReadVariableOp?
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0)lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_25/split?
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul?
lstm_cell_25/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_1?
lstm_cell_25/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_2?
lstm_cell_25/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_3?
lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_25/split_1/split_dim?
#lstm_cell_25/split_1/ReadVariableOpReadVariableOp,lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_25/split_1/ReadVariableOp?
lstm_cell_25/split_1Split'lstm_cell_25/split_1/split_dim:output:0+lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_25/split_1?
lstm_cell_25/BiasAddBiasAddlstm_cell_25/MatMul:product:0lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd?
lstm_cell_25/BiasAdd_1BiasAddlstm_cell_25/MatMul_1:product:0lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_1?
lstm_cell_25/BiasAdd_2BiasAddlstm_cell_25/MatMul_2:product:0lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_2?
lstm_cell_25/BiasAdd_3BiasAddlstm_cell_25/MatMul_3:product:0lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_3?
lstm_cell_25/mulMulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul?
lstm_cell_25/mul_1Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_1?
lstm_cell_25/mul_2Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_2?
lstm_cell_25/mul_3Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_3?
lstm_cell_25/ReadVariableOpReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp?
 lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_25/strided_slice/stack?
"lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice/stack_1?
"lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_25/strided_slice/stack_2?
lstm_cell_25/strided_sliceStridedSlice#lstm_cell_25/ReadVariableOp:value:0)lstm_cell_25/strided_slice/stack:output:0+lstm_cell_25/strided_slice/stack_1:output:0+lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice?
lstm_cell_25/MatMul_4MatMullstm_cell_25/mul:z:0#lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_4?
lstm_cell_25/addAddV2lstm_cell_25/BiasAdd:output:0lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add
lstm_cell_25/SigmoidSigmoidlstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid?
lstm_cell_25/ReadVariableOp_1ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_1?
"lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice_1/stack?
$lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_25/strided_slice_1/stack_1?
$lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_1/stack_2?
lstm_cell_25/strided_slice_1StridedSlice%lstm_cell_25/ReadVariableOp_1:value:0+lstm_cell_25/strided_slice_1/stack:output:0-lstm_cell_25/strided_slice_1/stack_1:output:0-lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_1?
lstm_cell_25/MatMul_5MatMullstm_cell_25/mul_1:z:0%lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_5?
lstm_cell_25/add_1AddV2lstm_cell_25/BiasAdd_1:output:0lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_1?
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_1?
lstm_cell_25/mul_4Mullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_4?
lstm_cell_25/ReadVariableOp_2ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_2?
"lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_25/strided_slice_2/stack?
$lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_25/strided_slice_2/stack_1?
$lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_2/stack_2?
lstm_cell_25/strided_slice_2StridedSlice%lstm_cell_25/ReadVariableOp_2:value:0+lstm_cell_25/strided_slice_2/stack:output:0-lstm_cell_25/strided_slice_2/stack_1:output:0-lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_2?
lstm_cell_25/MatMul_6MatMullstm_cell_25/mul_2:z:0%lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_6?
lstm_cell_25/add_2AddV2lstm_cell_25/BiasAdd_2:output:0lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_2x
lstm_cell_25/ReluRelulstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu?
lstm_cell_25/mul_5Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_5?
lstm_cell_25/add_3AddV2lstm_cell_25/mul_4:z:0lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_3?
lstm_cell_25/ReadVariableOp_3ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_3?
"lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_25/strided_slice_3/stack?
$lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_25/strided_slice_3/stack_1?
$lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_3/stack_2?
lstm_cell_25/strided_slice_3StridedSlice%lstm_cell_25/ReadVariableOp_3:value:0+lstm_cell_25/strided_slice_3/stack:output:0-lstm_cell_25/strided_slice_3/stack_1:output:0-lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_3?
lstm_cell_25/MatMul_7MatMullstm_cell_25/mul_3:z:0%lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_7?
lstm_cell_25/add_4AddV2lstm_cell_25/BiasAdd_3:output:0lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_4?
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_2|
lstm_cell_25/Relu_1Relulstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu_1?
lstm_cell_25/mul_6Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_25_split_readvariableop_resource,lstm_cell_25_split_1_readvariableop_resource$lstm_cell_25_readvariableop_resource*
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
while_body_922862*
condR
while_cond_922861*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_25/ReadVariableOp^lstm_cell_25/ReadVariableOp_1^lstm_cell_25/ReadVariableOp_2^lstm_cell_25/ReadVariableOp_3"^lstm_cell_25/split/ReadVariableOp$^lstm_cell_25/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_25/ReadVariableOplstm_cell_25/ReadVariableOp2>
lstm_cell_25/ReadVariableOp_1lstm_cell_25/ReadVariableOp_12>
lstm_cell_25/ReadVariableOp_2lstm_cell_25/ReadVariableOp_22>
lstm_cell_25/ReadVariableOp_3lstm_cell_25/ReadVariableOp_32F
!lstm_cell_25/split/ReadVariableOp!lstm_cell_25/split/ReadVariableOp2J
#lstm_cell_25/split_1/ReadVariableOp#lstm_cell_25/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?v
?
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_925714

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed2???2&
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
seed2Ȱ?2(
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
seed2???2(
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
seed2̛?2(
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2,
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
??
?	
while_body_924675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_25_split_readvariableop_resource_0:	?C
4while_lstm_cell_25_split_1_readvariableop_resource_0:	??
,while_lstm_cell_25_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_25_split_readvariableop_resource:	?A
2while_lstm_cell_25_split_1_readvariableop_resource:	?=
*while_lstm_cell_25_readvariableop_resource:	 ???!while/lstm_cell_25/ReadVariableOp?#while/lstm_cell_25/ReadVariableOp_1?#while/lstm_cell_25/ReadVariableOp_2?#while/lstm_cell_25/ReadVariableOp_3?'while/lstm_cell_25/split/ReadVariableOp?)while/lstm_cell_25/split_1/ReadVariableOp?
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
"while/lstm_cell_25/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_25/ones_like/Shape?
"while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_25/ones_like/Const?
while/lstm_cell_25/ones_likeFill+while/lstm_cell_25/ones_like/Shape:output:0+while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/ones_like?
 while/lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_25/dropout/Const?
while/lstm_cell_25/dropout/MulMul%while/lstm_cell_25/ones_like:output:0)while/lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_25/dropout/Mul?
 while/lstm_cell_25/dropout/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_25/dropout/Shape?
7while/lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_25/dropout/random_uniform/RandomUniform?
)while/lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_25/dropout/GreaterEqual/y?
'while/lstm_cell_25/dropout/GreaterEqualGreaterEqual@while/lstm_cell_25/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_25/dropout/GreaterEqual?
while/lstm_cell_25/dropout/CastCast+while/lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_25/dropout/Cast?
 while/lstm_cell_25/dropout/Mul_1Mul"while/lstm_cell_25/dropout/Mul:z:0#while/lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout/Mul_1?
"while/lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_1/Const?
 while/lstm_cell_25/dropout_1/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_1/Mul?
"while/lstm_cell_25/dropout_1/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_1/Shape?
9while/lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_25/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_1/GreaterEqual/y?
)while/lstm_cell_25/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_1/GreaterEqual?
!while/lstm_cell_25/dropout_1/CastCast-while/lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_1/Cast?
"while/lstm_cell_25/dropout_1/Mul_1Mul$while/lstm_cell_25/dropout_1/Mul:z:0%while/lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_1/Mul_1?
"while/lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_2/Const?
 while/lstm_cell_25/dropout_2/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_2/Mul?
"while/lstm_cell_25/dropout_2/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_2/Shape?
9while/lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ڙ2;
9while/lstm_cell_25/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_2/GreaterEqual/y?
)while/lstm_cell_25/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_2/GreaterEqual?
!while/lstm_cell_25/dropout_2/CastCast-while/lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_2/Cast?
"while/lstm_cell_25/dropout_2/Mul_1Mul$while/lstm_cell_25/dropout_2/Mul:z:0%while/lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_2/Mul_1?
"while/lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_3/Const?
 while/lstm_cell_25/dropout_3/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_3/Mul?
"while/lstm_cell_25/dropout_3/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_3/Shape?
9while/lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2爡2;
9while/lstm_cell_25/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_3/GreaterEqual/y?
)while/lstm_cell_25/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_3/GreaterEqual?
!while/lstm_cell_25/dropout_3/CastCast-while/lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_3/Cast?
"while/lstm_cell_25/dropout_3/Mul_1Mul$while/lstm_cell_25/dropout_3/Mul:z:0%while/lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_3/Mul_1?
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_25/split/split_dim?
'while/lstm_cell_25/split/ReadVariableOpReadVariableOp2while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_25/split/ReadVariableOp?
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_25/split?
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul?
while/lstm_cell_25/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_1?
while/lstm_cell_25/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_2?
while/lstm_cell_25/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_3?
$while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_25/split_1/split_dim?
)while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_25/split_1/ReadVariableOp?
while/lstm_cell_25/split_1Split-while/lstm_cell_25/split_1/split_dim:output:01while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_25/split_1?
while/lstm_cell_25/BiasAddBiasAdd#while/lstm_cell_25/MatMul:product:0#while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd?
while/lstm_cell_25/BiasAdd_1BiasAdd%while/lstm_cell_25/MatMul_1:product:0#while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_1?
while/lstm_cell_25/BiasAdd_2BiasAdd%while/lstm_cell_25/MatMul_2:product:0#while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_2?
while/lstm_cell_25/BiasAdd_3BiasAdd%while/lstm_cell_25/MatMul_3:product:0#while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_3?
while/lstm_cell_25/mulMulwhile_placeholder_2$while/lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul?
while/lstm_cell_25/mul_1Mulwhile_placeholder_2&while/lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_1?
while/lstm_cell_25/mul_2Mulwhile_placeholder_2&while/lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_2?
while/lstm_cell_25/mul_3Mulwhile_placeholder_2&while/lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_3?
!while/lstm_cell_25/ReadVariableOpReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_25/ReadVariableOp?
&while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_25/strided_slice/stack?
(while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice/stack_1?
(while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_25/strided_slice/stack_2?
 while/lstm_cell_25/strided_sliceStridedSlice)while/lstm_cell_25/ReadVariableOp:value:0/while/lstm_cell_25/strided_slice/stack:output:01while/lstm_cell_25/strided_slice/stack_1:output:01while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_25/strided_slice?
while/lstm_cell_25/MatMul_4MatMulwhile/lstm_cell_25/mul:z:0)while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_4?
while/lstm_cell_25/addAddV2#while/lstm_cell_25/BiasAdd:output:0%while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add?
while/lstm_cell_25/SigmoidSigmoidwhile/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid?
#while/lstm_cell_25/ReadVariableOp_1ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_1?
(while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice_1/stack?
*while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_25/strided_slice_1/stack_1?
*while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_1/stack_2?
"while/lstm_cell_25/strided_slice_1StridedSlice+while/lstm_cell_25/ReadVariableOp_1:value:01while/lstm_cell_25/strided_slice_1/stack:output:03while/lstm_cell_25/strided_slice_1/stack_1:output:03while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_1?
while/lstm_cell_25/MatMul_5MatMulwhile/lstm_cell_25/mul_1:z:0+while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_5?
while/lstm_cell_25/add_1AddV2%while/lstm_cell_25/BiasAdd_1:output:0%while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_1?
while/lstm_cell_25/Sigmoid_1Sigmoidwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_1?
while/lstm_cell_25/mul_4Mul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_4?
#while/lstm_cell_25/ReadVariableOp_2ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_2?
(while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_25/strided_slice_2/stack?
*while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_25/strided_slice_2/stack_1?
*while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_2/stack_2?
"while/lstm_cell_25/strided_slice_2StridedSlice+while/lstm_cell_25/ReadVariableOp_2:value:01while/lstm_cell_25/strided_slice_2/stack:output:03while/lstm_cell_25/strided_slice_2/stack_1:output:03while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_2?
while/lstm_cell_25/MatMul_6MatMulwhile/lstm_cell_25/mul_2:z:0+while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_6?
while/lstm_cell_25/add_2AddV2%while/lstm_cell_25/BiasAdd_2:output:0%while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_2?
while/lstm_cell_25/ReluReluwhile/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu?
while/lstm_cell_25/mul_5Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_5?
while/lstm_cell_25/add_3AddV2while/lstm_cell_25/mul_4:z:0while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_3?
#while/lstm_cell_25/ReadVariableOp_3ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_3?
(while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_25/strided_slice_3/stack?
*while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_25/strided_slice_3/stack_1?
*while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_3/stack_2?
"while/lstm_cell_25/strided_slice_3StridedSlice+while/lstm_cell_25/ReadVariableOp_3:value:01while/lstm_cell_25/strided_slice_3/stack:output:03while/lstm_cell_25/strided_slice_3/stack_1:output:03while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_3?
while/lstm_cell_25/MatMul_7MatMulwhile/lstm_cell_25/mul_3:z:0+while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_7?
while/lstm_cell_25/add_4AddV2%while/lstm_cell_25/BiasAdd_3:output:0%while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_4?
while/lstm_cell_25/Sigmoid_2Sigmoidwhile/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_2?
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu_1?
while/lstm_cell_25/mul_6Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_25/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_25/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_25/ReadVariableOp$^while/lstm_cell_25/ReadVariableOp_1$^while/lstm_cell_25/ReadVariableOp_2$^while/lstm_cell_25/ReadVariableOp_3(^while/lstm_cell_25/split/ReadVariableOp*^while/lstm_cell_25/split_1/ReadVariableOp*"
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
*while_lstm_cell_25_readvariableop_resource,while_lstm_cell_25_readvariableop_resource_0"j
2while_lstm_cell_25_split_1_readvariableop_resource4while_lstm_cell_25_split_1_readvariableop_resource_0"f
0while_lstm_cell_25_split_readvariableop_resource2while_lstm_cell_25_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_25/ReadVariableOp!while/lstm_cell_25/ReadVariableOp2J
#while/lstm_cell_25/ReadVariableOp_1#while/lstm_cell_25/ReadVariableOp_12J
#while/lstm_cell_25/ReadVariableOp_2#while/lstm_cell_25/ReadVariableOp_22J
#while/lstm_cell_25/ReadVariableOp_3#while/lstm_cell_25/ReadVariableOp_32R
'while/lstm_cell_25/split/ReadVariableOp'while/lstm_cell_25/split/ReadVariableOp2V
)while/lstm_cell_25/split_1/ReadVariableOp)while/lstm_cell_25/split_1/ReadVariableOp: 
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
?B
?
__inference__traced_save_925866
file_prefix.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_25_lstm_cell_25_kernel_read_readvariableopD
@savev2_lstm_25_lstm_cell_25_recurrent_kernel_read_readvariableop8
4savev2_lstm_25_lstm_cell_25_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableopA
=savev2_adam_lstm_25_lstm_cell_25_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_25_lstm_cell_25_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableopA
=savev2_adam_lstm_25_lstm_cell_25_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_25_lstm_cell_25_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_25_lstm_cell_25_kernel_read_readvariableop@savev2_lstm_25_lstm_cell_25_recurrent_kernel_read_readvariableop4savev2_lstm_25_lstm_cell_25_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableop=savev2_adam_lstm_25_lstm_cell_25_kernel_m_read_readvariableopGsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_25_lstm_cell_25_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableop=savev2_adam_lstm_25_lstm_cell_25_kernel_v_read_readvariableopGsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_25_lstm_cell_25_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?+
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923601
input_11!
lstm_25_923570:	?
lstm_25_923572:	?!
lstm_25_923574:	 ?!
dense_30_923577:  
dense_30_923579: !
dense_31_923582: 
dense_31_923584:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?/dense_31/bias/Regularizer/Square/ReadVariableOp?lstm_25/StatefulPartitionedCall?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
lstm_25/StatefulPartitionedCallStatefulPartitionedCallinput_11lstm_25_923570lstm_25_923572lstm_25_923574*
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9234332!
lstm_25/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0dense_30_923577dense_30_923579*
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
D__inference_dense_30_layer_call_and_return_conditional_losses_9230142"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_923582dense_31_923584*
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
D__inference_dense_31_layer_call_and_return_conditional_losses_9230362"
 dense_31/StatefulPartitionedCall?
reshape_15/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_9230552
reshape_15/PartitionedCall?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_25_923570*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/mul?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_31_923584*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mul?
IdentityIdentity#reshape_15/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall0^dense_31/bias/Regularizer/Square/ReadVariableOp ^lstm_25/StatefulPartitionedCall>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_11
?%
?
while_body_922397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_922421_0:	?*
while_lstm_cell_25_922423_0:	?.
while_lstm_cell_25_922425_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_922421:	?(
while_lstm_cell_25_922423:	?,
while_lstm_cell_25_922425:	 ???*while/lstm_cell_25/StatefulPartitionedCall?
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
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_922421_0while_lstm_cell_25_922423_0while_lstm_cell_25_922425_0*
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_9223192,
*while/lstm_cell_25/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_25/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
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
while_lstm_cell_25_922421while_lstm_cell_25_922421_0"8
while_lstm_cell_25_922423while_lstm_cell_25_922423_0"8
while_lstm_cell_25_922425while_lstm_cell_25_922425_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall: 
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_923497

inputs!
lstm_25_923466:	?
lstm_25_923468:	?!
lstm_25_923470:	 ?!
dense_30_923473:  
dense_30_923475: !
dense_31_923478: 
dense_31_923480:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?/dense_31/bias/Regularizer/Square/ReadVariableOp?lstm_25/StatefulPartitionedCall?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
lstm_25/StatefulPartitionedCallStatefulPartitionedCallinputslstm_25_923466lstm_25_923468lstm_25_923470*
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9234332!
lstm_25/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0dense_30_923473dense_30_923475*
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
D__inference_dense_30_layer_call_and_return_conditional_losses_9230142"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_923478dense_31_923480*
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
D__inference_dense_31_layer_call_and_return_conditional_losses_9230362"
 dense_31/StatefulPartitionedCall?
reshape_15/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_9230552
reshape_15/PartitionedCall?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_25_923466*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/mul?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_31_923480*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mul?
IdentityIdentity#reshape_15/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall0^dense_31/bias/Regularizer/Square/ReadVariableOp ^lstm_25/StatefulPartitionedCall>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_31_layer_call_and_return_conditional_losses_925476

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_31/bias/Regularizer/Square/ReadVariableOp?
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
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_31/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
lstm_25_while_body_924053,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_25_while_lstm_cell_25_split_readvariableop_resource_0:	?K
<lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0:	?G
4lstm_25_while_lstm_cell_25_readvariableop_resource_0:	 ?
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorK
8lstm_25_while_lstm_cell_25_split_readvariableop_resource:	?I
:lstm_25_while_lstm_cell_25_split_1_readvariableop_resource:	?E
2lstm_25_while_lstm_cell_25_readvariableop_resource:	 ???)lstm_25/while/lstm_cell_25/ReadVariableOp?+lstm_25/while/lstm_cell_25/ReadVariableOp_1?+lstm_25/while/lstm_cell_25/ReadVariableOp_2?+lstm_25/while/lstm_cell_25/ReadVariableOp_3?/lstm_25/while/lstm_cell_25/split/ReadVariableOp?1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_25/while/TensorArrayV2Read/TensorListGetItem?
*lstm_25/while/lstm_cell_25/ones_like/ShapeShapelstm_25_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_25/while/lstm_cell_25/ones_like/Shape?
*lstm_25/while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_25/while/lstm_cell_25/ones_like/Const?
$lstm_25/while/lstm_cell_25/ones_likeFill3lstm_25/while/lstm_cell_25/ones_like/Shape:output:03lstm_25/while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/ones_like?
(lstm_25/while/lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2*
(lstm_25/while/lstm_cell_25/dropout/Const?
&lstm_25/while/lstm_cell_25/dropout/MulMul-lstm_25/while/lstm_cell_25/ones_like:output:01lstm_25/while/lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_25/while/lstm_cell_25/dropout/Mul?
(lstm_25/while/lstm_cell_25/dropout/ShapeShape-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_25/while/lstm_cell_25/dropout/Shape?
?lstm_25/while/lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform1lstm_25/while/lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??2A
?lstm_25/while/lstm_cell_25/dropout/random_uniform/RandomUniform?
1lstm_25/while/lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_25/while/lstm_cell_25/dropout/GreaterEqual/y?
/lstm_25/while/lstm_cell_25/dropout/GreaterEqualGreaterEqualHlstm_25/while/lstm_cell_25/dropout/random_uniform/RandomUniform:output:0:lstm_25/while/lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_25/while/lstm_cell_25/dropout/GreaterEqual?
'lstm_25/while/lstm_cell_25/dropout/CastCast3lstm_25/while/lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_25/while/lstm_cell_25/dropout/Cast?
(lstm_25/while/lstm_cell_25/dropout/Mul_1Mul*lstm_25/while/lstm_cell_25/dropout/Mul:z:0+lstm_25/while/lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_25/while/lstm_cell_25/dropout/Mul_1?
*lstm_25/while/lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_25/while/lstm_cell_25/dropout_1/Const?
(lstm_25/while/lstm_cell_25/dropout_1/MulMul-lstm_25/while/lstm_cell_25/ones_like:output:03lstm_25/while/lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_25/while/lstm_cell_25/dropout_1/Mul?
*lstm_25/while/lstm_cell_25/dropout_1/ShapeShape-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_25/while/lstm_cell_25/dropout_1/Shape?
Alstm_25/while/lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_25/while/lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_25/while/lstm_cell_25/dropout_1/random_uniform/RandomUniform?
3lstm_25/while/lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_25/while/lstm_cell_25/dropout_1/GreaterEqual/y?
1lstm_25/while/lstm_cell_25/dropout_1/GreaterEqualGreaterEqualJlstm_25/while/lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:0<lstm_25/while/lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_25/while/lstm_cell_25/dropout_1/GreaterEqual?
)lstm_25/while/lstm_cell_25/dropout_1/CastCast5lstm_25/while/lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_25/while/lstm_cell_25/dropout_1/Cast?
*lstm_25/while/lstm_cell_25/dropout_1/Mul_1Mul,lstm_25/while/lstm_cell_25/dropout_1/Mul:z:0-lstm_25/while/lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_25/while/lstm_cell_25/dropout_1/Mul_1?
*lstm_25/while/lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_25/while/lstm_cell_25/dropout_2/Const?
(lstm_25/while/lstm_cell_25/dropout_2/MulMul-lstm_25/while/lstm_cell_25/ones_like:output:03lstm_25/while/lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_25/while/lstm_cell_25/dropout_2/Mul?
*lstm_25/while/lstm_cell_25/dropout_2/ShapeShape-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_25/while/lstm_cell_25/dropout_2/Shape?
Alstm_25/while/lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_25/while/lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_25/while/lstm_cell_25/dropout_2/random_uniform/RandomUniform?
3lstm_25/while/lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_25/while/lstm_cell_25/dropout_2/GreaterEqual/y?
1lstm_25/while/lstm_cell_25/dropout_2/GreaterEqualGreaterEqualJlstm_25/while/lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:0<lstm_25/while/lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_25/while/lstm_cell_25/dropout_2/GreaterEqual?
)lstm_25/while/lstm_cell_25/dropout_2/CastCast5lstm_25/while/lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_25/while/lstm_cell_25/dropout_2/Cast?
*lstm_25/while/lstm_cell_25/dropout_2/Mul_1Mul,lstm_25/while/lstm_cell_25/dropout_2/Mul:z:0-lstm_25/while/lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_25/while/lstm_cell_25/dropout_2/Mul_1?
*lstm_25/while/lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_25/while/lstm_cell_25/dropout_3/Const?
(lstm_25/while/lstm_cell_25/dropout_3/MulMul-lstm_25/while/lstm_cell_25/ones_like:output:03lstm_25/while/lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_25/while/lstm_cell_25/dropout_3/Mul?
*lstm_25/while/lstm_cell_25/dropout_3/ShapeShape-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_25/while/lstm_cell_25/dropout_3/Shape?
Alstm_25/while/lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_25/while/lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??%2C
Alstm_25/while/lstm_cell_25/dropout_3/random_uniform/RandomUniform?
3lstm_25/while/lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_25/while/lstm_cell_25/dropout_3/GreaterEqual/y?
1lstm_25/while/lstm_cell_25/dropout_3/GreaterEqualGreaterEqualJlstm_25/while/lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:0<lstm_25/while/lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_25/while/lstm_cell_25/dropout_3/GreaterEqual?
)lstm_25/while/lstm_cell_25/dropout_3/CastCast5lstm_25/while/lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_25/while/lstm_cell_25/dropout_3/Cast?
*lstm_25/while/lstm_cell_25/dropout_3/Mul_1Mul,lstm_25/while/lstm_cell_25/dropout_3/Mul:z:0-lstm_25/while/lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_25/while/lstm_cell_25/dropout_3/Mul_1?
*lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_25/while/lstm_cell_25/split/split_dim?
/lstm_25/while/lstm_cell_25/split/ReadVariableOpReadVariableOp:lstm_25_while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_25/while/lstm_cell_25/split/ReadVariableOp?
 lstm_25/while/lstm_cell_25/splitSplit3lstm_25/while/lstm_cell_25/split/split_dim:output:07lstm_25/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_25/while/lstm_cell_25/split?
!lstm_25/while/lstm_cell_25/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_25/while/lstm_cell_25/MatMul?
#lstm_25/while/lstm_cell_25/MatMul_1MatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_1?
#lstm_25/while/lstm_cell_25/MatMul_2MatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_2?
#lstm_25/while/lstm_cell_25/MatMul_3MatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_3?
,lstm_25/while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_25/while/lstm_cell_25/split_1/split_dim?
1lstm_25/while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?
"lstm_25/while/lstm_cell_25/split_1Split5lstm_25/while/lstm_cell_25/split_1/split_dim:output:09lstm_25/while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_25/while/lstm_cell_25/split_1?
"lstm_25/while/lstm_cell_25/BiasAddBiasAdd+lstm_25/while/lstm_cell_25/MatMul:product:0+lstm_25/while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/while/lstm_cell_25/BiasAdd?
$lstm_25/while/lstm_cell_25/BiasAdd_1BiasAdd-lstm_25/while/lstm_cell_25/MatMul_1:product:0+lstm_25/while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/BiasAdd_1?
$lstm_25/while/lstm_cell_25/BiasAdd_2BiasAdd-lstm_25/while/lstm_cell_25/MatMul_2:product:0+lstm_25/while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/BiasAdd_2?
$lstm_25/while/lstm_cell_25/BiasAdd_3BiasAdd-lstm_25/while/lstm_cell_25/MatMul_3:product:0+lstm_25/while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/BiasAdd_3?
lstm_25/while/lstm_cell_25/mulMullstm_25_while_placeholder_2,lstm_25/while/lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/while/lstm_cell_25/mul?
 lstm_25/while/lstm_cell_25/mul_1Mullstm_25_while_placeholder_2.lstm_25/while/lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_1?
 lstm_25/while/lstm_cell_25/mul_2Mullstm_25_while_placeholder_2.lstm_25/while/lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_2?
 lstm_25/while/lstm_cell_25/mul_3Mullstm_25_while_placeholder_2.lstm_25/while/lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_3?
)lstm_25/while/lstm_cell_25/ReadVariableOpReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_25/while/lstm_cell_25/ReadVariableOp?
.lstm_25/while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_25/while/lstm_cell_25/strided_slice/stack?
0lstm_25/while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_25/while/lstm_cell_25/strided_slice/stack_1?
0lstm_25/while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_25/while/lstm_cell_25/strided_slice/stack_2?
(lstm_25/while/lstm_cell_25/strided_sliceStridedSlice1lstm_25/while/lstm_cell_25/ReadVariableOp:value:07lstm_25/while/lstm_cell_25/strided_slice/stack:output:09lstm_25/while/lstm_cell_25/strided_slice/stack_1:output:09lstm_25/while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_25/while/lstm_cell_25/strided_slice?
#lstm_25/while/lstm_cell_25/MatMul_4MatMul"lstm_25/while/lstm_cell_25/mul:z:01lstm_25/while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_4?
lstm_25/while/lstm_cell_25/addAddV2+lstm_25/while/lstm_cell_25/BiasAdd:output:0-lstm_25/while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/while/lstm_cell_25/add?
"lstm_25/while/lstm_cell_25/SigmoidSigmoid"lstm_25/while/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/while/lstm_cell_25/Sigmoid?
+lstm_25/while/lstm_cell_25/ReadVariableOp_1ReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_25/while/lstm_cell_25/ReadVariableOp_1?
0lstm_25/while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_25/while/lstm_cell_25/strided_slice_1/stack?
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_1?
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_2?
*lstm_25/while/lstm_cell_25/strided_slice_1StridedSlice3lstm_25/while/lstm_cell_25/ReadVariableOp_1:value:09lstm_25/while/lstm_cell_25/strided_slice_1/stack:output:0;lstm_25/while/lstm_cell_25/strided_slice_1/stack_1:output:0;lstm_25/while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_25/while/lstm_cell_25/strided_slice_1?
#lstm_25/while/lstm_cell_25/MatMul_5MatMul$lstm_25/while/lstm_cell_25/mul_1:z:03lstm_25/while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_5?
 lstm_25/while/lstm_cell_25/add_1AddV2-lstm_25/while/lstm_cell_25/BiasAdd_1:output:0-lstm_25/while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_1?
$lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid$lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/Sigmoid_1?
 lstm_25/while/lstm_cell_25/mul_4Mul(lstm_25/while/lstm_cell_25/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_4?
+lstm_25/while/lstm_cell_25/ReadVariableOp_2ReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_25/while/lstm_cell_25/ReadVariableOp_2?
0lstm_25/while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_25/while/lstm_cell_25/strided_slice_2/stack?
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_1?
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_2?
*lstm_25/while/lstm_cell_25/strided_slice_2StridedSlice3lstm_25/while/lstm_cell_25/ReadVariableOp_2:value:09lstm_25/while/lstm_cell_25/strided_slice_2/stack:output:0;lstm_25/while/lstm_cell_25/strided_slice_2/stack_1:output:0;lstm_25/while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_25/while/lstm_cell_25/strided_slice_2?
#lstm_25/while/lstm_cell_25/MatMul_6MatMul$lstm_25/while/lstm_cell_25/mul_2:z:03lstm_25/while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_6?
 lstm_25/while/lstm_cell_25/add_2AddV2-lstm_25/while/lstm_cell_25/BiasAdd_2:output:0-lstm_25/while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_2?
lstm_25/while/lstm_cell_25/ReluRelu$lstm_25/while/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_25/while/lstm_cell_25/Relu?
 lstm_25/while/lstm_cell_25/mul_5Mul&lstm_25/while/lstm_cell_25/Sigmoid:y:0-lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_5?
 lstm_25/while/lstm_cell_25/add_3AddV2$lstm_25/while/lstm_cell_25/mul_4:z:0$lstm_25/while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_3?
+lstm_25/while/lstm_cell_25/ReadVariableOp_3ReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_25/while/lstm_cell_25/ReadVariableOp_3?
0lstm_25/while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_25/while/lstm_cell_25/strided_slice_3/stack?
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_1?
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_2?
*lstm_25/while/lstm_cell_25/strided_slice_3StridedSlice3lstm_25/while/lstm_cell_25/ReadVariableOp_3:value:09lstm_25/while/lstm_cell_25/strided_slice_3/stack:output:0;lstm_25/while/lstm_cell_25/strided_slice_3/stack_1:output:0;lstm_25/while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_25/while/lstm_cell_25/strided_slice_3?
#lstm_25/while/lstm_cell_25/MatMul_7MatMul$lstm_25/while/lstm_cell_25/mul_3:z:03lstm_25/while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_7?
 lstm_25/while/lstm_cell_25/add_4AddV2-lstm_25/while/lstm_cell_25/BiasAdd_3:output:0-lstm_25/while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_4?
$lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid$lstm_25/while/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/Sigmoid_2?
!lstm_25/while/lstm_cell_25/Relu_1Relu$lstm_25/while/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_25/while/lstm_cell_25/Relu_1?
 lstm_25/while/lstm_cell_25/mul_6Mul(lstm_25/while/lstm_cell_25/Sigmoid_2:y:0/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_6?
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1lstm_25_while_placeholder$lstm_25/while/lstm_cell_25/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_25/while/TensorArrayV2Write/TensorListSetIteml
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_25/while/add/y?
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_25/while/addp
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_25/while/add_1/y?
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_25/while/add_1?
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity?
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity_1?
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity_2?
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity_3?
lstm_25/while/Identity_4Identity$lstm_25/while/lstm_cell_25/mul_6:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_25/while/Identity_4?
lstm_25/while/Identity_5Identity$lstm_25/while/lstm_cell_25/add_3:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_25/while/Identity_5?
lstm_25/while/NoOpNoOp*^lstm_25/while/lstm_cell_25/ReadVariableOp,^lstm_25/while/lstm_cell_25/ReadVariableOp_1,^lstm_25/while/lstm_cell_25/ReadVariableOp_2,^lstm_25/while/lstm_cell_25/ReadVariableOp_30^lstm_25/while/lstm_cell_25/split/ReadVariableOp2^lstm_25/while/lstm_cell_25/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_25/while/NoOp"9
lstm_25_while_identitylstm_25/while/Identity:output:0"=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"j
2lstm_25_while_lstm_cell_25_readvariableop_resource4lstm_25_while_lstm_cell_25_readvariableop_resource_0"z
:lstm_25_while_lstm_cell_25_split_1_readvariableop_resource<lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0"v
8lstm_25_while_lstm_cell_25_split_readvariableop_resource:lstm_25_while_lstm_cell_25_split_readvariableop_resource_0"?
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_25/while/lstm_cell_25/ReadVariableOp)lstm_25/while/lstm_cell_25/ReadVariableOp2Z
+lstm_25/while/lstm_cell_25/ReadVariableOp_1+lstm_25/while/lstm_cell_25/ReadVariableOp_12Z
+lstm_25/while/lstm_cell_25/ReadVariableOp_2+lstm_25/while/lstm_cell_25/ReadVariableOp_22Z
+lstm_25/while/lstm_cell_25/ReadVariableOp_3+lstm_25/while/lstm_cell_25/ReadVariableOp_32b
/lstm_25/while/lstm_cell_25/split/ReadVariableOp/lstm_25/while/lstm_cell_25/split/ReadVariableOp2f
1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp: 
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
(__inference_lstm_25_layer_call_fn_925412
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9224722
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
?
?
(__inference_lstm_25_layer_call_fn_925401
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9221752
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
?	
while_body_924400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_25_split_readvariableop_resource_0:	?C
4while_lstm_cell_25_split_1_readvariableop_resource_0:	??
,while_lstm_cell_25_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_25_split_readvariableop_resource:	?A
2while_lstm_cell_25_split_1_readvariableop_resource:	?=
*while_lstm_cell_25_readvariableop_resource:	 ???!while/lstm_cell_25/ReadVariableOp?#while/lstm_cell_25/ReadVariableOp_1?#while/lstm_cell_25/ReadVariableOp_2?#while/lstm_cell_25/ReadVariableOp_3?'while/lstm_cell_25/split/ReadVariableOp?)while/lstm_cell_25/split_1/ReadVariableOp?
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
"while/lstm_cell_25/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_25/ones_like/Shape?
"while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_25/ones_like/Const?
while/lstm_cell_25/ones_likeFill+while/lstm_cell_25/ones_like/Shape:output:0+while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/ones_like?
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_25/split/split_dim?
'while/lstm_cell_25/split/ReadVariableOpReadVariableOp2while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_25/split/ReadVariableOp?
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_25/split?
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul?
while/lstm_cell_25/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_1?
while/lstm_cell_25/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_2?
while/lstm_cell_25/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_3?
$while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_25/split_1/split_dim?
)while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_25/split_1/ReadVariableOp?
while/lstm_cell_25/split_1Split-while/lstm_cell_25/split_1/split_dim:output:01while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_25/split_1?
while/lstm_cell_25/BiasAddBiasAdd#while/lstm_cell_25/MatMul:product:0#while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd?
while/lstm_cell_25/BiasAdd_1BiasAdd%while/lstm_cell_25/MatMul_1:product:0#while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_1?
while/lstm_cell_25/BiasAdd_2BiasAdd%while/lstm_cell_25/MatMul_2:product:0#while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_2?
while/lstm_cell_25/BiasAdd_3BiasAdd%while/lstm_cell_25/MatMul_3:product:0#while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_3?
while/lstm_cell_25/mulMulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul?
while/lstm_cell_25/mul_1Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_1?
while/lstm_cell_25/mul_2Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_2?
while/lstm_cell_25/mul_3Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_3?
!while/lstm_cell_25/ReadVariableOpReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_25/ReadVariableOp?
&while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_25/strided_slice/stack?
(while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice/stack_1?
(while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_25/strided_slice/stack_2?
 while/lstm_cell_25/strided_sliceStridedSlice)while/lstm_cell_25/ReadVariableOp:value:0/while/lstm_cell_25/strided_slice/stack:output:01while/lstm_cell_25/strided_slice/stack_1:output:01while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_25/strided_slice?
while/lstm_cell_25/MatMul_4MatMulwhile/lstm_cell_25/mul:z:0)while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_4?
while/lstm_cell_25/addAddV2#while/lstm_cell_25/BiasAdd:output:0%while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add?
while/lstm_cell_25/SigmoidSigmoidwhile/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid?
#while/lstm_cell_25/ReadVariableOp_1ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_1?
(while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice_1/stack?
*while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_25/strided_slice_1/stack_1?
*while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_1/stack_2?
"while/lstm_cell_25/strided_slice_1StridedSlice+while/lstm_cell_25/ReadVariableOp_1:value:01while/lstm_cell_25/strided_slice_1/stack:output:03while/lstm_cell_25/strided_slice_1/stack_1:output:03while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_1?
while/lstm_cell_25/MatMul_5MatMulwhile/lstm_cell_25/mul_1:z:0+while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_5?
while/lstm_cell_25/add_1AddV2%while/lstm_cell_25/BiasAdd_1:output:0%while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_1?
while/lstm_cell_25/Sigmoid_1Sigmoidwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_1?
while/lstm_cell_25/mul_4Mul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_4?
#while/lstm_cell_25/ReadVariableOp_2ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_2?
(while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_25/strided_slice_2/stack?
*while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_25/strided_slice_2/stack_1?
*while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_2/stack_2?
"while/lstm_cell_25/strided_slice_2StridedSlice+while/lstm_cell_25/ReadVariableOp_2:value:01while/lstm_cell_25/strided_slice_2/stack:output:03while/lstm_cell_25/strided_slice_2/stack_1:output:03while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_2?
while/lstm_cell_25/MatMul_6MatMulwhile/lstm_cell_25/mul_2:z:0+while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_6?
while/lstm_cell_25/add_2AddV2%while/lstm_cell_25/BiasAdd_2:output:0%while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_2?
while/lstm_cell_25/ReluReluwhile/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu?
while/lstm_cell_25/mul_5Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_5?
while/lstm_cell_25/add_3AddV2while/lstm_cell_25/mul_4:z:0while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_3?
#while/lstm_cell_25/ReadVariableOp_3ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_3?
(while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_25/strided_slice_3/stack?
*while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_25/strided_slice_3/stack_1?
*while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_3/stack_2?
"while/lstm_cell_25/strided_slice_3StridedSlice+while/lstm_cell_25/ReadVariableOp_3:value:01while/lstm_cell_25/strided_slice_3/stack:output:03while/lstm_cell_25/strided_slice_3/stack_1:output:03while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_3?
while/lstm_cell_25/MatMul_7MatMulwhile/lstm_cell_25/mul_3:z:0+while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_7?
while/lstm_cell_25/add_4AddV2%while/lstm_cell_25/BiasAdd_3:output:0%while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_4?
while/lstm_cell_25/Sigmoid_2Sigmoidwhile/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_2?
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu_1?
while/lstm_cell_25/mul_6Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_25/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_25/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_25/ReadVariableOp$^while/lstm_cell_25/ReadVariableOp_1$^while/lstm_cell_25/ReadVariableOp_2$^while/lstm_cell_25/ReadVariableOp_3(^while/lstm_cell_25/split/ReadVariableOp*^while/lstm_cell_25/split_1/ReadVariableOp*"
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
*while_lstm_cell_25_readvariableop_resource,while_lstm_cell_25_readvariableop_resource_0"j
2while_lstm_cell_25_split_1_readvariableop_resource4while_lstm_cell_25_split_1_readvariableop_resource_0"f
0while_lstm_cell_25_split_readvariableop_resource2while_lstm_cell_25_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_25/ReadVariableOp!while/lstm_cell_25/ReadVariableOp2J
#while/lstm_cell_25/ReadVariableOp_1#while/lstm_cell_25/ReadVariableOp_12J
#while/lstm_cell_25/ReadVariableOp_2#while/lstm_cell_25/ReadVariableOp_22J
#while/lstm_cell_25/ReadVariableOp_3#while/lstm_cell_25/ReadVariableOp_32R
'while/lstm_cell_25/split/ReadVariableOp'while/lstm_cell_25/split/ReadVariableOp2V
)while/lstm_cell_25/split_1/ReadVariableOp)while/lstm_cell_25/split_1/ReadVariableOp: 
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
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923911

inputsE
2lstm_25_lstm_cell_25_split_readvariableop_resource:	?C
4lstm_25_lstm_cell_25_split_1_readvariableop_resource:	??
,lstm_25_lstm_cell_25_readvariableop_resource:	 ?9
'dense_30_matmul_readvariableop_resource:  6
(dense_30_biasadd_readvariableop_resource: 9
'dense_31_matmul_readvariableop_resource: 6
(dense_31_biasadd_readvariableop_resource:
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?/dense_31/bias/Regularizer/Square/ReadVariableOp?#lstm_25/lstm_cell_25/ReadVariableOp?%lstm_25/lstm_cell_25/ReadVariableOp_1?%lstm_25/lstm_cell_25/ReadVariableOp_2?%lstm_25/lstm_cell_25/ReadVariableOp_3?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?)lstm_25/lstm_cell_25/split/ReadVariableOp?+lstm_25/lstm_cell_25/split_1/ReadVariableOp?lstm_25/whileT
lstm_25/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_25/Shape?
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_25/strided_slice/stack?
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_25/strided_slice/stack_1?
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_25/strided_slice/stack_2?
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_25/strided_slicel
lstm_25/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros/mul/y?
lstm_25/zeros/mulMullstm_25/strided_slice:output:0lstm_25/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros/mulo
lstm_25/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_25/zeros/Less/y?
lstm_25/zeros/LessLesslstm_25/zeros/mul:z:0lstm_25/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros/Lessr
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros/packed/1?
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_25/zeros/packedo
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_25/zeros/Const?
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/zerosp
lstm_25/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros_1/mul/y?
lstm_25/zeros_1/mulMullstm_25/strided_slice:output:0lstm_25/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros_1/muls
lstm_25/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_25/zeros_1/Less/y?
lstm_25/zeros_1/LessLesslstm_25/zeros_1/mul:z:0lstm_25/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros_1/Lessv
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros_1/packed/1?
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_25/zeros_1/packeds
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_25/zeros_1/Const?
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/zeros_1?
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_25/transpose/perm?
lstm_25/transpose	Transposeinputslstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_25/transposeg
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
:2
lstm_25/Shape_1?
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_25/strided_slice_1/stack?
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_1/stack_1?
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_1/stack_2?
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_25/strided_slice_1?
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_25/TensorArrayV2/element_shape?
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_25/TensorArrayV2?
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_25/TensorArrayUnstack/TensorListFromTensor?
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_25/strided_slice_2/stack?
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_2/stack_1?
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_2/stack_2?
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_25/strided_slice_2?
$lstm_25/lstm_cell_25/ones_like/ShapeShapelstm_25/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_25/lstm_cell_25/ones_like/Shape?
$lstm_25/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_25/lstm_cell_25/ones_like/Const?
lstm_25/lstm_cell_25/ones_likeFill-lstm_25/lstm_cell_25/ones_like/Shape:output:0-lstm_25/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/ones_like?
$lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_25/lstm_cell_25/split/split_dim?
)lstm_25/lstm_cell_25/split/ReadVariableOpReadVariableOp2lstm_25_lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_25/lstm_cell_25/split/ReadVariableOp?
lstm_25/lstm_cell_25/splitSplit-lstm_25/lstm_cell_25/split/split_dim:output:01lstm_25/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_25/lstm_cell_25/split?
lstm_25/lstm_cell_25/MatMulMatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul?
lstm_25/lstm_cell_25/MatMul_1MatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_1?
lstm_25/lstm_cell_25/MatMul_2MatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_2?
lstm_25/lstm_cell_25/MatMul_3MatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_3?
&lstm_25/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_25/lstm_cell_25/split_1/split_dim?
+lstm_25/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_25/lstm_cell_25/split_1/ReadVariableOp?
lstm_25/lstm_cell_25/split_1Split/lstm_25/lstm_cell_25/split_1/split_dim:output:03lstm_25/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_25/lstm_cell_25/split_1?
lstm_25/lstm_cell_25/BiasAddBiasAdd%lstm_25/lstm_cell_25/MatMul:product:0%lstm_25/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/BiasAdd?
lstm_25/lstm_cell_25/BiasAdd_1BiasAdd'lstm_25/lstm_cell_25/MatMul_1:product:0%lstm_25/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/BiasAdd_1?
lstm_25/lstm_cell_25/BiasAdd_2BiasAdd'lstm_25/lstm_cell_25/MatMul_2:product:0%lstm_25/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/BiasAdd_2?
lstm_25/lstm_cell_25/BiasAdd_3BiasAdd'lstm_25/lstm_cell_25/MatMul_3:product:0%lstm_25/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/BiasAdd_3?
lstm_25/lstm_cell_25/mulMullstm_25/zeros:output:0'lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul?
lstm_25/lstm_cell_25/mul_1Mullstm_25/zeros:output:0'lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_1?
lstm_25/lstm_cell_25/mul_2Mullstm_25/zeros:output:0'lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_2?
lstm_25/lstm_cell_25/mul_3Mullstm_25/zeros:output:0'lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_3?
#lstm_25/lstm_cell_25/ReadVariableOpReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_25/lstm_cell_25/ReadVariableOp?
(lstm_25/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_25/lstm_cell_25/strided_slice/stack?
*lstm_25/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_25/lstm_cell_25/strided_slice/stack_1?
*lstm_25/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_25/lstm_cell_25/strided_slice/stack_2?
"lstm_25/lstm_cell_25/strided_sliceStridedSlice+lstm_25/lstm_cell_25/ReadVariableOp:value:01lstm_25/lstm_cell_25/strided_slice/stack:output:03lstm_25/lstm_cell_25/strided_slice/stack_1:output:03lstm_25/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_25/lstm_cell_25/strided_slice?
lstm_25/lstm_cell_25/MatMul_4MatMullstm_25/lstm_cell_25/mul:z:0+lstm_25/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_4?
lstm_25/lstm_cell_25/addAddV2%lstm_25/lstm_cell_25/BiasAdd:output:0'lstm_25/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add?
lstm_25/lstm_cell_25/SigmoidSigmoidlstm_25/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/Sigmoid?
%lstm_25/lstm_cell_25/ReadVariableOp_1ReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_25/lstm_cell_25/ReadVariableOp_1?
*lstm_25/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_25/lstm_cell_25/strided_slice_1/stack?
,lstm_25/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_25/lstm_cell_25/strided_slice_1/stack_1?
,lstm_25/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_25/lstm_cell_25/strided_slice_1/stack_2?
$lstm_25/lstm_cell_25/strided_slice_1StridedSlice-lstm_25/lstm_cell_25/ReadVariableOp_1:value:03lstm_25/lstm_cell_25/strided_slice_1/stack:output:05lstm_25/lstm_cell_25/strided_slice_1/stack_1:output:05lstm_25/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_25/lstm_cell_25/strided_slice_1?
lstm_25/lstm_cell_25/MatMul_5MatMullstm_25/lstm_cell_25/mul_1:z:0-lstm_25/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_5?
lstm_25/lstm_cell_25/add_1AddV2'lstm_25/lstm_cell_25/BiasAdd_1:output:0'lstm_25/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_1?
lstm_25/lstm_cell_25/Sigmoid_1Sigmoidlstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/Sigmoid_1?
lstm_25/lstm_cell_25/mul_4Mul"lstm_25/lstm_cell_25/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_4?
%lstm_25/lstm_cell_25/ReadVariableOp_2ReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_25/lstm_cell_25/ReadVariableOp_2?
*lstm_25/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_25/lstm_cell_25/strided_slice_2/stack?
,lstm_25/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_25/lstm_cell_25/strided_slice_2/stack_1?
,lstm_25/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_25/lstm_cell_25/strided_slice_2/stack_2?
$lstm_25/lstm_cell_25/strided_slice_2StridedSlice-lstm_25/lstm_cell_25/ReadVariableOp_2:value:03lstm_25/lstm_cell_25/strided_slice_2/stack:output:05lstm_25/lstm_cell_25/strided_slice_2/stack_1:output:05lstm_25/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_25/lstm_cell_25/strided_slice_2?
lstm_25/lstm_cell_25/MatMul_6MatMullstm_25/lstm_cell_25/mul_2:z:0-lstm_25/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_6?
lstm_25/lstm_cell_25/add_2AddV2'lstm_25/lstm_cell_25/BiasAdd_2:output:0'lstm_25/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_2?
lstm_25/lstm_cell_25/ReluRelulstm_25/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/Relu?
lstm_25/lstm_cell_25/mul_5Mul lstm_25/lstm_cell_25/Sigmoid:y:0'lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_5?
lstm_25/lstm_cell_25/add_3AddV2lstm_25/lstm_cell_25/mul_4:z:0lstm_25/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_3?
%lstm_25/lstm_cell_25/ReadVariableOp_3ReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_25/lstm_cell_25/ReadVariableOp_3?
*lstm_25/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_25/lstm_cell_25/strided_slice_3/stack?
,lstm_25/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_25/lstm_cell_25/strided_slice_3/stack_1?
,lstm_25/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_25/lstm_cell_25/strided_slice_3/stack_2?
$lstm_25/lstm_cell_25/strided_slice_3StridedSlice-lstm_25/lstm_cell_25/ReadVariableOp_3:value:03lstm_25/lstm_cell_25/strided_slice_3/stack:output:05lstm_25/lstm_cell_25/strided_slice_3/stack_1:output:05lstm_25/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_25/lstm_cell_25/strided_slice_3?
lstm_25/lstm_cell_25/MatMul_7MatMullstm_25/lstm_cell_25/mul_3:z:0-lstm_25/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_7?
lstm_25/lstm_cell_25/add_4AddV2'lstm_25/lstm_cell_25/BiasAdd_3:output:0'lstm_25/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_4?
lstm_25/lstm_cell_25/Sigmoid_2Sigmoidlstm_25/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/Sigmoid_2?
lstm_25/lstm_cell_25/Relu_1Relulstm_25/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/Relu_1?
lstm_25/lstm_cell_25/mul_6Mul"lstm_25/lstm_cell_25/Sigmoid_2:y:0)lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_6?
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_25/TensorArrayV2_1/element_shape?
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_25/TensorArrayV2_1^
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/time?
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_25/while/maximum_iterationsz
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/while/loop_counter?
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_25_lstm_cell_25_split_readvariableop_resource4lstm_25_lstm_cell_25_split_1_readvariableop_resource,lstm_25_lstm_cell_25_readvariableop_resource*
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
lstm_25_while_body_923750*%
condR
lstm_25_while_cond_923749*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_25/while?
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_25/TensorArrayV2Stack/TensorListStack?
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_25/strided_slice_3/stack?
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_25/strided_slice_3/stack_1?
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_3/stack_2?
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_25/strided_slice_3?
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_25/transpose_1/perm?
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_25/transpose_1v
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_25/runtime?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul lstm_25/strided_slice_3:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_30/Relu?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAddm
reshape_15/ShapeShapedense_31/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_15/Shape?
reshape_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_15/strided_slice/stack?
 reshape_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_1?
 reshape_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_2?
reshape_15/strided_sliceStridedSlicereshape_15/Shape:output:0'reshape_15/strided_slice/stack:output:0)reshape_15/strided_slice/stack_1:output:0)reshape_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_15/strided_slicez
reshape_15/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/1z
reshape_15/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/2?
reshape_15/Reshape/shapePack!reshape_15/strided_slice:output:0#reshape_15/Reshape/shape/1:output:0#reshape_15/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_15/Reshape/shape?
reshape_15/ReshapeReshapedense_31/BiasAdd:output:0!reshape_15/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_15/Reshape?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_25_lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/mul?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mulz
IdentityIdentityreshape_15/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp0^dense_31/bias/Regularizer/Square/ReadVariableOp$^lstm_25/lstm_cell_25/ReadVariableOp&^lstm_25/lstm_cell_25/ReadVariableOp_1&^lstm_25/lstm_cell_25/ReadVariableOp_2&^lstm_25/lstm_cell_25/ReadVariableOp_3>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*^lstm_25/lstm_cell_25/split/ReadVariableOp,^lstm_25/lstm_cell_25/split_1/ReadVariableOp^lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp2J
#lstm_25/lstm_cell_25/ReadVariableOp#lstm_25/lstm_cell_25/ReadVariableOp2N
%lstm_25/lstm_cell_25/ReadVariableOp_1%lstm_25/lstm_cell_25/ReadVariableOp_12N
%lstm_25/lstm_cell_25/ReadVariableOp_2%lstm_25/lstm_cell_25/ReadVariableOp_22N
%lstm_25/lstm_cell_25/ReadVariableOp_3%lstm_25/lstm_cell_25/ReadVariableOp_32~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_25/lstm_cell_25/split/ReadVariableOp)lstm_25/lstm_cell_25/split/ReadVariableOp2Z
+lstm_25/lstm_cell_25/split_1/ReadVariableOp+lstm_25/lstm_cell_25/split_1/ReadVariableOp2
lstm_25/whilelstm_25/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_25_layer_call_fn_925434

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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9234332
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
??
?	
while_body_922862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_25_split_readvariableop_resource_0:	?C
4while_lstm_cell_25_split_1_readvariableop_resource_0:	??
,while_lstm_cell_25_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_25_split_readvariableop_resource:	?A
2while_lstm_cell_25_split_1_readvariableop_resource:	?=
*while_lstm_cell_25_readvariableop_resource:	 ???!while/lstm_cell_25/ReadVariableOp?#while/lstm_cell_25/ReadVariableOp_1?#while/lstm_cell_25/ReadVariableOp_2?#while/lstm_cell_25/ReadVariableOp_3?'while/lstm_cell_25/split/ReadVariableOp?)while/lstm_cell_25/split_1/ReadVariableOp?
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
"while/lstm_cell_25/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_25/ones_like/Shape?
"while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_25/ones_like/Const?
while/lstm_cell_25/ones_likeFill+while/lstm_cell_25/ones_like/Shape:output:0+while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/ones_like?
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_25/split/split_dim?
'while/lstm_cell_25/split/ReadVariableOpReadVariableOp2while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_25/split/ReadVariableOp?
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_25/split?
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul?
while/lstm_cell_25/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_1?
while/lstm_cell_25/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_2?
while/lstm_cell_25/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_3?
$while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_25/split_1/split_dim?
)while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_25/split_1/ReadVariableOp?
while/lstm_cell_25/split_1Split-while/lstm_cell_25/split_1/split_dim:output:01while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_25/split_1?
while/lstm_cell_25/BiasAddBiasAdd#while/lstm_cell_25/MatMul:product:0#while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd?
while/lstm_cell_25/BiasAdd_1BiasAdd%while/lstm_cell_25/MatMul_1:product:0#while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_1?
while/lstm_cell_25/BiasAdd_2BiasAdd%while/lstm_cell_25/MatMul_2:product:0#while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_2?
while/lstm_cell_25/BiasAdd_3BiasAdd%while/lstm_cell_25/MatMul_3:product:0#while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_3?
while/lstm_cell_25/mulMulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul?
while/lstm_cell_25/mul_1Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_1?
while/lstm_cell_25/mul_2Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_2?
while/lstm_cell_25/mul_3Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_3?
!while/lstm_cell_25/ReadVariableOpReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_25/ReadVariableOp?
&while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_25/strided_slice/stack?
(while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice/stack_1?
(while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_25/strided_slice/stack_2?
 while/lstm_cell_25/strided_sliceStridedSlice)while/lstm_cell_25/ReadVariableOp:value:0/while/lstm_cell_25/strided_slice/stack:output:01while/lstm_cell_25/strided_slice/stack_1:output:01while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_25/strided_slice?
while/lstm_cell_25/MatMul_4MatMulwhile/lstm_cell_25/mul:z:0)while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_4?
while/lstm_cell_25/addAddV2#while/lstm_cell_25/BiasAdd:output:0%while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add?
while/lstm_cell_25/SigmoidSigmoidwhile/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid?
#while/lstm_cell_25/ReadVariableOp_1ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_1?
(while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice_1/stack?
*while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_25/strided_slice_1/stack_1?
*while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_1/stack_2?
"while/lstm_cell_25/strided_slice_1StridedSlice+while/lstm_cell_25/ReadVariableOp_1:value:01while/lstm_cell_25/strided_slice_1/stack:output:03while/lstm_cell_25/strided_slice_1/stack_1:output:03while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_1?
while/lstm_cell_25/MatMul_5MatMulwhile/lstm_cell_25/mul_1:z:0+while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_5?
while/lstm_cell_25/add_1AddV2%while/lstm_cell_25/BiasAdd_1:output:0%while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_1?
while/lstm_cell_25/Sigmoid_1Sigmoidwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_1?
while/lstm_cell_25/mul_4Mul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_4?
#while/lstm_cell_25/ReadVariableOp_2ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_2?
(while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_25/strided_slice_2/stack?
*while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_25/strided_slice_2/stack_1?
*while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_2/stack_2?
"while/lstm_cell_25/strided_slice_2StridedSlice+while/lstm_cell_25/ReadVariableOp_2:value:01while/lstm_cell_25/strided_slice_2/stack:output:03while/lstm_cell_25/strided_slice_2/stack_1:output:03while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_2?
while/lstm_cell_25/MatMul_6MatMulwhile/lstm_cell_25/mul_2:z:0+while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_6?
while/lstm_cell_25/add_2AddV2%while/lstm_cell_25/BiasAdd_2:output:0%while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_2?
while/lstm_cell_25/ReluReluwhile/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu?
while/lstm_cell_25/mul_5Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_5?
while/lstm_cell_25/add_3AddV2while/lstm_cell_25/mul_4:z:0while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_3?
#while/lstm_cell_25/ReadVariableOp_3ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_3?
(while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_25/strided_slice_3/stack?
*while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_25/strided_slice_3/stack_1?
*while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_3/stack_2?
"while/lstm_cell_25/strided_slice_3StridedSlice+while/lstm_cell_25/ReadVariableOp_3:value:01while/lstm_cell_25/strided_slice_3/stack:output:03while/lstm_cell_25/strided_slice_3/stack_1:output:03while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_3?
while/lstm_cell_25/MatMul_7MatMulwhile/lstm_cell_25/mul_3:z:0+while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_7?
while/lstm_cell_25/add_4AddV2%while/lstm_cell_25/BiasAdd_3:output:0%while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_4?
while/lstm_cell_25/Sigmoid_2Sigmoidwhile/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_2?
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu_1?
while/lstm_cell_25/mul_6Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_25/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_25/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_25/ReadVariableOp$^while/lstm_cell_25/ReadVariableOp_1$^while/lstm_cell_25/ReadVariableOp_2$^while/lstm_cell_25/ReadVariableOp_3(^while/lstm_cell_25/split/ReadVariableOp*^while/lstm_cell_25/split_1/ReadVariableOp*"
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
*while_lstm_cell_25_readvariableop_resource,while_lstm_cell_25_readvariableop_resource_0"j
2while_lstm_cell_25_split_1_readvariableop_resource4while_lstm_cell_25_split_1_readvariableop_resource_0"f
0while_lstm_cell_25_split_readvariableop_resource2while_lstm_cell_25_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_25/ReadVariableOp!while/lstm_cell_25/ReadVariableOp2J
#while/lstm_cell_25/ReadVariableOp_1#while/lstm_cell_25/ReadVariableOp_12J
#while/lstm_cell_25/ReadVariableOp_2#while/lstm_cell_25/ReadVariableOp_22J
#while/lstm_cell_25/ReadVariableOp_3#while/lstm_cell_25/ReadVariableOp_32R
'while/lstm_cell_25/split/ReadVariableOp'while/lstm_cell_25/split/ReadVariableOp2V
)while/lstm_cell_25/split_1/ReadVariableOp)while/lstm_cell_25/split_1/ReadVariableOp: 
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
?
?
__inference_loss_fn_1_925759Y
Flstm_25_lstm_cell_25_kernel_regularizer_square_readvariableop_resource:	?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_25_lstm_cell_25_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muly
IdentityIdentity/lstm_25/lstm_cell_25/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp
?+
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923567
input_11!
lstm_25_923536:	?
lstm_25_923538:	?!
lstm_25_923540:	 ?!
dense_30_923543:  
dense_30_923545: !
dense_31_923548: 
dense_31_923550:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?/dense_31/bias/Regularizer/Square/ReadVariableOp?lstm_25/StatefulPartitionedCall?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
lstm_25/StatefulPartitionedCallStatefulPartitionedCallinput_11lstm_25_923536lstm_25_923538lstm_25_923540*
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_9229952!
lstm_25/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0dense_30_923543dense_30_923545*
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
D__inference_dense_30_layer_call_and_return_conditional_losses_9230142"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_923548dense_31_923550*
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
D__inference_dense_31_layer_call_and_return_conditional_losses_9230362"
 dense_31/StatefulPartitionedCall?
reshape_15/PartitionedCallPartitionedCall)dense_31/StatefulPartitionedCall:output:0*
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_9230552
reshape_15/PartitionedCall?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_25_923536*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/mul?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_31_923550*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mul?
IdentityIdentity#reshape_15/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall0^dense_31/bias/Regularizer/Square/ReadVariableOp ^lstm_25/StatefulPartitionedCall>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_11
?

?
lstm_25_while_cond_924052,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1D
@lstm_25_while_lstm_25_while_cond_924052___redundant_placeholder0D
@lstm_25_while_lstm_25_while_cond_924052___redundant_placeholder1D
@lstm_25_while_lstm_25_while_cond_924052___redundant_placeholder2D
@lstm_25_while_lstm_25_while_cond_924052___redundant_placeholder3
lstm_25_while_identity
?
lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: 2
lstm_25/while/Lessu
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_25/while/Identity"9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
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
??
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_924246

inputsE
2lstm_25_lstm_cell_25_split_readvariableop_resource:	?C
4lstm_25_lstm_cell_25_split_1_readvariableop_resource:	??
,lstm_25_lstm_cell_25_readvariableop_resource:	 ?9
'dense_30_matmul_readvariableop_resource:  6
(dense_30_biasadd_readvariableop_resource: 9
'dense_31_matmul_readvariableop_resource: 6
(dense_31_biasadd_readvariableop_resource:
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?/dense_31/bias/Regularizer/Square/ReadVariableOp?#lstm_25/lstm_cell_25/ReadVariableOp?%lstm_25/lstm_cell_25/ReadVariableOp_1?%lstm_25/lstm_cell_25/ReadVariableOp_2?%lstm_25/lstm_cell_25/ReadVariableOp_3?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?)lstm_25/lstm_cell_25/split/ReadVariableOp?+lstm_25/lstm_cell_25/split_1/ReadVariableOp?lstm_25/whileT
lstm_25/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_25/Shape?
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_25/strided_slice/stack?
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_25/strided_slice/stack_1?
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_25/strided_slice/stack_2?
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_25/strided_slicel
lstm_25/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros/mul/y?
lstm_25/zeros/mulMullstm_25/strided_slice:output:0lstm_25/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros/mulo
lstm_25/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_25/zeros/Less/y?
lstm_25/zeros/LessLesslstm_25/zeros/mul:z:0lstm_25/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros/Lessr
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros/packed/1?
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_25/zeros/packedo
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_25/zeros/Const?
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/zerosp
lstm_25/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros_1/mul/y?
lstm_25/zeros_1/mulMullstm_25/strided_slice:output:0lstm_25/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros_1/muls
lstm_25/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_25/zeros_1/Less/y?
lstm_25/zeros_1/LessLesslstm_25/zeros_1/mul:z:0lstm_25/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_25/zeros_1/Lessv
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/zeros_1/packed/1?
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_25/zeros_1/packeds
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_25/zeros_1/Const?
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/zeros_1?
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_25/transpose/perm?
lstm_25/transpose	Transposeinputslstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_25/transposeg
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
:2
lstm_25/Shape_1?
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_25/strided_slice_1/stack?
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_1/stack_1?
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_1/stack_2?
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_25/strided_slice_1?
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_25/TensorArrayV2/element_shape?
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_25/TensorArrayV2?
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_25/TensorArrayUnstack/TensorListFromTensor?
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_25/strided_slice_2/stack?
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_2/stack_1?
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_2/stack_2?
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_25/strided_slice_2?
$lstm_25/lstm_cell_25/ones_like/ShapeShapelstm_25/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_25/lstm_cell_25/ones_like/Shape?
$lstm_25/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_25/lstm_cell_25/ones_like/Const?
lstm_25/lstm_cell_25/ones_likeFill-lstm_25/lstm_cell_25/ones_like/Shape:output:0-lstm_25/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/ones_like?
"lstm_25/lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm_25/lstm_cell_25/dropout/Const?
 lstm_25/lstm_cell_25/dropout/MulMul'lstm_25/lstm_cell_25/ones_like:output:0+lstm_25/lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/lstm_cell_25/dropout/Mul?
"lstm_25/lstm_cell_25/dropout/ShapeShape'lstm_25/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_25/lstm_cell_25/dropout/Shape?
9lstm_25/lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform+lstm_25/lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9lstm_25/lstm_cell_25/dropout/random_uniform/RandomUniform?
+lstm_25/lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_25/lstm_cell_25/dropout/GreaterEqual/y?
)lstm_25/lstm_cell_25/dropout/GreaterEqualGreaterEqualBlstm_25/lstm_cell_25/dropout/random_uniform/RandomUniform:output:04lstm_25/lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_25/lstm_cell_25/dropout/GreaterEqual?
!lstm_25/lstm_cell_25/dropout/CastCast-lstm_25/lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_25/lstm_cell_25/dropout/Cast?
"lstm_25/lstm_cell_25/dropout/Mul_1Mul$lstm_25/lstm_cell_25/dropout/Mul:z:0%lstm_25/lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/lstm_cell_25/dropout/Mul_1?
$lstm_25/lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_25/lstm_cell_25/dropout_1/Const?
"lstm_25/lstm_cell_25/dropout_1/MulMul'lstm_25/lstm_cell_25/ones_like:output:0-lstm_25/lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/lstm_cell_25/dropout_1/Mul?
$lstm_25/lstm_cell_25/dropout_1/ShapeShape'lstm_25/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_25/lstm_cell_25/dropout_1/Shape?
;lstm_25/lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_25/lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_25/lstm_cell_25/dropout_1/random_uniform/RandomUniform?
-lstm_25/lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_25/lstm_cell_25/dropout_1/GreaterEqual/y?
+lstm_25/lstm_cell_25/dropout_1/GreaterEqualGreaterEqualDlstm_25/lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:06lstm_25/lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_25/lstm_cell_25/dropout_1/GreaterEqual?
#lstm_25/lstm_cell_25/dropout_1/CastCast/lstm_25/lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_25/lstm_cell_25/dropout_1/Cast?
$lstm_25/lstm_cell_25/dropout_1/Mul_1Mul&lstm_25/lstm_cell_25/dropout_1/Mul:z:0'lstm_25/lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/lstm_cell_25/dropout_1/Mul_1?
$lstm_25/lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_25/lstm_cell_25/dropout_2/Const?
"lstm_25/lstm_cell_25/dropout_2/MulMul'lstm_25/lstm_cell_25/ones_like:output:0-lstm_25/lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/lstm_cell_25/dropout_2/Mul?
$lstm_25/lstm_cell_25/dropout_2/ShapeShape'lstm_25/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_25/lstm_cell_25/dropout_2/Shape?
;lstm_25/lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_25/lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_25/lstm_cell_25/dropout_2/random_uniform/RandomUniform?
-lstm_25/lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_25/lstm_cell_25/dropout_2/GreaterEqual/y?
+lstm_25/lstm_cell_25/dropout_2/GreaterEqualGreaterEqualDlstm_25/lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:06lstm_25/lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_25/lstm_cell_25/dropout_2/GreaterEqual?
#lstm_25/lstm_cell_25/dropout_2/CastCast/lstm_25/lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_25/lstm_cell_25/dropout_2/Cast?
$lstm_25/lstm_cell_25/dropout_2/Mul_1Mul&lstm_25/lstm_cell_25/dropout_2/Mul:z:0'lstm_25/lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/lstm_cell_25/dropout_2/Mul_1?
$lstm_25/lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_25/lstm_cell_25/dropout_3/Const?
"lstm_25/lstm_cell_25/dropout_3/MulMul'lstm_25/lstm_cell_25/ones_like:output:0-lstm_25/lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/lstm_cell_25/dropout_3/Mul?
$lstm_25/lstm_cell_25/dropout_3/ShapeShape'lstm_25/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_25/lstm_cell_25/dropout_3/Shape?
;lstm_25/lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_25/lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_25/lstm_cell_25/dropout_3/random_uniform/RandomUniform?
-lstm_25/lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_25/lstm_cell_25/dropout_3/GreaterEqual/y?
+lstm_25/lstm_cell_25/dropout_3/GreaterEqualGreaterEqualDlstm_25/lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:06lstm_25/lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_25/lstm_cell_25/dropout_3/GreaterEqual?
#lstm_25/lstm_cell_25/dropout_3/CastCast/lstm_25/lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_25/lstm_cell_25/dropout_3/Cast?
$lstm_25/lstm_cell_25/dropout_3/Mul_1Mul&lstm_25/lstm_cell_25/dropout_3/Mul:z:0'lstm_25/lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/lstm_cell_25/dropout_3/Mul_1?
$lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_25/lstm_cell_25/split/split_dim?
)lstm_25/lstm_cell_25/split/ReadVariableOpReadVariableOp2lstm_25_lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_25/lstm_cell_25/split/ReadVariableOp?
lstm_25/lstm_cell_25/splitSplit-lstm_25/lstm_cell_25/split/split_dim:output:01lstm_25/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_25/lstm_cell_25/split?
lstm_25/lstm_cell_25/MatMulMatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul?
lstm_25/lstm_cell_25/MatMul_1MatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_1?
lstm_25/lstm_cell_25/MatMul_2MatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_2?
lstm_25/lstm_cell_25/MatMul_3MatMul lstm_25/strided_slice_2:output:0#lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_3?
&lstm_25/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_25/lstm_cell_25/split_1/split_dim?
+lstm_25/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_25/lstm_cell_25/split_1/ReadVariableOp?
lstm_25/lstm_cell_25/split_1Split/lstm_25/lstm_cell_25/split_1/split_dim:output:03lstm_25/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_25/lstm_cell_25/split_1?
lstm_25/lstm_cell_25/BiasAddBiasAdd%lstm_25/lstm_cell_25/MatMul:product:0%lstm_25/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/BiasAdd?
lstm_25/lstm_cell_25/BiasAdd_1BiasAdd'lstm_25/lstm_cell_25/MatMul_1:product:0%lstm_25/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/BiasAdd_1?
lstm_25/lstm_cell_25/BiasAdd_2BiasAdd'lstm_25/lstm_cell_25/MatMul_2:product:0%lstm_25/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/BiasAdd_2?
lstm_25/lstm_cell_25/BiasAdd_3BiasAdd'lstm_25/lstm_cell_25/MatMul_3:product:0%lstm_25/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/BiasAdd_3?
lstm_25/lstm_cell_25/mulMullstm_25/zeros:output:0&lstm_25/lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul?
lstm_25/lstm_cell_25/mul_1Mullstm_25/zeros:output:0(lstm_25/lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_1?
lstm_25/lstm_cell_25/mul_2Mullstm_25/zeros:output:0(lstm_25/lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_2?
lstm_25/lstm_cell_25/mul_3Mullstm_25/zeros:output:0(lstm_25/lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_3?
#lstm_25/lstm_cell_25/ReadVariableOpReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_25/lstm_cell_25/ReadVariableOp?
(lstm_25/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_25/lstm_cell_25/strided_slice/stack?
*lstm_25/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_25/lstm_cell_25/strided_slice/stack_1?
*lstm_25/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_25/lstm_cell_25/strided_slice/stack_2?
"lstm_25/lstm_cell_25/strided_sliceStridedSlice+lstm_25/lstm_cell_25/ReadVariableOp:value:01lstm_25/lstm_cell_25/strided_slice/stack:output:03lstm_25/lstm_cell_25/strided_slice/stack_1:output:03lstm_25/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_25/lstm_cell_25/strided_slice?
lstm_25/lstm_cell_25/MatMul_4MatMullstm_25/lstm_cell_25/mul:z:0+lstm_25/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_4?
lstm_25/lstm_cell_25/addAddV2%lstm_25/lstm_cell_25/BiasAdd:output:0'lstm_25/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add?
lstm_25/lstm_cell_25/SigmoidSigmoidlstm_25/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/Sigmoid?
%lstm_25/lstm_cell_25/ReadVariableOp_1ReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_25/lstm_cell_25/ReadVariableOp_1?
*lstm_25/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_25/lstm_cell_25/strided_slice_1/stack?
,lstm_25/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_25/lstm_cell_25/strided_slice_1/stack_1?
,lstm_25/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_25/lstm_cell_25/strided_slice_1/stack_2?
$lstm_25/lstm_cell_25/strided_slice_1StridedSlice-lstm_25/lstm_cell_25/ReadVariableOp_1:value:03lstm_25/lstm_cell_25/strided_slice_1/stack:output:05lstm_25/lstm_cell_25/strided_slice_1/stack_1:output:05lstm_25/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_25/lstm_cell_25/strided_slice_1?
lstm_25/lstm_cell_25/MatMul_5MatMullstm_25/lstm_cell_25/mul_1:z:0-lstm_25/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_5?
lstm_25/lstm_cell_25/add_1AddV2'lstm_25/lstm_cell_25/BiasAdd_1:output:0'lstm_25/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_1?
lstm_25/lstm_cell_25/Sigmoid_1Sigmoidlstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/Sigmoid_1?
lstm_25/lstm_cell_25/mul_4Mul"lstm_25/lstm_cell_25/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_4?
%lstm_25/lstm_cell_25/ReadVariableOp_2ReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_25/lstm_cell_25/ReadVariableOp_2?
*lstm_25/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_25/lstm_cell_25/strided_slice_2/stack?
,lstm_25/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_25/lstm_cell_25/strided_slice_2/stack_1?
,lstm_25/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_25/lstm_cell_25/strided_slice_2/stack_2?
$lstm_25/lstm_cell_25/strided_slice_2StridedSlice-lstm_25/lstm_cell_25/ReadVariableOp_2:value:03lstm_25/lstm_cell_25/strided_slice_2/stack:output:05lstm_25/lstm_cell_25/strided_slice_2/stack_1:output:05lstm_25/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_25/lstm_cell_25/strided_slice_2?
lstm_25/lstm_cell_25/MatMul_6MatMullstm_25/lstm_cell_25/mul_2:z:0-lstm_25/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_6?
lstm_25/lstm_cell_25/add_2AddV2'lstm_25/lstm_cell_25/BiasAdd_2:output:0'lstm_25/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_2?
lstm_25/lstm_cell_25/ReluRelulstm_25/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/Relu?
lstm_25/lstm_cell_25/mul_5Mul lstm_25/lstm_cell_25/Sigmoid:y:0'lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_5?
lstm_25/lstm_cell_25/add_3AddV2lstm_25/lstm_cell_25/mul_4:z:0lstm_25/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_3?
%lstm_25/lstm_cell_25/ReadVariableOp_3ReadVariableOp,lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_25/lstm_cell_25/ReadVariableOp_3?
*lstm_25/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_25/lstm_cell_25/strided_slice_3/stack?
,lstm_25/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_25/lstm_cell_25/strided_slice_3/stack_1?
,lstm_25/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_25/lstm_cell_25/strided_slice_3/stack_2?
$lstm_25/lstm_cell_25/strided_slice_3StridedSlice-lstm_25/lstm_cell_25/ReadVariableOp_3:value:03lstm_25/lstm_cell_25/strided_slice_3/stack:output:05lstm_25/lstm_cell_25/strided_slice_3/stack_1:output:05lstm_25/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_25/lstm_cell_25/strided_slice_3?
lstm_25/lstm_cell_25/MatMul_7MatMullstm_25/lstm_cell_25/mul_3:z:0-lstm_25/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/MatMul_7?
lstm_25/lstm_cell_25/add_4AddV2'lstm_25/lstm_cell_25/BiasAdd_3:output:0'lstm_25/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/add_4?
lstm_25/lstm_cell_25/Sigmoid_2Sigmoidlstm_25/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/lstm_cell_25/Sigmoid_2?
lstm_25/lstm_cell_25/Relu_1Relulstm_25/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/Relu_1?
lstm_25/lstm_cell_25/mul_6Mul"lstm_25/lstm_cell_25/Sigmoid_2:y:0)lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_25/lstm_cell_25/mul_6?
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_25/TensorArrayV2_1/element_shape?
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_25/TensorArrayV2_1^
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/time?
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_25/while/maximum_iterationsz
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_25/while/loop_counter?
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_25_lstm_cell_25_split_readvariableop_resource4lstm_25_lstm_cell_25_split_1_readvariableop_resource,lstm_25_lstm_cell_25_readvariableop_resource*
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
lstm_25_while_body_924053*%
condR
lstm_25_while_cond_924052*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_25/while?
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_25/TensorArrayV2Stack/TensorListStack?
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_25/strided_slice_3/stack?
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_25/strided_slice_3/stack_1?
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_25/strided_slice_3/stack_2?
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_25/strided_slice_3?
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_25/transpose_1/perm?
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_25/transpose_1v
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_25/runtime?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul lstm_25/strided_slice_3:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_30/Relu?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAddm
reshape_15/ShapeShapedense_31/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_15/Shape?
reshape_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_15/strided_slice/stack?
 reshape_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_1?
 reshape_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_15/strided_slice/stack_2?
reshape_15/strided_sliceStridedSlicereshape_15/Shape:output:0'reshape_15/strided_slice/stack:output:0)reshape_15/strided_slice/stack_1:output:0)reshape_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_15/strided_slicez
reshape_15/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/1z
reshape_15/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_15/Reshape/shape/2?
reshape_15/Reshape/shapePack!reshape_15/strided_slice:output:0#reshape_15/Reshape/shape/1:output:0#reshape_15/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_15/Reshape/shape?
reshape_15/ReshapeReshapedense_31/BiasAdd:output:0!reshape_15/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_15/Reshape?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_25_lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/mul?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mulz
IdentityIdentityreshape_15/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp0^dense_31/bias/Regularizer/Square/ReadVariableOp$^lstm_25/lstm_cell_25/ReadVariableOp&^lstm_25/lstm_cell_25/ReadVariableOp_1&^lstm_25/lstm_cell_25/ReadVariableOp_2&^lstm_25/lstm_cell_25/ReadVariableOp_3>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp*^lstm_25/lstm_cell_25/split/ReadVariableOp,^lstm_25/lstm_cell_25/split_1/ReadVariableOp^lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp2J
#lstm_25/lstm_cell_25/ReadVariableOp#lstm_25/lstm_cell_25/ReadVariableOp2N
%lstm_25/lstm_cell_25/ReadVariableOp_1%lstm_25/lstm_cell_25/ReadVariableOp_12N
%lstm_25/lstm_cell_25/ReadVariableOp_2%lstm_25/lstm_cell_25/ReadVariableOp_22N
%lstm_25/lstm_cell_25/ReadVariableOp_3%lstm_25/lstm_cell_25/ReadVariableOp_32~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_25/lstm_cell_25/split/ReadVariableOp)lstm_25/lstm_cell_25/split/ReadVariableOp2Z
+lstm_25/lstm_cell_25/split_1/ReadVariableOp+lstm_25/lstm_cell_25/split_1/ReadVariableOp2
lstm_25/whilelstm_25/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_30_layer_call_and_return_conditional_losses_925445

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
?
!__inference__wrapped_model_921962
input_11S
@sequential_10_lstm_25_lstm_cell_25_split_readvariableop_resource:	?Q
Bsequential_10_lstm_25_lstm_cell_25_split_1_readvariableop_resource:	?M
:sequential_10_lstm_25_lstm_cell_25_readvariableop_resource:	 ?G
5sequential_10_dense_30_matmul_readvariableop_resource:  D
6sequential_10_dense_30_biasadd_readvariableop_resource: G
5sequential_10_dense_31_matmul_readvariableop_resource: D
6sequential_10_dense_31_biasadd_readvariableop_resource:
identity??-sequential_10/dense_30/BiasAdd/ReadVariableOp?,sequential_10/dense_30/MatMul/ReadVariableOp?-sequential_10/dense_31/BiasAdd/ReadVariableOp?,sequential_10/dense_31/MatMul/ReadVariableOp?1sequential_10/lstm_25/lstm_cell_25/ReadVariableOp?3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_1?3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_2?3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_3?7sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOp?9sequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOp?sequential_10/lstm_25/whiler
sequential_10/lstm_25/ShapeShapeinput_11*
T0*
_output_shapes
:2
sequential_10/lstm_25/Shape?
)sequential_10/lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_10/lstm_25/strided_slice/stack?
+sequential_10/lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_10/lstm_25/strided_slice/stack_1?
+sequential_10/lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_10/lstm_25/strided_slice/stack_2?
#sequential_10/lstm_25/strided_sliceStridedSlice$sequential_10/lstm_25/Shape:output:02sequential_10/lstm_25/strided_slice/stack:output:04sequential_10/lstm_25/strided_slice/stack_1:output:04sequential_10/lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_10/lstm_25/strided_slice?
!sequential_10/lstm_25/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_10/lstm_25/zeros/mul/y?
sequential_10/lstm_25/zeros/mulMul,sequential_10/lstm_25/strided_slice:output:0*sequential_10/lstm_25/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_10/lstm_25/zeros/mul?
"sequential_10/lstm_25/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_10/lstm_25/zeros/Less/y?
 sequential_10/lstm_25/zeros/LessLess#sequential_10/lstm_25/zeros/mul:z:0+sequential_10/lstm_25/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_10/lstm_25/zeros/Less?
$sequential_10/lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_10/lstm_25/zeros/packed/1?
"sequential_10/lstm_25/zeros/packedPack,sequential_10/lstm_25/strided_slice:output:0-sequential_10/lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_10/lstm_25/zeros/packed?
!sequential_10/lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_10/lstm_25/zeros/Const?
sequential_10/lstm_25/zerosFill+sequential_10/lstm_25/zeros/packed:output:0*sequential_10/lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_10/lstm_25/zeros?
#sequential_10/lstm_25/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_10/lstm_25/zeros_1/mul/y?
!sequential_10/lstm_25/zeros_1/mulMul,sequential_10/lstm_25/strided_slice:output:0,sequential_10/lstm_25/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_10/lstm_25/zeros_1/mul?
$sequential_10/lstm_25/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_10/lstm_25/zeros_1/Less/y?
"sequential_10/lstm_25/zeros_1/LessLess%sequential_10/lstm_25/zeros_1/mul:z:0-sequential_10/lstm_25/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_10/lstm_25/zeros_1/Less?
&sequential_10/lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_10/lstm_25/zeros_1/packed/1?
$sequential_10/lstm_25/zeros_1/packedPack,sequential_10/lstm_25/strided_slice:output:0/sequential_10/lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_10/lstm_25/zeros_1/packed?
#sequential_10/lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_10/lstm_25/zeros_1/Const?
sequential_10/lstm_25/zeros_1Fill-sequential_10/lstm_25/zeros_1/packed:output:0,sequential_10/lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_10/lstm_25/zeros_1?
$sequential_10/lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_10/lstm_25/transpose/perm?
sequential_10/lstm_25/transpose	Transposeinput_11-sequential_10/lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_10/lstm_25/transpose?
sequential_10/lstm_25/Shape_1Shape#sequential_10/lstm_25/transpose:y:0*
T0*
_output_shapes
:2
sequential_10/lstm_25/Shape_1?
+sequential_10/lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/lstm_25/strided_slice_1/stack?
-sequential_10/lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_25/strided_slice_1/stack_1?
-sequential_10/lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_25/strided_slice_1/stack_2?
%sequential_10/lstm_25/strided_slice_1StridedSlice&sequential_10/lstm_25/Shape_1:output:04sequential_10/lstm_25/strided_slice_1/stack:output:06sequential_10/lstm_25/strided_slice_1/stack_1:output:06sequential_10/lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_10/lstm_25/strided_slice_1?
1sequential_10/lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_10/lstm_25/TensorArrayV2/element_shape?
#sequential_10/lstm_25/TensorArrayV2TensorListReserve:sequential_10/lstm_25/TensorArrayV2/element_shape:output:0.sequential_10/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_10/lstm_25/TensorArrayV2?
Ksequential_10/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_10/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_10/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_25/transpose:y:0Tsequential_10/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_10/lstm_25/TensorArrayUnstack/TensorListFromTensor?
+sequential_10/lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/lstm_25/strided_slice_2/stack?
-sequential_10/lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_25/strided_slice_2/stack_1?
-sequential_10/lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_25/strided_slice_2/stack_2?
%sequential_10/lstm_25/strided_slice_2StridedSlice#sequential_10/lstm_25/transpose:y:04sequential_10/lstm_25/strided_slice_2/stack:output:06sequential_10/lstm_25/strided_slice_2/stack_1:output:06sequential_10/lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_10/lstm_25/strided_slice_2?
2sequential_10/lstm_25/lstm_cell_25/ones_like/ShapeShape$sequential_10/lstm_25/zeros:output:0*
T0*
_output_shapes
:24
2sequential_10/lstm_25/lstm_cell_25/ones_like/Shape?
2sequential_10/lstm_25/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential_10/lstm_25/lstm_cell_25/ones_like/Const?
,sequential_10/lstm_25/lstm_cell_25/ones_likeFill;sequential_10/lstm_25/lstm_cell_25/ones_like/Shape:output:0;sequential_10/lstm_25/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/lstm_cell_25/ones_like?
2sequential_10/lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_10/lstm_25/lstm_cell_25/split/split_dim?
7sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOpReadVariableOp@sequential_10_lstm_25_lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOp?
(sequential_10/lstm_25/lstm_cell_25/splitSplit;sequential_10/lstm_25/lstm_cell_25/split/split_dim:output:0?sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_10/lstm_25/lstm_cell_25/split?
)sequential_10/lstm_25/lstm_cell_25/MatMulMatMul.sequential_10/lstm_25/strided_slice_2:output:01sequential_10/lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_10/lstm_25/lstm_cell_25/MatMul?
+sequential_10/lstm_25/lstm_cell_25/MatMul_1MatMul.sequential_10/lstm_25/strided_slice_2:output:01sequential_10/lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_1?
+sequential_10/lstm_25/lstm_cell_25/MatMul_2MatMul.sequential_10/lstm_25/strided_slice_2:output:01sequential_10/lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_2?
+sequential_10/lstm_25/lstm_cell_25/MatMul_3MatMul.sequential_10/lstm_25/strided_slice_2:output:01sequential_10/lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_3?
4sequential_10/lstm_25/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_10/lstm_25/lstm_cell_25/split_1/split_dim?
9sequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOpReadVariableOpBsequential_10_lstm_25_lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOp?
*sequential_10/lstm_25/lstm_cell_25/split_1Split=sequential_10/lstm_25/lstm_cell_25/split_1/split_dim:output:0Asequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_10/lstm_25/lstm_cell_25/split_1?
*sequential_10/lstm_25/lstm_cell_25/BiasAddBiasAdd3sequential_10/lstm_25/lstm_cell_25/MatMul:product:03sequential_10/lstm_25/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_10/lstm_25/lstm_cell_25/BiasAdd?
,sequential_10/lstm_25/lstm_cell_25/BiasAdd_1BiasAdd5sequential_10/lstm_25/lstm_cell_25/MatMul_1:product:03sequential_10/lstm_25/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/lstm_cell_25/BiasAdd_1?
,sequential_10/lstm_25/lstm_cell_25/BiasAdd_2BiasAdd5sequential_10/lstm_25/lstm_cell_25/MatMul_2:product:03sequential_10/lstm_25/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/lstm_cell_25/BiasAdd_2?
,sequential_10/lstm_25/lstm_cell_25/BiasAdd_3BiasAdd5sequential_10/lstm_25/lstm_cell_25/MatMul_3:product:03sequential_10/lstm_25/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/lstm_cell_25/BiasAdd_3?
&sequential_10/lstm_25/lstm_cell_25/mulMul$sequential_10/lstm_25/zeros:output:05sequential_10/lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_10/lstm_25/lstm_cell_25/mul?
(sequential_10/lstm_25/lstm_cell_25/mul_1Mul$sequential_10/lstm_25/zeros:output:05sequential_10/lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/mul_1?
(sequential_10/lstm_25/lstm_cell_25/mul_2Mul$sequential_10/lstm_25/zeros:output:05sequential_10/lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/mul_2?
(sequential_10/lstm_25/lstm_cell_25/mul_3Mul$sequential_10/lstm_25/zeros:output:05sequential_10/lstm_25/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/mul_3?
1sequential_10/lstm_25/lstm_cell_25/ReadVariableOpReadVariableOp:sequential_10_lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1sequential_10/lstm_25/lstm_cell_25/ReadVariableOp?
6sequential_10/lstm_25/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_10/lstm_25/lstm_cell_25/strided_slice/stack?
8sequential_10/lstm_25/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_10/lstm_25/lstm_cell_25/strided_slice/stack_1?
8sequential_10/lstm_25/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_10/lstm_25/lstm_cell_25/strided_slice/stack_2?
0sequential_10/lstm_25/lstm_cell_25/strided_sliceStridedSlice9sequential_10/lstm_25/lstm_cell_25/ReadVariableOp:value:0?sequential_10/lstm_25/lstm_cell_25/strided_slice/stack:output:0Asequential_10/lstm_25/lstm_cell_25/strided_slice/stack_1:output:0Asequential_10/lstm_25/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_10/lstm_25/lstm_cell_25/strided_slice?
+sequential_10/lstm_25/lstm_cell_25/MatMul_4MatMul*sequential_10/lstm_25/lstm_cell_25/mul:z:09sequential_10/lstm_25/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_4?
&sequential_10/lstm_25/lstm_cell_25/addAddV23sequential_10/lstm_25/lstm_cell_25/BiasAdd:output:05sequential_10/lstm_25/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2(
&sequential_10/lstm_25/lstm_cell_25/add?
*sequential_10/lstm_25/lstm_cell_25/SigmoidSigmoid*sequential_10/lstm_25/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_10/lstm_25/lstm_cell_25/Sigmoid?
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_1ReadVariableOp:sequential_10_lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_1?
8sequential_10/lstm_25/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack?
:sequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack_1?
:sequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack_2?
2sequential_10/lstm_25/lstm_cell_25/strided_slice_1StridedSlice;sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_1:value:0Asequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack:output:0Csequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack_1:output:0Csequential_10/lstm_25/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_10/lstm_25/lstm_cell_25/strided_slice_1?
+sequential_10/lstm_25/lstm_cell_25/MatMul_5MatMul,sequential_10/lstm_25/lstm_cell_25/mul_1:z:0;sequential_10/lstm_25/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_5?
(sequential_10/lstm_25/lstm_cell_25/add_1AddV25sequential_10/lstm_25/lstm_cell_25/BiasAdd_1:output:05sequential_10/lstm_25/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/add_1?
,sequential_10/lstm_25/lstm_cell_25/Sigmoid_1Sigmoid,sequential_10/lstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/lstm_cell_25/Sigmoid_1?
(sequential_10/lstm_25/lstm_cell_25/mul_4Mul0sequential_10/lstm_25/lstm_cell_25/Sigmoid_1:y:0&sequential_10/lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/mul_4?
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_2ReadVariableOp:sequential_10_lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_2?
8sequential_10/lstm_25/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack?
:sequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack_1?
:sequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack_2?
2sequential_10/lstm_25/lstm_cell_25/strided_slice_2StridedSlice;sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_2:value:0Asequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack:output:0Csequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack_1:output:0Csequential_10/lstm_25/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_10/lstm_25/lstm_cell_25/strided_slice_2?
+sequential_10/lstm_25/lstm_cell_25/MatMul_6MatMul,sequential_10/lstm_25/lstm_cell_25/mul_2:z:0;sequential_10/lstm_25/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_6?
(sequential_10/lstm_25/lstm_cell_25/add_2AddV25sequential_10/lstm_25/lstm_cell_25/BiasAdd_2:output:05sequential_10/lstm_25/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/add_2?
'sequential_10/lstm_25/lstm_cell_25/ReluRelu,sequential_10/lstm_25/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_10/lstm_25/lstm_cell_25/Relu?
(sequential_10/lstm_25/lstm_cell_25/mul_5Mul.sequential_10/lstm_25/lstm_cell_25/Sigmoid:y:05sequential_10/lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/mul_5?
(sequential_10/lstm_25/lstm_cell_25/add_3AddV2,sequential_10/lstm_25/lstm_cell_25/mul_4:z:0,sequential_10/lstm_25/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/add_3?
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_3ReadVariableOp:sequential_10_lstm_25_lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_3?
8sequential_10/lstm_25/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack?
:sequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack_1?
:sequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack_2?
2sequential_10/lstm_25/lstm_cell_25/strided_slice_3StridedSlice;sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_3:value:0Asequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack:output:0Csequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack_1:output:0Csequential_10/lstm_25/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_10/lstm_25/lstm_cell_25/strided_slice_3?
+sequential_10/lstm_25/lstm_cell_25/MatMul_7MatMul,sequential_10/lstm_25/lstm_cell_25/mul_3:z:0;sequential_10/lstm_25/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_10/lstm_25/lstm_cell_25/MatMul_7?
(sequential_10/lstm_25/lstm_cell_25/add_4AddV25sequential_10/lstm_25/lstm_cell_25/BiasAdd_3:output:05sequential_10/lstm_25/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/add_4?
,sequential_10/lstm_25/lstm_cell_25/Sigmoid_2Sigmoid,sequential_10/lstm_25/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/lstm_cell_25/Sigmoid_2?
)sequential_10/lstm_25/lstm_cell_25/Relu_1Relu,sequential_10/lstm_25/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_10/lstm_25/lstm_cell_25/Relu_1?
(sequential_10/lstm_25/lstm_cell_25/mul_6Mul0sequential_10/lstm_25/lstm_cell_25/Sigmoid_2:y:07sequential_10/lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_10/lstm_25/lstm_cell_25/mul_6?
3sequential_10/lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    25
3sequential_10/lstm_25/TensorArrayV2_1/element_shape?
%sequential_10/lstm_25/TensorArrayV2_1TensorListReserve<sequential_10/lstm_25/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_10/lstm_25/TensorArrayV2_1z
sequential_10/lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_10/lstm_25/time?
.sequential_10/lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_10/lstm_25/while/maximum_iterations?
(sequential_10/lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/lstm_25/while/loop_counter?
sequential_10/lstm_25/whileWhile1sequential_10/lstm_25/while/loop_counter:output:07sequential_10/lstm_25/while/maximum_iterations:output:0#sequential_10/lstm_25/time:output:0.sequential_10/lstm_25/TensorArrayV2_1:handle:0$sequential_10/lstm_25/zeros:output:0&sequential_10/lstm_25/zeros_1:output:0.sequential_10/lstm_25/strided_slice_1:output:0Msequential_10/lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_10_lstm_25_lstm_cell_25_split_readvariableop_resourceBsequential_10_lstm_25_lstm_cell_25_split_1_readvariableop_resource:sequential_10_lstm_25_lstm_cell_25_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_10_lstm_25_while_body_921813*3
cond+R)
'sequential_10_lstm_25_while_cond_921812*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_10/lstm_25/while?
Fsequential_10/lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fsequential_10/lstm_25/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_10/lstm_25/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_25/while:output:3Osequential_10/lstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02:
8sequential_10/lstm_25/TensorArrayV2Stack/TensorListStack?
+sequential_10/lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_10/lstm_25/strided_slice_3/stack?
-sequential_10/lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_10/lstm_25/strided_slice_3/stack_1?
-sequential_10/lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_25/strided_slice_3/stack_2?
%sequential_10/lstm_25/strided_slice_3StridedSliceAsequential_10/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_25/strided_slice_3/stack:output:06sequential_10/lstm_25/strided_slice_3/stack_1:output:06sequential_10/lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2'
%sequential_10/lstm_25/strided_slice_3?
&sequential_10/lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_10/lstm_25/transpose_1/perm?
!sequential_10/lstm_25/transpose_1	TransposeAsequential_10/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2#
!sequential_10/lstm_25/transpose_1?
sequential_10/lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_10/lstm_25/runtime?
,sequential_10/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_30_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_10/dense_30/MatMul/ReadVariableOp?
sequential_10/dense_30/MatMulMatMul.sequential_10/lstm_25/strided_slice_3:output:04sequential_10/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_10/dense_30/MatMul?
-sequential_10/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_30_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_10/dense_30/BiasAdd/ReadVariableOp?
sequential_10/dense_30/BiasAddBiasAdd'sequential_10/dense_30/MatMul:product:05sequential_10/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_10/dense_30/BiasAdd?
sequential_10/dense_30/ReluRelu'sequential_10/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_10/dense_30/Relu?
,sequential_10/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_31_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_10/dense_31/MatMul/ReadVariableOp?
sequential_10/dense_31/MatMulMatMul)sequential_10/dense_30/Relu:activations:04sequential_10/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_10/dense_31/MatMul?
-sequential_10/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_10/dense_31/BiasAdd/ReadVariableOp?
sequential_10/dense_31/BiasAddBiasAdd'sequential_10/dense_31/MatMul:product:05sequential_10/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_10/dense_31/BiasAdd?
sequential_10/reshape_15/ShapeShape'sequential_10/dense_31/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_10/reshape_15/Shape?
,sequential_10/reshape_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_10/reshape_15/strided_slice/stack?
.sequential_10/reshape_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_10/reshape_15/strided_slice/stack_1?
.sequential_10/reshape_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_10/reshape_15/strided_slice/stack_2?
&sequential_10/reshape_15/strided_sliceStridedSlice'sequential_10/reshape_15/Shape:output:05sequential_10/reshape_15/strided_slice/stack:output:07sequential_10/reshape_15/strided_slice/stack_1:output:07sequential_10/reshape_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_10/reshape_15/strided_slice?
(sequential_10/reshape_15/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_10/reshape_15/Reshape/shape/1?
(sequential_10/reshape_15/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_10/reshape_15/Reshape/shape/2?
&sequential_10/reshape_15/Reshape/shapePack/sequential_10/reshape_15/strided_slice:output:01sequential_10/reshape_15/Reshape/shape/1:output:01sequential_10/reshape_15/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_10/reshape_15/Reshape/shape?
 sequential_10/reshape_15/ReshapeReshape'sequential_10/dense_31/BiasAdd:output:0/sequential_10/reshape_15/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_10/reshape_15/Reshape?
IdentityIdentity)sequential_10/reshape_15/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp.^sequential_10/dense_30/BiasAdd/ReadVariableOp-^sequential_10/dense_30/MatMul/ReadVariableOp.^sequential_10/dense_31/BiasAdd/ReadVariableOp-^sequential_10/dense_31/MatMul/ReadVariableOp2^sequential_10/lstm_25/lstm_cell_25/ReadVariableOp4^sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_14^sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_24^sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_38^sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOp:^sequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOp^sequential_10/lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2^
-sequential_10/dense_30/BiasAdd/ReadVariableOp-sequential_10/dense_30/BiasAdd/ReadVariableOp2\
,sequential_10/dense_30/MatMul/ReadVariableOp,sequential_10/dense_30/MatMul/ReadVariableOp2^
-sequential_10/dense_31/BiasAdd/ReadVariableOp-sequential_10/dense_31/BiasAdd/ReadVariableOp2\
,sequential_10/dense_31/MatMul/ReadVariableOp,sequential_10/dense_31/MatMul/ReadVariableOp2f
1sequential_10/lstm_25/lstm_cell_25/ReadVariableOp1sequential_10/lstm_25/lstm_cell_25/ReadVariableOp2j
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_13sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_12j
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_23sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_22j
3sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_33sequential_10/lstm_25/lstm_cell_25/ReadVariableOp_32r
7sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOp7sequential_10/lstm_25/lstm_cell_25/split/ReadVariableOp2v
9sequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOp9sequential_10/lstm_25/lstm_cell_25/split_1/ReadVariableOp2:
sequential_10/lstm_25/whilesequential_10/lstm_25/while:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_11
?
?
D__inference_dense_30_layer_call_and_return_conditional_losses_923014

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
?
C__inference_lstm_25_layer_call_and_return_conditional_losses_924533
inputs_0=
*lstm_cell_25_split_readvariableop_resource:	?;
,lstm_cell_25_split_1_readvariableop_resource:	?7
$lstm_cell_25_readvariableop_resource:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_25/ReadVariableOp?lstm_cell_25/ReadVariableOp_1?lstm_cell_25/ReadVariableOp_2?lstm_cell_25/ReadVariableOp_3?!lstm_cell_25/split/ReadVariableOp?#lstm_cell_25/split_1/ReadVariableOp?whileF
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
lstm_cell_25/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_25/ones_like/Shape?
lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_25/ones_like/Const?
lstm_cell_25/ones_likeFill%lstm_cell_25/ones_like/Shape:output:0%lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/ones_like~
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_25/split/split_dim?
!lstm_cell_25/split/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_25/split/ReadVariableOp?
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0)lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_25/split?
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul?
lstm_cell_25/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_1?
lstm_cell_25/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_2?
lstm_cell_25/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_3?
lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_25/split_1/split_dim?
#lstm_cell_25/split_1/ReadVariableOpReadVariableOp,lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_25/split_1/ReadVariableOp?
lstm_cell_25/split_1Split'lstm_cell_25/split_1/split_dim:output:0+lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_25/split_1?
lstm_cell_25/BiasAddBiasAddlstm_cell_25/MatMul:product:0lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd?
lstm_cell_25/BiasAdd_1BiasAddlstm_cell_25/MatMul_1:product:0lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_1?
lstm_cell_25/BiasAdd_2BiasAddlstm_cell_25/MatMul_2:product:0lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_2?
lstm_cell_25/BiasAdd_3BiasAddlstm_cell_25/MatMul_3:product:0lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_3?
lstm_cell_25/mulMulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul?
lstm_cell_25/mul_1Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_1?
lstm_cell_25/mul_2Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_2?
lstm_cell_25/mul_3Mulzeros:output:0lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_3?
lstm_cell_25/ReadVariableOpReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp?
 lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_25/strided_slice/stack?
"lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice/stack_1?
"lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_25/strided_slice/stack_2?
lstm_cell_25/strided_sliceStridedSlice#lstm_cell_25/ReadVariableOp:value:0)lstm_cell_25/strided_slice/stack:output:0+lstm_cell_25/strided_slice/stack_1:output:0+lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice?
lstm_cell_25/MatMul_4MatMullstm_cell_25/mul:z:0#lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_4?
lstm_cell_25/addAddV2lstm_cell_25/BiasAdd:output:0lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add
lstm_cell_25/SigmoidSigmoidlstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid?
lstm_cell_25/ReadVariableOp_1ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_1?
"lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice_1/stack?
$lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_25/strided_slice_1/stack_1?
$lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_1/stack_2?
lstm_cell_25/strided_slice_1StridedSlice%lstm_cell_25/ReadVariableOp_1:value:0+lstm_cell_25/strided_slice_1/stack:output:0-lstm_cell_25/strided_slice_1/stack_1:output:0-lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_1?
lstm_cell_25/MatMul_5MatMullstm_cell_25/mul_1:z:0%lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_5?
lstm_cell_25/add_1AddV2lstm_cell_25/BiasAdd_1:output:0lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_1?
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_1?
lstm_cell_25/mul_4Mullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_4?
lstm_cell_25/ReadVariableOp_2ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_2?
"lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_25/strided_slice_2/stack?
$lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_25/strided_slice_2/stack_1?
$lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_2/stack_2?
lstm_cell_25/strided_slice_2StridedSlice%lstm_cell_25/ReadVariableOp_2:value:0+lstm_cell_25/strided_slice_2/stack:output:0-lstm_cell_25/strided_slice_2/stack_1:output:0-lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_2?
lstm_cell_25/MatMul_6MatMullstm_cell_25/mul_2:z:0%lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_6?
lstm_cell_25/add_2AddV2lstm_cell_25/BiasAdd_2:output:0lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_2x
lstm_cell_25/ReluRelulstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu?
lstm_cell_25/mul_5Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_5?
lstm_cell_25/add_3AddV2lstm_cell_25/mul_4:z:0lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_3?
lstm_cell_25/ReadVariableOp_3ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_3?
"lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_25/strided_slice_3/stack?
$lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_25/strided_slice_3/stack_1?
$lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_3/stack_2?
lstm_cell_25/strided_slice_3StridedSlice%lstm_cell_25/ReadVariableOp_3:value:0+lstm_cell_25/strided_slice_3/stack:output:0-lstm_cell_25/strided_slice_3/stack_1:output:0-lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_3?
lstm_cell_25/MatMul_7MatMullstm_cell_25/mul_3:z:0%lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_7?
lstm_cell_25/add_4AddV2lstm_cell_25/BiasAdd_3:output:0lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_4?
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_2|
lstm_cell_25/Relu_1Relulstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu_1?
lstm_cell_25/mul_6Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_25_split_readvariableop_resource,lstm_cell_25_split_1_readvariableop_resource$lstm_cell_25_readvariableop_resource*
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
while_body_924400*
condR
while_cond_924399*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_25/ReadVariableOp^lstm_cell_25/ReadVariableOp_1^lstm_cell_25/ReadVariableOp_2^lstm_cell_25/ReadVariableOp_3"^lstm_cell_25/split/ReadVariableOp$^lstm_cell_25/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_25/ReadVariableOplstm_cell_25/ReadVariableOp2>
lstm_cell_25/ReadVariableOp_1lstm_cell_25/ReadVariableOp_12>
lstm_cell_25/ReadVariableOp_2lstm_cell_25/ReadVariableOp_22>
lstm_cell_25/ReadVariableOp_3lstm_cell_25/ReadVariableOp_32F
!lstm_cell_25/split/ReadVariableOp!lstm_cell_25/split/ReadVariableOp2J
#lstm_cell_25/split_1/ReadVariableOp#lstm_cell_25/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_dense_31_layer_call_fn_925485

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
D__inference_dense_31_layer_call_and_return_conditional_losses_9230362
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
?R
?
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_925601

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2,
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
lstm_25_while_cond_923749,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1D
@lstm_25_while_lstm_25_while_cond_923749___redundant_placeholder0D
@lstm_25_while_lstm_25_while_cond_923749___redundant_placeholder1D
@lstm_25_while_lstm_25_while_cond_923749___redundant_placeholder2D
@lstm_25_while_lstm_25_while_cond_923749___redundant_placeholder3
lstm_25_while_identity
?
lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: 2
lstm_25/while/Lessu
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_25/while/Identity"9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
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
-__inference_lstm_cell_25_layer_call_fn_925748

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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_9223192
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
??
?
'sequential_10_lstm_25_while_body_921813H
Dsequential_10_lstm_25_while_sequential_10_lstm_25_while_loop_counterN
Jsequential_10_lstm_25_while_sequential_10_lstm_25_while_maximum_iterations+
'sequential_10_lstm_25_while_placeholder-
)sequential_10_lstm_25_while_placeholder_1-
)sequential_10_lstm_25_while_placeholder_2-
)sequential_10_lstm_25_while_placeholder_3G
Csequential_10_lstm_25_while_sequential_10_lstm_25_strided_slice_1_0?
sequential_10_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_25_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_10_lstm_25_while_lstm_cell_25_split_readvariableop_resource_0:	?Y
Jsequential_10_lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0:	?U
Bsequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource_0:	 ?(
$sequential_10_lstm_25_while_identity*
&sequential_10_lstm_25_while_identity_1*
&sequential_10_lstm_25_while_identity_2*
&sequential_10_lstm_25_while_identity_3*
&sequential_10_lstm_25_while_identity_4*
&sequential_10_lstm_25_while_identity_5E
Asequential_10_lstm_25_while_sequential_10_lstm_25_strided_slice_1?
}sequential_10_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_25_tensorarrayunstack_tensorlistfromtensorY
Fsequential_10_lstm_25_while_lstm_cell_25_split_readvariableop_resource:	?W
Hsequential_10_lstm_25_while_lstm_cell_25_split_1_readvariableop_resource:	?S
@sequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource:	 ???7sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp?9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_1?9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_2?9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_3?=sequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOp??sequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?
Msequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_25_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_25_while_placeholderVsequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem?
8sequential_10/lstm_25/while/lstm_cell_25/ones_like/ShapeShape)sequential_10_lstm_25_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_10/lstm_25/while/lstm_cell_25/ones_like/Shape?
8sequential_10/lstm_25/while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8sequential_10/lstm_25/while/lstm_cell_25/ones_like/Const?
2sequential_10/lstm_25/while/lstm_cell_25/ones_likeFillAsequential_10/lstm_25/while/lstm_cell_25/ones_like/Shape:output:0Asequential_10/lstm_25/while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_10/lstm_25/while/lstm_cell_25/ones_like?
8sequential_10/lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/lstm_25/while/lstm_cell_25/split/split_dim?
=sequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOpReadVariableOpHsequential_10_lstm_25_while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOp?
.sequential_10/lstm_25/while/lstm_cell_25/splitSplitAsequential_10/lstm_25/while/lstm_cell_25/split/split_dim:output:0Esequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_10/lstm_25/while/lstm_cell_25/split?
/sequential_10/lstm_25/while/lstm_cell_25/MatMulMatMulFsequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_10/lstm_25/while/lstm_cell_25/MatMul?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_1MatMulFsequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_1?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_2MatMulFsequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_2?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_3MatMulFsequential_10/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_3?
:sequential_10/lstm_25/while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_10/lstm_25/while/lstm_cell_25/split_1/split_dim?
?sequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOpReadVariableOpJsequential_10_lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?
0sequential_10/lstm_25/while/lstm_cell_25/split_1SplitCsequential_10/lstm_25/while/lstm_cell_25/split_1/split_dim:output:0Gsequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_10/lstm_25/while/lstm_cell_25/split_1?
0sequential_10/lstm_25/while/lstm_cell_25/BiasAddBiasAdd9sequential_10/lstm_25/while/lstm_cell_25/MatMul:product:09sequential_10/lstm_25/while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_10/lstm_25/while/lstm_cell_25/BiasAdd?
2sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_1BiasAdd;sequential_10/lstm_25/while/lstm_cell_25/MatMul_1:product:09sequential_10/lstm_25/while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 24
2sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_1?
2sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_2BiasAdd;sequential_10/lstm_25/while/lstm_cell_25/MatMul_2:product:09sequential_10/lstm_25/while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 24
2sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_2?
2sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_3BiasAdd;sequential_10/lstm_25/while/lstm_cell_25/MatMul_3:product:09sequential_10/lstm_25/while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 24
2sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_3?
,sequential_10/lstm_25/while/lstm_cell_25/mulMul)sequential_10_lstm_25_while_placeholder_2;sequential_10/lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/while/lstm_cell_25/mul?
.sequential_10/lstm_25/while/lstm_cell_25/mul_1Mul)sequential_10_lstm_25_while_placeholder_2;sequential_10/lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/mul_1?
.sequential_10/lstm_25/while/lstm_cell_25/mul_2Mul)sequential_10_lstm_25_while_placeholder_2;sequential_10/lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/mul_2?
.sequential_10/lstm_25/while/lstm_cell_25/mul_3Mul)sequential_10_lstm_25_while_placeholder_2;sequential_10/lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/mul_3?
7sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOpReadVariableOpBsequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype029
7sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp?
<sequential_10/lstm_25/while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack?
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack_1?
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack_2?
6sequential_10/lstm_25/while/lstm_cell_25/strided_sliceStridedSlice?sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp:value:0Esequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack:output:0Gsequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack_1:output:0Gsequential_10/lstm_25/while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_10/lstm_25/while/lstm_cell_25/strided_slice?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_4MatMul0sequential_10/lstm_25/while/lstm_cell_25/mul:z:0?sequential_10/lstm_25/while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_4?
,sequential_10/lstm_25/while/lstm_cell_25/addAddV29sequential_10/lstm_25/while/lstm_cell_25/BiasAdd:output:0;sequential_10/lstm_25/while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2.
,sequential_10/lstm_25/while/lstm_cell_25/add?
0sequential_10/lstm_25/while/lstm_cell_25/SigmoidSigmoid0sequential_10/lstm_25/while/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_10/lstm_25/while/lstm_cell_25/Sigmoid?
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_1ReadVariableOpBsequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_1?
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack?
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack_1?
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack_2?
8sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1StridedSliceAsequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_1:value:0Gsequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack:output:0Isequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack_1:output:0Isequential_10/lstm_25/while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_10/lstm_25/while/lstm_cell_25/strided_slice_1?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_5MatMul2sequential_10/lstm_25/while/lstm_cell_25/mul_1:z:0Asequential_10/lstm_25/while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_5?
.sequential_10/lstm_25/while/lstm_cell_25/add_1AddV2;sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_1:output:0;sequential_10/lstm_25/while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/add_1?
2sequential_10/lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid2sequential_10/lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_10/lstm_25/while/lstm_cell_25/Sigmoid_1?
.sequential_10/lstm_25/while/lstm_cell_25/mul_4Mul6sequential_10/lstm_25/while/lstm_cell_25/Sigmoid_1:y:0)sequential_10_lstm_25_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/mul_4?
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_2ReadVariableOpBsequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_2?
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack?
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack_1?
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack_2?
8sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2StridedSliceAsequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_2:value:0Gsequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack:output:0Isequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack_1:output:0Isequential_10/lstm_25/while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_10/lstm_25/while/lstm_cell_25/strided_slice_2?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_6MatMul2sequential_10/lstm_25/while/lstm_cell_25/mul_2:z:0Asequential_10/lstm_25/while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_6?
.sequential_10/lstm_25/while/lstm_cell_25/add_2AddV2;sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_2:output:0;sequential_10/lstm_25/while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/add_2?
-sequential_10/lstm_25/while/lstm_cell_25/ReluRelu2sequential_10/lstm_25/while/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_10/lstm_25/while/lstm_cell_25/Relu?
.sequential_10/lstm_25/while/lstm_cell_25/mul_5Mul4sequential_10/lstm_25/while/lstm_cell_25/Sigmoid:y:0;sequential_10/lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/mul_5?
.sequential_10/lstm_25/while/lstm_cell_25/add_3AddV22sequential_10/lstm_25/while/lstm_cell_25/mul_4:z:02sequential_10/lstm_25/while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/add_3?
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_3ReadVariableOpBsequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_3?
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack?
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack_1?
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack_2?
8sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3StridedSliceAsequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_3:value:0Gsequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack:output:0Isequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack_1:output:0Isequential_10/lstm_25/while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_10/lstm_25/while/lstm_cell_25/strided_slice_3?
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_7MatMul2sequential_10/lstm_25/while/lstm_cell_25/mul_3:z:0Asequential_10/lstm_25/while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_10/lstm_25/while/lstm_cell_25/MatMul_7?
.sequential_10/lstm_25/while/lstm_cell_25/add_4AddV2;sequential_10/lstm_25/while/lstm_cell_25/BiasAdd_3:output:0;sequential_10/lstm_25/while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/add_4?
2sequential_10/lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid2sequential_10/lstm_25/while/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_10/lstm_25/while/lstm_cell_25/Sigmoid_2?
/sequential_10/lstm_25/while/lstm_cell_25/Relu_1Relu2sequential_10/lstm_25/while/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_10/lstm_25/while/lstm_cell_25/Relu_1?
.sequential_10/lstm_25/while/lstm_cell_25/mul_6Mul6sequential_10/lstm_25/while/lstm_cell_25/Sigmoid_2:y:0=sequential_10/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_10/lstm_25/while/lstm_cell_25/mul_6?
@sequential_10/lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_25_while_placeholder_1'sequential_10_lstm_25_while_placeholder2sequential_10/lstm_25/while/lstm_cell_25/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_10/lstm_25/while/TensorArrayV2Write/TensorListSetItem?
!sequential_10/lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_10/lstm_25/while/add/y?
sequential_10/lstm_25/while/addAddV2'sequential_10_lstm_25_while_placeholder*sequential_10/lstm_25/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_10/lstm_25/while/add?
#sequential_10/lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_10/lstm_25/while/add_1/y?
!sequential_10/lstm_25/while/add_1AddV2Dsequential_10_lstm_25_while_sequential_10_lstm_25_while_loop_counter,sequential_10/lstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_10/lstm_25/while/add_1?
$sequential_10/lstm_25/while/IdentityIdentity%sequential_10/lstm_25/while/add_1:z:0!^sequential_10/lstm_25/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_10/lstm_25/while/Identity?
&sequential_10/lstm_25/while/Identity_1IdentityJsequential_10_lstm_25_while_sequential_10_lstm_25_while_maximum_iterations!^sequential_10/lstm_25/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_25/while/Identity_1?
&sequential_10/lstm_25/while/Identity_2Identity#sequential_10/lstm_25/while/add:z:0!^sequential_10/lstm_25/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_25/while/Identity_2?
&sequential_10/lstm_25/while/Identity_3IdentityPsequential_10/lstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_25/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_25/while/Identity_3?
&sequential_10/lstm_25/while/Identity_4Identity2sequential_10/lstm_25/while/lstm_cell_25/mul_6:z:0!^sequential_10/lstm_25/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_10/lstm_25/while/Identity_4?
&sequential_10/lstm_25/while/Identity_5Identity2sequential_10/lstm_25/while/lstm_cell_25/add_3:z:0!^sequential_10/lstm_25/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_10/lstm_25/while/Identity_5?
 sequential_10/lstm_25/while/NoOpNoOp8^sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp:^sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_1:^sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_2:^sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_3>^sequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOp@^sequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_10/lstm_25/while/NoOp"U
$sequential_10_lstm_25_while_identity-sequential_10/lstm_25/while/Identity:output:0"Y
&sequential_10_lstm_25_while_identity_1/sequential_10/lstm_25/while/Identity_1:output:0"Y
&sequential_10_lstm_25_while_identity_2/sequential_10/lstm_25/while/Identity_2:output:0"Y
&sequential_10_lstm_25_while_identity_3/sequential_10/lstm_25/while/Identity_3:output:0"Y
&sequential_10_lstm_25_while_identity_4/sequential_10/lstm_25/while/Identity_4:output:0"Y
&sequential_10_lstm_25_while_identity_5/sequential_10/lstm_25/while/Identity_5:output:0"?
@sequential_10_lstm_25_while_lstm_cell_25_readvariableop_resourceBsequential_10_lstm_25_while_lstm_cell_25_readvariableop_resource_0"?
Hsequential_10_lstm_25_while_lstm_cell_25_split_1_readvariableop_resourceJsequential_10_lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0"?
Fsequential_10_lstm_25_while_lstm_cell_25_split_readvariableop_resourceHsequential_10_lstm_25_while_lstm_cell_25_split_readvariableop_resource_0"?
Asequential_10_lstm_25_while_sequential_10_lstm_25_strided_slice_1Csequential_10_lstm_25_while_sequential_10_lstm_25_strided_slice_1_0"?
}sequential_10_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_25_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2r
7sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp7sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp2v
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_19sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_12v
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_29sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_22v
9sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_39sequential_10/lstm_25/while/lstm_cell_25/ReadVariableOp_32~
=sequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOp=sequential_10/lstm_25/while/lstm_cell_25/split/ReadVariableOp2?
?sequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?sequential_10/lstm_25/while/lstm_cell_25/split_1/ReadVariableOp: 
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
while_body_923268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_25_split_readvariableop_resource_0:	?C
4while_lstm_cell_25_split_1_readvariableop_resource_0:	??
,while_lstm_cell_25_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_25_split_readvariableop_resource:	?A
2while_lstm_cell_25_split_1_readvariableop_resource:	?=
*while_lstm_cell_25_readvariableop_resource:	 ???!while/lstm_cell_25/ReadVariableOp?#while/lstm_cell_25/ReadVariableOp_1?#while/lstm_cell_25/ReadVariableOp_2?#while/lstm_cell_25/ReadVariableOp_3?'while/lstm_cell_25/split/ReadVariableOp?)while/lstm_cell_25/split_1/ReadVariableOp?
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
"while/lstm_cell_25/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_25/ones_like/Shape?
"while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_25/ones_like/Const?
while/lstm_cell_25/ones_likeFill+while/lstm_cell_25/ones_like/Shape:output:0+while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/ones_like?
 while/lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_25/dropout/Const?
while/lstm_cell_25/dropout/MulMul%while/lstm_cell_25/ones_like:output:0)while/lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_25/dropout/Mul?
 while/lstm_cell_25/dropout/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_25/dropout/Shape?
7while/lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ρ29
7while/lstm_cell_25/dropout/random_uniform/RandomUniform?
)while/lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_25/dropout/GreaterEqual/y?
'while/lstm_cell_25/dropout/GreaterEqualGreaterEqual@while/lstm_cell_25/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_25/dropout/GreaterEqual?
while/lstm_cell_25/dropout/CastCast+while/lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_25/dropout/Cast?
 while/lstm_cell_25/dropout/Mul_1Mul"while/lstm_cell_25/dropout/Mul:z:0#while/lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout/Mul_1?
"while/lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_1/Const?
 while/lstm_cell_25/dropout_1/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_1/Mul?
"while/lstm_cell_25/dropout_1/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_1/Shape?
9while/lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_25/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_1/GreaterEqual/y?
)while/lstm_cell_25/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_1/GreaterEqual?
!while/lstm_cell_25/dropout_1/CastCast-while/lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_1/Cast?
"while/lstm_cell_25/dropout_1/Mul_1Mul$while/lstm_cell_25/dropout_1/Mul:z:0%while/lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_1/Mul_1?
"while/lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_2/Const?
 while/lstm_cell_25/dropout_2/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_2/Mul?
"while/lstm_cell_25/dropout_2/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_2/Shape?
9while/lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_25/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_2/GreaterEqual/y?
)while/lstm_cell_25/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_2/GreaterEqual?
!while/lstm_cell_25/dropout_2/CastCast-while/lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_2/Cast?
"while/lstm_cell_25/dropout_2/Mul_1Mul$while/lstm_cell_25/dropout_2/Mul:z:0%while/lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_2/Mul_1?
"while/lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_3/Const?
 while/lstm_cell_25/dropout_3/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_3/Mul?
"while/lstm_cell_25/dropout_3/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_3/Shape?
9while/lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ά2;
9while/lstm_cell_25/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_3/GreaterEqual/y?
)while/lstm_cell_25/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_3/GreaterEqual?
!while/lstm_cell_25/dropout_3/CastCast-while/lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_3/Cast?
"while/lstm_cell_25/dropout_3/Mul_1Mul$while/lstm_cell_25/dropout_3/Mul:z:0%while/lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_3/Mul_1?
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_25/split/split_dim?
'while/lstm_cell_25/split/ReadVariableOpReadVariableOp2while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_25/split/ReadVariableOp?
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_25/split?
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul?
while/lstm_cell_25/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_1?
while/lstm_cell_25/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_2?
while/lstm_cell_25/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_3?
$while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_25/split_1/split_dim?
)while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_25/split_1/ReadVariableOp?
while/lstm_cell_25/split_1Split-while/lstm_cell_25/split_1/split_dim:output:01while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_25/split_1?
while/lstm_cell_25/BiasAddBiasAdd#while/lstm_cell_25/MatMul:product:0#while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd?
while/lstm_cell_25/BiasAdd_1BiasAdd%while/lstm_cell_25/MatMul_1:product:0#while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_1?
while/lstm_cell_25/BiasAdd_2BiasAdd%while/lstm_cell_25/MatMul_2:product:0#while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_2?
while/lstm_cell_25/BiasAdd_3BiasAdd%while/lstm_cell_25/MatMul_3:product:0#while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_3?
while/lstm_cell_25/mulMulwhile_placeholder_2$while/lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul?
while/lstm_cell_25/mul_1Mulwhile_placeholder_2&while/lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_1?
while/lstm_cell_25/mul_2Mulwhile_placeholder_2&while/lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_2?
while/lstm_cell_25/mul_3Mulwhile_placeholder_2&while/lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_3?
!while/lstm_cell_25/ReadVariableOpReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_25/ReadVariableOp?
&while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_25/strided_slice/stack?
(while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice/stack_1?
(while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_25/strided_slice/stack_2?
 while/lstm_cell_25/strided_sliceStridedSlice)while/lstm_cell_25/ReadVariableOp:value:0/while/lstm_cell_25/strided_slice/stack:output:01while/lstm_cell_25/strided_slice/stack_1:output:01while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_25/strided_slice?
while/lstm_cell_25/MatMul_4MatMulwhile/lstm_cell_25/mul:z:0)while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_4?
while/lstm_cell_25/addAddV2#while/lstm_cell_25/BiasAdd:output:0%while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add?
while/lstm_cell_25/SigmoidSigmoidwhile/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid?
#while/lstm_cell_25/ReadVariableOp_1ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_1?
(while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice_1/stack?
*while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_25/strided_slice_1/stack_1?
*while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_1/stack_2?
"while/lstm_cell_25/strided_slice_1StridedSlice+while/lstm_cell_25/ReadVariableOp_1:value:01while/lstm_cell_25/strided_slice_1/stack:output:03while/lstm_cell_25/strided_slice_1/stack_1:output:03while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_1?
while/lstm_cell_25/MatMul_5MatMulwhile/lstm_cell_25/mul_1:z:0+while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_5?
while/lstm_cell_25/add_1AddV2%while/lstm_cell_25/BiasAdd_1:output:0%while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_1?
while/lstm_cell_25/Sigmoid_1Sigmoidwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_1?
while/lstm_cell_25/mul_4Mul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_4?
#while/lstm_cell_25/ReadVariableOp_2ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_2?
(while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_25/strided_slice_2/stack?
*while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_25/strided_slice_2/stack_1?
*while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_2/stack_2?
"while/lstm_cell_25/strided_slice_2StridedSlice+while/lstm_cell_25/ReadVariableOp_2:value:01while/lstm_cell_25/strided_slice_2/stack:output:03while/lstm_cell_25/strided_slice_2/stack_1:output:03while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_2?
while/lstm_cell_25/MatMul_6MatMulwhile/lstm_cell_25/mul_2:z:0+while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_6?
while/lstm_cell_25/add_2AddV2%while/lstm_cell_25/BiasAdd_2:output:0%while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_2?
while/lstm_cell_25/ReluReluwhile/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu?
while/lstm_cell_25/mul_5Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_5?
while/lstm_cell_25/add_3AddV2while/lstm_cell_25/mul_4:z:0while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_3?
#while/lstm_cell_25/ReadVariableOp_3ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_3?
(while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_25/strided_slice_3/stack?
*while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_25/strided_slice_3/stack_1?
*while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_3/stack_2?
"while/lstm_cell_25/strided_slice_3StridedSlice+while/lstm_cell_25/ReadVariableOp_3:value:01while/lstm_cell_25/strided_slice_3/stack:output:03while/lstm_cell_25/strided_slice_3/stack_1:output:03while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_3?
while/lstm_cell_25/MatMul_7MatMulwhile/lstm_cell_25/mul_3:z:0+while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_7?
while/lstm_cell_25/add_4AddV2%while/lstm_cell_25/BiasAdd_3:output:0%while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_4?
while/lstm_cell_25/Sigmoid_2Sigmoidwhile/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_2?
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu_1?
while/lstm_cell_25/mul_6Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_25/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_25/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_25/ReadVariableOp$^while/lstm_cell_25/ReadVariableOp_1$^while/lstm_cell_25/ReadVariableOp_2$^while/lstm_cell_25/ReadVariableOp_3(^while/lstm_cell_25/split/ReadVariableOp*^while/lstm_cell_25/split_1/ReadVariableOp*"
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
*while_lstm_cell_25_readvariableop_resource,while_lstm_cell_25_readvariableop_resource_0"j
2while_lstm_cell_25_split_1_readvariableop_resource4while_lstm_cell_25_split_1_readvariableop_resource_0"f
0while_lstm_cell_25_split_readvariableop_resource2while_lstm_cell_25_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_25/ReadVariableOp!while/lstm_cell_25/ReadVariableOp2J
#while/lstm_cell_25/ReadVariableOp_1#while/lstm_cell_25/ReadVariableOp_12J
#while/lstm_cell_25/ReadVariableOp_2#while/lstm_cell_25/ReadVariableOp_22J
#while/lstm_cell_25/ReadVariableOp_3#while/lstm_cell_25/ReadVariableOp_32R
'while/lstm_cell_25/split/ReadVariableOp'while/lstm_cell_25/split/ReadVariableOp2V
)while/lstm_cell_25/split_1/ReadVariableOp)while/lstm_cell_25/split_1/ReadVariableOp: 
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
"__inference__traced_restore_925960
file_prefix2
 assignvariableop_dense_30_kernel:  .
 assignvariableop_1_dense_30_bias: 4
"assignvariableop_2_dense_31_kernel: .
 assignvariableop_3_dense_31_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_25_lstm_cell_25_kernel:	?L
9assignvariableop_10_lstm_25_lstm_cell_25_recurrent_kernel:	 ?<
-assignvariableop_11_lstm_25_lstm_cell_25_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_30_kernel_m:  6
(assignvariableop_15_adam_dense_30_bias_m: <
*assignvariableop_16_adam_dense_31_kernel_m: 6
(assignvariableop_17_adam_dense_31_bias_m:I
6assignvariableop_18_adam_lstm_25_lstm_cell_25_kernel_m:	?S
@assignvariableop_19_adam_lstm_25_lstm_cell_25_recurrent_kernel_m:	 ?C
4assignvariableop_20_adam_lstm_25_lstm_cell_25_bias_m:	?<
*assignvariableop_21_adam_dense_30_kernel_v:  6
(assignvariableop_22_adam_dense_30_bias_v: <
*assignvariableop_23_adam_dense_31_kernel_v: 6
(assignvariableop_24_adam_dense_31_bias_v:I
6assignvariableop_25_adam_lstm_25_lstm_cell_25_kernel_v:	?S
@assignvariableop_26_adam_lstm_25_lstm_cell_25_recurrent_kernel_v:	 ?C
4assignvariableop_27_adam_lstm_25_lstm_cell_25_bias_v:	?
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
AssignVariableOpAssignVariableOp assignvariableop_dense_30_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_30_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_31_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_31_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_25_lstm_cell_25_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_25_lstm_cell_25_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_25_lstm_cell_25_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_30_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_30_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_31_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_31_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_25_lstm_cell_25_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_25_lstm_cell_25_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_25_lstm_cell_25_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_30_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_30_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_31_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_31_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_25_lstm_cell_25_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_25_lstm_cell_25_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_25_lstm_cell_25_bias_vIdentity_27:output:0"/device:CPU:0*
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
?	
?
$__inference_signature_wrapper_923640
input_11
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
!__inference__wrapped_model_9219622
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
input_11
?
G
+__inference_reshape_15_layer_call_fn_925503

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
F__inference_reshape_15_layer_call_and_return_conditional_losses_9230552
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
?	
?
.__inference_sequential_10_layer_call_fn_923087
input_11
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9230702
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
input_11
??
?
C__inference_lstm_25_layer_call_and_return_conditional_losses_924840
inputs_0=
*lstm_cell_25_split_readvariableop_resource:	?;
,lstm_cell_25_split_1_readvariableop_resource:	?7
$lstm_cell_25_readvariableop_resource:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_25/ReadVariableOp?lstm_cell_25/ReadVariableOp_1?lstm_cell_25/ReadVariableOp_2?lstm_cell_25/ReadVariableOp_3?!lstm_cell_25/split/ReadVariableOp?#lstm_cell_25/split_1/ReadVariableOp?whileF
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
lstm_cell_25/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_25/ones_like/Shape?
lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_25/ones_like/Const?
lstm_cell_25/ones_likeFill%lstm_cell_25/ones_like/Shape:output:0%lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/ones_like}
lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout/Const?
lstm_cell_25/dropout/MulMullstm_cell_25/ones_like:output:0#lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Mul?
lstm_cell_25/dropout/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout/Shape?
1lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_25/dropout/random_uniform/RandomUniform?
#lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_25/dropout/GreaterEqual/y?
!lstm_cell_25/dropout/GreaterEqualGreaterEqual:lstm_cell_25/dropout/random_uniform/RandomUniform:output:0,lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_25/dropout/GreaterEqual?
lstm_cell_25/dropout/CastCast%lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Cast?
lstm_cell_25/dropout/Mul_1Mullstm_cell_25/dropout/Mul:z:0lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout/Mul_1?
lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_1/Const?
lstm_cell_25/dropout_1/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Mul?
lstm_cell_25/dropout_1/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_1/Shape?
3lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ٕw25
3lstm_cell_25/dropout_1/random_uniform/RandomUniform?
%lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_1/GreaterEqual/y?
#lstm_cell_25/dropout_1/GreaterEqualGreaterEqual<lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_1/GreaterEqual?
lstm_cell_25/dropout_1/CastCast'lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Cast?
lstm_cell_25/dropout_1/Mul_1Mullstm_cell_25/dropout_1/Mul:z:0lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_1/Mul_1?
lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_2/Const?
lstm_cell_25/dropout_2/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Mul?
lstm_cell_25/dropout_2/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_2/Shape?
3lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_25/dropout_2/random_uniform/RandomUniform?
%lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_2/GreaterEqual/y?
#lstm_cell_25/dropout_2/GreaterEqualGreaterEqual<lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_2/GreaterEqual?
lstm_cell_25/dropout_2/CastCast'lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Cast?
lstm_cell_25/dropout_2/Mul_1Mullstm_cell_25/dropout_2/Mul:z:0lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_2/Mul_1?
lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_25/dropout_3/Const?
lstm_cell_25/dropout_3/MulMullstm_cell_25/ones_like:output:0%lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Mul?
lstm_cell_25/dropout_3/ShapeShapelstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_25/dropout_3/Shape?
3lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_25/dropout_3/random_uniform/RandomUniform?
%lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_25/dropout_3/GreaterEqual/y?
#lstm_cell_25/dropout_3/GreaterEqualGreaterEqual<lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_25/dropout_3/GreaterEqual?
lstm_cell_25/dropout_3/CastCast'lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Cast?
lstm_cell_25/dropout_3/Mul_1Mullstm_cell_25/dropout_3/Mul:z:0lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/dropout_3/Mul_1~
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_25/split/split_dim?
!lstm_cell_25/split/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_25/split/ReadVariableOp?
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0)lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_25/split?
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul?
lstm_cell_25/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_1?
lstm_cell_25/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_2?
lstm_cell_25/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_3?
lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_25/split_1/split_dim?
#lstm_cell_25/split_1/ReadVariableOpReadVariableOp,lstm_cell_25_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_25/split_1/ReadVariableOp?
lstm_cell_25/split_1Split'lstm_cell_25/split_1/split_dim:output:0+lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_25/split_1?
lstm_cell_25/BiasAddBiasAddlstm_cell_25/MatMul:product:0lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd?
lstm_cell_25/BiasAdd_1BiasAddlstm_cell_25/MatMul_1:product:0lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_1?
lstm_cell_25/BiasAdd_2BiasAddlstm_cell_25/MatMul_2:product:0lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_2?
lstm_cell_25/BiasAdd_3BiasAddlstm_cell_25/MatMul_3:product:0lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/BiasAdd_3?
lstm_cell_25/mulMulzeros:output:0lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul?
lstm_cell_25/mul_1Mulzeros:output:0 lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_1?
lstm_cell_25/mul_2Mulzeros:output:0 lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_2?
lstm_cell_25/mul_3Mulzeros:output:0 lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_3?
lstm_cell_25/ReadVariableOpReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp?
 lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_25/strided_slice/stack?
"lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice/stack_1?
"lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_25/strided_slice/stack_2?
lstm_cell_25/strided_sliceStridedSlice#lstm_cell_25/ReadVariableOp:value:0)lstm_cell_25/strided_slice/stack:output:0+lstm_cell_25/strided_slice/stack_1:output:0+lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice?
lstm_cell_25/MatMul_4MatMullstm_cell_25/mul:z:0#lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_4?
lstm_cell_25/addAddV2lstm_cell_25/BiasAdd:output:0lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add
lstm_cell_25/SigmoidSigmoidlstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid?
lstm_cell_25/ReadVariableOp_1ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_1?
"lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_25/strided_slice_1/stack?
$lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_25/strided_slice_1/stack_1?
$lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_1/stack_2?
lstm_cell_25/strided_slice_1StridedSlice%lstm_cell_25/ReadVariableOp_1:value:0+lstm_cell_25/strided_slice_1/stack:output:0-lstm_cell_25/strided_slice_1/stack_1:output:0-lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_1?
lstm_cell_25/MatMul_5MatMullstm_cell_25/mul_1:z:0%lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_5?
lstm_cell_25/add_1AddV2lstm_cell_25/BiasAdd_1:output:0lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_1?
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_1?
lstm_cell_25/mul_4Mullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_4?
lstm_cell_25/ReadVariableOp_2ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_2?
"lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_25/strided_slice_2/stack?
$lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_25/strided_slice_2/stack_1?
$lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_2/stack_2?
lstm_cell_25/strided_slice_2StridedSlice%lstm_cell_25/ReadVariableOp_2:value:0+lstm_cell_25/strided_slice_2/stack:output:0-lstm_cell_25/strided_slice_2/stack_1:output:0-lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_2?
lstm_cell_25/MatMul_6MatMullstm_cell_25/mul_2:z:0%lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_6?
lstm_cell_25/add_2AddV2lstm_cell_25/BiasAdd_2:output:0lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_2x
lstm_cell_25/ReluRelulstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu?
lstm_cell_25/mul_5Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_5?
lstm_cell_25/add_3AddV2lstm_cell_25/mul_4:z:0lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_3?
lstm_cell_25/ReadVariableOp_3ReadVariableOp$lstm_cell_25_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_25/ReadVariableOp_3?
"lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_25/strided_slice_3/stack?
$lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_25/strided_slice_3/stack_1?
$lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_25/strided_slice_3/stack_2?
lstm_cell_25/strided_slice_3StridedSlice%lstm_cell_25/ReadVariableOp_3:value:0+lstm_cell_25/strided_slice_3/stack:output:0-lstm_cell_25/strided_slice_3/stack_1:output:0-lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_25/strided_slice_3?
lstm_cell_25/MatMul_7MatMullstm_cell_25/mul_3:z:0%lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/MatMul_7?
lstm_cell_25/add_4AddV2lstm_cell_25/BiasAdd_3:output:0lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/add_4?
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Sigmoid_2|
lstm_cell_25/Relu_1Relulstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/Relu_1?
lstm_cell_25/mul_6Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_25/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_25_split_readvariableop_resource,lstm_cell_25_split_1_readvariableop_resource$lstm_cell_25_readvariableop_resource*
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
while_body_924675*
condR
while_cond_924674*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_25_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_25/ReadVariableOp^lstm_cell_25/ReadVariableOp_1^lstm_cell_25/ReadVariableOp_2^lstm_cell_25/ReadVariableOp_3"^lstm_cell_25/split/ReadVariableOp$^lstm_cell_25/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_25/ReadVariableOplstm_cell_25/ReadVariableOp2>
lstm_cell_25/ReadVariableOp_1lstm_cell_25/ReadVariableOp_12>
lstm_cell_25/ReadVariableOp_2lstm_cell_25/ReadVariableOp_22>
lstm_cell_25/ReadVariableOp_3lstm_cell_25/ReadVariableOp_32F
!lstm_cell_25/split/ReadVariableOp!lstm_cell_25/split/ReadVariableOp2J
#lstm_cell_25/split_1/ReadVariableOp#lstm_cell_25/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_922099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_922099___redundant_placeholder04
0while_while_cond_922099___redundant_placeholder14
0while_while_cond_922099___redundant_placeholder24
0while_while_cond_922099___redundant_placeholder3
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
?
.__inference_sequential_10_layer_call_fn_924265

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
GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9230702
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
?
?
while_cond_924399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924399___redundant_placeholder04
0while_while_cond_924399___redundant_placeholder14
0while_while_cond_924399___redundant_placeholder24
0while_while_cond_924399___redundant_placeholder3
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_922175

inputs&
lstm_cell_25_922087:	?"
lstm_cell_25_922089:	?&
lstm_cell_25_922091:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_25/StatefulPartitionedCall?whileD
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
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_922087lstm_cell_25_922089lstm_cell_25_922091*
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_9220862&
$lstm_cell_25/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_922087lstm_cell_25_922089lstm_cell_25_922091*
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
while_body_922100*
condR
while_cond_922099*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_25_922087*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?v
?
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_922319

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed?	*
seed2?ȥ2(
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
seed2???2(
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
seed2???2(
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2,
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
?
?
while_cond_924949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_924949___redundant_placeholder04
0while_while_cond_924949___redundant_placeholder14
0while_while_cond_924949___redundant_placeholder24
0while_while_cond_924949___redundant_placeholder3
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
?
-__inference_lstm_cell_25_layer_call_fn_925731

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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_9220862
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
??
?	
while_body_924950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_25_split_readvariableop_resource_0:	?C
4while_lstm_cell_25_split_1_readvariableop_resource_0:	??
,while_lstm_cell_25_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_25_split_readvariableop_resource:	?A
2while_lstm_cell_25_split_1_readvariableop_resource:	?=
*while_lstm_cell_25_readvariableop_resource:	 ???!while/lstm_cell_25/ReadVariableOp?#while/lstm_cell_25/ReadVariableOp_1?#while/lstm_cell_25/ReadVariableOp_2?#while/lstm_cell_25/ReadVariableOp_3?'while/lstm_cell_25/split/ReadVariableOp?)while/lstm_cell_25/split_1/ReadVariableOp?
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
"while/lstm_cell_25/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_25/ones_like/Shape?
"while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_25/ones_like/Const?
while/lstm_cell_25/ones_likeFill+while/lstm_cell_25/ones_like/Shape:output:0+while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/ones_like?
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_25/split/split_dim?
'while/lstm_cell_25/split/ReadVariableOpReadVariableOp2while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_25/split/ReadVariableOp?
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_25/split?
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul?
while/lstm_cell_25/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_1?
while/lstm_cell_25/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_2?
while/lstm_cell_25/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_3?
$while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_25/split_1/split_dim?
)while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_25/split_1/ReadVariableOp?
while/lstm_cell_25/split_1Split-while/lstm_cell_25/split_1/split_dim:output:01while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_25/split_1?
while/lstm_cell_25/BiasAddBiasAdd#while/lstm_cell_25/MatMul:product:0#while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd?
while/lstm_cell_25/BiasAdd_1BiasAdd%while/lstm_cell_25/MatMul_1:product:0#while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_1?
while/lstm_cell_25/BiasAdd_2BiasAdd%while/lstm_cell_25/MatMul_2:product:0#while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_2?
while/lstm_cell_25/BiasAdd_3BiasAdd%while/lstm_cell_25/MatMul_3:product:0#while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_3?
while/lstm_cell_25/mulMulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul?
while/lstm_cell_25/mul_1Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_1?
while/lstm_cell_25/mul_2Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_2?
while/lstm_cell_25/mul_3Mulwhile_placeholder_2%while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_3?
!while/lstm_cell_25/ReadVariableOpReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_25/ReadVariableOp?
&while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_25/strided_slice/stack?
(while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice/stack_1?
(while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_25/strided_slice/stack_2?
 while/lstm_cell_25/strided_sliceStridedSlice)while/lstm_cell_25/ReadVariableOp:value:0/while/lstm_cell_25/strided_slice/stack:output:01while/lstm_cell_25/strided_slice/stack_1:output:01while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_25/strided_slice?
while/lstm_cell_25/MatMul_4MatMulwhile/lstm_cell_25/mul:z:0)while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_4?
while/lstm_cell_25/addAddV2#while/lstm_cell_25/BiasAdd:output:0%while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add?
while/lstm_cell_25/SigmoidSigmoidwhile/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid?
#while/lstm_cell_25/ReadVariableOp_1ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_1?
(while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice_1/stack?
*while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_25/strided_slice_1/stack_1?
*while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_1/stack_2?
"while/lstm_cell_25/strided_slice_1StridedSlice+while/lstm_cell_25/ReadVariableOp_1:value:01while/lstm_cell_25/strided_slice_1/stack:output:03while/lstm_cell_25/strided_slice_1/stack_1:output:03while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_1?
while/lstm_cell_25/MatMul_5MatMulwhile/lstm_cell_25/mul_1:z:0+while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_5?
while/lstm_cell_25/add_1AddV2%while/lstm_cell_25/BiasAdd_1:output:0%while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_1?
while/lstm_cell_25/Sigmoid_1Sigmoidwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_1?
while/lstm_cell_25/mul_4Mul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_4?
#while/lstm_cell_25/ReadVariableOp_2ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_2?
(while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_25/strided_slice_2/stack?
*while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_25/strided_slice_2/stack_1?
*while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_2/stack_2?
"while/lstm_cell_25/strided_slice_2StridedSlice+while/lstm_cell_25/ReadVariableOp_2:value:01while/lstm_cell_25/strided_slice_2/stack:output:03while/lstm_cell_25/strided_slice_2/stack_1:output:03while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_2?
while/lstm_cell_25/MatMul_6MatMulwhile/lstm_cell_25/mul_2:z:0+while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_6?
while/lstm_cell_25/add_2AddV2%while/lstm_cell_25/BiasAdd_2:output:0%while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_2?
while/lstm_cell_25/ReluReluwhile/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu?
while/lstm_cell_25/mul_5Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_5?
while/lstm_cell_25/add_3AddV2while/lstm_cell_25/mul_4:z:0while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_3?
#while/lstm_cell_25/ReadVariableOp_3ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_3?
(while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_25/strided_slice_3/stack?
*while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_25/strided_slice_3/stack_1?
*while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_3/stack_2?
"while/lstm_cell_25/strided_slice_3StridedSlice+while/lstm_cell_25/ReadVariableOp_3:value:01while/lstm_cell_25/strided_slice_3/stack:output:03while/lstm_cell_25/strided_slice_3/stack_1:output:03while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_3?
while/lstm_cell_25/MatMul_7MatMulwhile/lstm_cell_25/mul_3:z:0+while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_7?
while/lstm_cell_25/add_4AddV2%while/lstm_cell_25/BiasAdd_3:output:0%while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_4?
while/lstm_cell_25/Sigmoid_2Sigmoidwhile/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_2?
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu_1?
while/lstm_cell_25/mul_6Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_25/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_25/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_25/ReadVariableOp$^while/lstm_cell_25/ReadVariableOp_1$^while/lstm_cell_25/ReadVariableOp_2$^while/lstm_cell_25/ReadVariableOp_3(^while/lstm_cell_25/split/ReadVariableOp*^while/lstm_cell_25/split_1/ReadVariableOp*"
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
*while_lstm_cell_25_readvariableop_resource,while_lstm_cell_25_readvariableop_resource_0"j
2while_lstm_cell_25_split_1_readvariableop_resource4while_lstm_cell_25_split_1_readvariableop_resource_0"f
0while_lstm_cell_25_split_readvariableop_resource2while_lstm_cell_25_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_25/ReadVariableOp!while/lstm_cell_25/ReadVariableOp2J
#while/lstm_cell_25/ReadVariableOp_1#while/lstm_cell_25/ReadVariableOp_12J
#while/lstm_cell_25/ReadVariableOp_2#while/lstm_cell_25/ReadVariableOp_22J
#while/lstm_cell_25/ReadVariableOp_3#while/lstm_cell_25/ReadVariableOp_32R
'while/lstm_cell_25/split/ReadVariableOp'while/lstm_cell_25/split/ReadVariableOp2V
)while/lstm_cell_25/split_1/ReadVariableOp)while/lstm_cell_25/split_1/ReadVariableOp: 
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
lstm_25_while_body_923750,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_25_while_lstm_cell_25_split_readvariableop_resource_0:	?K
<lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0:	?G
4lstm_25_while_lstm_cell_25_readvariableop_resource_0:	 ?
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorK
8lstm_25_while_lstm_cell_25_split_readvariableop_resource:	?I
:lstm_25_while_lstm_cell_25_split_1_readvariableop_resource:	?E
2lstm_25_while_lstm_cell_25_readvariableop_resource:	 ???)lstm_25/while/lstm_cell_25/ReadVariableOp?+lstm_25/while/lstm_cell_25/ReadVariableOp_1?+lstm_25/while/lstm_cell_25/ReadVariableOp_2?+lstm_25/while/lstm_cell_25/ReadVariableOp_3?/lstm_25/while/lstm_cell_25/split/ReadVariableOp?1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_25/while/TensorArrayV2Read/TensorListGetItem?
*lstm_25/while/lstm_cell_25/ones_like/ShapeShapelstm_25_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_25/while/lstm_cell_25/ones_like/Shape?
*lstm_25/while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_25/while/lstm_cell_25/ones_like/Const?
$lstm_25/while/lstm_cell_25/ones_likeFill3lstm_25/while/lstm_cell_25/ones_like/Shape:output:03lstm_25/while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/ones_like?
*lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_25/while/lstm_cell_25/split/split_dim?
/lstm_25/while/lstm_cell_25/split/ReadVariableOpReadVariableOp:lstm_25_while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_25/while/lstm_cell_25/split/ReadVariableOp?
 lstm_25/while/lstm_cell_25/splitSplit3lstm_25/while/lstm_cell_25/split/split_dim:output:07lstm_25/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_25/while/lstm_cell_25/split?
!lstm_25/while/lstm_cell_25/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_25/while/lstm_cell_25/MatMul?
#lstm_25/while/lstm_cell_25/MatMul_1MatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_1?
#lstm_25/while/lstm_cell_25/MatMul_2MatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_2?
#lstm_25/while/lstm_cell_25/MatMul_3MatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_3?
,lstm_25/while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_25/while/lstm_cell_25/split_1/split_dim?
1lstm_25/while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp?
"lstm_25/while/lstm_cell_25/split_1Split5lstm_25/while/lstm_cell_25/split_1/split_dim:output:09lstm_25/while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_25/while/lstm_cell_25/split_1?
"lstm_25/while/lstm_cell_25/BiasAddBiasAdd+lstm_25/while/lstm_cell_25/MatMul:product:0+lstm_25/while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/while/lstm_cell_25/BiasAdd?
$lstm_25/while/lstm_cell_25/BiasAdd_1BiasAdd-lstm_25/while/lstm_cell_25/MatMul_1:product:0+lstm_25/while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/BiasAdd_1?
$lstm_25/while/lstm_cell_25/BiasAdd_2BiasAdd-lstm_25/while/lstm_cell_25/MatMul_2:product:0+lstm_25/while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/BiasAdd_2?
$lstm_25/while/lstm_cell_25/BiasAdd_3BiasAdd-lstm_25/while/lstm_cell_25/MatMul_3:product:0+lstm_25/while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/BiasAdd_3?
lstm_25/while/lstm_cell_25/mulMullstm_25_while_placeholder_2-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/while/lstm_cell_25/mul?
 lstm_25/while/lstm_cell_25/mul_1Mullstm_25_while_placeholder_2-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_1?
 lstm_25/while/lstm_cell_25/mul_2Mullstm_25_while_placeholder_2-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_2?
 lstm_25/while/lstm_cell_25/mul_3Mullstm_25_while_placeholder_2-lstm_25/while/lstm_cell_25/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_3?
)lstm_25/while/lstm_cell_25/ReadVariableOpReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_25/while/lstm_cell_25/ReadVariableOp?
.lstm_25/while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_25/while/lstm_cell_25/strided_slice/stack?
0lstm_25/while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_25/while/lstm_cell_25/strided_slice/stack_1?
0lstm_25/while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_25/while/lstm_cell_25/strided_slice/stack_2?
(lstm_25/while/lstm_cell_25/strided_sliceStridedSlice1lstm_25/while/lstm_cell_25/ReadVariableOp:value:07lstm_25/while/lstm_cell_25/strided_slice/stack:output:09lstm_25/while/lstm_cell_25/strided_slice/stack_1:output:09lstm_25/while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_25/while/lstm_cell_25/strided_slice?
#lstm_25/while/lstm_cell_25/MatMul_4MatMul"lstm_25/while/lstm_cell_25/mul:z:01lstm_25/while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_4?
lstm_25/while/lstm_cell_25/addAddV2+lstm_25/while/lstm_cell_25/BiasAdd:output:0-lstm_25/while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_25/while/lstm_cell_25/add?
"lstm_25/while/lstm_cell_25/SigmoidSigmoid"lstm_25/while/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_25/while/lstm_cell_25/Sigmoid?
+lstm_25/while/lstm_cell_25/ReadVariableOp_1ReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_25/while/lstm_cell_25/ReadVariableOp_1?
0lstm_25/while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_25/while/lstm_cell_25/strided_slice_1/stack?
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_1?
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_25/while/lstm_cell_25/strided_slice_1/stack_2?
*lstm_25/while/lstm_cell_25/strided_slice_1StridedSlice3lstm_25/while/lstm_cell_25/ReadVariableOp_1:value:09lstm_25/while/lstm_cell_25/strided_slice_1/stack:output:0;lstm_25/while/lstm_cell_25/strided_slice_1/stack_1:output:0;lstm_25/while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_25/while/lstm_cell_25/strided_slice_1?
#lstm_25/while/lstm_cell_25/MatMul_5MatMul$lstm_25/while/lstm_cell_25/mul_1:z:03lstm_25/while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_5?
 lstm_25/while/lstm_cell_25/add_1AddV2-lstm_25/while/lstm_cell_25/BiasAdd_1:output:0-lstm_25/while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_1?
$lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid$lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/Sigmoid_1?
 lstm_25/while/lstm_cell_25/mul_4Mul(lstm_25/while/lstm_cell_25/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_4?
+lstm_25/while/lstm_cell_25/ReadVariableOp_2ReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_25/while/lstm_cell_25/ReadVariableOp_2?
0lstm_25/while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_25/while/lstm_cell_25/strided_slice_2/stack?
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_1?
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_25/while/lstm_cell_25/strided_slice_2/stack_2?
*lstm_25/while/lstm_cell_25/strided_slice_2StridedSlice3lstm_25/while/lstm_cell_25/ReadVariableOp_2:value:09lstm_25/while/lstm_cell_25/strided_slice_2/stack:output:0;lstm_25/while/lstm_cell_25/strided_slice_2/stack_1:output:0;lstm_25/while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_25/while/lstm_cell_25/strided_slice_2?
#lstm_25/while/lstm_cell_25/MatMul_6MatMul$lstm_25/while/lstm_cell_25/mul_2:z:03lstm_25/while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_6?
 lstm_25/while/lstm_cell_25/add_2AddV2-lstm_25/while/lstm_cell_25/BiasAdd_2:output:0-lstm_25/while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_2?
lstm_25/while/lstm_cell_25/ReluRelu$lstm_25/while/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_25/while/lstm_cell_25/Relu?
 lstm_25/while/lstm_cell_25/mul_5Mul&lstm_25/while/lstm_cell_25/Sigmoid:y:0-lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_5?
 lstm_25/while/lstm_cell_25/add_3AddV2$lstm_25/while/lstm_cell_25/mul_4:z:0$lstm_25/while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_3?
+lstm_25/while/lstm_cell_25/ReadVariableOp_3ReadVariableOp4lstm_25_while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_25/while/lstm_cell_25/ReadVariableOp_3?
0lstm_25/while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_25/while/lstm_cell_25/strided_slice_3/stack?
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_1?
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_25/while/lstm_cell_25/strided_slice_3/stack_2?
*lstm_25/while/lstm_cell_25/strided_slice_3StridedSlice3lstm_25/while/lstm_cell_25/ReadVariableOp_3:value:09lstm_25/while/lstm_cell_25/strided_slice_3/stack:output:0;lstm_25/while/lstm_cell_25/strided_slice_3/stack_1:output:0;lstm_25/while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_25/while/lstm_cell_25/strided_slice_3?
#lstm_25/while/lstm_cell_25/MatMul_7MatMul$lstm_25/while/lstm_cell_25/mul_3:z:03lstm_25/while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_25/while/lstm_cell_25/MatMul_7?
 lstm_25/while/lstm_cell_25/add_4AddV2-lstm_25/while/lstm_cell_25/BiasAdd_3:output:0-lstm_25/while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/add_4?
$lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid$lstm_25/while/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_25/while/lstm_cell_25/Sigmoid_2?
!lstm_25/while/lstm_cell_25/Relu_1Relu$lstm_25/while/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_25/while/lstm_cell_25/Relu_1?
 lstm_25/while/lstm_cell_25/mul_6Mul(lstm_25/while/lstm_cell_25/Sigmoid_2:y:0/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_25/while/lstm_cell_25/mul_6?
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1lstm_25_while_placeholder$lstm_25/while/lstm_cell_25/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_25/while/TensorArrayV2Write/TensorListSetIteml
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_25/while/add/y?
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_25/while/addp
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_25/while/add_1/y?
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_25/while/add_1?
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity?
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity_1?
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity_2?
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 2
lstm_25/while/Identity_3?
lstm_25/while/Identity_4Identity$lstm_25/while/lstm_cell_25/mul_6:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_25/while/Identity_4?
lstm_25/while/Identity_5Identity$lstm_25/while/lstm_cell_25/add_3:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_25/while/Identity_5?
lstm_25/while/NoOpNoOp*^lstm_25/while/lstm_cell_25/ReadVariableOp,^lstm_25/while/lstm_cell_25/ReadVariableOp_1,^lstm_25/while/lstm_cell_25/ReadVariableOp_2,^lstm_25/while/lstm_cell_25/ReadVariableOp_30^lstm_25/while/lstm_cell_25/split/ReadVariableOp2^lstm_25/while/lstm_cell_25/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_25/while/NoOp"9
lstm_25_while_identitylstm_25/while/Identity:output:0"=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"j
2lstm_25_while_lstm_cell_25_readvariableop_resource4lstm_25_while_lstm_cell_25_readvariableop_resource_0"z
:lstm_25_while_lstm_cell_25_split_1_readvariableop_resource<lstm_25_while_lstm_cell_25_split_1_readvariableop_resource_0"v
8lstm_25_while_lstm_cell_25_split_readvariableop_resource:lstm_25_while_lstm_cell_25_split_readvariableop_resource_0"?
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_25/while/lstm_cell_25/ReadVariableOp)lstm_25/while/lstm_cell_25/ReadVariableOp2Z
+lstm_25/while/lstm_cell_25/ReadVariableOp_1+lstm_25/while/lstm_cell_25/ReadVariableOp_12Z
+lstm_25/while/lstm_cell_25/ReadVariableOp_2+lstm_25/while/lstm_cell_25/ReadVariableOp_22Z
+lstm_25/while/lstm_cell_25/ReadVariableOp_3+lstm_25/while/lstm_cell_25/ReadVariableOp_32b
/lstm_25/while/lstm_cell_25/split/ReadVariableOp/lstm_25/while/lstm_cell_25/split/ReadVariableOp2f
1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp1lstm_25/while/lstm_cell_25/split_1/ReadVariableOp: 
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_922086

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2,
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
?	
?
.__inference_sequential_10_layer_call_fn_924284

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
GPU 2J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9234972
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
?
?
while_cond_925224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_925224___redundant_placeholder04
0while_while_cond_925224___redundant_placeholder14
0while_while_cond_925224___redundant_placeholder24
0while_while_cond_925224___redundant_placeholder3
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
while_cond_922396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_922396___redundant_placeholder04
0while_while_cond_922396___redundant_placeholder14
0while_while_cond_922396___redundant_placeholder24
0while_while_cond_922396___redundant_placeholder3
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_922472

inputs&
lstm_cell_25_922384:	?"
lstm_cell_25_922386:	?&
lstm_cell_25_922388:	 ?
identity??=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_25/StatefulPartitionedCall?whileD
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
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_922384lstm_cell_25_922386lstm_cell_25_922388*
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_9223192&
$lstm_cell_25/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_922384lstm_cell_25_922386lstm_cell_25_922388*
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
while_body_922397*
condR
while_cond_922396*K
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
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_25_922384*
_output_shapes
:	?*
dtype02?
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp?
.lstm_25/lstm_cell_25/kernel/Regularizer/SquareSquareElstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_25/lstm_cell_25/kernel/Regularizer/Square?
-lstm_25/lstm_cell_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_25/lstm_cell_25/kernel/Regularizer/Const?
+lstm_25/lstm_cell_25/kernel/Regularizer/SumSum2lstm_25/lstm_cell_25/kernel/Regularizer/Square:y:06lstm_25/lstm_cell_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/Sum?
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_25/lstm_cell_25/kernel/Regularizer/mul/x?
+lstm_25/lstm_cell_25/kernel/Regularizer/mulMul6lstm_25/lstm_cell_25/kernel/Regularizer/mul/x:output:04lstm_25/lstm_cell_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_25/lstm_cell_25/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp=lstm_25/lstm_cell_25/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_925514F
8dense_31_bias_regularizer_square_readvariableop_resource:
identity??/dense_31/bias/Regularizer/Square/ReadVariableOp?
/dense_31/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_31_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_31/bias/Regularizer/Square/ReadVariableOp?
 dense_31/bias/Regularizer/SquareSquare7dense_31/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_31/bias/Regularizer/Square?
dense_31/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_31/bias/Regularizer/Const?
dense_31/bias/Regularizer/SumSum$dense_31/bias/Regularizer/Square:y:0(dense_31/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/Sum?
dense_31/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_31/bias/Regularizer/mul/x?
dense_31/bias/Regularizer/mulMul(dense_31/bias/Regularizer/mul/x:output:0&dense_31/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_31/bias/Regularizer/mulk
IdentityIdentity!dense_31/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp0^dense_31/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_31/bias/Regularizer/Square/ReadVariableOp/dense_31/bias/Regularizer/Square/ReadVariableOp
??
?	
while_body_925225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_25_split_readvariableop_resource_0:	?C
4while_lstm_cell_25_split_1_readvariableop_resource_0:	??
,while_lstm_cell_25_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_25_split_readvariableop_resource:	?A
2while_lstm_cell_25_split_1_readvariableop_resource:	?=
*while_lstm_cell_25_readvariableop_resource:	 ???!while/lstm_cell_25/ReadVariableOp?#while/lstm_cell_25/ReadVariableOp_1?#while/lstm_cell_25/ReadVariableOp_2?#while/lstm_cell_25/ReadVariableOp_3?'while/lstm_cell_25/split/ReadVariableOp?)while/lstm_cell_25/split_1/ReadVariableOp?
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
"while/lstm_cell_25/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_25/ones_like/Shape?
"while/lstm_cell_25/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_25/ones_like/Const?
while/lstm_cell_25/ones_likeFill+while/lstm_cell_25/ones_like/Shape:output:0+while/lstm_cell_25/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/ones_like?
 while/lstm_cell_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_25/dropout/Const?
while/lstm_cell_25/dropout/MulMul%while/lstm_cell_25/ones_like:output:0)while/lstm_cell_25/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_25/dropout/Mul?
 while/lstm_cell_25/dropout/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_25/dropout/Shape?
7while/lstm_cell_25/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_25/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??29
7while/lstm_cell_25/dropout/random_uniform/RandomUniform?
)while/lstm_cell_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_25/dropout/GreaterEqual/y?
'while/lstm_cell_25/dropout/GreaterEqualGreaterEqual@while/lstm_cell_25/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_25/dropout/GreaterEqual?
while/lstm_cell_25/dropout/CastCast+while/lstm_cell_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_25/dropout/Cast?
 while/lstm_cell_25/dropout/Mul_1Mul"while/lstm_cell_25/dropout/Mul:z:0#while/lstm_cell_25/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout/Mul_1?
"while/lstm_cell_25/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_1/Const?
 while/lstm_cell_25/dropout_1/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_1/Mul?
"while/lstm_cell_25/dropout_1/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_1/Shape?
9while/lstm_cell_25/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_25/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_1/GreaterEqual/y?
)while/lstm_cell_25/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_1/GreaterEqual?
!while/lstm_cell_25/dropout_1/CastCast-while/lstm_cell_25/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_1/Cast?
"while/lstm_cell_25/dropout_1/Mul_1Mul$while/lstm_cell_25/dropout_1/Mul:z:0%while/lstm_cell_25/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_1/Mul_1?
"while/lstm_cell_25/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_2/Const?
 while/lstm_cell_25/dropout_2/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_2/Mul?
"while/lstm_cell_25/dropout_2/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_2/Shape?
9while/lstm_cell_25/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?Ȃ2;
9while/lstm_cell_25/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_2/GreaterEqual/y?
)while/lstm_cell_25/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_2/GreaterEqual?
!while/lstm_cell_25/dropout_2/CastCast-while/lstm_cell_25/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_2/Cast?
"while/lstm_cell_25/dropout_2/Mul_1Mul$while/lstm_cell_25/dropout_2/Mul:z:0%while/lstm_cell_25/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_2/Mul_1?
"while/lstm_cell_25/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_25/dropout_3/Const?
 while/lstm_cell_25/dropout_3/MulMul%while/lstm_cell_25/ones_like:output:0+while/lstm_cell_25/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_25/dropout_3/Mul?
"while/lstm_cell_25/dropout_3/ShapeShape%while/lstm_cell_25/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_25/dropout_3/Shape?
9while/lstm_cell_25/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_25/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_25/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_25/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_25/dropout_3/GreaterEqual/y?
)while/lstm_cell_25/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_25/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_25/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_25/dropout_3/GreaterEqual?
!while/lstm_cell_25/dropout_3/CastCast-while/lstm_cell_25/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_25/dropout_3/Cast?
"while/lstm_cell_25/dropout_3/Mul_1Mul$while/lstm_cell_25/dropout_3/Mul:z:0%while/lstm_cell_25/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_25/dropout_3/Mul_1?
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_25/split/split_dim?
'while/lstm_cell_25/split/ReadVariableOpReadVariableOp2while_lstm_cell_25_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_25/split/ReadVariableOp?
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0/while/lstm_cell_25/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_25/split?
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul?
while/lstm_cell_25/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_1?
while/lstm_cell_25/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_2?
while/lstm_cell_25/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_3?
$while/lstm_cell_25/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_25/split_1/split_dim?
)while/lstm_cell_25/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_25_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_25/split_1/ReadVariableOp?
while/lstm_cell_25/split_1Split-while/lstm_cell_25/split_1/split_dim:output:01while/lstm_cell_25/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_25/split_1?
while/lstm_cell_25/BiasAddBiasAdd#while/lstm_cell_25/MatMul:product:0#while/lstm_cell_25/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd?
while/lstm_cell_25/BiasAdd_1BiasAdd%while/lstm_cell_25/MatMul_1:product:0#while/lstm_cell_25/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_1?
while/lstm_cell_25/BiasAdd_2BiasAdd%while/lstm_cell_25/MatMul_2:product:0#while/lstm_cell_25/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_2?
while/lstm_cell_25/BiasAdd_3BiasAdd%while/lstm_cell_25/MatMul_3:product:0#while/lstm_cell_25/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/BiasAdd_3?
while/lstm_cell_25/mulMulwhile_placeholder_2$while/lstm_cell_25/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul?
while/lstm_cell_25/mul_1Mulwhile_placeholder_2&while/lstm_cell_25/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_1?
while/lstm_cell_25/mul_2Mulwhile_placeholder_2&while/lstm_cell_25/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_2?
while/lstm_cell_25/mul_3Mulwhile_placeholder_2&while/lstm_cell_25/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_3?
!while/lstm_cell_25/ReadVariableOpReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_25/ReadVariableOp?
&while/lstm_cell_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_25/strided_slice/stack?
(while/lstm_cell_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice/stack_1?
(while/lstm_cell_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_25/strided_slice/stack_2?
 while/lstm_cell_25/strided_sliceStridedSlice)while/lstm_cell_25/ReadVariableOp:value:0/while/lstm_cell_25/strided_slice/stack:output:01while/lstm_cell_25/strided_slice/stack_1:output:01while/lstm_cell_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_25/strided_slice?
while/lstm_cell_25/MatMul_4MatMulwhile/lstm_cell_25/mul:z:0)while/lstm_cell_25/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_4?
while/lstm_cell_25/addAddV2#while/lstm_cell_25/BiasAdd:output:0%while/lstm_cell_25/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add?
while/lstm_cell_25/SigmoidSigmoidwhile/lstm_cell_25/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid?
#while/lstm_cell_25/ReadVariableOp_1ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_1?
(while/lstm_cell_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_25/strided_slice_1/stack?
*while/lstm_cell_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_25/strided_slice_1/stack_1?
*while/lstm_cell_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_1/stack_2?
"while/lstm_cell_25/strided_slice_1StridedSlice+while/lstm_cell_25/ReadVariableOp_1:value:01while/lstm_cell_25/strided_slice_1/stack:output:03while/lstm_cell_25/strided_slice_1/stack_1:output:03while/lstm_cell_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_1?
while/lstm_cell_25/MatMul_5MatMulwhile/lstm_cell_25/mul_1:z:0+while/lstm_cell_25/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_5?
while/lstm_cell_25/add_1AddV2%while/lstm_cell_25/BiasAdd_1:output:0%while/lstm_cell_25/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_1?
while/lstm_cell_25/Sigmoid_1Sigmoidwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_1?
while/lstm_cell_25/mul_4Mul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_4?
#while/lstm_cell_25/ReadVariableOp_2ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_2?
(while/lstm_cell_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_25/strided_slice_2/stack?
*while/lstm_cell_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_25/strided_slice_2/stack_1?
*while/lstm_cell_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_2/stack_2?
"while/lstm_cell_25/strided_slice_2StridedSlice+while/lstm_cell_25/ReadVariableOp_2:value:01while/lstm_cell_25/strided_slice_2/stack:output:03while/lstm_cell_25/strided_slice_2/stack_1:output:03while/lstm_cell_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_2?
while/lstm_cell_25/MatMul_6MatMulwhile/lstm_cell_25/mul_2:z:0+while/lstm_cell_25/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_6?
while/lstm_cell_25/add_2AddV2%while/lstm_cell_25/BiasAdd_2:output:0%while/lstm_cell_25/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_2?
while/lstm_cell_25/ReluReluwhile/lstm_cell_25/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu?
while/lstm_cell_25/mul_5Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_5?
while/lstm_cell_25/add_3AddV2while/lstm_cell_25/mul_4:z:0while/lstm_cell_25/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_3?
#while/lstm_cell_25/ReadVariableOp_3ReadVariableOp,while_lstm_cell_25_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_25/ReadVariableOp_3?
(while/lstm_cell_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_25/strided_slice_3/stack?
*while/lstm_cell_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_25/strided_slice_3/stack_1?
*while/lstm_cell_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_25/strided_slice_3/stack_2?
"while/lstm_cell_25/strided_slice_3StridedSlice+while/lstm_cell_25/ReadVariableOp_3:value:01while/lstm_cell_25/strided_slice_3/stack:output:03while/lstm_cell_25/strided_slice_3/stack_1:output:03while/lstm_cell_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_25/strided_slice_3?
while/lstm_cell_25/MatMul_7MatMulwhile/lstm_cell_25/mul_3:z:0+while/lstm_cell_25/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/MatMul_7?
while/lstm_cell_25/add_4AddV2%while/lstm_cell_25/BiasAdd_3:output:0%while/lstm_cell_25/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/add_4?
while/lstm_cell_25/Sigmoid_2Sigmoidwhile/lstm_cell_25/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Sigmoid_2?
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/Relu_1?
while/lstm_cell_25/mul_6Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_25/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_25/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_25/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_25/ReadVariableOp$^while/lstm_cell_25/ReadVariableOp_1$^while/lstm_cell_25/ReadVariableOp_2$^while/lstm_cell_25/ReadVariableOp_3(^while/lstm_cell_25/split/ReadVariableOp*^while/lstm_cell_25/split_1/ReadVariableOp*"
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
*while_lstm_cell_25_readvariableop_resource,while_lstm_cell_25_readvariableop_resource_0"j
2while_lstm_cell_25_split_1_readvariableop_resource4while_lstm_cell_25_split_1_readvariableop_resource_0"f
0while_lstm_cell_25_split_readvariableop_resource2while_lstm_cell_25_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_25/ReadVariableOp!while/lstm_cell_25/ReadVariableOp2J
#while/lstm_cell_25/ReadVariableOp_1#while/lstm_cell_25/ReadVariableOp_12J
#while/lstm_cell_25/ReadVariableOp_2#while/lstm_cell_25/ReadVariableOp_22J
#while/lstm_cell_25/ReadVariableOp_3#while/lstm_cell_25/ReadVariableOp_32R
'while/lstm_cell_25/split/ReadVariableOp'while/lstm_cell_25/split/ReadVariableOp2V
)while/lstm_cell_25/split_1/ReadVariableOp)while/lstm_cell_25/split_1/ReadVariableOp: 
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
while_cond_922861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_922861___redundant_placeholder04
0while_while_cond_922861___redundant_placeholder14
0while_while_cond_922861___redundant_placeholder24
0while_while_cond_922861___redundant_placeholder3
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
A
input_115
serving_default_input_11:0?????????B

reshape_154
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
*`&call_and_return_all_conditional_losses
a__call__
b_default_save_signature"
_tf_keras_sequential
?
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
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"
_tf_keras_layer
?
trainable_variables
	variables
regularization_losses
 	keras_api
*i&call_and_return_all_conditional_losses
j__call__"
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
?
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
!:  2dense_30/kernel
: 2dense_30/bias
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
!: 2dense_31/kernel
:2dense_31/bias
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
?
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
.:,	?2lstm_25/lstm_cell_25/kernel
8:6	 ?2%lstm_25/lstm_cell_25/recurrent_kernel
(:&?2lstm_25/lstm_cell_25/bias
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
?
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
&:$  2Adam/dense_30/kernel/m
 : 2Adam/dense_30/bias/m
&:$ 2Adam/dense_31/kernel/m
 :2Adam/dense_31/bias/m
3:1	?2"Adam/lstm_25/lstm_cell_25/kernel/m
=:;	 ?2,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m
-:+?2 Adam/lstm_25/lstm_cell_25/bias/m
&:$  2Adam/dense_30/kernel/v
 : 2Adam/dense_30/bias/v
&:$ 2Adam/dense_31/kernel/v
 :2Adam/dense_31/bias/v
3:1	?2"Adam/lstm_25/lstm_cell_25/kernel/v
=:;	 ?2,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v
-:+?2 Adam/lstm_25/lstm_cell_25/bias/v
?2?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923911
I__inference_sequential_10_layer_call_and_return_conditional_losses_924246
I__inference_sequential_10_layer_call_and_return_conditional_losses_923567
I__inference_sequential_10_layer_call_and_return_conditional_losses_923601?
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
.__inference_sequential_10_layer_call_fn_923087
.__inference_sequential_10_layer_call_fn_924265
.__inference_sequential_10_layer_call_fn_924284
.__inference_sequential_10_layer_call_fn_923533?
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
?B?
!__inference__wrapped_model_921962input_11"?
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_924533
C__inference_lstm_25_layer_call_and_return_conditional_losses_924840
C__inference_lstm_25_layer_call_and_return_conditional_losses_925083
C__inference_lstm_25_layer_call_and_return_conditional_losses_925390?
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
(__inference_lstm_25_layer_call_fn_925401
(__inference_lstm_25_layer_call_fn_925412
(__inference_lstm_25_layer_call_fn_925423
(__inference_lstm_25_layer_call_fn_925434?
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
D__inference_dense_30_layer_call_and_return_conditional_losses_925445?
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
)__inference_dense_30_layer_call_fn_925454?
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
D__inference_dense_31_layer_call_and_return_conditional_losses_925476?
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
)__inference_dense_31_layer_call_fn_925485?
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_925498?
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
+__inference_reshape_15_layer_call_fn_925503?
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
__inference_loss_fn_0_925514?
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
$__inference_signature_wrapper_923640input_11"?
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_925601
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_925714?
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
-__inference_lstm_cell_25_layer_call_fn_925731
-__inference_lstm_cell_25_layer_call_fn_925748?
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
__inference_loss_fn_1_925759?
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
!__inference__wrapped_model_921962}&('5?2
+?(
&?#
input_11?????????
? ";?8
6

reshape_15(?%

reshape_15??????????
D__inference_dense_30_layer_call_and_return_conditional_losses_925445\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? |
)__inference_dense_30_layer_call_fn_925454O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
D__inference_dense_31_layer_call_and_return_conditional_losses_925476\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
)__inference_dense_31_layer_call_fn_925485O/?,
%?"
 ?
inputs????????? 
? "??????????;
__inference_loss_fn_0_925514?

? 
? "? ;
__inference_loss_fn_1_925759&?

? 
? "? ?
C__inference_lstm_25_layer_call_and_return_conditional_losses_924533}&('O?L
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_924840}&('O?L
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_925083m&('??<
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
C__inference_lstm_25_layer_call_and_return_conditional_losses_925390m&('??<
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
(__inference_lstm_25_layer_call_fn_925401p&('O?L
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
(__inference_lstm_25_layer_call_fn_925412p&('O?L
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
(__inference_lstm_25_layer_call_fn_925423`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
(__inference_lstm_25_layer_call_fn_925434`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_925601?&('??}
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
H__inference_lstm_cell_25_layer_call_and_return_conditional_losses_925714?&('??}
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
-__inference_lstm_cell_25_layer_call_fn_925731?&('??}
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
-__inference_lstm_cell_25_layer_call_fn_925748?&('??}
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
F__inference_reshape_15_layer_call_and_return_conditional_losses_925498\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ~
+__inference_reshape_15_layer_call_fn_925503O/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_sequential_10_layer_call_and_return_conditional_losses_923567s&('=?:
3?0
&?#
input_11?????????
p 

 
? ")?&
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923601s&('=?:
3?0
&?#
input_11?????????
p

 
? ")?&
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_923911q&(';?8
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_924246q&(';?8
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
.__inference_sequential_10_layer_call_fn_923087f&('=?:
3?0
&?#
input_11?????????
p 

 
? "???????????
.__inference_sequential_10_layer_call_fn_923533f&('=?:
3?0
&?#
input_11?????????
p

 
? "???????????
.__inference_sequential_10_layer_call_fn_924265d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_10_layer_call_fn_924284d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_923640?&('A?>
? 
7?4
2
input_11&?#
input_11?????????";?8
6

reshape_15(?%

reshape_15?????????