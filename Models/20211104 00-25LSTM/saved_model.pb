³'
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ã&
|
dense_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_144/kernel
u
$dense_144/kernel/Read/ReadVariableOpReadVariableOpdense_144/kernel*
_output_shapes

:  *
dtype0
t
dense_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_144/bias
m
"dense_144/bias/Read/ReadVariableOpReadVariableOpdense_144/bias*
_output_shapes
: *
dtype0
|
dense_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_145/kernel
u
$dense_145/kernel/Read/ReadVariableOpReadVariableOpdense_145/kernel*
_output_shapes

: *
dtype0
t
dense_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_145/bias
m
"dense_145/bias/Read/ReadVariableOpReadVariableOpdense_145/bias*
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
lstm_120/lstm_cell_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_120/lstm_cell_120/kernel

1lstm_120/lstm_cell_120/kernel/Read/ReadVariableOpReadVariableOplstm_120/lstm_cell_120/kernel*
_output_shapes
:	*
dtype0
«
'lstm_120/lstm_cell_120/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *8
shared_name)'lstm_120/lstm_cell_120/recurrent_kernel
¤
;lstm_120/lstm_cell_120/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_120/lstm_cell_120/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_120/lstm_cell_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_120/lstm_cell_120/bias

/lstm_120/lstm_cell_120/bias/Read/ReadVariableOpReadVariableOplstm_120/lstm_cell_120/bias*
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
Adam/dense_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_144/kernel/m

+Adam/dense_144/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_144/bias/m
{
)Adam/dense_144/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/m*
_output_shapes
: *
dtype0

Adam/dense_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_145/kernel/m

+Adam/dense_145/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_145/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_145/bias/m
{
)Adam/dense_145/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_145/bias/m*
_output_shapes
:*
dtype0
¥
$Adam/lstm_120/lstm_cell_120/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_120/lstm_cell_120/kernel/m

8Adam/lstm_120/lstm_cell_120/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_120/lstm_cell_120/kernel/m*
_output_shapes
:	*
dtype0
¹
.Adam/lstm_120/lstm_cell_120/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *?
shared_name0.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m
²
BAdam/lstm_120/lstm_cell_120/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

"Adam/lstm_120/lstm_cell_120/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_120/lstm_cell_120/bias/m

6Adam/lstm_120/lstm_cell_120/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_120/lstm_cell_120/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_144/kernel/v

+Adam/dense_144/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_144/bias/v
{
)Adam/dense_144/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_144/bias/v*
_output_shapes
: *
dtype0

Adam/dense_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_145/kernel/v

+Adam/dense_145/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_145/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_145/bias/v
{
)Adam/dense_145/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_145/bias/v*
_output_shapes
:*
dtype0
¥
$Adam/lstm_120/lstm_cell_120/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_120/lstm_cell_120/kernel/v

8Adam/lstm_120/lstm_cell_120/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_120/lstm_cell_120/kernel/v*
_output_shapes
:	*
dtype0
¹
.Adam/lstm_120/lstm_cell_120/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *?
shared_name0.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v
²
BAdam/lstm_120/lstm_cell_120/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

"Adam/lstm_120/lstm_cell_120/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_120/lstm_cell_120/bias/v

6Adam/lstm_120/lstm_cell_120/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_120/lstm_cell_120/bias/v*
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
VARIABLE_VALUEdense_144/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_144/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_145/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_145/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_120/lstm_cell_120/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_120/lstm_cell_120/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_120/lstm_cell_120/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEAdam/dense_144/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_144/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_145/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_145/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_120/lstm_cell_120/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_120/lstm_cell_120/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_120/lstm_cell_120/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_144/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_144/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_145/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_145/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_120/lstm_cell_120/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_120/lstm_cell_120/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_120/lstm_cell_120/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_49Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ï
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_49lstm_120/lstm_cell_120/kernellstm_120/lstm_cell_120/bias'lstm_120/lstm_cell_120/recurrent_kerneldense_144/kerneldense_144/biasdense_145/kerneldense_145/bias*
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
%__inference_signature_wrapper_3891311
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_144/kernel/Read/ReadVariableOp"dense_144/bias/Read/ReadVariableOp$dense_145/kernel/Read/ReadVariableOp"dense_145/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_120/lstm_cell_120/kernel/Read/ReadVariableOp;lstm_120/lstm_cell_120/recurrent_kernel/Read/ReadVariableOp/lstm_120/lstm_cell_120/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_144/kernel/m/Read/ReadVariableOp)Adam/dense_144/bias/m/Read/ReadVariableOp+Adam/dense_145/kernel/m/Read/ReadVariableOp)Adam/dense_145/bias/m/Read/ReadVariableOp8Adam/lstm_120/lstm_cell_120/kernel/m/Read/ReadVariableOpBAdam/lstm_120/lstm_cell_120/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_120/lstm_cell_120/bias/m/Read/ReadVariableOp+Adam/dense_144/kernel/v/Read/ReadVariableOp)Adam/dense_144/bias/v/Read/ReadVariableOp+Adam/dense_145/kernel/v/Read/ReadVariableOp)Adam/dense_145/bias/v/Read/ReadVariableOp8Adam/lstm_120/lstm_cell_120/kernel/v/Read/ReadVariableOpBAdam/lstm_120/lstm_cell_120/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_120/lstm_cell_120/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_3893537
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_144/kerneldense_144/biasdense_145/kerneldense_145/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_120/lstm_cell_120/kernel'lstm_120/lstm_cell_120/recurrent_kernellstm_120/lstm_cell_120/biastotalcountAdam/dense_144/kernel/mAdam/dense_144/bias/mAdam/dense_145/kernel/mAdam/dense_145/bias/m$Adam/lstm_120/lstm_cell_120/kernel/m.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m"Adam/lstm_120/lstm_cell_120/bias/mAdam/dense_144/kernel/vAdam/dense_144/bias/vAdam/dense_145/kernel/vAdam/dense_145/bias/v$Adam/lstm_120/lstm_cell_120/kernel/v.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v"Adam/lstm_120/lstm_cell_120/bias/v*(
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
#__inference__traced_restore_3893631Æ%

ª
F__inference_dense_145_layer_call_and_return_conditional_losses_3893147

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢0dense_145/bias/Regularizer/Square/ReadVariableOp
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
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_145/bias/Regularizer/Square/ReadVariableOp*"
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
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾
º
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891955

inputsG
4lstm_120_lstm_cell_120_split_readvariableop_resource:	E
6lstm_120_lstm_cell_120_split_1_readvariableop_resource:	A
.lstm_120_lstm_cell_120_readvariableop_resource:	 :
(dense_144_matmul_readvariableop_resource:  7
)dense_144_biasadd_readvariableop_resource: :
(dense_145_matmul_readvariableop_resource: 7
)dense_145_biasadd_readvariableop_resource:
identity¢ dense_144/BiasAdd/ReadVariableOp¢dense_144/MatMul/ReadVariableOp¢ dense_145/BiasAdd/ReadVariableOp¢dense_145/MatMul/ReadVariableOp¢0dense_145/bias/Regularizer/Square/ReadVariableOp¢%lstm_120/lstm_cell_120/ReadVariableOp¢'lstm_120/lstm_cell_120/ReadVariableOp_1¢'lstm_120/lstm_cell_120/ReadVariableOp_2¢'lstm_120/lstm_cell_120/ReadVariableOp_3¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢+lstm_120/lstm_cell_120/split/ReadVariableOp¢-lstm_120/lstm_cell_120/split_1/ReadVariableOp¢lstm_120/whileV
lstm_120/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_120/Shape
lstm_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_120/strided_slice/stack
lstm_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_120/strided_slice/stack_1
lstm_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_120/strided_slice/stack_2
lstm_120/strided_sliceStridedSlicelstm_120/Shape:output:0%lstm_120/strided_slice/stack:output:0'lstm_120/strided_slice/stack_1:output:0'lstm_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_120/strided_slicen
lstm_120/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros/mul/y
lstm_120/zeros/mulMullstm_120/strided_slice:output:0lstm_120/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros/mulq
lstm_120/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_120/zeros/Less/y
lstm_120/zeros/LessLesslstm_120/zeros/mul:z:0lstm_120/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros/Lesst
lstm_120/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros/packed/1§
lstm_120/zeros/packedPacklstm_120/strided_slice:output:0 lstm_120/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_120/zeros/packedq
lstm_120/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_120/zeros/Const
lstm_120/zerosFilllstm_120/zeros/packed:output:0lstm_120/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/zerosr
lstm_120/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros_1/mul/y
lstm_120/zeros_1/mulMullstm_120/strided_slice:output:0lstm_120/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros_1/mulu
lstm_120/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_120/zeros_1/Less/y
lstm_120/zeros_1/LessLesslstm_120/zeros_1/mul:z:0 lstm_120/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros_1/Lessx
lstm_120/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros_1/packed/1­
lstm_120/zeros_1/packedPacklstm_120/strided_slice:output:0"lstm_120/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_120/zeros_1/packedu
lstm_120/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_120/zeros_1/Const¡
lstm_120/zeros_1Fill lstm_120/zeros_1/packed:output:0lstm_120/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/zeros_1
lstm_120/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_120/transpose/perm
lstm_120/transpose	Transposeinputs lstm_120/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_120/transposej
lstm_120/Shape_1Shapelstm_120/transpose:y:0*
T0*
_output_shapes
:2
lstm_120/Shape_1
lstm_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_120/strided_slice_1/stack
 lstm_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_1/stack_1
 lstm_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_1/stack_2¤
lstm_120/strided_slice_1StridedSlicelstm_120/Shape_1:output:0'lstm_120/strided_slice_1/stack:output:0)lstm_120/strided_slice_1/stack_1:output:0)lstm_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_120/strided_slice_1
$lstm_120/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$lstm_120/TensorArrayV2/element_shapeÖ
lstm_120/TensorArrayV2TensorListReserve-lstm_120/TensorArrayV2/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_120/TensorArrayV2Ñ
>lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_120/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_120/transpose:y:0Glstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_120/TensorArrayUnstack/TensorListFromTensor
lstm_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_120/strided_slice_2/stack
 lstm_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_2/stack_1
 lstm_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_2/stack_2²
lstm_120/strided_slice_2StridedSlicelstm_120/transpose:y:0'lstm_120/strided_slice_2/stack:output:0)lstm_120/strided_slice_2/stack_1:output:0)lstm_120/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_120/strided_slice_2
&lstm_120/lstm_cell_120/ones_like/ShapeShapelstm_120/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_120/lstm_cell_120/ones_like/Shape
&lstm_120/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_120/lstm_cell_120/ones_like/Constà
 lstm_120/lstm_cell_120/ones_likeFill/lstm_120/lstm_cell_120/ones_like/Shape:output:0/lstm_120/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/ones_like
$lstm_120/lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_120/lstm_cell_120/dropout/ConstÛ
"lstm_120/lstm_cell_120/dropout/MulMul)lstm_120/lstm_cell_120/ones_like:output:0-lstm_120/lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/lstm_cell_120/dropout/Mul¥
$lstm_120/lstm_cell_120/dropout/ShapeShape)lstm_120/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_120/lstm_cell_120/dropout/Shape
;lstm_120/lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform-lstm_120/lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ðüµ2=
;lstm_120/lstm_cell_120/dropout/random_uniform/RandomUniform£
-lstm_120/lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_120/lstm_cell_120/dropout/GreaterEqual/y
+lstm_120/lstm_cell_120/dropout/GreaterEqualGreaterEqualDlstm_120/lstm_cell_120/dropout/random_uniform/RandomUniform:output:06lstm_120/lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_120/lstm_cell_120/dropout/GreaterEqualÄ
#lstm_120/lstm_cell_120/dropout/CastCast/lstm_120/lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_120/lstm_cell_120/dropout/CastÖ
$lstm_120/lstm_cell_120/dropout/Mul_1Mul&lstm_120/lstm_cell_120/dropout/Mul:z:0'lstm_120/lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/lstm_cell_120/dropout/Mul_1
&lstm_120/lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2(
&lstm_120/lstm_cell_120/dropout_1/Constá
$lstm_120/lstm_cell_120/dropout_1/MulMul)lstm_120/lstm_cell_120/ones_like:output:0/lstm_120/lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/lstm_cell_120/dropout_1/Mul©
&lstm_120/lstm_cell_120/dropout_1/ShapeShape)lstm_120/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_120/lstm_cell_120/dropout_1/Shape
=lstm_120/lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform/lstm_120/lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Â2?
=lstm_120/lstm_cell_120/dropout_1/random_uniform/RandomUniform§
/lstm_120/lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_120/lstm_cell_120/dropout_1/GreaterEqual/y¢
-lstm_120/lstm_cell_120/dropout_1/GreaterEqualGreaterEqualFlstm_120/lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:08lstm_120/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_120/lstm_cell_120/dropout_1/GreaterEqualÊ
%lstm_120/lstm_cell_120/dropout_1/CastCast1lstm_120/lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/lstm_cell_120/dropout_1/CastÞ
&lstm_120/lstm_cell_120/dropout_1/Mul_1Mul(lstm_120/lstm_cell_120/dropout_1/Mul:z:0)lstm_120/lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/lstm_cell_120/dropout_1/Mul_1
&lstm_120/lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2(
&lstm_120/lstm_cell_120/dropout_2/Constá
$lstm_120/lstm_cell_120/dropout_2/MulMul)lstm_120/lstm_cell_120/ones_like:output:0/lstm_120/lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/lstm_cell_120/dropout_2/Mul©
&lstm_120/lstm_cell_120/dropout_2/ShapeShape)lstm_120/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_120/lstm_cell_120/dropout_2/Shape
=lstm_120/lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform/lstm_120/lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Õ¡2?
=lstm_120/lstm_cell_120/dropout_2/random_uniform/RandomUniform§
/lstm_120/lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_120/lstm_cell_120/dropout_2/GreaterEqual/y¢
-lstm_120/lstm_cell_120/dropout_2/GreaterEqualGreaterEqualFlstm_120/lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:08lstm_120/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_120/lstm_cell_120/dropout_2/GreaterEqualÊ
%lstm_120/lstm_cell_120/dropout_2/CastCast1lstm_120/lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/lstm_cell_120/dropout_2/CastÞ
&lstm_120/lstm_cell_120/dropout_2/Mul_1Mul(lstm_120/lstm_cell_120/dropout_2/Mul:z:0)lstm_120/lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/lstm_cell_120/dropout_2/Mul_1
&lstm_120/lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2(
&lstm_120/lstm_cell_120/dropout_3/Constá
$lstm_120/lstm_cell_120/dropout_3/MulMul)lstm_120/lstm_cell_120/ones_like:output:0/lstm_120/lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/lstm_cell_120/dropout_3/Mul©
&lstm_120/lstm_cell_120/dropout_3/ShapeShape)lstm_120/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_120/lstm_cell_120/dropout_3/Shape
=lstm_120/lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform/lstm_120/lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2²ñ¼2?
=lstm_120/lstm_cell_120/dropout_3/random_uniform/RandomUniform§
/lstm_120/lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>21
/lstm_120/lstm_cell_120/dropout_3/GreaterEqual/y¢
-lstm_120/lstm_cell_120/dropout_3/GreaterEqualGreaterEqualFlstm_120/lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:08lstm_120/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_120/lstm_cell_120/dropout_3/GreaterEqualÊ
%lstm_120/lstm_cell_120/dropout_3/CastCast1lstm_120/lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/lstm_cell_120/dropout_3/CastÞ
&lstm_120/lstm_cell_120/dropout_3/Mul_1Mul(lstm_120/lstm_cell_120/dropout_3/Mul:z:0)lstm_120/lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/lstm_cell_120/dropout_3/Mul_1
&lstm_120/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_120/lstm_cell_120/split/split_dimÐ
+lstm_120/lstm_cell_120/split/ReadVariableOpReadVariableOp4lstm_120_lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_120/lstm_cell_120/split/ReadVariableOp
lstm_120/lstm_cell_120/splitSplit/lstm_120/lstm_cell_120/split/split_dim:output:03lstm_120/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_120/lstm_cell_120/splitÄ
lstm_120/lstm_cell_120/MatMulMatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/MatMulÈ
lstm_120/lstm_cell_120/MatMul_1MatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_1È
lstm_120/lstm_cell_120/MatMul_2MatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_2È
lstm_120/lstm_cell_120/MatMul_3MatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_3
(lstm_120/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm_120/lstm_cell_120/split_1/split_dimÒ
-lstm_120/lstm_cell_120/split_1/ReadVariableOpReadVariableOp6lstm_120_lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02/
-lstm_120/lstm_cell_120/split_1/ReadVariableOpû
lstm_120/lstm_cell_120/split_1Split1lstm_120/lstm_cell_120/split_1/split_dim:output:05lstm_120/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm_120/lstm_cell_120/split_1Ï
lstm_120/lstm_cell_120/BiasAddBiasAdd'lstm_120/lstm_cell_120/MatMul:product:0'lstm_120/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_120/lstm_cell_120/BiasAddÕ
 lstm_120/lstm_cell_120/BiasAdd_1BiasAdd)lstm_120/lstm_cell_120/MatMul_1:product:0'lstm_120/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/BiasAdd_1Õ
 lstm_120/lstm_cell_120/BiasAdd_2BiasAdd)lstm_120/lstm_cell_120/MatMul_2:product:0'lstm_120/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/BiasAdd_2Õ
 lstm_120/lstm_cell_120/BiasAdd_3BiasAdd)lstm_120/lstm_cell_120/MatMul_3:product:0'lstm_120/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/BiasAdd_3´
lstm_120/lstm_cell_120/mulMullstm_120/zeros:output:0(lstm_120/lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mulº
lstm_120/lstm_cell_120/mul_1Mullstm_120/zeros:output:0*lstm_120/lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_1º
lstm_120/lstm_cell_120/mul_2Mullstm_120/zeros:output:0*lstm_120/lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_2º
lstm_120/lstm_cell_120/mul_3Mullstm_120/zeros:output:0*lstm_120/lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_3¾
%lstm_120/lstm_cell_120/ReadVariableOpReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_120/lstm_cell_120/ReadVariableOp©
*lstm_120/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_120/lstm_cell_120/strided_slice/stack­
,lstm_120/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_120/lstm_cell_120/strided_slice/stack_1­
,lstm_120/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_120/lstm_cell_120/strided_slice/stack_2
$lstm_120/lstm_cell_120/strided_sliceStridedSlice-lstm_120/lstm_cell_120/ReadVariableOp:value:03lstm_120/lstm_cell_120/strided_slice/stack:output:05lstm_120/lstm_cell_120/strided_slice/stack_1:output:05lstm_120/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_120/lstm_cell_120/strided_sliceÍ
lstm_120/lstm_cell_120/MatMul_4MatMullstm_120/lstm_cell_120/mul:z:0-lstm_120/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_4Ç
lstm_120/lstm_cell_120/addAddV2'lstm_120/lstm_cell_120/BiasAdd:output:0)lstm_120/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add
lstm_120/lstm_cell_120/SigmoidSigmoidlstm_120/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_120/lstm_cell_120/SigmoidÂ
'lstm_120/lstm_cell_120/ReadVariableOp_1ReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_120/lstm_cell_120/ReadVariableOp_1­
,lstm_120/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_120/lstm_cell_120/strided_slice_1/stack±
.lstm_120/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_120/lstm_cell_120/strided_slice_1/stack_1±
.lstm_120/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_120/lstm_cell_120/strided_slice_1/stack_2
&lstm_120/lstm_cell_120/strided_slice_1StridedSlice/lstm_120/lstm_cell_120/ReadVariableOp_1:value:05lstm_120/lstm_cell_120/strided_slice_1/stack:output:07lstm_120/lstm_cell_120/strided_slice_1/stack_1:output:07lstm_120/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_120/lstm_cell_120/strided_slice_1Ñ
lstm_120/lstm_cell_120/MatMul_5MatMul lstm_120/lstm_cell_120/mul_1:z:0/lstm_120/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_5Í
lstm_120/lstm_cell_120/add_1AddV2)lstm_120/lstm_cell_120/BiasAdd_1:output:0)lstm_120/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_1£
 lstm_120/lstm_cell_120/Sigmoid_1Sigmoid lstm_120/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/Sigmoid_1¶
lstm_120/lstm_cell_120/mul_4Mul$lstm_120/lstm_cell_120/Sigmoid_1:y:0lstm_120/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_4Â
'lstm_120/lstm_cell_120/ReadVariableOp_2ReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_120/lstm_cell_120/ReadVariableOp_2­
,lstm_120/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_120/lstm_cell_120/strided_slice_2/stack±
.lstm_120/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_120/lstm_cell_120/strided_slice_2/stack_1±
.lstm_120/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_120/lstm_cell_120/strided_slice_2/stack_2
&lstm_120/lstm_cell_120/strided_slice_2StridedSlice/lstm_120/lstm_cell_120/ReadVariableOp_2:value:05lstm_120/lstm_cell_120/strided_slice_2/stack:output:07lstm_120/lstm_cell_120/strided_slice_2/stack_1:output:07lstm_120/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_120/lstm_cell_120/strided_slice_2Ñ
lstm_120/lstm_cell_120/MatMul_6MatMul lstm_120/lstm_cell_120/mul_2:z:0/lstm_120/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_6Í
lstm_120/lstm_cell_120/add_2AddV2)lstm_120/lstm_cell_120/BiasAdd_2:output:0)lstm_120/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_2
lstm_120/lstm_cell_120/ReluRelu lstm_120/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/ReluÄ
lstm_120/lstm_cell_120/mul_5Mul"lstm_120/lstm_cell_120/Sigmoid:y:0)lstm_120/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_5»
lstm_120/lstm_cell_120/add_3AddV2 lstm_120/lstm_cell_120/mul_4:z:0 lstm_120/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_3Â
'lstm_120/lstm_cell_120/ReadVariableOp_3ReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_120/lstm_cell_120/ReadVariableOp_3­
,lstm_120/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_120/lstm_cell_120/strided_slice_3/stack±
.lstm_120/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_120/lstm_cell_120/strided_slice_3/stack_1±
.lstm_120/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_120/lstm_cell_120/strided_slice_3/stack_2
&lstm_120/lstm_cell_120/strided_slice_3StridedSlice/lstm_120/lstm_cell_120/ReadVariableOp_3:value:05lstm_120/lstm_cell_120/strided_slice_3/stack:output:07lstm_120/lstm_cell_120/strided_slice_3/stack_1:output:07lstm_120/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_120/lstm_cell_120/strided_slice_3Ñ
lstm_120/lstm_cell_120/MatMul_7MatMul lstm_120/lstm_cell_120/mul_3:z:0/lstm_120/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_7Í
lstm_120/lstm_cell_120/add_4AddV2)lstm_120/lstm_cell_120/BiasAdd_3:output:0)lstm_120/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_4£
 lstm_120/lstm_cell_120/Sigmoid_2Sigmoid lstm_120/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/Sigmoid_2
lstm_120/lstm_cell_120/Relu_1Relu lstm_120/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/Relu_1È
lstm_120/lstm_cell_120/mul_6Mul$lstm_120/lstm_cell_120/Sigmoid_2:y:0+lstm_120/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_6¡
&lstm_120/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2(
&lstm_120/TensorArrayV2_1/element_shapeÜ
lstm_120/TensorArrayV2_1TensorListReserve/lstm_120/TensorArrayV2_1/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_120/TensorArrayV2_1`
lstm_120/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/time
!lstm_120/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!lstm_120/while/maximum_iterations|
lstm_120/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/while/loop_counter
lstm_120/whileWhile$lstm_120/while/loop_counter:output:0*lstm_120/while/maximum_iterations:output:0lstm_120/time:output:0!lstm_120/TensorArrayV2_1:handle:0lstm_120/zeros:output:0lstm_120/zeros_1:output:0!lstm_120/strided_slice_1:output:0@lstm_120/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_120_lstm_cell_120_split_readvariableop_resource6lstm_120_lstm_cell_120_split_1_readvariableop_resource.lstm_120_lstm_cell_120_readvariableop_resource*
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
lstm_120_while_body_3891762*'
condR
lstm_120_while_cond_3891761*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_120/whileÇ
9lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2;
9lstm_120/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_120/TensorArrayV2Stack/TensorListStackTensorListStacklstm_120/while:output:3Blstm_120/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02-
+lstm_120/TensorArrayV2Stack/TensorListStack
lstm_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2 
lstm_120/strided_slice_3/stack
 lstm_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_120/strided_slice_3/stack_1
 lstm_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_3/stack_2Ð
lstm_120/strided_slice_3StridedSlice4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_120/strided_slice_3/stack:output:0)lstm_120/strided_slice_3/stack_1:output:0)lstm_120/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_120/strided_slice_3
lstm_120/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_120/transpose_1/permÉ
lstm_120/transpose_1	Transpose4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_120/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/transpose_1x
lstm_120/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_120/runtime«
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_144/MatMul/ReadVariableOp¬
dense_144/MatMulMatMul!lstm_120/strided_slice_3:output:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_144/MatMulª
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_144/BiasAdd/ReadVariableOp©
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_144/BiasAddv
dense_144/ReluReludense_144/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_144/Relu«
dense_145/MatMul/ReadVariableOpReadVariableOp(dense_145_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_145/MatMul/ReadVariableOp§
dense_145/MatMulMatMuldense_144/Relu:activations:0'dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_145/MatMulª
 dense_145/BiasAdd/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_145/BiasAdd/ReadVariableOp©
dense_145/BiasAddBiasAdddense_145/MatMul:product:0(dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_145/BiasAddn
reshape_72/ShapeShapedense_145/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_72/Shape
reshape_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_72/strided_slice/stack
 reshape_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_1
 reshape_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_2¤
reshape_72/strided_sliceStridedSlicereshape_72/Shape:output:0'reshape_72/strided_slice/stack:output:0)reshape_72/strided_slice/stack_1:output:0)reshape_72/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_72/strided_slicez
reshape_72/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_72/Reshape/shape/1z
reshape_72/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_72/Reshape/shape/2×
reshape_72/Reshape/shapePack!reshape_72/strided_slice:output:0#reshape_72/Reshape/shape/1:output:0#reshape_72/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_72/Reshape/shape¨
reshape_72/ReshapeReshapedense_145/BiasAdd:output:0!reshape_72/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_72/Reshapeø
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4lstm_120_lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mulÊ
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mulz
IdentityIdentityreshape_72/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityâ
NoOpNoOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp!^dense_145/BiasAdd/ReadVariableOp ^dense_145/MatMul/ReadVariableOp1^dense_145/bias/Regularizer/Square/ReadVariableOp&^lstm_120/lstm_cell_120/ReadVariableOp(^lstm_120/lstm_cell_120/ReadVariableOp_1(^lstm_120/lstm_cell_120/ReadVariableOp_2(^lstm_120/lstm_cell_120/ReadVariableOp_3@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp,^lstm_120/lstm_cell_120/split/ReadVariableOp.^lstm_120/lstm_cell_120/split_1/ReadVariableOp^lstm_120/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2D
 dense_145/BiasAdd/ReadVariableOp dense_145/BiasAdd/ReadVariableOp2B
dense_145/MatMul/ReadVariableOpdense_145/MatMul/ReadVariableOp2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp2N
%lstm_120/lstm_cell_120/ReadVariableOp%lstm_120/lstm_cell_120/ReadVariableOp2R
'lstm_120/lstm_cell_120/ReadVariableOp_1'lstm_120/lstm_cell_120/ReadVariableOp_12R
'lstm_120/lstm_cell_120/ReadVariableOp_2'lstm_120/lstm_cell_120/ReadVariableOp_22R
'lstm_120/lstm_cell_120/ReadVariableOp_3'lstm_120/lstm_cell_120/ReadVariableOp_32
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2Z
+lstm_120/lstm_cell_120/split/ReadVariableOp+lstm_120/lstm_cell_120/split/ReadVariableOp2^
-lstm_120/lstm_cell_120/split_1/ReadVariableOp-lstm_120/lstm_cell_120/split_1/ReadVariableOp2 
lstm_120/whilelstm_120/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

÷
F__inference_dense_144_layer_call_and_return_conditional_losses_3890685

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
ê	
ª
/__inference_sequential_48_layer_call_fn_3891204
input_49
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_49unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_48_layer_call_and_return_conditional_losses_38911682
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
input_49

÷
F__inference_dense_144_layer_call_and_return_conditional_losses_3893116

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
J__inference_sequential_48_layer_call_and_return_conditional_losses_3890741

inputs#
lstm_120_3890667:	
lstm_120_3890669:	#
lstm_120_3890671:	 #
dense_144_3890686:  
dense_144_3890688: #
dense_145_3890708: 
dense_145_3890710:
identity¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢0dense_145/bias/Regularizer/Square/ReadVariableOp¢ lstm_120/StatefulPartitionedCall¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp«
 lstm_120/StatefulPartitionedCallStatefulPartitionedCallinputslstm_120_3890667lstm_120_3890669lstm_120_3890671*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38906662"
 lstm_120/StatefulPartitionedCall¿
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0dense_144_3890686dense_144_3890688*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_38906852#
!dense_144/StatefulPartitionedCallÀ
!dense_145/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0dense_145_3890708dense_145_3890710*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_38907072#
!dense_145/StatefulPartitionedCall
reshape_72/PartitionedCallPartitionedCall*dense_145/StatefulPartitionedCall:output:0*
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_38907262
reshape_72/PartitionedCallÔ
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_120_3890667*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mul²
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_145_3890710*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mul
IdentityIdentity#reshape_72/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall1^dense_145/bias/Regularizer/Square/ReadVariableOp!^lstm_120/StatefulPartitionedCall@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à,
Â
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891238
input_49#
lstm_120_3891207:	
lstm_120_3891209:	#
lstm_120_3891211:	 #
dense_144_3891214:  
dense_144_3891216: #
dense_145_3891219: 
dense_145_3891221:
identity¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢0dense_145/bias/Regularizer/Square/ReadVariableOp¢ lstm_120/StatefulPartitionedCall¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp­
 lstm_120/StatefulPartitionedCallStatefulPartitionedCallinput_49lstm_120_3891207lstm_120_3891209lstm_120_3891211*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38906662"
 lstm_120/StatefulPartitionedCall¿
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0dense_144_3891214dense_144_3891216*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_38906852#
!dense_144/StatefulPartitionedCallÀ
!dense_145/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0dense_145_3891219dense_145_3891221*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_38907072#
!dense_145/StatefulPartitionedCall
reshape_72/PartitionedCallPartitionedCall*dense_145/StatefulPartitionedCall:output:0*
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_38907262
reshape_72/PartitionedCallÔ
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_120_3891207*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mul²
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_145_3891221*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mul
IdentityIdentity#reshape_72/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall1^dense_145/bias/Regularizer/Square/ReadVariableOp!^lstm_120/StatefulPartitionedCall@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_49
ê£
´
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892798

inputs>
+lstm_cell_120_split_readvariableop_resource:	<
-lstm_cell_120_split_1_readvariableop_resource:	8
%lstm_cell_120_readvariableop_resource:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_120/ReadVariableOp¢lstm_cell_120/ReadVariableOp_1¢lstm_cell_120/ReadVariableOp_2¢lstm_cell_120/ReadVariableOp_3¢"lstm_cell_120/split/ReadVariableOp¢$lstm_cell_120/split_1/ReadVariableOp¢whileD
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
lstm_cell_120/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_120/ones_like/Shape
lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_120/ones_like/Const¼
lstm_cell_120/ones_likeFill&lstm_cell_120/ones_like/Shape:output:0&lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/ones_like
lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_120/split/split_dimµ
"lstm_cell_120/split/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_120/split/ReadVariableOpß
lstm_cell_120/splitSplit&lstm_cell_120/split/split_dim:output:0*lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_120/split 
lstm_cell_120/MatMulMatMulstrided_slice_2:output:0lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul¤
lstm_cell_120/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_1¤
lstm_cell_120/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_2¤
lstm_cell_120/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_3
lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_120/split_1/split_dim·
$lstm_cell_120/split_1/ReadVariableOpReadVariableOp-lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_120/split_1/ReadVariableOp×
lstm_cell_120/split_1Split(lstm_cell_120/split_1/split_dim:output:0,lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_120/split_1«
lstm_cell_120/BiasAddBiasAddlstm_cell_120/MatMul:product:0lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd±
lstm_cell_120/BiasAdd_1BiasAdd lstm_cell_120/MatMul_1:product:0lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_1±
lstm_cell_120/BiasAdd_2BiasAdd lstm_cell_120/MatMul_2:product:0lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_2±
lstm_cell_120/BiasAdd_3BiasAdd lstm_cell_120/MatMul_3:product:0lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_3
lstm_cell_120/mulMulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul
lstm_cell_120/mul_1Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_1
lstm_cell_120/mul_2Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_2
lstm_cell_120/mul_3Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_3£
lstm_cell_120/ReadVariableOpReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_120/ReadVariableOp
!lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_120/strided_slice/stack
#lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice/stack_1
#lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_120/strided_slice/stack_2Ð
lstm_cell_120/strided_sliceStridedSlice$lstm_cell_120/ReadVariableOp:value:0*lstm_cell_120/strided_slice/stack:output:0,lstm_cell_120/strided_slice/stack_1:output:0,lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice©
lstm_cell_120/MatMul_4MatMullstm_cell_120/mul:z:0$lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_4£
lstm_cell_120/addAddV2lstm_cell_120/BiasAdd:output:0 lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add
lstm_cell_120/SigmoidSigmoidlstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid§
lstm_cell_120/ReadVariableOp_1ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_1
#lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice_1/stack
%lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_120/strided_slice_1/stack_1
%lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_1/stack_2Ü
lstm_cell_120/strided_slice_1StridedSlice&lstm_cell_120/ReadVariableOp_1:value:0,lstm_cell_120/strided_slice_1/stack:output:0.lstm_cell_120/strided_slice_1/stack_1:output:0.lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_1­
lstm_cell_120/MatMul_5MatMullstm_cell_120/mul_1:z:0&lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_5©
lstm_cell_120/add_1AddV2 lstm_cell_120/BiasAdd_1:output:0 lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_1
lstm_cell_120/Sigmoid_1Sigmoidlstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_1
lstm_cell_120/mul_4Mullstm_cell_120/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_4§
lstm_cell_120/ReadVariableOp_2ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_2
#lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_120/strided_slice_2/stack
%lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_120/strided_slice_2/stack_1
%lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_2/stack_2Ü
lstm_cell_120/strided_slice_2StridedSlice&lstm_cell_120/ReadVariableOp_2:value:0,lstm_cell_120/strided_slice_2/stack:output:0.lstm_cell_120/strided_slice_2/stack_1:output:0.lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_2­
lstm_cell_120/MatMul_6MatMullstm_cell_120/mul_2:z:0&lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_6©
lstm_cell_120/add_2AddV2 lstm_cell_120/BiasAdd_2:output:0 lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_2{
lstm_cell_120/ReluRelulstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu 
lstm_cell_120/mul_5Mullstm_cell_120/Sigmoid:y:0 lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_5
lstm_cell_120/add_3AddV2lstm_cell_120/mul_4:z:0lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_3§
lstm_cell_120/ReadVariableOp_3ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_3
#lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_120/strided_slice_3/stack
%lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_120/strided_slice_3/stack_1
%lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_3/stack_2Ü
lstm_cell_120/strided_slice_3StridedSlice&lstm_cell_120/ReadVariableOp_3:value:0,lstm_cell_120/strided_slice_3/stack:output:0.lstm_cell_120/strided_slice_3/stack_1:output:0.lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_3­
lstm_cell_120/MatMul_7MatMullstm_cell_120/mul_3:z:0&lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_7©
lstm_cell_120/add_4AddV2 lstm_cell_120/BiasAdd_3:output:0 lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_4
lstm_cell_120/Sigmoid_2Sigmoidlstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_2
lstm_cell_120/Relu_1Relulstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu_1¤
lstm_cell_120/mul_6Mullstm_cell_120/Sigmoid_2:y:0"lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_120_split_readvariableop_resource-lstm_cell_120_split_1_readvariableop_resource%lstm_cell_120_readvariableop_resource*
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
while_body_3892665*
condR
while_cond_3892664*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_120/ReadVariableOp^lstm_cell_120/ReadVariableOp_1^lstm_cell_120/ReadVariableOp_2^lstm_cell_120/ReadVariableOp_3#^lstm_cell_120/split/ReadVariableOp%^lstm_cell_120/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_120/ReadVariableOplstm_cell_120/ReadVariableOp2@
lstm_cell_120/ReadVariableOp_1lstm_cell_120/ReadVariableOp_12@
lstm_cell_120/ReadVariableOp_2lstm_cell_120/ReadVariableOp_22@
lstm_cell_120/ReadVariableOp_3lstm_cell_120/ReadVariableOp_32H
"lstm_cell_120/split/ReadVariableOp"lstm_cell_120/split/ReadVariableOp2L
$lstm_cell_120/split_1/ReadVariableOp$lstm_cell_120/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú,
À
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891168

inputs#
lstm_120_3891137:	
lstm_120_3891139:	#
lstm_120_3891141:	 #
dense_144_3891144:  
dense_144_3891146: #
dense_145_3891149: 
dense_145_3891151:
identity¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢0dense_145/bias/Regularizer/Square/ReadVariableOp¢ lstm_120/StatefulPartitionedCall¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp«
 lstm_120/StatefulPartitionedCallStatefulPartitionedCallinputslstm_120_3891137lstm_120_3891139lstm_120_3891141*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38911042"
 lstm_120/StatefulPartitionedCall¿
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0dense_144_3891144dense_144_3891146*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_38906852#
!dense_144/StatefulPartitionedCallÀ
!dense_145/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0dense_145_3891149dense_145_3891151*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_38907072#
!dense_145/StatefulPartitionedCall
reshape_72/PartitionedCallPartitionedCall*dense_145/StatefulPartitionedCall:output:0*
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_38907262
reshape_72/PartitionedCallÔ
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_120_3891137*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mul²
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_145_3891151*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mul
IdentityIdentity#reshape_72/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall1^dense_145/bias/Regularizer/Square/ReadVariableOp!^lstm_120/StatefulPartitionedCall@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þÒ
¶
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892555
inputs_0>
+lstm_cell_120_split_readvariableop_resource:	<
-lstm_cell_120_split_1_readvariableop_resource:	8
%lstm_cell_120_readvariableop_resource:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_120/ReadVariableOp¢lstm_cell_120/ReadVariableOp_1¢lstm_cell_120/ReadVariableOp_2¢lstm_cell_120/ReadVariableOp_3¢"lstm_cell_120/split/ReadVariableOp¢$lstm_cell_120/split_1/ReadVariableOp¢whileF
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
lstm_cell_120/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_120/ones_like/Shape
lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_120/ones_like/Const¼
lstm_cell_120/ones_likeFill&lstm_cell_120/ones_like/Shape:output:0&lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/ones_like
lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout/Const·
lstm_cell_120/dropout/MulMul lstm_cell_120/ones_like:output:0$lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Mul
lstm_cell_120/dropout/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout/Shapeû
2lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¶¤Ú24
2lstm_cell_120/dropout/random_uniform/RandomUniform
$lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_120/dropout/GreaterEqual/yö
"lstm_cell_120/dropout/GreaterEqualGreaterEqual;lstm_cell_120/dropout/random_uniform/RandomUniform:output:0-lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_120/dropout/GreaterEqual©
lstm_cell_120/dropout/CastCast&lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Cast²
lstm_cell_120/dropout/Mul_1Mullstm_cell_120/dropout/Mul:z:0lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Mul_1
lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_1/Const½
lstm_cell_120/dropout_1/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Mul
lstm_cell_120/dropout_1/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_1/Shape
4lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¦Ó26
4lstm_cell_120/dropout_1/random_uniform/RandomUniform
&lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_1/GreaterEqual/yþ
$lstm_cell_120/dropout_1/GreaterEqualGreaterEqual=lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_1/GreaterEqual¯
lstm_cell_120/dropout_1/CastCast(lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Castº
lstm_cell_120/dropout_1/Mul_1Mullstm_cell_120/dropout_1/Mul:z:0 lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Mul_1
lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_2/Const½
lstm_cell_120/dropout_2/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Mul
lstm_cell_120/dropout_2/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_2/Shape
4lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¡e26
4lstm_cell_120/dropout_2/random_uniform/RandomUniform
&lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_2/GreaterEqual/yþ
$lstm_cell_120/dropout_2/GreaterEqualGreaterEqual=lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_2/GreaterEqual¯
lstm_cell_120/dropout_2/CastCast(lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Castº
lstm_cell_120/dropout_2/Mul_1Mullstm_cell_120/dropout_2/Mul:z:0 lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Mul_1
lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_3/Const½
lstm_cell_120/dropout_3/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Mul
lstm_cell_120/dropout_3/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_3/Shape
4lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¥ë26
4lstm_cell_120/dropout_3/random_uniform/RandomUniform
&lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_3/GreaterEqual/yþ
$lstm_cell_120/dropout_3/GreaterEqualGreaterEqual=lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_3/GreaterEqual¯
lstm_cell_120/dropout_3/CastCast(lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Castº
lstm_cell_120/dropout_3/Mul_1Mullstm_cell_120/dropout_3/Mul:z:0 lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Mul_1
lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_120/split/split_dimµ
"lstm_cell_120/split/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_120/split/ReadVariableOpß
lstm_cell_120/splitSplit&lstm_cell_120/split/split_dim:output:0*lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_120/split 
lstm_cell_120/MatMulMatMulstrided_slice_2:output:0lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul¤
lstm_cell_120/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_1¤
lstm_cell_120/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_2¤
lstm_cell_120/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_3
lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_120/split_1/split_dim·
$lstm_cell_120/split_1/ReadVariableOpReadVariableOp-lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_120/split_1/ReadVariableOp×
lstm_cell_120/split_1Split(lstm_cell_120/split_1/split_dim:output:0,lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_120/split_1«
lstm_cell_120/BiasAddBiasAddlstm_cell_120/MatMul:product:0lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd±
lstm_cell_120/BiasAdd_1BiasAdd lstm_cell_120/MatMul_1:product:0lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_1±
lstm_cell_120/BiasAdd_2BiasAdd lstm_cell_120/MatMul_2:product:0lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_2±
lstm_cell_120/BiasAdd_3BiasAdd lstm_cell_120/MatMul_3:product:0lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_3
lstm_cell_120/mulMulzeros:output:0lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul
lstm_cell_120/mul_1Mulzeros:output:0!lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_1
lstm_cell_120/mul_2Mulzeros:output:0!lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_2
lstm_cell_120/mul_3Mulzeros:output:0!lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_3£
lstm_cell_120/ReadVariableOpReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_120/ReadVariableOp
!lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_120/strided_slice/stack
#lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice/stack_1
#lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_120/strided_slice/stack_2Ð
lstm_cell_120/strided_sliceStridedSlice$lstm_cell_120/ReadVariableOp:value:0*lstm_cell_120/strided_slice/stack:output:0,lstm_cell_120/strided_slice/stack_1:output:0,lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice©
lstm_cell_120/MatMul_4MatMullstm_cell_120/mul:z:0$lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_4£
lstm_cell_120/addAddV2lstm_cell_120/BiasAdd:output:0 lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add
lstm_cell_120/SigmoidSigmoidlstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid§
lstm_cell_120/ReadVariableOp_1ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_1
#lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice_1/stack
%lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_120/strided_slice_1/stack_1
%lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_1/stack_2Ü
lstm_cell_120/strided_slice_1StridedSlice&lstm_cell_120/ReadVariableOp_1:value:0,lstm_cell_120/strided_slice_1/stack:output:0.lstm_cell_120/strided_slice_1/stack_1:output:0.lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_1­
lstm_cell_120/MatMul_5MatMullstm_cell_120/mul_1:z:0&lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_5©
lstm_cell_120/add_1AddV2 lstm_cell_120/BiasAdd_1:output:0 lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_1
lstm_cell_120/Sigmoid_1Sigmoidlstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_1
lstm_cell_120/mul_4Mullstm_cell_120/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_4§
lstm_cell_120/ReadVariableOp_2ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_2
#lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_120/strided_slice_2/stack
%lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_120/strided_slice_2/stack_1
%lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_2/stack_2Ü
lstm_cell_120/strided_slice_2StridedSlice&lstm_cell_120/ReadVariableOp_2:value:0,lstm_cell_120/strided_slice_2/stack:output:0.lstm_cell_120/strided_slice_2/stack_1:output:0.lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_2­
lstm_cell_120/MatMul_6MatMullstm_cell_120/mul_2:z:0&lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_6©
lstm_cell_120/add_2AddV2 lstm_cell_120/BiasAdd_2:output:0 lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_2{
lstm_cell_120/ReluRelulstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu 
lstm_cell_120/mul_5Mullstm_cell_120/Sigmoid:y:0 lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_5
lstm_cell_120/add_3AddV2lstm_cell_120/mul_4:z:0lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_3§
lstm_cell_120/ReadVariableOp_3ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_3
#lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_120/strided_slice_3/stack
%lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_120/strided_slice_3/stack_1
%lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_3/stack_2Ü
lstm_cell_120/strided_slice_3StridedSlice&lstm_cell_120/ReadVariableOp_3:value:0,lstm_cell_120/strided_slice_3/stack:output:0.lstm_cell_120/strided_slice_3/stack_1:output:0.lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_3­
lstm_cell_120/MatMul_7MatMullstm_cell_120/mul_3:z:0&lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_7©
lstm_cell_120/add_4AddV2 lstm_cell_120/BiasAdd_3:output:0 lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_4
lstm_cell_120/Sigmoid_2Sigmoidlstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_2
lstm_cell_120/Relu_1Relulstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu_1¤
lstm_cell_120/mul_6Mullstm_cell_120/Sigmoid_2:y:0"lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_120_split_readvariableop_resource-lstm_cell_120_split_1_readvariableop_resource%lstm_cell_120_readvariableop_resource*
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
while_body_3892390*
condR
while_cond_3892389*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_120/ReadVariableOp^lstm_cell_120/ReadVariableOp_1^lstm_cell_120/ReadVariableOp_2^lstm_cell_120/ReadVariableOp_3#^lstm_cell_120/split/ReadVariableOp%^lstm_cell_120/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_120/ReadVariableOplstm_cell_120/ReadVariableOp2@
lstm_cell_120/ReadVariableOp_1lstm_cell_120/ReadVariableOp_12@
lstm_cell_120/ReadVariableOp_2lstm_cell_120/ReadVariableOp_22@
lstm_cell_120/ReadVariableOp_3lstm_cell_120/ReadVariableOp_32H
"lstm_cell_120/split/ReadVariableOp"lstm_cell_120/split/ReadVariableOp2L
$lstm_cell_120/split_1/ReadVariableOp$lstm_cell_120/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ú
È
while_cond_3890532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3890532___redundant_placeholder05
1while_while_cond_3890532___redundant_placeholder15
1while_while_cond_3890532___redundant_placeholder25
1while_while_cond_3890532___redundant_placeholder3
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
ª
·
*__inference_lstm_120_layer_call_fn_3891994

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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38906662
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_3890666

inputs>
+lstm_cell_120_split_readvariableop_resource:	<
-lstm_cell_120_split_1_readvariableop_resource:	8
%lstm_cell_120_readvariableop_resource:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_120/ReadVariableOp¢lstm_cell_120/ReadVariableOp_1¢lstm_cell_120/ReadVariableOp_2¢lstm_cell_120/ReadVariableOp_3¢"lstm_cell_120/split/ReadVariableOp¢$lstm_cell_120/split_1/ReadVariableOp¢whileD
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
lstm_cell_120/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_120/ones_like/Shape
lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_120/ones_like/Const¼
lstm_cell_120/ones_likeFill&lstm_cell_120/ones_like/Shape:output:0&lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/ones_like
lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_120/split/split_dimµ
"lstm_cell_120/split/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_120/split/ReadVariableOpß
lstm_cell_120/splitSplit&lstm_cell_120/split/split_dim:output:0*lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_120/split 
lstm_cell_120/MatMulMatMulstrided_slice_2:output:0lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul¤
lstm_cell_120/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_1¤
lstm_cell_120/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_2¤
lstm_cell_120/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_3
lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_120/split_1/split_dim·
$lstm_cell_120/split_1/ReadVariableOpReadVariableOp-lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_120/split_1/ReadVariableOp×
lstm_cell_120/split_1Split(lstm_cell_120/split_1/split_dim:output:0,lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_120/split_1«
lstm_cell_120/BiasAddBiasAddlstm_cell_120/MatMul:product:0lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd±
lstm_cell_120/BiasAdd_1BiasAdd lstm_cell_120/MatMul_1:product:0lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_1±
lstm_cell_120/BiasAdd_2BiasAdd lstm_cell_120/MatMul_2:product:0lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_2±
lstm_cell_120/BiasAdd_3BiasAdd lstm_cell_120/MatMul_3:product:0lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_3
lstm_cell_120/mulMulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul
lstm_cell_120/mul_1Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_1
lstm_cell_120/mul_2Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_2
lstm_cell_120/mul_3Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_3£
lstm_cell_120/ReadVariableOpReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_120/ReadVariableOp
!lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_120/strided_slice/stack
#lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice/stack_1
#lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_120/strided_slice/stack_2Ð
lstm_cell_120/strided_sliceStridedSlice$lstm_cell_120/ReadVariableOp:value:0*lstm_cell_120/strided_slice/stack:output:0,lstm_cell_120/strided_slice/stack_1:output:0,lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice©
lstm_cell_120/MatMul_4MatMullstm_cell_120/mul:z:0$lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_4£
lstm_cell_120/addAddV2lstm_cell_120/BiasAdd:output:0 lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add
lstm_cell_120/SigmoidSigmoidlstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid§
lstm_cell_120/ReadVariableOp_1ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_1
#lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice_1/stack
%lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_120/strided_slice_1/stack_1
%lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_1/stack_2Ü
lstm_cell_120/strided_slice_1StridedSlice&lstm_cell_120/ReadVariableOp_1:value:0,lstm_cell_120/strided_slice_1/stack:output:0.lstm_cell_120/strided_slice_1/stack_1:output:0.lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_1­
lstm_cell_120/MatMul_5MatMullstm_cell_120/mul_1:z:0&lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_5©
lstm_cell_120/add_1AddV2 lstm_cell_120/BiasAdd_1:output:0 lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_1
lstm_cell_120/Sigmoid_1Sigmoidlstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_1
lstm_cell_120/mul_4Mullstm_cell_120/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_4§
lstm_cell_120/ReadVariableOp_2ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_2
#lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_120/strided_slice_2/stack
%lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_120/strided_slice_2/stack_1
%lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_2/stack_2Ü
lstm_cell_120/strided_slice_2StridedSlice&lstm_cell_120/ReadVariableOp_2:value:0,lstm_cell_120/strided_slice_2/stack:output:0.lstm_cell_120/strided_slice_2/stack_1:output:0.lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_2­
lstm_cell_120/MatMul_6MatMullstm_cell_120/mul_2:z:0&lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_6©
lstm_cell_120/add_2AddV2 lstm_cell_120/BiasAdd_2:output:0 lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_2{
lstm_cell_120/ReluRelulstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu 
lstm_cell_120/mul_5Mullstm_cell_120/Sigmoid:y:0 lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_5
lstm_cell_120/add_3AddV2lstm_cell_120/mul_4:z:0lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_3§
lstm_cell_120/ReadVariableOp_3ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_3
#lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_120/strided_slice_3/stack
%lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_120/strided_slice_3/stack_1
%lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_3/stack_2Ü
lstm_cell_120/strided_slice_3StridedSlice&lstm_cell_120/ReadVariableOp_3:value:0,lstm_cell_120/strided_slice_3/stack:output:0.lstm_cell_120/strided_slice_3/stack_1:output:0.lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_3­
lstm_cell_120/MatMul_7MatMullstm_cell_120/mul_3:z:0&lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_7©
lstm_cell_120/add_4AddV2 lstm_cell_120/BiasAdd_3:output:0 lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_4
lstm_cell_120/Sigmoid_2Sigmoidlstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_2
lstm_cell_120/Relu_1Relulstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu_1¤
lstm_cell_120/mul_6Mullstm_cell_120/Sigmoid_2:y:0"lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_120_split_readvariableop_resource-lstm_cell_120_split_1_readvariableop_resource%lstm_cell_120_readvariableop_resource*
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
while_body_3890533*
condR
while_cond_3890532*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_120/ReadVariableOp^lstm_cell_120/ReadVariableOp_1^lstm_cell_120/ReadVariableOp_2^lstm_cell_120/ReadVariableOp_3#^lstm_cell_120/split/ReadVariableOp%^lstm_cell_120/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_120/ReadVariableOplstm_cell_120/ReadVariableOp2@
lstm_cell_120/ReadVariableOp_1lstm_cell_120/ReadVariableOp_12@
lstm_cell_120/ReadVariableOp_2lstm_cell_120/ReadVariableOp_22@
lstm_cell_120/ReadVariableOp_3lstm_cell_120/ReadVariableOp_32H
"lstm_cell_120/split/ReadVariableOp"lstm_cell_120/split/ReadVariableOp2L
$lstm_cell_120/split_1/ReadVariableOp$lstm_cell_120/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¬
__inference_loss_fn_0_3893185G
9dense_145_bias_regularizer_square_readvariableop_resource:
identity¢0dense_145/bias/Regularizer/Square/ReadVariableOpÚ
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOp9dense_145_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mull
IdentityIdentity"dense_145/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp1^dense_145/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp
S
ï
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3893272

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2,
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
æÓ
ì
lstm_120_while_body_3891762.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_3-
)lstm_120_while_lstm_120_strided_slice_1_0i
elstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_120_while_lstm_cell_120_split_readvariableop_resource_0:	M
>lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0:	I
6lstm_120_while_lstm_cell_120_readvariableop_resource_0:	 
lstm_120_while_identity
lstm_120_while_identity_1
lstm_120_while_identity_2
lstm_120_while_identity_3
lstm_120_while_identity_4
lstm_120_while_identity_5+
'lstm_120_while_lstm_120_strided_slice_1g
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorM
:lstm_120_while_lstm_cell_120_split_readvariableop_resource:	K
<lstm_120_while_lstm_cell_120_split_1_readvariableop_resource:	G
4lstm_120_while_lstm_cell_120_readvariableop_resource:	 ¢+lstm_120/while/lstm_cell_120/ReadVariableOp¢-lstm_120/while/lstm_cell_120/ReadVariableOp_1¢-lstm_120/while/lstm_cell_120/ReadVariableOp_2¢-lstm_120/while/lstm_cell_120/ReadVariableOp_3¢1lstm_120/while/lstm_cell_120/split/ReadVariableOp¢3lstm_120/while/lstm_cell_120/split_1/ReadVariableOpÕ
@lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_120/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0lstm_120_while_placeholderIlstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype024
2lstm_120/while/TensorArrayV2Read/TensorListGetItem¨
,lstm_120/while/lstm_cell_120/ones_like/ShapeShapelstm_120_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_120/while/lstm_cell_120/ones_like/Shape¡
,lstm_120/while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_120/while/lstm_cell_120/ones_like/Constø
&lstm_120/while/lstm_cell_120/ones_likeFill5lstm_120/while/lstm_cell_120/ones_like/Shape:output:05lstm_120/while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/ones_like
*lstm_120/while/lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_120/while/lstm_cell_120/dropout/Constó
(lstm_120/while/lstm_cell_120/dropout/MulMul/lstm_120/while/lstm_cell_120/ones_like:output:03lstm_120/while/lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_120/while/lstm_cell_120/dropout/Mul·
*lstm_120/while/lstm_cell_120/dropout/ShapeShape/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_120/while/lstm_cell_120/dropout/Shape¨
Alstm_120/while/lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform3lstm_120/while/lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ûª£2C
Alstm_120/while/lstm_cell_120/dropout/random_uniform/RandomUniform¯
3lstm_120/while/lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_120/while/lstm_cell_120/dropout/GreaterEqual/y²
1lstm_120/while/lstm_cell_120/dropout/GreaterEqualGreaterEqualJlstm_120/while/lstm_cell_120/dropout/random_uniform/RandomUniform:output:0<lstm_120/while/lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_120/while/lstm_cell_120/dropout/GreaterEqualÖ
)lstm_120/while/lstm_cell_120/dropout/CastCast5lstm_120/while/lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_120/while/lstm_cell_120/dropout/Castî
*lstm_120/while/lstm_cell_120/dropout/Mul_1Mul,lstm_120/while/lstm_cell_120/dropout/Mul:z:0-lstm_120/while/lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_120/while/lstm_cell_120/dropout/Mul_1¡
,lstm_120/while/lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2.
,lstm_120/while/lstm_cell_120/dropout_1/Constù
*lstm_120/while/lstm_cell_120/dropout_1/MulMul/lstm_120/while/lstm_cell_120/ones_like:output:05lstm_120/while/lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_120/while/lstm_cell_120/dropout_1/Mul»
,lstm_120/while/lstm_cell_120/dropout_1/ShapeShape/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_120/while/lstm_cell_120/dropout_1/Shape®
Clstm_120/while/lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform5lstm_120/while/lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¡¢ª2E
Clstm_120/while/lstm_cell_120/dropout_1/random_uniform/RandomUniform³
5lstm_120/while/lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_120/while/lstm_cell_120/dropout_1/GreaterEqual/yº
3lstm_120/while/lstm_cell_120/dropout_1/GreaterEqualGreaterEqualLlstm_120/while/lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:0>lstm_120/while/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3lstm_120/while/lstm_cell_120/dropout_1/GreaterEqualÜ
+lstm_120/while/lstm_cell_120/dropout_1/CastCast7lstm_120/while/lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_120/while/lstm_cell_120/dropout_1/Castö
,lstm_120/while/lstm_cell_120/dropout_1/Mul_1Mul.lstm_120/while/lstm_cell_120/dropout_1/Mul:z:0/lstm_120/while/lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,lstm_120/while/lstm_cell_120/dropout_1/Mul_1¡
,lstm_120/while/lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2.
,lstm_120/while/lstm_cell_120/dropout_2/Constù
*lstm_120/while/lstm_cell_120/dropout_2/MulMul/lstm_120/while/lstm_cell_120/ones_like:output:05lstm_120/while/lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_120/while/lstm_cell_120/dropout_2/Mul»
,lstm_120/while/lstm_cell_120/dropout_2/ShapeShape/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_120/while/lstm_cell_120/dropout_2/Shape®
Clstm_120/while/lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform5lstm_120/while/lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2µÈä2E
Clstm_120/while/lstm_cell_120/dropout_2/random_uniform/RandomUniform³
5lstm_120/while/lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_120/while/lstm_cell_120/dropout_2/GreaterEqual/yº
3lstm_120/while/lstm_cell_120/dropout_2/GreaterEqualGreaterEqualLlstm_120/while/lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:0>lstm_120/while/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3lstm_120/while/lstm_cell_120/dropout_2/GreaterEqualÜ
+lstm_120/while/lstm_cell_120/dropout_2/CastCast7lstm_120/while/lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_120/while/lstm_cell_120/dropout_2/Castö
,lstm_120/while/lstm_cell_120/dropout_2/Mul_1Mul.lstm_120/while/lstm_cell_120/dropout_2/Mul:z:0/lstm_120/while/lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,lstm_120/while/lstm_cell_120/dropout_2/Mul_1¡
,lstm_120/while/lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2.
,lstm_120/while/lstm_cell_120/dropout_3/Constù
*lstm_120/while/lstm_cell_120/dropout_3/MulMul/lstm_120/while/lstm_cell_120/ones_like:output:05lstm_120/while/lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_120/while/lstm_cell_120/dropout_3/Mul»
,lstm_120/while/lstm_cell_120/dropout_3/ShapeShape/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2.
,lstm_120/while/lstm_cell_120/dropout_3/Shape®
Clstm_120/while/lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform5lstm_120/while/lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2þ«Ý2E
Clstm_120/while/lstm_cell_120/dropout_3/random_uniform/RandomUniform³
5lstm_120/while/lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>27
5lstm_120/while/lstm_cell_120/dropout_3/GreaterEqual/yº
3lstm_120/while/lstm_cell_120/dropout_3/GreaterEqualGreaterEqualLlstm_120/while/lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:0>lstm_120/while/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3lstm_120/while/lstm_cell_120/dropout_3/GreaterEqualÜ
+lstm_120/while/lstm_cell_120/dropout_3/CastCast7lstm_120/while/lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_120/while/lstm_cell_120/dropout_3/Castö
,lstm_120/while/lstm_cell_120/dropout_3/Mul_1Mul.lstm_120/while/lstm_cell_120/dropout_3/Mul:z:0/lstm_120/while/lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,lstm_120/while/lstm_cell_120/dropout_3/Mul_1
,lstm_120/while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_120/while/lstm_cell_120/split/split_dimä
1lstm_120/while/lstm_cell_120/split/ReadVariableOpReadVariableOp<lstm_120_while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_120/while/lstm_cell_120/split/ReadVariableOp
"lstm_120/while/lstm_cell_120/splitSplit5lstm_120/while/lstm_cell_120/split/split_dim:output:09lstm_120/while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2$
"lstm_120/while/lstm_cell_120/splitî
#lstm_120/while/lstm_cell_120/MatMulMatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_120/while/lstm_cell_120/MatMulò
%lstm_120/while/lstm_cell_120/MatMul_1MatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_1ò
%lstm_120/while/lstm_cell_120/MatMul_2MatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_2ò
%lstm_120/while/lstm_cell_120/MatMul_3MatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_3¢
.lstm_120/while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.lstm_120/while/lstm_cell_120/split_1/split_dimæ
3lstm_120/while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp>lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype025
3lstm_120/while/lstm_cell_120/split_1/ReadVariableOp
$lstm_120/while/lstm_cell_120/split_1Split7lstm_120/while/lstm_cell_120/split_1/split_dim:output:0;lstm_120/while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2&
$lstm_120/while/lstm_cell_120/split_1ç
$lstm_120/while/lstm_cell_120/BiasAddBiasAdd-lstm_120/while/lstm_cell_120/MatMul:product:0-lstm_120/while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/while/lstm_cell_120/BiasAddí
&lstm_120/while/lstm_cell_120/BiasAdd_1BiasAdd/lstm_120/while/lstm_cell_120/MatMul_1:product:0-lstm_120/while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/BiasAdd_1í
&lstm_120/while/lstm_cell_120/BiasAdd_2BiasAdd/lstm_120/while/lstm_cell_120/MatMul_2:product:0-lstm_120/while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/BiasAdd_2í
&lstm_120/while/lstm_cell_120/BiasAdd_3BiasAdd/lstm_120/while/lstm_cell_120/MatMul_3:product:0-lstm_120/while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/BiasAdd_3Ë
 lstm_120/while/lstm_cell_120/mulMullstm_120_while_placeholder_2.lstm_120/while/lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/while/lstm_cell_120/mulÑ
"lstm_120/while/lstm_cell_120/mul_1Mullstm_120_while_placeholder_20lstm_120/while/lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_1Ñ
"lstm_120/while/lstm_cell_120/mul_2Mullstm_120_while_placeholder_20lstm_120/while/lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_2Ñ
"lstm_120/while/lstm_cell_120/mul_3Mullstm_120_while_placeholder_20lstm_120/while/lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_3Ò
+lstm_120/while/lstm_cell_120/ReadVariableOpReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_120/while/lstm_cell_120/ReadVariableOpµ
0lstm_120/while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_120/while/lstm_cell_120/strided_slice/stack¹
2lstm_120/while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_120/while/lstm_cell_120/strided_slice/stack_1¹
2lstm_120/while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_120/while/lstm_cell_120/strided_slice/stack_2ª
*lstm_120/while/lstm_cell_120/strided_sliceStridedSlice3lstm_120/while/lstm_cell_120/ReadVariableOp:value:09lstm_120/while/lstm_cell_120/strided_slice/stack:output:0;lstm_120/while/lstm_cell_120/strided_slice/stack_1:output:0;lstm_120/while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_120/while/lstm_cell_120/strided_sliceå
%lstm_120/while/lstm_cell_120/MatMul_4MatMul$lstm_120/while/lstm_cell_120/mul:z:03lstm_120/while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_4ß
 lstm_120/while/lstm_cell_120/addAddV2-lstm_120/while/lstm_cell_120/BiasAdd:output:0/lstm_120/while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/while/lstm_cell_120/add¯
$lstm_120/while/lstm_cell_120/SigmoidSigmoid$lstm_120/while/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/while/lstm_cell_120/SigmoidÖ
-lstm_120/while/lstm_cell_120/ReadVariableOp_1ReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_120/while/lstm_cell_120/ReadVariableOp_1¹
2lstm_120/while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_120/while/lstm_cell_120/strided_slice_1/stack½
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   26
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_1½
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_2¶
,lstm_120/while/lstm_cell_120/strided_slice_1StridedSlice5lstm_120/while/lstm_cell_120/ReadVariableOp_1:value:0;lstm_120/while/lstm_cell_120/strided_slice_1/stack:output:0=lstm_120/while/lstm_cell_120/strided_slice_1/stack_1:output:0=lstm_120/while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_120/while/lstm_cell_120/strided_slice_1é
%lstm_120/while/lstm_cell_120/MatMul_5MatMul&lstm_120/while/lstm_cell_120/mul_1:z:05lstm_120/while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_5å
"lstm_120/while/lstm_cell_120/add_1AddV2/lstm_120/while/lstm_cell_120/BiasAdd_1:output:0/lstm_120/while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_1µ
&lstm_120/while/lstm_cell_120/Sigmoid_1Sigmoid&lstm_120/while/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/Sigmoid_1Ë
"lstm_120/while/lstm_cell_120/mul_4Mul*lstm_120/while/lstm_cell_120/Sigmoid_1:y:0lstm_120_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_4Ö
-lstm_120/while/lstm_cell_120/ReadVariableOp_2ReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_120/while/lstm_cell_120/ReadVariableOp_2¹
2lstm_120/while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_120/while/lstm_cell_120/strided_slice_2/stack½
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   26
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_1½
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_2¶
,lstm_120/while/lstm_cell_120/strided_slice_2StridedSlice5lstm_120/while/lstm_cell_120/ReadVariableOp_2:value:0;lstm_120/while/lstm_cell_120/strided_slice_2/stack:output:0=lstm_120/while/lstm_cell_120/strided_slice_2/stack_1:output:0=lstm_120/while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_120/while/lstm_cell_120/strided_slice_2é
%lstm_120/while/lstm_cell_120/MatMul_6MatMul&lstm_120/while/lstm_cell_120/mul_2:z:05lstm_120/while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_6å
"lstm_120/while/lstm_cell_120/add_2AddV2/lstm_120/while/lstm_cell_120/BiasAdd_2:output:0/lstm_120/while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_2¨
!lstm_120/while/lstm_cell_120/ReluRelu&lstm_120/while/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_120/while/lstm_cell_120/ReluÜ
"lstm_120/while/lstm_cell_120/mul_5Mul(lstm_120/while/lstm_cell_120/Sigmoid:y:0/lstm_120/while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_5Ó
"lstm_120/while/lstm_cell_120/add_3AddV2&lstm_120/while/lstm_cell_120/mul_4:z:0&lstm_120/while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_3Ö
-lstm_120/while/lstm_cell_120/ReadVariableOp_3ReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_120/while/lstm_cell_120/ReadVariableOp_3¹
2lstm_120/while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_120/while/lstm_cell_120/strided_slice_3/stack½
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_1½
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_2¶
,lstm_120/while/lstm_cell_120/strided_slice_3StridedSlice5lstm_120/while/lstm_cell_120/ReadVariableOp_3:value:0;lstm_120/while/lstm_cell_120/strided_slice_3/stack:output:0=lstm_120/while/lstm_cell_120/strided_slice_3/stack_1:output:0=lstm_120/while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_120/while/lstm_cell_120/strided_slice_3é
%lstm_120/while/lstm_cell_120/MatMul_7MatMul&lstm_120/while/lstm_cell_120/mul_3:z:05lstm_120/while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_7å
"lstm_120/while/lstm_cell_120/add_4AddV2/lstm_120/while/lstm_cell_120/BiasAdd_3:output:0/lstm_120/while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_4µ
&lstm_120/while/lstm_cell_120/Sigmoid_2Sigmoid&lstm_120/while/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/Sigmoid_2¬
#lstm_120/while/lstm_cell_120/Relu_1Relu&lstm_120/while/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_120/while/lstm_cell_120/Relu_1à
"lstm_120/while/lstm_cell_120/mul_6Mul*lstm_120/while/lstm_cell_120/Sigmoid_2:y:01lstm_120/while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_6
3lstm_120/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_120_while_placeholder_1lstm_120_while_placeholder&lstm_120/while/lstm_cell_120/mul_6:z:0*
_output_shapes
: *
element_dtype025
3lstm_120/while/TensorArrayV2Write/TensorListSetItemn
lstm_120/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_120/while/add/y
lstm_120/while/addAddV2lstm_120_while_placeholderlstm_120/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_120/while/addr
lstm_120/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_120/while/add_1/y£
lstm_120/while/add_1AddV2*lstm_120_while_lstm_120_while_loop_counterlstm_120/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_120/while/add_1
lstm_120/while/IdentityIdentitylstm_120/while/add_1:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity«
lstm_120/while/Identity_1Identity0lstm_120_while_lstm_120_while_maximum_iterations^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity_1
lstm_120/while/Identity_2Identitylstm_120/while/add:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity_2¾
lstm_120/while/Identity_3IdentityClstm_120/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity_3²
lstm_120/while/Identity_4Identity&lstm_120/while/lstm_cell_120/mul_6:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/while/Identity_4²
lstm_120/while/Identity_5Identity&lstm_120/while/lstm_cell_120/add_3:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/while/Identity_5
lstm_120/while/NoOpNoOp,^lstm_120/while/lstm_cell_120/ReadVariableOp.^lstm_120/while/lstm_cell_120/ReadVariableOp_1.^lstm_120/while/lstm_cell_120/ReadVariableOp_2.^lstm_120/while/lstm_cell_120/ReadVariableOp_32^lstm_120/while/lstm_cell_120/split/ReadVariableOp4^lstm_120/while/lstm_cell_120/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_120/while/NoOp";
lstm_120_while_identity lstm_120/while/Identity:output:0"?
lstm_120_while_identity_1"lstm_120/while/Identity_1:output:0"?
lstm_120_while_identity_2"lstm_120/while/Identity_2:output:0"?
lstm_120_while_identity_3"lstm_120/while/Identity_3:output:0"?
lstm_120_while_identity_4"lstm_120/while/Identity_4:output:0"?
lstm_120_while_identity_5"lstm_120/while/Identity_5:output:0"T
'lstm_120_while_lstm_120_strided_slice_1)lstm_120_while_lstm_120_strided_slice_1_0"n
4lstm_120_while_lstm_cell_120_readvariableop_resource6lstm_120_while_lstm_cell_120_readvariableop_resource_0"~
<lstm_120_while_lstm_cell_120_split_1_readvariableop_resource>lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0"z
:lstm_120_while_lstm_cell_120_split_readvariableop_resource<lstm_120_while_lstm_cell_120_split_readvariableop_resource_0"Ì
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+lstm_120/while/lstm_cell_120/ReadVariableOp+lstm_120/while/lstm_cell_120/ReadVariableOp2^
-lstm_120/while/lstm_cell_120/ReadVariableOp_1-lstm_120/while/lstm_cell_120/ReadVariableOp_12^
-lstm_120/while/lstm_cell_120/ReadVariableOp_2-lstm_120/while/lstm_cell_120/ReadVariableOp_22^
-lstm_120/while/lstm_cell_120/ReadVariableOp_3-lstm_120/while/lstm_cell_120/ReadVariableOp_32f
1lstm_120/while/lstm_cell_120/split/ReadVariableOp1lstm_120/while/lstm_cell_120/split/ReadVariableOp2j
3lstm_120/while/lstm_cell_120/split_1/ReadVariableOp3lstm_120/while/lstm_cell_120/split_1/ReadVariableOp: 
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
º
ø
/__inference_lstm_cell_120_layer_call_fn_3893419

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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_38899902
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
äv
ï
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3893385

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
seed2áÈ2&
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
seed2ç¿2(
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
seed2ß2(
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
seed2·2(
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2,
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
&
ñ
while_body_3889771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_120_3889795_0:	,
while_lstm_cell_120_3889797_0:	0
while_lstm_cell_120_3889799_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_120_3889795:	*
while_lstm_cell_120_3889797:	.
while_lstm_cell_120_3889799:	 ¢+while/lstm_cell_120/StatefulPartitionedCallÃ
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
+while/lstm_cell_120/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_120_3889795_0while_lstm_cell_120_3889797_0while_lstm_cell_120_3889799_0*
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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_38897572-
+while/lstm_cell_120/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_120/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_120/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¥
while/Identity_5Identity4while/lstm_cell_120/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp,^while/lstm_cell_120/StatefulPartitionedCall*"
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
while_lstm_cell_120_3889795while_lstm_cell_120_3889795_0"<
while_lstm_cell_120_3889797while_lstm_cell_120_3889797_0"<
while_lstm_cell_120_3889799while_lstm_cell_120_3889799_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+while/lstm_cell_120/StatefulPartitionedCall+while/lstm_cell_120/StatefulPartitionedCall: 
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_3893169

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
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891272
input_49#
lstm_120_3891241:	
lstm_120_3891243:	#
lstm_120_3891245:	 #
dense_144_3891248:  
dense_144_3891250: #
dense_145_3891253: 
dense_145_3891255:
identity¢!dense_144/StatefulPartitionedCall¢!dense_145/StatefulPartitionedCall¢0dense_145/bias/Regularizer/Square/ReadVariableOp¢ lstm_120/StatefulPartitionedCall¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp­
 lstm_120/StatefulPartitionedCallStatefulPartitionedCallinput_49lstm_120_3891241lstm_120_3891243lstm_120_3891245*
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38911042"
 lstm_120/StatefulPartitionedCall¿
!dense_144/StatefulPartitionedCallStatefulPartitionedCall)lstm_120/StatefulPartitionedCall:output:0dense_144_3891248dense_144_3891250*
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
F__inference_dense_144_layer_call_and_return_conditional_losses_38906852#
!dense_144/StatefulPartitionedCallÀ
!dense_145/StatefulPartitionedCallStatefulPartitionedCall*dense_144/StatefulPartitionedCall:output:0dense_145_3891253dense_145_3891255*
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
F__inference_dense_145_layer_call_and_return_conditional_losses_38907072#
!dense_145/StatefulPartitionedCall
reshape_72/PartitionedCallPartitionedCall*dense_145/StatefulPartitionedCall:output:0*
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_38907262
reshape_72/PartitionedCallÔ
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_120_3891241*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mul²
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_145_3891255*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mul
IdentityIdentity#reshape_72/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity®
NoOpNoOp"^dense_144/StatefulPartitionedCall"^dense_145/StatefulPartitionedCall1^dense_145/bias/Regularizer/Square/ReadVariableOp!^lstm_120/StatefulPartitionedCall@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_144/StatefulPartitionedCall!dense_144/StatefulPartitionedCall2F
!dense_145/StatefulPartitionedCall!dense_145/StatefulPartitionedCall2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp2D
 lstm_120/StatefulPartitionedCall lstm_120/StatefulPartitionedCall2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_49
&
ñ
while_body_3890068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_120_3890092_0:	,
while_lstm_cell_120_3890094_0:	0
while_lstm_cell_120_3890096_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_120_3890092:	*
while_lstm_cell_120_3890094:	.
while_lstm_cell_120_3890096:	 ¢+while/lstm_cell_120/StatefulPartitionedCallÃ
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
+while/lstm_cell_120/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_120_3890092_0while_lstm_cell_120_3890094_0while_lstm_cell_120_3890096_0*
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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_38899902-
+while/lstm_cell_120/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_120/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_120/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¥
while/Identity_5Identity4while/lstm_cell_120/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp,^while/lstm_cell_120/StatefulPartitionedCall*"
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
while_lstm_cell_120_3890092while_lstm_cell_120_3890092_0"<
while_lstm_cell_120_3890094while_lstm_cell_120_3890094_0"<
while_lstm_cell_120_3890096while_lstm_cell_120_3890096_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+while/lstm_cell_120/StatefulPartitionedCall+while/lstm_cell_120/StatefulPartitionedCall: 
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
õ

+__inference_dense_144_layer_call_fn_3893125

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
F__inference_dense_144_layer_call_and_return_conditional_losses_38906852
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
/__inference_lstm_cell_120_layer_call_fn_3893402

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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_38897572
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
Âµ
±	
while_body_3892940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_120_split_readvariableop_resource_0:	D
5while_lstm_cell_120_split_1_readvariableop_resource_0:	@
-while_lstm_cell_120_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_120_split_readvariableop_resource:	B
3while_lstm_cell_120_split_1_readvariableop_resource:	>
+while_lstm_cell_120_readvariableop_resource:	 ¢"while/lstm_cell_120/ReadVariableOp¢$while/lstm_cell_120/ReadVariableOp_1¢$while/lstm_cell_120/ReadVariableOp_2¢$while/lstm_cell_120/ReadVariableOp_3¢(while/lstm_cell_120/split/ReadVariableOp¢*while/lstm_cell_120/split_1/ReadVariableOpÃ
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
#while/lstm_cell_120/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_120/ones_like/Shape
#while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_120/ones_like/ConstÔ
while/lstm_cell_120/ones_likeFill,while/lstm_cell_120/ones_like/Shape:output:0,while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/ones_like
!while/lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2#
!while/lstm_cell_120/dropout/ConstÏ
while/lstm_cell_120/dropout/MulMul&while/lstm_cell_120/ones_like:output:0*while/lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_120/dropout/Mul
!while/lstm_cell_120/dropout/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_120/dropout/Shape
8while/lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2õ2:
8while/lstm_cell_120/dropout/random_uniform/RandomUniform
*while/lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_120/dropout/GreaterEqual/y
(while/lstm_cell_120/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_120/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_120/dropout/GreaterEqual»
 while/lstm_cell_120/dropout/CastCast,while/lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_120/dropout/CastÊ
!while/lstm_cell_120/dropout/Mul_1Mul#while/lstm_cell_120/dropout/Mul:z:0$while/lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout/Mul_1
#while/lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_1/ConstÕ
!while/lstm_cell_120/dropout_1/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_1/Mul 
#while/lstm_cell_120/dropout_1/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_1/Shape
:while/lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2­£2<
:while/lstm_cell_120/dropout_1/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_1/GreaterEqual/y
*while/lstm_cell_120/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_1/GreaterEqualÁ
"while/lstm_cell_120/dropout_1/CastCast.while/lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_1/CastÒ
#while/lstm_cell_120/dropout_1/Mul_1Mul%while/lstm_cell_120/dropout_1/Mul:z:0&while/lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_1/Mul_1
#while/lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_2/ConstÕ
!while/lstm_cell_120/dropout_2/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_2/Mul 
#while/lstm_cell_120/dropout_2/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_2/Shape
:while/lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¯Ì2<
:while/lstm_cell_120/dropout_2/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_2/GreaterEqual/y
*while/lstm_cell_120/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_2/GreaterEqualÁ
"while/lstm_cell_120/dropout_2/CastCast.while/lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_2/CastÒ
#while/lstm_cell_120/dropout_2/Mul_1Mul%while/lstm_cell_120/dropout_2/Mul:z:0&while/lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_2/Mul_1
#while/lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_3/ConstÕ
!while/lstm_cell_120/dropout_3/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_3/Mul 
#while/lstm_cell_120/dropout_3/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_3/Shape
:while/lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ì¢»2<
:while/lstm_cell_120/dropout_3/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_3/GreaterEqual/y
*while/lstm_cell_120/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_3/GreaterEqualÁ
"while/lstm_cell_120/dropout_3/CastCast.while/lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_3/CastÒ
#while/lstm_cell_120/dropout_3/Mul_1Mul%while/lstm_cell_120/dropout_3/Mul:z:0&while/lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_3/Mul_1
#while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_120/split/split_dimÉ
(while/lstm_cell_120/split/ReadVariableOpReadVariableOp3while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_120/split/ReadVariableOp÷
while/lstm_cell_120/splitSplit,while/lstm_cell_120/split/split_dim:output:00while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_120/splitÊ
while/lstm_cell_120/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMulÎ
while/lstm_cell_120/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_1Î
while/lstm_cell_120/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_2Î
while/lstm_cell_120/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_3
%while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_120/split_1/split_dimË
*while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_120/split_1/ReadVariableOpï
while/lstm_cell_120/split_1Split.while/lstm_cell_120/split_1/split_dim:output:02while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_120/split_1Ã
while/lstm_cell_120/BiasAddBiasAdd$while/lstm_cell_120/MatMul:product:0$while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAddÉ
while/lstm_cell_120/BiasAdd_1BiasAdd&while/lstm_cell_120/MatMul_1:product:0$while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_1É
while/lstm_cell_120/BiasAdd_2BiasAdd&while/lstm_cell_120/MatMul_2:product:0$while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_2É
while/lstm_cell_120/BiasAdd_3BiasAdd&while/lstm_cell_120/MatMul_3:product:0$while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_3§
while/lstm_cell_120/mulMulwhile_placeholder_2%while/lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul­
while/lstm_cell_120/mul_1Mulwhile_placeholder_2'while/lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_1­
while/lstm_cell_120/mul_2Mulwhile_placeholder_2'while/lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_2­
while/lstm_cell_120/mul_3Mulwhile_placeholder_2'while/lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_3·
"while/lstm_cell_120/ReadVariableOpReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_120/ReadVariableOp£
'while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_120/strided_slice/stack§
)while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice/stack_1§
)while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_120/strided_slice/stack_2ô
!while/lstm_cell_120/strided_sliceStridedSlice*while/lstm_cell_120/ReadVariableOp:value:00while/lstm_cell_120/strided_slice/stack:output:02while/lstm_cell_120/strided_slice/stack_1:output:02while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_120/strided_sliceÁ
while/lstm_cell_120/MatMul_4MatMulwhile/lstm_cell_120/mul:z:0*while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_4»
while/lstm_cell_120/addAddV2$while/lstm_cell_120/BiasAdd:output:0&while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add
while/lstm_cell_120/SigmoidSigmoidwhile/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid»
$while/lstm_cell_120/ReadVariableOp_1ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_1§
)while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice_1/stack«
+while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_120/strided_slice_1/stack_1«
+while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_1/stack_2
#while/lstm_cell_120/strided_slice_1StridedSlice,while/lstm_cell_120/ReadVariableOp_1:value:02while/lstm_cell_120/strided_slice_1/stack:output:04while/lstm_cell_120/strided_slice_1/stack_1:output:04while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_1Å
while/lstm_cell_120/MatMul_5MatMulwhile/lstm_cell_120/mul_1:z:0,while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_5Á
while/lstm_cell_120/add_1AddV2&while/lstm_cell_120/BiasAdd_1:output:0&while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_1
while/lstm_cell_120/Sigmoid_1Sigmoidwhile/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_1§
while/lstm_cell_120/mul_4Mul!while/lstm_cell_120/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_4»
$while/lstm_cell_120/ReadVariableOp_2ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_2§
)while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_120/strided_slice_2/stack«
+while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_120/strided_slice_2/stack_1«
+while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_2/stack_2
#while/lstm_cell_120/strided_slice_2StridedSlice,while/lstm_cell_120/ReadVariableOp_2:value:02while/lstm_cell_120/strided_slice_2/stack:output:04while/lstm_cell_120/strided_slice_2/stack_1:output:04while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_2Å
while/lstm_cell_120/MatMul_6MatMulwhile/lstm_cell_120/mul_2:z:0,while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_6Á
while/lstm_cell_120/add_2AddV2&while/lstm_cell_120/BiasAdd_2:output:0&while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_2
while/lstm_cell_120/ReluReluwhile/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu¸
while/lstm_cell_120/mul_5Mulwhile/lstm_cell_120/Sigmoid:y:0&while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_5¯
while/lstm_cell_120/add_3AddV2while/lstm_cell_120/mul_4:z:0while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_3»
$while/lstm_cell_120/ReadVariableOp_3ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_3§
)while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_120/strided_slice_3/stack«
+while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_120/strided_slice_3/stack_1«
+while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_3/stack_2
#while/lstm_cell_120/strided_slice_3StridedSlice,while/lstm_cell_120/ReadVariableOp_3:value:02while/lstm_cell_120/strided_slice_3/stack:output:04while/lstm_cell_120/strided_slice_3/stack_1:output:04while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_3Å
while/lstm_cell_120/MatMul_7MatMulwhile/lstm_cell_120/mul_3:z:0,while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_7Á
while/lstm_cell_120/add_4AddV2&while/lstm_cell_120/BiasAdd_3:output:0&while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_4
while/lstm_cell_120/Sigmoid_2Sigmoidwhile/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_2
while/lstm_cell_120/Relu_1Reluwhile/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu_1¼
while/lstm_cell_120/mul_6Mul!while/lstm_cell_120/Sigmoid_2:y:0(while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_120/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_120/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_120/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_120/ReadVariableOp%^while/lstm_cell_120/ReadVariableOp_1%^while/lstm_cell_120/ReadVariableOp_2%^while/lstm_cell_120/ReadVariableOp_3)^while/lstm_cell_120/split/ReadVariableOp+^while/lstm_cell_120/split_1/ReadVariableOp*"
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
+while_lstm_cell_120_readvariableop_resource-while_lstm_cell_120_readvariableop_resource_0"l
3while_lstm_cell_120_split_1_readvariableop_resource5while_lstm_cell_120_split_1_readvariableop_resource_0"h
1while_lstm_cell_120_split_readvariableop_resource3while_lstm_cell_120_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_120/ReadVariableOp"while/lstm_cell_120/ReadVariableOp2L
$while/lstm_cell_120/ReadVariableOp_1$while/lstm_cell_120/ReadVariableOp_12L
$while/lstm_cell_120/ReadVariableOp_2$while/lstm_cell_120/ReadVariableOp_22L
$while/lstm_cell_120/ReadVariableOp_3$while/lstm_cell_120/ReadVariableOp_32T
(while/lstm_cell_120/split/ReadVariableOp(while/lstm_cell_120/split/ReadVariableOp2X
*while/lstm_cell_120/split_1/ReadVariableOp*while/lstm_cell_120/split_1/ReadVariableOp: 
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

±	
while_body_3892665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_120_split_readvariableop_resource_0:	D
5while_lstm_cell_120_split_1_readvariableop_resource_0:	@
-while_lstm_cell_120_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_120_split_readvariableop_resource:	B
3while_lstm_cell_120_split_1_readvariableop_resource:	>
+while_lstm_cell_120_readvariableop_resource:	 ¢"while/lstm_cell_120/ReadVariableOp¢$while/lstm_cell_120/ReadVariableOp_1¢$while/lstm_cell_120/ReadVariableOp_2¢$while/lstm_cell_120/ReadVariableOp_3¢(while/lstm_cell_120/split/ReadVariableOp¢*while/lstm_cell_120/split_1/ReadVariableOpÃ
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
#while/lstm_cell_120/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_120/ones_like/Shape
#while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_120/ones_like/ConstÔ
while/lstm_cell_120/ones_likeFill,while/lstm_cell_120/ones_like/Shape:output:0,while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/ones_like
#while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_120/split/split_dimÉ
(while/lstm_cell_120/split/ReadVariableOpReadVariableOp3while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_120/split/ReadVariableOp÷
while/lstm_cell_120/splitSplit,while/lstm_cell_120/split/split_dim:output:00while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_120/splitÊ
while/lstm_cell_120/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMulÎ
while/lstm_cell_120/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_1Î
while/lstm_cell_120/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_2Î
while/lstm_cell_120/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_3
%while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_120/split_1/split_dimË
*while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_120/split_1/ReadVariableOpï
while/lstm_cell_120/split_1Split.while/lstm_cell_120/split_1/split_dim:output:02while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_120/split_1Ã
while/lstm_cell_120/BiasAddBiasAdd$while/lstm_cell_120/MatMul:product:0$while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAddÉ
while/lstm_cell_120/BiasAdd_1BiasAdd&while/lstm_cell_120/MatMul_1:product:0$while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_1É
while/lstm_cell_120/BiasAdd_2BiasAdd&while/lstm_cell_120/MatMul_2:product:0$while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_2É
while/lstm_cell_120/BiasAdd_3BiasAdd&while/lstm_cell_120/MatMul_3:product:0$while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_3¨
while/lstm_cell_120/mulMulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul¬
while/lstm_cell_120/mul_1Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_1¬
while/lstm_cell_120/mul_2Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_2¬
while/lstm_cell_120/mul_3Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_3·
"while/lstm_cell_120/ReadVariableOpReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_120/ReadVariableOp£
'while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_120/strided_slice/stack§
)while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice/stack_1§
)while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_120/strided_slice/stack_2ô
!while/lstm_cell_120/strided_sliceStridedSlice*while/lstm_cell_120/ReadVariableOp:value:00while/lstm_cell_120/strided_slice/stack:output:02while/lstm_cell_120/strided_slice/stack_1:output:02while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_120/strided_sliceÁ
while/lstm_cell_120/MatMul_4MatMulwhile/lstm_cell_120/mul:z:0*while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_4»
while/lstm_cell_120/addAddV2$while/lstm_cell_120/BiasAdd:output:0&while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add
while/lstm_cell_120/SigmoidSigmoidwhile/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid»
$while/lstm_cell_120/ReadVariableOp_1ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_1§
)while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice_1/stack«
+while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_120/strided_slice_1/stack_1«
+while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_1/stack_2
#while/lstm_cell_120/strided_slice_1StridedSlice,while/lstm_cell_120/ReadVariableOp_1:value:02while/lstm_cell_120/strided_slice_1/stack:output:04while/lstm_cell_120/strided_slice_1/stack_1:output:04while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_1Å
while/lstm_cell_120/MatMul_5MatMulwhile/lstm_cell_120/mul_1:z:0,while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_5Á
while/lstm_cell_120/add_1AddV2&while/lstm_cell_120/BiasAdd_1:output:0&while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_1
while/lstm_cell_120/Sigmoid_1Sigmoidwhile/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_1§
while/lstm_cell_120/mul_4Mul!while/lstm_cell_120/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_4»
$while/lstm_cell_120/ReadVariableOp_2ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_2§
)while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_120/strided_slice_2/stack«
+while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_120/strided_slice_2/stack_1«
+while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_2/stack_2
#while/lstm_cell_120/strided_slice_2StridedSlice,while/lstm_cell_120/ReadVariableOp_2:value:02while/lstm_cell_120/strided_slice_2/stack:output:04while/lstm_cell_120/strided_slice_2/stack_1:output:04while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_2Å
while/lstm_cell_120/MatMul_6MatMulwhile/lstm_cell_120/mul_2:z:0,while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_6Á
while/lstm_cell_120/add_2AddV2&while/lstm_cell_120/BiasAdd_2:output:0&while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_2
while/lstm_cell_120/ReluReluwhile/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu¸
while/lstm_cell_120/mul_5Mulwhile/lstm_cell_120/Sigmoid:y:0&while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_5¯
while/lstm_cell_120/add_3AddV2while/lstm_cell_120/mul_4:z:0while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_3»
$while/lstm_cell_120/ReadVariableOp_3ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_3§
)while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_120/strided_slice_3/stack«
+while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_120/strided_slice_3/stack_1«
+while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_3/stack_2
#while/lstm_cell_120/strided_slice_3StridedSlice,while/lstm_cell_120/ReadVariableOp_3:value:02while/lstm_cell_120/strided_slice_3/stack:output:04while/lstm_cell_120/strided_slice_3/stack_1:output:04while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_3Å
while/lstm_cell_120/MatMul_7MatMulwhile/lstm_cell_120/mul_3:z:0,while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_7Á
while/lstm_cell_120/add_4AddV2&while/lstm_cell_120/BiasAdd_3:output:0&while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_4
while/lstm_cell_120/Sigmoid_2Sigmoidwhile/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_2
while/lstm_cell_120/Relu_1Reluwhile/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu_1¼
while/lstm_cell_120/mul_6Mul!while/lstm_cell_120/Sigmoid_2:y:0(while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_120/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_120/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_120/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_120/ReadVariableOp%^while/lstm_cell_120/ReadVariableOp_1%^while/lstm_cell_120/ReadVariableOp_2%^while/lstm_cell_120/ReadVariableOp_3)^while/lstm_cell_120/split/ReadVariableOp+^while/lstm_cell_120/split_1/ReadVariableOp*"
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
+while_lstm_cell_120_readvariableop_resource-while_lstm_cell_120_readvariableop_resource_0"l
3while_lstm_cell_120_split_1_readvariableop_resource5while_lstm_cell_120_split_1_readvariableop_resource_0"h
1while_lstm_cell_120_split_readvariableop_resource3while_lstm_cell_120_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_120/ReadVariableOp"while/lstm_cell_120/ReadVariableOp2L
$while/lstm_cell_120/ReadVariableOp_1$while/lstm_cell_120/ReadVariableOp_12L
$while/lstm_cell_120/ReadVariableOp_2$while/lstm_cell_120/ReadVariableOp_22L
$while/lstm_cell_120/ReadVariableOp_3$while/lstm_cell_120/ReadVariableOp_32T
(while/lstm_cell_120/split/ReadVariableOp(while/lstm_cell_120/split/ReadVariableOp2X
*while/lstm_cell_120/split_1/ReadVariableOp*while/lstm_cell_120/split_1/ReadVariableOp: 
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
×R
Ð
E__inference_lstm_120_layer_call_and_return_conditional_losses_3889846

inputs(
lstm_cell_120_3889758:	$
lstm_cell_120_3889760:	(
lstm_cell_120_3889762:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢%lstm_cell_120/StatefulPartitionedCall¢whileD
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
%lstm_cell_120/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_120_3889758lstm_cell_120_3889760lstm_cell_120_3889762*
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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_38897572'
%lstm_cell_120/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_120_3889758lstm_cell_120_3889760lstm_cell_120_3889762*
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
while_body_3889771*
condR
while_cond_3889770*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_120_3889758*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÀ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp&^lstm_cell_120/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2N
%lstm_cell_120/StatefulPartitionedCall%lstm_cell_120/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

ü
lstm_120_while_cond_3891761.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_30
,lstm_120_while_less_lstm_120_strided_slice_1G
Clstm_120_while_lstm_120_while_cond_3891761___redundant_placeholder0G
Clstm_120_while_lstm_120_while_cond_3891761___redundant_placeholder1G
Clstm_120_while_lstm_120_while_cond_3891761___redundant_placeholder2G
Clstm_120_while_lstm_120_while_cond_3891761___redundant_placeholder3
lstm_120_while_identity

lstm_120/while/LessLesslstm_120_while_placeholder,lstm_120_while_less_lstm_120_strided_slice_1*
T0*
_output_shapes
: 2
lstm_120/while/Lessx
lstm_120/while/IdentityIdentitylstm_120/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_120/while/Identity";
lstm_120_while_identity lstm_120/while/Identity:output:0*(
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
 ¤
¶
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892248
inputs_0>
+lstm_cell_120_split_readvariableop_resource:	<
-lstm_cell_120_split_1_readvariableop_resource:	8
%lstm_cell_120_readvariableop_resource:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_120/ReadVariableOp¢lstm_cell_120/ReadVariableOp_1¢lstm_cell_120/ReadVariableOp_2¢lstm_cell_120/ReadVariableOp_3¢"lstm_cell_120/split/ReadVariableOp¢$lstm_cell_120/split_1/ReadVariableOp¢whileF
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
lstm_cell_120/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_120/ones_like/Shape
lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_120/ones_like/Const¼
lstm_cell_120/ones_likeFill&lstm_cell_120/ones_like/Shape:output:0&lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/ones_like
lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_120/split/split_dimµ
"lstm_cell_120/split/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_120/split/ReadVariableOpß
lstm_cell_120/splitSplit&lstm_cell_120/split/split_dim:output:0*lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_120/split 
lstm_cell_120/MatMulMatMulstrided_slice_2:output:0lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul¤
lstm_cell_120/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_1¤
lstm_cell_120/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_2¤
lstm_cell_120/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_3
lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_120/split_1/split_dim·
$lstm_cell_120/split_1/ReadVariableOpReadVariableOp-lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_120/split_1/ReadVariableOp×
lstm_cell_120/split_1Split(lstm_cell_120/split_1/split_dim:output:0,lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_120/split_1«
lstm_cell_120/BiasAddBiasAddlstm_cell_120/MatMul:product:0lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd±
lstm_cell_120/BiasAdd_1BiasAdd lstm_cell_120/MatMul_1:product:0lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_1±
lstm_cell_120/BiasAdd_2BiasAdd lstm_cell_120/MatMul_2:product:0lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_2±
lstm_cell_120/BiasAdd_3BiasAdd lstm_cell_120/MatMul_3:product:0lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_3
lstm_cell_120/mulMulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul
lstm_cell_120/mul_1Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_1
lstm_cell_120/mul_2Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_2
lstm_cell_120/mul_3Mulzeros:output:0 lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_3£
lstm_cell_120/ReadVariableOpReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_120/ReadVariableOp
!lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_120/strided_slice/stack
#lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice/stack_1
#lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_120/strided_slice/stack_2Ð
lstm_cell_120/strided_sliceStridedSlice$lstm_cell_120/ReadVariableOp:value:0*lstm_cell_120/strided_slice/stack:output:0,lstm_cell_120/strided_slice/stack_1:output:0,lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice©
lstm_cell_120/MatMul_4MatMullstm_cell_120/mul:z:0$lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_4£
lstm_cell_120/addAddV2lstm_cell_120/BiasAdd:output:0 lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add
lstm_cell_120/SigmoidSigmoidlstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid§
lstm_cell_120/ReadVariableOp_1ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_1
#lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice_1/stack
%lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_120/strided_slice_1/stack_1
%lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_1/stack_2Ü
lstm_cell_120/strided_slice_1StridedSlice&lstm_cell_120/ReadVariableOp_1:value:0,lstm_cell_120/strided_slice_1/stack:output:0.lstm_cell_120/strided_slice_1/stack_1:output:0.lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_1­
lstm_cell_120/MatMul_5MatMullstm_cell_120/mul_1:z:0&lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_5©
lstm_cell_120/add_1AddV2 lstm_cell_120/BiasAdd_1:output:0 lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_1
lstm_cell_120/Sigmoid_1Sigmoidlstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_1
lstm_cell_120/mul_4Mullstm_cell_120/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_4§
lstm_cell_120/ReadVariableOp_2ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_2
#lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_120/strided_slice_2/stack
%lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_120/strided_slice_2/stack_1
%lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_2/stack_2Ü
lstm_cell_120/strided_slice_2StridedSlice&lstm_cell_120/ReadVariableOp_2:value:0,lstm_cell_120/strided_slice_2/stack:output:0.lstm_cell_120/strided_slice_2/stack_1:output:0.lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_2­
lstm_cell_120/MatMul_6MatMullstm_cell_120/mul_2:z:0&lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_6©
lstm_cell_120/add_2AddV2 lstm_cell_120/BiasAdd_2:output:0 lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_2{
lstm_cell_120/ReluRelulstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu 
lstm_cell_120/mul_5Mullstm_cell_120/Sigmoid:y:0 lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_5
lstm_cell_120/add_3AddV2lstm_cell_120/mul_4:z:0lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_3§
lstm_cell_120/ReadVariableOp_3ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_3
#lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_120/strided_slice_3/stack
%lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_120/strided_slice_3/stack_1
%lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_3/stack_2Ü
lstm_cell_120/strided_slice_3StridedSlice&lstm_cell_120/ReadVariableOp_3:value:0,lstm_cell_120/strided_slice_3/stack:output:0.lstm_cell_120/strided_slice_3/stack_1:output:0.lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_3­
lstm_cell_120/MatMul_7MatMullstm_cell_120/mul_3:z:0&lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_7©
lstm_cell_120/add_4AddV2 lstm_cell_120/BiasAdd_3:output:0 lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_4
lstm_cell_120/Sigmoid_2Sigmoidlstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_2
lstm_cell_120/Relu_1Relulstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu_1¤
lstm_cell_120/mul_6Mullstm_cell_120/Sigmoid_2:y:0"lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_120_split_readvariableop_resource-lstm_cell_120_split_1_readvariableop_resource%lstm_cell_120_readvariableop_resource*
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
while_body_3892115*
condR
while_cond_3892114*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_120/ReadVariableOp^lstm_cell_120/ReadVariableOp_1^lstm_cell_120/ReadVariableOp_2^lstm_cell_120/ReadVariableOp_3#^lstm_cell_120/split/ReadVariableOp%^lstm_cell_120/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_120/ReadVariableOplstm_cell_120/ReadVariableOp2@
lstm_cell_120/ReadVariableOp_1lstm_cell_120/ReadVariableOp_12@
lstm_cell_120/ReadVariableOp_2lstm_cell_120/ReadVariableOp_22@
lstm_cell_120/ReadVariableOp_3lstm_cell_120/ReadVariableOp_32H
"lstm_cell_120/split/ReadVariableOp"lstm_cell_120/split/ReadVariableOp2L
$lstm_cell_120/split_1/ReadVariableOp$lstm_cell_120/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

c
G__inference_reshape_72_layer_call_and_return_conditional_losses_3890726

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
Âµ
±	
while_body_3890939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_120_split_readvariableop_resource_0:	D
5while_lstm_cell_120_split_1_readvariableop_resource_0:	@
-while_lstm_cell_120_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_120_split_readvariableop_resource:	B
3while_lstm_cell_120_split_1_readvariableop_resource:	>
+while_lstm_cell_120_readvariableop_resource:	 ¢"while/lstm_cell_120/ReadVariableOp¢$while/lstm_cell_120/ReadVariableOp_1¢$while/lstm_cell_120/ReadVariableOp_2¢$while/lstm_cell_120/ReadVariableOp_3¢(while/lstm_cell_120/split/ReadVariableOp¢*while/lstm_cell_120/split_1/ReadVariableOpÃ
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
#while/lstm_cell_120/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_120/ones_like/Shape
#while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_120/ones_like/ConstÔ
while/lstm_cell_120/ones_likeFill,while/lstm_cell_120/ones_like/Shape:output:0,while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/ones_like
!while/lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2#
!while/lstm_cell_120/dropout/ConstÏ
while/lstm_cell_120/dropout/MulMul&while/lstm_cell_120/ones_like:output:0*while/lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_120/dropout/Mul
!while/lstm_cell_120/dropout/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_120/dropout/Shape
8while/lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2âÂÌ2:
8while/lstm_cell_120/dropout/random_uniform/RandomUniform
*while/lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_120/dropout/GreaterEqual/y
(while/lstm_cell_120/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_120/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_120/dropout/GreaterEqual»
 while/lstm_cell_120/dropout/CastCast,while/lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_120/dropout/CastÊ
!while/lstm_cell_120/dropout/Mul_1Mul#while/lstm_cell_120/dropout/Mul:z:0$while/lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout/Mul_1
#while/lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_1/ConstÕ
!while/lstm_cell_120/dropout_1/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_1/Mul 
#while/lstm_cell_120/dropout_1/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_1/Shape
:while/lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed22<
:while/lstm_cell_120/dropout_1/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_1/GreaterEqual/y
*while/lstm_cell_120/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_1/GreaterEqualÁ
"while/lstm_cell_120/dropout_1/CastCast.while/lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_1/CastÒ
#while/lstm_cell_120/dropout_1/Mul_1Mul%while/lstm_cell_120/dropout_1/Mul:z:0&while/lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_1/Mul_1
#while/lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_2/ConstÕ
!while/lstm_cell_120/dropout_2/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_2/Mul 
#while/lstm_cell_120/dropout_2/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_2/Shape
:while/lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed22<
:while/lstm_cell_120/dropout_2/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_2/GreaterEqual/y
*while/lstm_cell_120/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_2/GreaterEqualÁ
"while/lstm_cell_120/dropout_2/CastCast.while/lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_2/CastÒ
#while/lstm_cell_120/dropout_2/Mul_1Mul%while/lstm_cell_120/dropout_2/Mul:z:0&while/lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_2/Mul_1
#while/lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_3/ConstÕ
!while/lstm_cell_120/dropout_3/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_3/Mul 
#while/lstm_cell_120/dropout_3/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_3/Shape
:while/lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2½×2<
:while/lstm_cell_120/dropout_3/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_3/GreaterEqual/y
*while/lstm_cell_120/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_3/GreaterEqualÁ
"while/lstm_cell_120/dropout_3/CastCast.while/lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_3/CastÒ
#while/lstm_cell_120/dropout_3/Mul_1Mul%while/lstm_cell_120/dropout_3/Mul:z:0&while/lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_3/Mul_1
#while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_120/split/split_dimÉ
(while/lstm_cell_120/split/ReadVariableOpReadVariableOp3while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_120/split/ReadVariableOp÷
while/lstm_cell_120/splitSplit,while/lstm_cell_120/split/split_dim:output:00while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_120/splitÊ
while/lstm_cell_120/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMulÎ
while/lstm_cell_120/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_1Î
while/lstm_cell_120/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_2Î
while/lstm_cell_120/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_3
%while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_120/split_1/split_dimË
*while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_120/split_1/ReadVariableOpï
while/lstm_cell_120/split_1Split.while/lstm_cell_120/split_1/split_dim:output:02while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_120/split_1Ã
while/lstm_cell_120/BiasAddBiasAdd$while/lstm_cell_120/MatMul:product:0$while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAddÉ
while/lstm_cell_120/BiasAdd_1BiasAdd&while/lstm_cell_120/MatMul_1:product:0$while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_1É
while/lstm_cell_120/BiasAdd_2BiasAdd&while/lstm_cell_120/MatMul_2:product:0$while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_2É
while/lstm_cell_120/BiasAdd_3BiasAdd&while/lstm_cell_120/MatMul_3:product:0$while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_3§
while/lstm_cell_120/mulMulwhile_placeholder_2%while/lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul­
while/lstm_cell_120/mul_1Mulwhile_placeholder_2'while/lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_1­
while/lstm_cell_120/mul_2Mulwhile_placeholder_2'while/lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_2­
while/lstm_cell_120/mul_3Mulwhile_placeholder_2'while/lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_3·
"while/lstm_cell_120/ReadVariableOpReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_120/ReadVariableOp£
'while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_120/strided_slice/stack§
)while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice/stack_1§
)while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_120/strided_slice/stack_2ô
!while/lstm_cell_120/strided_sliceStridedSlice*while/lstm_cell_120/ReadVariableOp:value:00while/lstm_cell_120/strided_slice/stack:output:02while/lstm_cell_120/strided_slice/stack_1:output:02while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_120/strided_sliceÁ
while/lstm_cell_120/MatMul_4MatMulwhile/lstm_cell_120/mul:z:0*while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_4»
while/lstm_cell_120/addAddV2$while/lstm_cell_120/BiasAdd:output:0&while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add
while/lstm_cell_120/SigmoidSigmoidwhile/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid»
$while/lstm_cell_120/ReadVariableOp_1ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_1§
)while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice_1/stack«
+while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_120/strided_slice_1/stack_1«
+while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_1/stack_2
#while/lstm_cell_120/strided_slice_1StridedSlice,while/lstm_cell_120/ReadVariableOp_1:value:02while/lstm_cell_120/strided_slice_1/stack:output:04while/lstm_cell_120/strided_slice_1/stack_1:output:04while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_1Å
while/lstm_cell_120/MatMul_5MatMulwhile/lstm_cell_120/mul_1:z:0,while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_5Á
while/lstm_cell_120/add_1AddV2&while/lstm_cell_120/BiasAdd_1:output:0&while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_1
while/lstm_cell_120/Sigmoid_1Sigmoidwhile/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_1§
while/lstm_cell_120/mul_4Mul!while/lstm_cell_120/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_4»
$while/lstm_cell_120/ReadVariableOp_2ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_2§
)while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_120/strided_slice_2/stack«
+while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_120/strided_slice_2/stack_1«
+while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_2/stack_2
#while/lstm_cell_120/strided_slice_2StridedSlice,while/lstm_cell_120/ReadVariableOp_2:value:02while/lstm_cell_120/strided_slice_2/stack:output:04while/lstm_cell_120/strided_slice_2/stack_1:output:04while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_2Å
while/lstm_cell_120/MatMul_6MatMulwhile/lstm_cell_120/mul_2:z:0,while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_6Á
while/lstm_cell_120/add_2AddV2&while/lstm_cell_120/BiasAdd_2:output:0&while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_2
while/lstm_cell_120/ReluReluwhile/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu¸
while/lstm_cell_120/mul_5Mulwhile/lstm_cell_120/Sigmoid:y:0&while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_5¯
while/lstm_cell_120/add_3AddV2while/lstm_cell_120/mul_4:z:0while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_3»
$while/lstm_cell_120/ReadVariableOp_3ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_3§
)while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_120/strided_slice_3/stack«
+while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_120/strided_slice_3/stack_1«
+while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_3/stack_2
#while/lstm_cell_120/strided_slice_3StridedSlice,while/lstm_cell_120/ReadVariableOp_3:value:02while/lstm_cell_120/strided_slice_3/stack:output:04while/lstm_cell_120/strided_slice_3/stack_1:output:04while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_3Å
while/lstm_cell_120/MatMul_7MatMulwhile/lstm_cell_120/mul_3:z:0,while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_7Á
while/lstm_cell_120/add_4AddV2&while/lstm_cell_120/BiasAdd_3:output:0&while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_4
while/lstm_cell_120/Sigmoid_2Sigmoidwhile/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_2
while/lstm_cell_120/Relu_1Reluwhile/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu_1¼
while/lstm_cell_120/mul_6Mul!while/lstm_cell_120/Sigmoid_2:y:0(while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_120/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_120/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_120/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_120/ReadVariableOp%^while/lstm_cell_120/ReadVariableOp_1%^while/lstm_cell_120/ReadVariableOp_2%^while/lstm_cell_120/ReadVariableOp_3)^while/lstm_cell_120/split/ReadVariableOp+^while/lstm_cell_120/split_1/ReadVariableOp*"
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
+while_lstm_cell_120_readvariableop_resource-while_lstm_cell_120_readvariableop_resource_0"l
3while_lstm_cell_120_split_1_readvariableop_resource5while_lstm_cell_120_split_1_readvariableop_resource_0"h
1while_lstm_cell_120_split_readvariableop_resource3while_lstm_cell_120_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_120/ReadVariableOp"while/lstm_cell_120/ReadVariableOp2L
$while/lstm_cell_120/ReadVariableOp_1$while/lstm_cell_120/ReadVariableOp_12L
$while/lstm_cell_120/ReadVariableOp_2$while/lstm_cell_120/ReadVariableOp_22L
$while/lstm_cell_120/ReadVariableOp_3$while/lstm_cell_120/ReadVariableOp_32T
(while/lstm_cell_120/split/ReadVariableOp(while/lstm_cell_120/split/ReadVariableOp2X
*while/lstm_cell_120/split_1/ReadVariableOp*while/lstm_cell_120/split_1/ReadVariableOp: 
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
Ûæ
º
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891620

inputsG
4lstm_120_lstm_cell_120_split_readvariableop_resource:	E
6lstm_120_lstm_cell_120_split_1_readvariableop_resource:	A
.lstm_120_lstm_cell_120_readvariableop_resource:	 :
(dense_144_matmul_readvariableop_resource:  7
)dense_144_biasadd_readvariableop_resource: :
(dense_145_matmul_readvariableop_resource: 7
)dense_145_biasadd_readvariableop_resource:
identity¢ dense_144/BiasAdd/ReadVariableOp¢dense_144/MatMul/ReadVariableOp¢ dense_145/BiasAdd/ReadVariableOp¢dense_145/MatMul/ReadVariableOp¢0dense_145/bias/Regularizer/Square/ReadVariableOp¢%lstm_120/lstm_cell_120/ReadVariableOp¢'lstm_120/lstm_cell_120/ReadVariableOp_1¢'lstm_120/lstm_cell_120/ReadVariableOp_2¢'lstm_120/lstm_cell_120/ReadVariableOp_3¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢+lstm_120/lstm_cell_120/split/ReadVariableOp¢-lstm_120/lstm_cell_120/split_1/ReadVariableOp¢lstm_120/whileV
lstm_120/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_120/Shape
lstm_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_120/strided_slice/stack
lstm_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_120/strided_slice/stack_1
lstm_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_120/strided_slice/stack_2
lstm_120/strided_sliceStridedSlicelstm_120/Shape:output:0%lstm_120/strided_slice/stack:output:0'lstm_120/strided_slice/stack_1:output:0'lstm_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_120/strided_slicen
lstm_120/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros/mul/y
lstm_120/zeros/mulMullstm_120/strided_slice:output:0lstm_120/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros/mulq
lstm_120/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_120/zeros/Less/y
lstm_120/zeros/LessLesslstm_120/zeros/mul:z:0lstm_120/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros/Lesst
lstm_120/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros/packed/1§
lstm_120/zeros/packedPacklstm_120/strided_slice:output:0 lstm_120/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_120/zeros/packedq
lstm_120/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_120/zeros/Const
lstm_120/zerosFilllstm_120/zeros/packed:output:0lstm_120/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/zerosr
lstm_120/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros_1/mul/y
lstm_120/zeros_1/mulMullstm_120/strided_slice:output:0lstm_120/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros_1/mulu
lstm_120/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_120/zeros_1/Less/y
lstm_120/zeros_1/LessLesslstm_120/zeros_1/mul:z:0 lstm_120/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_120/zeros_1/Lessx
lstm_120/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/zeros_1/packed/1­
lstm_120/zeros_1/packedPacklstm_120/strided_slice:output:0"lstm_120/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_120/zeros_1/packedu
lstm_120/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_120/zeros_1/Const¡
lstm_120/zeros_1Fill lstm_120/zeros_1/packed:output:0lstm_120/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/zeros_1
lstm_120/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_120/transpose/perm
lstm_120/transpose	Transposeinputs lstm_120/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_120/transposej
lstm_120/Shape_1Shapelstm_120/transpose:y:0*
T0*
_output_shapes
:2
lstm_120/Shape_1
lstm_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_120/strided_slice_1/stack
 lstm_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_1/stack_1
 lstm_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_1/stack_2¤
lstm_120/strided_slice_1StridedSlicelstm_120/Shape_1:output:0'lstm_120/strided_slice_1/stack:output:0)lstm_120/strided_slice_1/stack_1:output:0)lstm_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_120/strided_slice_1
$lstm_120/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$lstm_120/TensorArrayV2/element_shapeÖ
lstm_120/TensorArrayV2TensorListReserve-lstm_120/TensorArrayV2/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_120/TensorArrayV2Ñ
>lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_120/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_120/transpose:y:0Glstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_120/TensorArrayUnstack/TensorListFromTensor
lstm_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_120/strided_slice_2/stack
 lstm_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_2/stack_1
 lstm_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_2/stack_2²
lstm_120/strided_slice_2StridedSlicelstm_120/transpose:y:0'lstm_120/strided_slice_2/stack:output:0)lstm_120/strided_slice_2/stack_1:output:0)lstm_120/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_120/strided_slice_2
&lstm_120/lstm_cell_120/ones_like/ShapeShapelstm_120/zeros:output:0*
T0*
_output_shapes
:2(
&lstm_120/lstm_cell_120/ones_like/Shape
&lstm_120/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&lstm_120/lstm_cell_120/ones_like/Constà
 lstm_120/lstm_cell_120/ones_likeFill/lstm_120/lstm_cell_120/ones_like/Shape:output:0/lstm_120/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/ones_like
&lstm_120/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_120/lstm_cell_120/split/split_dimÐ
+lstm_120/lstm_cell_120/split/ReadVariableOpReadVariableOp4lstm_120_lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02-
+lstm_120/lstm_cell_120/split/ReadVariableOp
lstm_120/lstm_cell_120/splitSplit/lstm_120/lstm_cell_120/split/split_dim:output:03lstm_120/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_120/lstm_cell_120/splitÄ
lstm_120/lstm_cell_120/MatMulMatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/MatMulÈ
lstm_120/lstm_cell_120/MatMul_1MatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_1È
lstm_120/lstm_cell_120/MatMul_2MatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_2È
lstm_120/lstm_cell_120/MatMul_3MatMul!lstm_120/strided_slice_2:output:0%lstm_120/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_3
(lstm_120/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm_120/lstm_cell_120/split_1/split_dimÒ
-lstm_120/lstm_cell_120/split_1/ReadVariableOpReadVariableOp6lstm_120_lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02/
-lstm_120/lstm_cell_120/split_1/ReadVariableOpû
lstm_120/lstm_cell_120/split_1Split1lstm_120/lstm_cell_120/split_1/split_dim:output:05lstm_120/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm_120/lstm_cell_120/split_1Ï
lstm_120/lstm_cell_120/BiasAddBiasAdd'lstm_120/lstm_cell_120/MatMul:product:0'lstm_120/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_120/lstm_cell_120/BiasAddÕ
 lstm_120/lstm_cell_120/BiasAdd_1BiasAdd)lstm_120/lstm_cell_120/MatMul_1:product:0'lstm_120/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/BiasAdd_1Õ
 lstm_120/lstm_cell_120/BiasAdd_2BiasAdd)lstm_120/lstm_cell_120/MatMul_2:product:0'lstm_120/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/BiasAdd_2Õ
 lstm_120/lstm_cell_120/BiasAdd_3BiasAdd)lstm_120/lstm_cell_120/MatMul_3:product:0'lstm_120/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/BiasAdd_3µ
lstm_120/lstm_cell_120/mulMullstm_120/zeros:output:0)lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul¹
lstm_120/lstm_cell_120/mul_1Mullstm_120/zeros:output:0)lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_1¹
lstm_120/lstm_cell_120/mul_2Mullstm_120/zeros:output:0)lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_2¹
lstm_120/lstm_cell_120/mul_3Mullstm_120/zeros:output:0)lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_3¾
%lstm_120/lstm_cell_120/ReadVariableOpReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_120/lstm_cell_120/ReadVariableOp©
*lstm_120/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_120/lstm_cell_120/strided_slice/stack­
,lstm_120/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_120/lstm_cell_120/strided_slice/stack_1­
,lstm_120/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_120/lstm_cell_120/strided_slice/stack_2
$lstm_120/lstm_cell_120/strided_sliceStridedSlice-lstm_120/lstm_cell_120/ReadVariableOp:value:03lstm_120/lstm_cell_120/strided_slice/stack:output:05lstm_120/lstm_cell_120/strided_slice/stack_1:output:05lstm_120/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_120/lstm_cell_120/strided_sliceÍ
lstm_120/lstm_cell_120/MatMul_4MatMullstm_120/lstm_cell_120/mul:z:0-lstm_120/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_4Ç
lstm_120/lstm_cell_120/addAddV2'lstm_120/lstm_cell_120/BiasAdd:output:0)lstm_120/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add
lstm_120/lstm_cell_120/SigmoidSigmoidlstm_120/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_120/lstm_cell_120/SigmoidÂ
'lstm_120/lstm_cell_120/ReadVariableOp_1ReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_120/lstm_cell_120/ReadVariableOp_1­
,lstm_120/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_120/lstm_cell_120/strided_slice_1/stack±
.lstm_120/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_120/lstm_cell_120/strided_slice_1/stack_1±
.lstm_120/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_120/lstm_cell_120/strided_slice_1/stack_2
&lstm_120/lstm_cell_120/strided_slice_1StridedSlice/lstm_120/lstm_cell_120/ReadVariableOp_1:value:05lstm_120/lstm_cell_120/strided_slice_1/stack:output:07lstm_120/lstm_cell_120/strided_slice_1/stack_1:output:07lstm_120/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_120/lstm_cell_120/strided_slice_1Ñ
lstm_120/lstm_cell_120/MatMul_5MatMul lstm_120/lstm_cell_120/mul_1:z:0/lstm_120/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_5Í
lstm_120/lstm_cell_120/add_1AddV2)lstm_120/lstm_cell_120/BiasAdd_1:output:0)lstm_120/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_1£
 lstm_120/lstm_cell_120/Sigmoid_1Sigmoid lstm_120/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/Sigmoid_1¶
lstm_120/lstm_cell_120/mul_4Mul$lstm_120/lstm_cell_120/Sigmoid_1:y:0lstm_120/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_4Â
'lstm_120/lstm_cell_120/ReadVariableOp_2ReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_120/lstm_cell_120/ReadVariableOp_2­
,lstm_120/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_120/lstm_cell_120/strided_slice_2/stack±
.lstm_120/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_120/lstm_cell_120/strided_slice_2/stack_1±
.lstm_120/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_120/lstm_cell_120/strided_slice_2/stack_2
&lstm_120/lstm_cell_120/strided_slice_2StridedSlice/lstm_120/lstm_cell_120/ReadVariableOp_2:value:05lstm_120/lstm_cell_120/strided_slice_2/stack:output:07lstm_120/lstm_cell_120/strided_slice_2/stack_1:output:07lstm_120/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_120/lstm_cell_120/strided_slice_2Ñ
lstm_120/lstm_cell_120/MatMul_6MatMul lstm_120/lstm_cell_120/mul_2:z:0/lstm_120/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_6Í
lstm_120/lstm_cell_120/add_2AddV2)lstm_120/lstm_cell_120/BiasAdd_2:output:0)lstm_120/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_2
lstm_120/lstm_cell_120/ReluRelu lstm_120/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/ReluÄ
lstm_120/lstm_cell_120/mul_5Mul"lstm_120/lstm_cell_120/Sigmoid:y:0)lstm_120/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_5»
lstm_120/lstm_cell_120/add_3AddV2 lstm_120/lstm_cell_120/mul_4:z:0 lstm_120/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_3Â
'lstm_120/lstm_cell_120/ReadVariableOp_3ReadVariableOp.lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'lstm_120/lstm_cell_120/ReadVariableOp_3­
,lstm_120/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_120/lstm_cell_120/strided_slice_3/stack±
.lstm_120/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_120/lstm_cell_120/strided_slice_3/stack_1±
.lstm_120/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_120/lstm_cell_120/strided_slice_3/stack_2
&lstm_120/lstm_cell_120/strided_slice_3StridedSlice/lstm_120/lstm_cell_120/ReadVariableOp_3:value:05lstm_120/lstm_cell_120/strided_slice_3/stack:output:07lstm_120/lstm_cell_120/strided_slice_3/stack_1:output:07lstm_120/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_120/lstm_cell_120/strided_slice_3Ñ
lstm_120/lstm_cell_120/MatMul_7MatMul lstm_120/lstm_cell_120/mul_3:z:0/lstm_120/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_120/lstm_cell_120/MatMul_7Í
lstm_120/lstm_cell_120/add_4AddV2)lstm_120/lstm_cell_120/BiasAdd_3:output:0)lstm_120/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/add_4£
 lstm_120/lstm_cell_120/Sigmoid_2Sigmoid lstm_120/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/lstm_cell_120/Sigmoid_2
lstm_120/lstm_cell_120/Relu_1Relu lstm_120/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/Relu_1È
lstm_120/lstm_cell_120/mul_6Mul$lstm_120/lstm_cell_120/Sigmoid_2:y:0+lstm_120/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/lstm_cell_120/mul_6¡
&lstm_120/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2(
&lstm_120/TensorArrayV2_1/element_shapeÜ
lstm_120/TensorArrayV2_1TensorListReserve/lstm_120/TensorArrayV2_1/element_shape:output:0!lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_120/TensorArrayV2_1`
lstm_120/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/time
!lstm_120/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!lstm_120/while/maximum_iterations|
lstm_120/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_120/while/loop_counter
lstm_120/whileWhile$lstm_120/while/loop_counter:output:0*lstm_120/while/maximum_iterations:output:0lstm_120/time:output:0!lstm_120/TensorArrayV2_1:handle:0lstm_120/zeros:output:0lstm_120/zeros_1:output:0!lstm_120/strided_slice_1:output:0@lstm_120/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_120_lstm_cell_120_split_readvariableop_resource6lstm_120_lstm_cell_120_split_1_readvariableop_resource.lstm_120_lstm_cell_120_readvariableop_resource*
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
lstm_120_while_body_3891459*'
condR
lstm_120_while_cond_3891458*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_120/whileÇ
9lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2;
9lstm_120/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_120/TensorArrayV2Stack/TensorListStackTensorListStacklstm_120/while:output:3Blstm_120/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02-
+lstm_120/TensorArrayV2Stack/TensorListStack
lstm_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2 
lstm_120/strided_slice_3/stack
 lstm_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_120/strided_slice_3/stack_1
 lstm_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_120/strided_slice_3/stack_2Ð
lstm_120/strided_slice_3StridedSlice4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_120/strided_slice_3/stack:output:0)lstm_120/strided_slice_3/stack_1:output:0)lstm_120/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_120/strided_slice_3
lstm_120/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_120/transpose_1/permÉ
lstm_120/transpose_1	Transpose4lstm_120/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_120/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/transpose_1x
lstm_120/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_120/runtime«
dense_144/MatMul/ReadVariableOpReadVariableOp(dense_144_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_144/MatMul/ReadVariableOp¬
dense_144/MatMulMatMul!lstm_120/strided_slice_3:output:0'dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_144/MatMulª
 dense_144/BiasAdd/ReadVariableOpReadVariableOp)dense_144_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_144/BiasAdd/ReadVariableOp©
dense_144/BiasAddBiasAdddense_144/MatMul:product:0(dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_144/BiasAddv
dense_144/ReluReludense_144/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_144/Relu«
dense_145/MatMul/ReadVariableOpReadVariableOp(dense_145_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_145/MatMul/ReadVariableOp§
dense_145/MatMulMatMuldense_144/Relu:activations:0'dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_145/MatMulª
 dense_145/BiasAdd/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_145/BiasAdd/ReadVariableOp©
dense_145/BiasAddBiasAdddense_145/MatMul:product:0(dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_145/BiasAddn
reshape_72/ShapeShapedense_145/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_72/Shape
reshape_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_72/strided_slice/stack
 reshape_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_1
 reshape_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_72/strided_slice/stack_2¤
reshape_72/strided_sliceStridedSlicereshape_72/Shape:output:0'reshape_72/strided_slice/stack:output:0)reshape_72/strided_slice/stack_1:output:0)reshape_72/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_72/strided_slicez
reshape_72/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_72/Reshape/shape/1z
reshape_72/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_72/Reshape/shape/2×
reshape_72/Reshape/shapePack!reshape_72/strided_slice:output:0#reshape_72/Reshape/shape/1:output:0#reshape_72/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_72/Reshape/shape¨
reshape_72/ReshapeReshapedense_145/BiasAdd:output:0!reshape_72/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_72/Reshapeø
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4lstm_120_lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mulÊ
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mulz
IdentityIdentityreshape_72/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityâ
NoOpNoOp!^dense_144/BiasAdd/ReadVariableOp ^dense_144/MatMul/ReadVariableOp!^dense_145/BiasAdd/ReadVariableOp ^dense_145/MatMul/ReadVariableOp1^dense_145/bias/Regularizer/Square/ReadVariableOp&^lstm_120/lstm_cell_120/ReadVariableOp(^lstm_120/lstm_cell_120/ReadVariableOp_1(^lstm_120/lstm_cell_120/ReadVariableOp_2(^lstm_120/lstm_cell_120/ReadVariableOp_3@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp,^lstm_120/lstm_cell_120/split/ReadVariableOp.^lstm_120/lstm_cell_120/split_1/ReadVariableOp^lstm_120/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_144/BiasAdd/ReadVariableOp dense_144/BiasAdd/ReadVariableOp2B
dense_144/MatMul/ReadVariableOpdense_144/MatMul/ReadVariableOp2D
 dense_145/BiasAdd/ReadVariableOp dense_145/BiasAdd/ReadVariableOp2B
dense_145/MatMul/ReadVariableOpdense_145/MatMul/ReadVariableOp2d
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp2N
%lstm_120/lstm_cell_120/ReadVariableOp%lstm_120/lstm_cell_120/ReadVariableOp2R
'lstm_120/lstm_cell_120/ReadVariableOp_1'lstm_120/lstm_cell_120/ReadVariableOp_12R
'lstm_120/lstm_cell_120/ReadVariableOp_2'lstm_120/lstm_cell_120/ReadVariableOp_22R
'lstm_120/lstm_cell_120/ReadVariableOp_3'lstm_120/lstm_cell_120/ReadVariableOp_32
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2Z
+lstm_120/lstm_cell_120/split/ReadVariableOp+lstm_120/lstm_cell_120/split/ReadVariableOp2^
-lstm_120/lstm_cell_120/split_1/ReadVariableOp-lstm_120/lstm_cell_120/split_1/ReadVariableOp2 
lstm_120/whilelstm_120/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä	
¨
/__inference_sequential_48_layer_call_fn_3891330

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
J__inference_sequential_48_layer_call_and_return_conditional_losses_38907412
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
Ã½
Ù
)sequential_48_lstm_120_while_body_3889484J
Fsequential_48_lstm_120_while_sequential_48_lstm_120_while_loop_counterP
Lsequential_48_lstm_120_while_sequential_48_lstm_120_while_maximum_iterations,
(sequential_48_lstm_120_while_placeholder.
*sequential_48_lstm_120_while_placeholder_1.
*sequential_48_lstm_120_while_placeholder_2.
*sequential_48_lstm_120_while_placeholder_3I
Esequential_48_lstm_120_while_sequential_48_lstm_120_strided_slice_1_0
sequential_48_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_120_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_48_lstm_120_while_lstm_cell_120_split_readvariableop_resource_0:	[
Lsequential_48_lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0:	W
Dsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource_0:	 )
%sequential_48_lstm_120_while_identity+
'sequential_48_lstm_120_while_identity_1+
'sequential_48_lstm_120_while_identity_2+
'sequential_48_lstm_120_while_identity_3+
'sequential_48_lstm_120_while_identity_4+
'sequential_48_lstm_120_while_identity_5G
Csequential_48_lstm_120_while_sequential_48_lstm_120_strided_slice_1
sequential_48_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_120_tensorarrayunstack_tensorlistfromtensor[
Hsequential_48_lstm_120_while_lstm_cell_120_split_readvariableop_resource:	Y
Jsequential_48_lstm_120_while_lstm_cell_120_split_1_readvariableop_resource:	U
Bsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource:	 ¢9sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp¢;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_1¢;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_2¢;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_3¢?sequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOp¢Asequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOpñ
Nsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2P
Nsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeÞ
@sequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_48_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_120_tensorarrayunstack_tensorlistfromtensor_0(sequential_48_lstm_120_while_placeholderWsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02B
@sequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItemÒ
:sequential_48/lstm_120/while/lstm_cell_120/ones_like/ShapeShape*sequential_48_lstm_120_while_placeholder_2*
T0*
_output_shapes
:2<
:sequential_48/lstm_120/while/lstm_cell_120/ones_like/Shape½
:sequential_48/lstm_120/while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2<
:sequential_48/lstm_120/while/lstm_cell_120/ones_like/Const°
4sequential_48/lstm_120/while/lstm_cell_120/ones_likeFillCsequential_48/lstm_120/while/lstm_cell_120/ones_like/Shape:output:0Csequential_48/lstm_120/while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_48/lstm_120/while/lstm_cell_120/ones_likeº
:sequential_48/lstm_120/while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_48/lstm_120/while/lstm_cell_120/split/split_dim
?sequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOpReadVariableOpJsequential_48_lstm_120_while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02A
?sequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOpÓ
0sequential_48/lstm_120/while/lstm_cell_120/splitSplitCsequential_48/lstm_120/while/lstm_cell_120/split/split_dim:output:0Gsequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split22
0sequential_48/lstm_120/while/lstm_cell_120/split¦
1sequential_48/lstm_120/while/lstm_cell_120/MatMulMatMulGsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_48/lstm_120/while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_48/lstm_120/while/lstm_cell_120/MatMulª
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_1MatMulGsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_48/lstm_120/while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_1ª
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_2MatMulGsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_48/lstm_120/while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_2ª
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_3MatMulGsequential_48/lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:09sequential_48/lstm_120/while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_3¾
<sequential_48/lstm_120/while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2>
<sequential_48/lstm_120/while/lstm_cell_120/split_1/split_dim
Asequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOpReadVariableOpLsequential_48_lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02C
Asequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOpË
2sequential_48/lstm_120/while/lstm_cell_120/split_1SplitEsequential_48/lstm_120/while/lstm_cell_120/split_1/split_dim:output:0Isequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split24
2sequential_48/lstm_120/while/lstm_cell_120/split_1
2sequential_48/lstm_120/while/lstm_cell_120/BiasAddBiasAdd;sequential_48/lstm_120/while/lstm_cell_120/MatMul:product:0;sequential_48/lstm_120/while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_48/lstm_120/while/lstm_cell_120/BiasAdd¥
4sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_1BiasAdd=sequential_48/lstm_120/while/lstm_cell_120/MatMul_1:product:0;sequential_48/lstm_120/while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_1¥
4sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_2BiasAdd=sequential_48/lstm_120/while/lstm_cell_120/MatMul_2:product:0;sequential_48/lstm_120/while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_2¥
4sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_3BiasAdd=sequential_48/lstm_120/while/lstm_cell_120/MatMul_3:product:0;sequential_48/lstm_120/while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_3
.sequential_48/lstm_120/while/lstm_cell_120/mulMul*sequential_48_lstm_120_while_placeholder_2=sequential_48/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/while/lstm_cell_120/mul
0sequential_48/lstm_120/while/lstm_cell_120/mul_1Mul*sequential_48_lstm_120_while_placeholder_2=sequential_48/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/mul_1
0sequential_48/lstm_120/while/lstm_cell_120/mul_2Mul*sequential_48_lstm_120_while_placeholder_2=sequential_48/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/mul_2
0sequential_48/lstm_120/while/lstm_cell_120/mul_3Mul*sequential_48_lstm_120_while_placeholder_2=sequential_48/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/mul_3ü
9sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOpReadVariableOpDsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOpÑ
>sequential_48/lstm_120/while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_48/lstm_120/while/lstm_cell_120/strided_slice/stackÕ
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack_1Õ
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack_2þ
8sequential_48/lstm_120/while/lstm_cell_120/strided_sliceStridedSliceAsequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp:value:0Gsequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack:output:0Isequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack_1:output:0Isequential_48/lstm_120/while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_48/lstm_120/while/lstm_cell_120/strided_slice
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_4MatMul2sequential_48/lstm_120/while/lstm_cell_120/mul:z:0Asequential_48/lstm_120/while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_4
.sequential_48/lstm_120/while/lstm_cell_120/addAddV2;sequential_48/lstm_120/while/lstm_cell_120/BiasAdd:output:0=sequential_48/lstm_120/while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/while/lstm_cell_120/addÙ
2sequential_48/lstm_120/while/lstm_cell_120/SigmoidSigmoid2sequential_48/lstm_120/while/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_48/lstm_120/while/lstm_cell_120/Sigmoid
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_1ReadVariableOpDsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_1Õ
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stackÙ
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2D
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack_1Ù
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack_2
:sequential_48/lstm_120/while/lstm_cell_120/strided_slice_1StridedSliceCsequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_1:value:0Isequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack:output:0Ksequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack_1:output:0Ksequential_48/lstm_120/while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_48/lstm_120/while/lstm_cell_120/strided_slice_1¡
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_5MatMul4sequential_48/lstm_120/while/lstm_cell_120/mul_1:z:0Csequential_48/lstm_120/while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_5
0sequential_48/lstm_120/while/lstm_cell_120/add_1AddV2=sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_1:output:0=sequential_48/lstm_120/while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/add_1ß
4sequential_48/lstm_120/while/lstm_cell_120/Sigmoid_1Sigmoid4sequential_48/lstm_120/while/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_48/lstm_120/while/lstm_cell_120/Sigmoid_1
0sequential_48/lstm_120/while/lstm_cell_120/mul_4Mul8sequential_48/lstm_120/while/lstm_cell_120/Sigmoid_1:y:0*sequential_48_lstm_120_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/mul_4
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_2ReadVariableOpDsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_2Õ
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stackÙ
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2D
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack_1Ù
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack_2
:sequential_48/lstm_120/while/lstm_cell_120/strided_slice_2StridedSliceCsequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_2:value:0Isequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack:output:0Ksequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack_1:output:0Ksequential_48/lstm_120/while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_48/lstm_120/while/lstm_cell_120/strided_slice_2¡
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_6MatMul4sequential_48/lstm_120/while/lstm_cell_120/mul_2:z:0Csequential_48/lstm_120/while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_6
0sequential_48/lstm_120/while/lstm_cell_120/add_2AddV2=sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_2:output:0=sequential_48/lstm_120/while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/add_2Ò
/sequential_48/lstm_120/while/lstm_cell_120/ReluRelu4sequential_48/lstm_120/while/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_48/lstm_120/while/lstm_cell_120/Relu
0sequential_48/lstm_120/while/lstm_cell_120/mul_5Mul6sequential_48/lstm_120/while/lstm_cell_120/Sigmoid:y:0=sequential_48/lstm_120/while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/mul_5
0sequential_48/lstm_120/while/lstm_cell_120/add_3AddV24sequential_48/lstm_120/while/lstm_cell_120/mul_4:z:04sequential_48/lstm_120/while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/add_3
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_3ReadVariableOpDsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02=
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_3Õ
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stackÙ
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack_1Ù
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2D
Bsequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack_2
:sequential_48/lstm_120/while/lstm_cell_120/strided_slice_3StridedSliceCsequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_3:value:0Isequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack:output:0Ksequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack_1:output:0Ksequential_48/lstm_120/while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2<
:sequential_48/lstm_120/while/lstm_cell_120/strided_slice_3¡
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_7MatMul4sequential_48/lstm_120/while/lstm_cell_120/mul_3:z:0Csequential_48/lstm_120/while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_48/lstm_120/while/lstm_cell_120/MatMul_7
0sequential_48/lstm_120/while/lstm_cell_120/add_4AddV2=sequential_48/lstm_120/while/lstm_cell_120/BiasAdd_3:output:0=sequential_48/lstm_120/while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/add_4ß
4sequential_48/lstm_120/while/lstm_cell_120/Sigmoid_2Sigmoid4sequential_48/lstm_120/while/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_48/lstm_120/while/lstm_cell_120/Sigmoid_2Ö
1sequential_48/lstm_120/while/lstm_cell_120/Relu_1Relu4sequential_48/lstm_120/while/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_48/lstm_120/while/lstm_cell_120/Relu_1
0sequential_48/lstm_120/while/lstm_cell_120/mul_6Mul8sequential_48/lstm_120/while/lstm_cell_120/Sigmoid_2:y:0?sequential_48/lstm_120/while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_48/lstm_120/while/lstm_cell_120/mul_6Ô
Asequential_48/lstm_120/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_48_lstm_120_while_placeholder_1(sequential_48_lstm_120_while_placeholder4sequential_48/lstm_120/while/lstm_cell_120/mul_6:z:0*
_output_shapes
: *
element_dtype02C
Asequential_48/lstm_120/while/TensorArrayV2Write/TensorListSetItem
"sequential_48/lstm_120/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_48/lstm_120/while/add/yÅ
 sequential_48/lstm_120/while/addAddV2(sequential_48_lstm_120_while_placeholder+sequential_48/lstm_120/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_48/lstm_120/while/add
$sequential_48/lstm_120/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_48/lstm_120/while/add_1/yé
"sequential_48/lstm_120/while/add_1AddV2Fsequential_48_lstm_120_while_sequential_48_lstm_120_while_loop_counter-sequential_48/lstm_120/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_48/lstm_120/while/add_1Ç
%sequential_48/lstm_120/while/IdentityIdentity&sequential_48/lstm_120/while/add_1:z:0"^sequential_48/lstm_120/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_48/lstm_120/while/Identityñ
'sequential_48/lstm_120/while/Identity_1IdentityLsequential_48_lstm_120_while_sequential_48_lstm_120_while_maximum_iterations"^sequential_48/lstm_120/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_48/lstm_120/while/Identity_1É
'sequential_48/lstm_120/while/Identity_2Identity$sequential_48/lstm_120/while/add:z:0"^sequential_48/lstm_120/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_48/lstm_120/while/Identity_2ö
'sequential_48/lstm_120/while/Identity_3IdentityQsequential_48/lstm_120/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_48/lstm_120/while/NoOp*
T0*
_output_shapes
: 2)
'sequential_48/lstm_120/while/Identity_3ê
'sequential_48/lstm_120/while/Identity_4Identity4sequential_48/lstm_120/while/lstm_cell_120/mul_6:z:0"^sequential_48/lstm_120/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_48/lstm_120/while/Identity_4ê
'sequential_48/lstm_120/while/Identity_5Identity4sequential_48/lstm_120/while/lstm_cell_120/add_3:z:0"^sequential_48/lstm_120/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_48/lstm_120/while/Identity_5
!sequential_48/lstm_120/while/NoOpNoOp:^sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp<^sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_1<^sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_2<^sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_3@^sequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOpB^sequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2#
!sequential_48/lstm_120/while/NoOp"W
%sequential_48_lstm_120_while_identity.sequential_48/lstm_120/while/Identity:output:0"[
'sequential_48_lstm_120_while_identity_10sequential_48/lstm_120/while/Identity_1:output:0"[
'sequential_48_lstm_120_while_identity_20sequential_48/lstm_120/while/Identity_2:output:0"[
'sequential_48_lstm_120_while_identity_30sequential_48/lstm_120/while/Identity_3:output:0"[
'sequential_48_lstm_120_while_identity_40sequential_48/lstm_120/while/Identity_4:output:0"[
'sequential_48_lstm_120_while_identity_50sequential_48/lstm_120/while/Identity_5:output:0"
Bsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resourceDsequential_48_lstm_120_while_lstm_cell_120_readvariableop_resource_0"
Jsequential_48_lstm_120_while_lstm_cell_120_split_1_readvariableop_resourceLsequential_48_lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0"
Hsequential_48_lstm_120_while_lstm_cell_120_split_readvariableop_resourceJsequential_48_lstm_120_while_lstm_cell_120_split_readvariableop_resource_0"
Csequential_48_lstm_120_while_sequential_48_lstm_120_strided_slice_1Esequential_48_lstm_120_while_sequential_48_lstm_120_strided_slice_1_0"
sequential_48_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_120_tensorarrayunstack_tensorlistfromtensorsequential_48_lstm_120_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_120_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2v
9sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp9sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp2z
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_1;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_12z
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_2;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_22z
;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_3;sequential_48/lstm_120/while/lstm_cell_120/ReadVariableOp_32
?sequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOp?sequential_48/lstm_120/while/lstm_cell_120/split/ReadVariableOp2
Asequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOpAsequential_48/lstm_120/while/lstm_cell_120/split_1/ReadVariableOp: 
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
*__inference_lstm_120_layer_call_fn_3891972
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38898462
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
õ

+__inference_dense_145_layer_call_fn_3893156

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
F__inference_dense_145_layer_call_and_return_conditional_losses_38907072
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
Ú
È
while_cond_3892114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3892114___redundant_placeholder05
1while_while_cond_3892114___redundant_placeholder15
1while_while_cond_3892114___redundant_placeholder25
1while_while_cond_3892114___redundant_placeholder3
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
%__inference_signature_wrapper_3891311
input_49
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_49unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_38896332
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
input_49

Ï
__inference_loss_fn_1_3893430[
Hlstm_120_lstm_cell_120_kernel_regularizer_square_readvariableop_resource:	
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlstm_120_lstm_cell_120_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/mul{
IdentityIdentity1lstm_120/lstm_cell_120/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp
×R
Ð
E__inference_lstm_120_layer_call_and_return_conditional_losses_3890143

inputs(
lstm_cell_120_3890055:	$
lstm_cell_120_3890057:	(
lstm_cell_120_3890059:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢%lstm_cell_120/StatefulPartitionedCall¢whileD
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
%lstm_cell_120/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_120_3890055lstm_cell_120_3890057lstm_cell_120_3890059*
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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_38899902'
%lstm_cell_120/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_120_3890055lstm_cell_120_3890057lstm_cell_120_3890059*
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
while_body_3890068*
condR
while_cond_3890067*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_120_3890055*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÀ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp&^lstm_cell_120/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2N
%lstm_cell_120/StatefulPartitionedCall%lstm_cell_120/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)sequential_48_lstm_120_while_cond_3889483J
Fsequential_48_lstm_120_while_sequential_48_lstm_120_while_loop_counterP
Lsequential_48_lstm_120_while_sequential_48_lstm_120_while_maximum_iterations,
(sequential_48_lstm_120_while_placeholder.
*sequential_48_lstm_120_while_placeholder_1.
*sequential_48_lstm_120_while_placeholder_2.
*sequential_48_lstm_120_while_placeholder_3L
Hsequential_48_lstm_120_while_less_sequential_48_lstm_120_strided_slice_1c
_sequential_48_lstm_120_while_sequential_48_lstm_120_while_cond_3889483___redundant_placeholder0c
_sequential_48_lstm_120_while_sequential_48_lstm_120_while_cond_3889483___redundant_placeholder1c
_sequential_48_lstm_120_while_sequential_48_lstm_120_while_cond_3889483___redundant_placeholder2c
_sequential_48_lstm_120_while_sequential_48_lstm_120_while_cond_3889483___redundant_placeholder3)
%sequential_48_lstm_120_while_identity
ã
!sequential_48/lstm_120/while/LessLess(sequential_48_lstm_120_while_placeholderHsequential_48_lstm_120_while_less_sequential_48_lstm_120_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_48/lstm_120/while/Less¢
%sequential_48/lstm_120/while/IdentityIdentity%sequential_48/lstm_120/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_48/lstm_120/while/Identity"W
%sequential_48_lstm_120_while_identity.sequential_48/lstm_120/while/Identity:output:0*(
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
ÉÒ
´
E__inference_lstm_120_layer_call_and_return_conditional_losses_3893105

inputs>
+lstm_cell_120_split_readvariableop_resource:	<
-lstm_cell_120_split_1_readvariableop_resource:	8
%lstm_cell_120_readvariableop_resource:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_120/ReadVariableOp¢lstm_cell_120/ReadVariableOp_1¢lstm_cell_120/ReadVariableOp_2¢lstm_cell_120/ReadVariableOp_3¢"lstm_cell_120/split/ReadVariableOp¢$lstm_cell_120/split_1/ReadVariableOp¢whileD
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
lstm_cell_120/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_120/ones_like/Shape
lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_120/ones_like/Const¼
lstm_cell_120/ones_likeFill&lstm_cell_120/ones_like/Shape:output:0&lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/ones_like
lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout/Const·
lstm_cell_120/dropout/MulMul lstm_cell_120/ones_like:output:0$lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Mul
lstm_cell_120/dropout/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout/Shapeû
2lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2§ô24
2lstm_cell_120/dropout/random_uniform/RandomUniform
$lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_120/dropout/GreaterEqual/yö
"lstm_cell_120/dropout/GreaterEqualGreaterEqual;lstm_cell_120/dropout/random_uniform/RandomUniform:output:0-lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_120/dropout/GreaterEqual©
lstm_cell_120/dropout/CastCast&lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Cast²
lstm_cell_120/dropout/Mul_1Mullstm_cell_120/dropout/Mul:z:0lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Mul_1
lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_1/Const½
lstm_cell_120/dropout_1/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Mul
lstm_cell_120/dropout_1/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_1/Shape
4lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2öÆ26
4lstm_cell_120/dropout_1/random_uniform/RandomUniform
&lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_1/GreaterEqual/yþ
$lstm_cell_120/dropout_1/GreaterEqualGreaterEqual=lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_1/GreaterEqual¯
lstm_cell_120/dropout_1/CastCast(lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Castº
lstm_cell_120/dropout_1/Mul_1Mullstm_cell_120/dropout_1/Mul:z:0 lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Mul_1
lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_2/Const½
lstm_cell_120/dropout_2/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Mul
lstm_cell_120/dropout_2/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_2/Shape
4lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÑòÒ26
4lstm_cell_120/dropout_2/random_uniform/RandomUniform
&lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_2/GreaterEqual/yþ
$lstm_cell_120/dropout_2/GreaterEqualGreaterEqual=lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_2/GreaterEqual¯
lstm_cell_120/dropout_2/CastCast(lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Castº
lstm_cell_120/dropout_2/Mul_1Mullstm_cell_120/dropout_2/Mul:z:0 lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Mul_1
lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_3/Const½
lstm_cell_120/dropout_3/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Mul
lstm_cell_120/dropout_3/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_3/Shape
4lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2öòâ26
4lstm_cell_120/dropout_3/random_uniform/RandomUniform
&lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_3/GreaterEqual/yþ
$lstm_cell_120/dropout_3/GreaterEqualGreaterEqual=lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_3/GreaterEqual¯
lstm_cell_120/dropout_3/CastCast(lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Castº
lstm_cell_120/dropout_3/Mul_1Mullstm_cell_120/dropout_3/Mul:z:0 lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Mul_1
lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_120/split/split_dimµ
"lstm_cell_120/split/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_120/split/ReadVariableOpß
lstm_cell_120/splitSplit&lstm_cell_120/split/split_dim:output:0*lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_120/split 
lstm_cell_120/MatMulMatMulstrided_slice_2:output:0lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul¤
lstm_cell_120/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_1¤
lstm_cell_120/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_2¤
lstm_cell_120/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_3
lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_120/split_1/split_dim·
$lstm_cell_120/split_1/ReadVariableOpReadVariableOp-lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_120/split_1/ReadVariableOp×
lstm_cell_120/split_1Split(lstm_cell_120/split_1/split_dim:output:0,lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_120/split_1«
lstm_cell_120/BiasAddBiasAddlstm_cell_120/MatMul:product:0lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd±
lstm_cell_120/BiasAdd_1BiasAdd lstm_cell_120/MatMul_1:product:0lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_1±
lstm_cell_120/BiasAdd_2BiasAdd lstm_cell_120/MatMul_2:product:0lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_2±
lstm_cell_120/BiasAdd_3BiasAdd lstm_cell_120/MatMul_3:product:0lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_3
lstm_cell_120/mulMulzeros:output:0lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul
lstm_cell_120/mul_1Mulzeros:output:0!lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_1
lstm_cell_120/mul_2Mulzeros:output:0!lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_2
lstm_cell_120/mul_3Mulzeros:output:0!lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_3£
lstm_cell_120/ReadVariableOpReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_120/ReadVariableOp
!lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_120/strided_slice/stack
#lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice/stack_1
#lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_120/strided_slice/stack_2Ð
lstm_cell_120/strided_sliceStridedSlice$lstm_cell_120/ReadVariableOp:value:0*lstm_cell_120/strided_slice/stack:output:0,lstm_cell_120/strided_slice/stack_1:output:0,lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice©
lstm_cell_120/MatMul_4MatMullstm_cell_120/mul:z:0$lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_4£
lstm_cell_120/addAddV2lstm_cell_120/BiasAdd:output:0 lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add
lstm_cell_120/SigmoidSigmoidlstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid§
lstm_cell_120/ReadVariableOp_1ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_1
#lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice_1/stack
%lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_120/strided_slice_1/stack_1
%lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_1/stack_2Ü
lstm_cell_120/strided_slice_1StridedSlice&lstm_cell_120/ReadVariableOp_1:value:0,lstm_cell_120/strided_slice_1/stack:output:0.lstm_cell_120/strided_slice_1/stack_1:output:0.lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_1­
lstm_cell_120/MatMul_5MatMullstm_cell_120/mul_1:z:0&lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_5©
lstm_cell_120/add_1AddV2 lstm_cell_120/BiasAdd_1:output:0 lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_1
lstm_cell_120/Sigmoid_1Sigmoidlstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_1
lstm_cell_120/mul_4Mullstm_cell_120/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_4§
lstm_cell_120/ReadVariableOp_2ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_2
#lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_120/strided_slice_2/stack
%lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_120/strided_slice_2/stack_1
%lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_2/stack_2Ü
lstm_cell_120/strided_slice_2StridedSlice&lstm_cell_120/ReadVariableOp_2:value:0,lstm_cell_120/strided_slice_2/stack:output:0.lstm_cell_120/strided_slice_2/stack_1:output:0.lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_2­
lstm_cell_120/MatMul_6MatMullstm_cell_120/mul_2:z:0&lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_6©
lstm_cell_120/add_2AddV2 lstm_cell_120/BiasAdd_2:output:0 lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_2{
lstm_cell_120/ReluRelulstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu 
lstm_cell_120/mul_5Mullstm_cell_120/Sigmoid:y:0 lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_5
lstm_cell_120/add_3AddV2lstm_cell_120/mul_4:z:0lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_3§
lstm_cell_120/ReadVariableOp_3ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_3
#lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_120/strided_slice_3/stack
%lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_120/strided_slice_3/stack_1
%lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_3/stack_2Ü
lstm_cell_120/strided_slice_3StridedSlice&lstm_cell_120/ReadVariableOp_3:value:0,lstm_cell_120/strided_slice_3/stack:output:0.lstm_cell_120/strided_slice_3/stack_1:output:0.lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_3­
lstm_cell_120/MatMul_7MatMullstm_cell_120/mul_3:z:0&lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_7©
lstm_cell_120/add_4AddV2 lstm_cell_120/BiasAdd_3:output:0 lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_4
lstm_cell_120/Sigmoid_2Sigmoidlstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_2
lstm_cell_120/Relu_1Relulstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu_1¤
lstm_cell_120/mul_6Mullstm_cell_120/Sigmoid_2:y:0"lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_120_split_readvariableop_resource-lstm_cell_120_split_1_readvariableop_resource%lstm_cell_120_readvariableop_resource*
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
while_body_3892940*
condR
while_cond_3892939*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_120/ReadVariableOp^lstm_cell_120/ReadVariableOp_1^lstm_cell_120/ReadVariableOp_2^lstm_cell_120/ReadVariableOp_3#^lstm_cell_120/split/ReadVariableOp%^lstm_cell_120/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_120/ReadVariableOplstm_cell_120/ReadVariableOp2@
lstm_cell_120/ReadVariableOp_1lstm_cell_120/ReadVariableOp_12@
lstm_cell_120/ReadVariableOp_2lstm_cell_120/ReadVariableOp_22@
lstm_cell_120/ReadVariableOp_3lstm_cell_120/ReadVariableOp_32H
"lstm_cell_120/split/ReadVariableOp"lstm_cell_120/split/ReadVariableOp2L
$lstm_cell_120/split_1/ReadVariableOp$lstm_cell_120/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

±	
while_body_3892115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_120_split_readvariableop_resource_0:	D
5while_lstm_cell_120_split_1_readvariableop_resource_0:	@
-while_lstm_cell_120_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_120_split_readvariableop_resource:	B
3while_lstm_cell_120_split_1_readvariableop_resource:	>
+while_lstm_cell_120_readvariableop_resource:	 ¢"while/lstm_cell_120/ReadVariableOp¢$while/lstm_cell_120/ReadVariableOp_1¢$while/lstm_cell_120/ReadVariableOp_2¢$while/lstm_cell_120/ReadVariableOp_3¢(while/lstm_cell_120/split/ReadVariableOp¢*while/lstm_cell_120/split_1/ReadVariableOpÃ
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
#while/lstm_cell_120/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_120/ones_like/Shape
#while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_120/ones_like/ConstÔ
while/lstm_cell_120/ones_likeFill,while/lstm_cell_120/ones_like/Shape:output:0,while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/ones_like
#while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_120/split/split_dimÉ
(while/lstm_cell_120/split/ReadVariableOpReadVariableOp3while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_120/split/ReadVariableOp÷
while/lstm_cell_120/splitSplit,while/lstm_cell_120/split/split_dim:output:00while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_120/splitÊ
while/lstm_cell_120/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMulÎ
while/lstm_cell_120/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_1Î
while/lstm_cell_120/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_2Î
while/lstm_cell_120/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_3
%while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_120/split_1/split_dimË
*while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_120/split_1/ReadVariableOpï
while/lstm_cell_120/split_1Split.while/lstm_cell_120/split_1/split_dim:output:02while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_120/split_1Ã
while/lstm_cell_120/BiasAddBiasAdd$while/lstm_cell_120/MatMul:product:0$while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAddÉ
while/lstm_cell_120/BiasAdd_1BiasAdd&while/lstm_cell_120/MatMul_1:product:0$while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_1É
while/lstm_cell_120/BiasAdd_2BiasAdd&while/lstm_cell_120/MatMul_2:product:0$while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_2É
while/lstm_cell_120/BiasAdd_3BiasAdd&while/lstm_cell_120/MatMul_3:product:0$while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_3¨
while/lstm_cell_120/mulMulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul¬
while/lstm_cell_120/mul_1Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_1¬
while/lstm_cell_120/mul_2Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_2¬
while/lstm_cell_120/mul_3Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_3·
"while/lstm_cell_120/ReadVariableOpReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_120/ReadVariableOp£
'while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_120/strided_slice/stack§
)while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice/stack_1§
)while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_120/strided_slice/stack_2ô
!while/lstm_cell_120/strided_sliceStridedSlice*while/lstm_cell_120/ReadVariableOp:value:00while/lstm_cell_120/strided_slice/stack:output:02while/lstm_cell_120/strided_slice/stack_1:output:02while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_120/strided_sliceÁ
while/lstm_cell_120/MatMul_4MatMulwhile/lstm_cell_120/mul:z:0*while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_4»
while/lstm_cell_120/addAddV2$while/lstm_cell_120/BiasAdd:output:0&while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add
while/lstm_cell_120/SigmoidSigmoidwhile/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid»
$while/lstm_cell_120/ReadVariableOp_1ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_1§
)while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice_1/stack«
+while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_120/strided_slice_1/stack_1«
+while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_1/stack_2
#while/lstm_cell_120/strided_slice_1StridedSlice,while/lstm_cell_120/ReadVariableOp_1:value:02while/lstm_cell_120/strided_slice_1/stack:output:04while/lstm_cell_120/strided_slice_1/stack_1:output:04while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_1Å
while/lstm_cell_120/MatMul_5MatMulwhile/lstm_cell_120/mul_1:z:0,while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_5Á
while/lstm_cell_120/add_1AddV2&while/lstm_cell_120/BiasAdd_1:output:0&while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_1
while/lstm_cell_120/Sigmoid_1Sigmoidwhile/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_1§
while/lstm_cell_120/mul_4Mul!while/lstm_cell_120/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_4»
$while/lstm_cell_120/ReadVariableOp_2ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_2§
)while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_120/strided_slice_2/stack«
+while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_120/strided_slice_2/stack_1«
+while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_2/stack_2
#while/lstm_cell_120/strided_slice_2StridedSlice,while/lstm_cell_120/ReadVariableOp_2:value:02while/lstm_cell_120/strided_slice_2/stack:output:04while/lstm_cell_120/strided_slice_2/stack_1:output:04while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_2Å
while/lstm_cell_120/MatMul_6MatMulwhile/lstm_cell_120/mul_2:z:0,while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_6Á
while/lstm_cell_120/add_2AddV2&while/lstm_cell_120/BiasAdd_2:output:0&while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_2
while/lstm_cell_120/ReluReluwhile/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu¸
while/lstm_cell_120/mul_5Mulwhile/lstm_cell_120/Sigmoid:y:0&while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_5¯
while/lstm_cell_120/add_3AddV2while/lstm_cell_120/mul_4:z:0while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_3»
$while/lstm_cell_120/ReadVariableOp_3ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_3§
)while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_120/strided_slice_3/stack«
+while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_120/strided_slice_3/stack_1«
+while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_3/stack_2
#while/lstm_cell_120/strided_slice_3StridedSlice,while/lstm_cell_120/ReadVariableOp_3:value:02while/lstm_cell_120/strided_slice_3/stack:output:04while/lstm_cell_120/strided_slice_3/stack_1:output:04while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_3Å
while/lstm_cell_120/MatMul_7MatMulwhile/lstm_cell_120/mul_3:z:0,while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_7Á
while/lstm_cell_120/add_4AddV2&while/lstm_cell_120/BiasAdd_3:output:0&while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_4
while/lstm_cell_120/Sigmoid_2Sigmoidwhile/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_2
while/lstm_cell_120/Relu_1Reluwhile/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu_1¼
while/lstm_cell_120/mul_6Mul!while/lstm_cell_120/Sigmoid_2:y:0(while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_120/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_120/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_120/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_120/ReadVariableOp%^while/lstm_cell_120/ReadVariableOp_1%^while/lstm_cell_120/ReadVariableOp_2%^while/lstm_cell_120/ReadVariableOp_3)^while/lstm_cell_120/split/ReadVariableOp+^while/lstm_cell_120/split_1/ReadVariableOp*"
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
+while_lstm_cell_120_readvariableop_resource-while_lstm_cell_120_readvariableop_resource_0"l
3while_lstm_cell_120_split_1_readvariableop_resource5while_lstm_cell_120_split_1_readvariableop_resource_0"h
1while_lstm_cell_120_split_readvariableop_resource3while_lstm_cell_120_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_120/ReadVariableOp"while/lstm_cell_120/ReadVariableOp2L
$while/lstm_cell_120/ReadVariableOp_1$while/lstm_cell_120/ReadVariableOp_12L
$while/lstm_cell_120/ReadVariableOp_2$while/lstm_cell_120/ReadVariableOp_22L
$while/lstm_cell_120/ReadVariableOp_3$while/lstm_cell_120/ReadVariableOp_32T
(while/lstm_cell_120/split/ReadVariableOp(while/lstm_cell_120/split/ReadVariableOp2X
*while/lstm_cell_120/split_1/ReadVariableOp*while/lstm_cell_120/split_1/ReadVariableOp: 
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
/__inference_sequential_48_layer_call_fn_3890758
input_49
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_49unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_48_layer_call_and_return_conditional_losses_38907412
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
input_49
Ú
È
while_cond_3890938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3890938___redundant_placeholder05
1while_while_cond_3890938___redundant_placeholder15
1while_while_cond_3890938___redundant_placeholder25
1while_while_cond_3890938___redundant_placeholder3
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
lstm_120_while_body_3891459.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_3-
)lstm_120_while_lstm_120_strided_slice_1_0i
elstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_120_while_lstm_cell_120_split_readvariableop_resource_0:	M
>lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0:	I
6lstm_120_while_lstm_cell_120_readvariableop_resource_0:	 
lstm_120_while_identity
lstm_120_while_identity_1
lstm_120_while_identity_2
lstm_120_while_identity_3
lstm_120_while_identity_4
lstm_120_while_identity_5+
'lstm_120_while_lstm_120_strided_slice_1g
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorM
:lstm_120_while_lstm_cell_120_split_readvariableop_resource:	K
<lstm_120_while_lstm_cell_120_split_1_readvariableop_resource:	G
4lstm_120_while_lstm_cell_120_readvariableop_resource:	 ¢+lstm_120/while/lstm_cell_120/ReadVariableOp¢-lstm_120/while/lstm_cell_120/ReadVariableOp_1¢-lstm_120/while/lstm_cell_120/ReadVariableOp_2¢-lstm_120/while/lstm_cell_120/ReadVariableOp_3¢1lstm_120/while/lstm_cell_120/split/ReadVariableOp¢3lstm_120/while/lstm_cell_120/split_1/ReadVariableOpÕ
@lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@lstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_120/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0lstm_120_while_placeholderIlstm_120/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype024
2lstm_120/while/TensorArrayV2Read/TensorListGetItem¨
,lstm_120/while/lstm_cell_120/ones_like/ShapeShapelstm_120_while_placeholder_2*
T0*
_output_shapes
:2.
,lstm_120/while/lstm_cell_120/ones_like/Shape¡
,lstm_120/while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_120/while/lstm_cell_120/ones_like/Constø
&lstm_120/while/lstm_cell_120/ones_likeFill5lstm_120/while/lstm_cell_120/ones_like/Shape:output:05lstm_120/while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/ones_like
,lstm_120/while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_120/while/lstm_cell_120/split/split_dimä
1lstm_120/while/lstm_cell_120/split/ReadVariableOpReadVariableOp<lstm_120_while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype023
1lstm_120/while/lstm_cell_120/split/ReadVariableOp
"lstm_120/while/lstm_cell_120/splitSplit5lstm_120/while/lstm_cell_120/split/split_dim:output:09lstm_120/while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2$
"lstm_120/while/lstm_cell_120/splitî
#lstm_120/while/lstm_cell_120/MatMulMatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_120/while/lstm_cell_120/MatMulò
%lstm_120/while/lstm_cell_120/MatMul_1MatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_1ò
%lstm_120/while/lstm_cell_120/MatMul_2MatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_2ò
%lstm_120/while/lstm_cell_120/MatMul_3MatMul9lstm_120/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_120/while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_3¢
.lstm_120/while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.lstm_120/while/lstm_cell_120/split_1/split_dimæ
3lstm_120/while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp>lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype025
3lstm_120/while/lstm_cell_120/split_1/ReadVariableOp
$lstm_120/while/lstm_cell_120/split_1Split7lstm_120/while/lstm_cell_120/split_1/split_dim:output:0;lstm_120/while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2&
$lstm_120/while/lstm_cell_120/split_1ç
$lstm_120/while/lstm_cell_120/BiasAddBiasAdd-lstm_120/while/lstm_cell_120/MatMul:product:0-lstm_120/while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/while/lstm_cell_120/BiasAddí
&lstm_120/while/lstm_cell_120/BiasAdd_1BiasAdd/lstm_120/while/lstm_cell_120/MatMul_1:product:0-lstm_120/while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/BiasAdd_1í
&lstm_120/while/lstm_cell_120/BiasAdd_2BiasAdd/lstm_120/while/lstm_cell_120/MatMul_2:product:0-lstm_120/while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/BiasAdd_2í
&lstm_120/while/lstm_cell_120/BiasAdd_3BiasAdd/lstm_120/while/lstm_cell_120/MatMul_3:product:0-lstm_120/while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/BiasAdd_3Ì
 lstm_120/while/lstm_cell_120/mulMullstm_120_while_placeholder_2/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/while/lstm_cell_120/mulÐ
"lstm_120/while/lstm_cell_120/mul_1Mullstm_120_while_placeholder_2/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_1Ð
"lstm_120/while/lstm_cell_120/mul_2Mullstm_120_while_placeholder_2/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_2Ð
"lstm_120/while/lstm_cell_120/mul_3Mullstm_120_while_placeholder_2/lstm_120/while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_3Ò
+lstm_120/while/lstm_cell_120/ReadVariableOpReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_120/while/lstm_cell_120/ReadVariableOpµ
0lstm_120/while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_120/while/lstm_cell_120/strided_slice/stack¹
2lstm_120/while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_120/while/lstm_cell_120/strided_slice/stack_1¹
2lstm_120/while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_120/while/lstm_cell_120/strided_slice/stack_2ª
*lstm_120/while/lstm_cell_120/strided_sliceStridedSlice3lstm_120/while/lstm_cell_120/ReadVariableOp:value:09lstm_120/while/lstm_cell_120/strided_slice/stack:output:0;lstm_120/while/lstm_cell_120/strided_slice/stack_1:output:0;lstm_120/while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_120/while/lstm_cell_120/strided_sliceå
%lstm_120/while/lstm_cell_120/MatMul_4MatMul$lstm_120/while/lstm_cell_120/mul:z:03lstm_120/while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_4ß
 lstm_120/while/lstm_cell_120/addAddV2-lstm_120/while/lstm_cell_120/BiasAdd:output:0/lstm_120/while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_120/while/lstm_cell_120/add¯
$lstm_120/while/lstm_cell_120/SigmoidSigmoid$lstm_120/while/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_120/while/lstm_cell_120/SigmoidÖ
-lstm_120/while/lstm_cell_120/ReadVariableOp_1ReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_120/while/lstm_cell_120/ReadVariableOp_1¹
2lstm_120/while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_120/while/lstm_cell_120/strided_slice_1/stack½
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   26
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_1½
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_120/while/lstm_cell_120/strided_slice_1/stack_2¶
,lstm_120/while/lstm_cell_120/strided_slice_1StridedSlice5lstm_120/while/lstm_cell_120/ReadVariableOp_1:value:0;lstm_120/while/lstm_cell_120/strided_slice_1/stack:output:0=lstm_120/while/lstm_cell_120/strided_slice_1/stack_1:output:0=lstm_120/while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_120/while/lstm_cell_120/strided_slice_1é
%lstm_120/while/lstm_cell_120/MatMul_5MatMul&lstm_120/while/lstm_cell_120/mul_1:z:05lstm_120/while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_5å
"lstm_120/while/lstm_cell_120/add_1AddV2/lstm_120/while/lstm_cell_120/BiasAdd_1:output:0/lstm_120/while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_1µ
&lstm_120/while/lstm_cell_120/Sigmoid_1Sigmoid&lstm_120/while/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/Sigmoid_1Ë
"lstm_120/while/lstm_cell_120/mul_4Mul*lstm_120/while/lstm_cell_120/Sigmoid_1:y:0lstm_120_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_4Ö
-lstm_120/while/lstm_cell_120/ReadVariableOp_2ReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_120/while/lstm_cell_120/ReadVariableOp_2¹
2lstm_120/while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_120/while/lstm_cell_120/strided_slice_2/stack½
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   26
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_1½
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_120/while/lstm_cell_120/strided_slice_2/stack_2¶
,lstm_120/while/lstm_cell_120/strided_slice_2StridedSlice5lstm_120/while/lstm_cell_120/ReadVariableOp_2:value:0;lstm_120/while/lstm_cell_120/strided_slice_2/stack:output:0=lstm_120/while/lstm_cell_120/strided_slice_2/stack_1:output:0=lstm_120/while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_120/while/lstm_cell_120/strided_slice_2é
%lstm_120/while/lstm_cell_120/MatMul_6MatMul&lstm_120/while/lstm_cell_120/mul_2:z:05lstm_120/while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_6å
"lstm_120/while/lstm_cell_120/add_2AddV2/lstm_120/while/lstm_cell_120/BiasAdd_2:output:0/lstm_120/while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_2¨
!lstm_120/while/lstm_cell_120/ReluRelu&lstm_120/while/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_120/while/lstm_cell_120/ReluÜ
"lstm_120/while/lstm_cell_120/mul_5Mul(lstm_120/while/lstm_cell_120/Sigmoid:y:0/lstm_120/while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_5Ó
"lstm_120/while/lstm_cell_120/add_3AddV2&lstm_120/while/lstm_cell_120/mul_4:z:0&lstm_120/while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_3Ö
-lstm_120/while/lstm_cell_120/ReadVariableOp_3ReadVariableOp6lstm_120_while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02/
-lstm_120/while/lstm_cell_120/ReadVariableOp_3¹
2lstm_120/while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_120/while/lstm_cell_120/strided_slice_3/stack½
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_1½
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4lstm_120/while/lstm_cell_120/strided_slice_3/stack_2¶
,lstm_120/while/lstm_cell_120/strided_slice_3StridedSlice5lstm_120/while/lstm_cell_120/ReadVariableOp_3:value:0;lstm_120/while/lstm_cell_120/strided_slice_3/stack:output:0=lstm_120/while/lstm_cell_120/strided_slice_3/stack_1:output:0=lstm_120/while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2.
,lstm_120/while/lstm_cell_120/strided_slice_3é
%lstm_120/while/lstm_cell_120/MatMul_7MatMul&lstm_120/while/lstm_cell_120/mul_3:z:05lstm_120/while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_120/while/lstm_cell_120/MatMul_7å
"lstm_120/while/lstm_cell_120/add_4AddV2/lstm_120/while/lstm_cell_120/BiasAdd_3:output:0/lstm_120/while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/add_4µ
&lstm_120/while/lstm_cell_120/Sigmoid_2Sigmoid&lstm_120/while/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_120/while/lstm_cell_120/Sigmoid_2¬
#lstm_120/while/lstm_cell_120/Relu_1Relu&lstm_120/while/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_120/while/lstm_cell_120/Relu_1à
"lstm_120/while/lstm_cell_120/mul_6Mul*lstm_120/while/lstm_cell_120/Sigmoid_2:y:01lstm_120/while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_120/while/lstm_cell_120/mul_6
3lstm_120/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_120_while_placeholder_1lstm_120_while_placeholder&lstm_120/while/lstm_cell_120/mul_6:z:0*
_output_shapes
: *
element_dtype025
3lstm_120/while/TensorArrayV2Write/TensorListSetItemn
lstm_120/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_120/while/add/y
lstm_120/while/addAddV2lstm_120_while_placeholderlstm_120/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_120/while/addr
lstm_120/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_120/while/add_1/y£
lstm_120/while/add_1AddV2*lstm_120_while_lstm_120_while_loop_counterlstm_120/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_120/while/add_1
lstm_120/while/IdentityIdentitylstm_120/while/add_1:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity«
lstm_120/while/Identity_1Identity0lstm_120_while_lstm_120_while_maximum_iterations^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity_1
lstm_120/while/Identity_2Identitylstm_120/while/add:z:0^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity_2¾
lstm_120/while/Identity_3IdentityClstm_120/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_120/while/NoOp*
T0*
_output_shapes
: 2
lstm_120/while/Identity_3²
lstm_120/while/Identity_4Identity&lstm_120/while/lstm_cell_120/mul_6:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/while/Identity_4²
lstm_120/while/Identity_5Identity&lstm_120/while/lstm_cell_120/add_3:z:0^lstm_120/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_120/while/Identity_5
lstm_120/while/NoOpNoOp,^lstm_120/while/lstm_cell_120/ReadVariableOp.^lstm_120/while/lstm_cell_120/ReadVariableOp_1.^lstm_120/while/lstm_cell_120/ReadVariableOp_2.^lstm_120/while/lstm_cell_120/ReadVariableOp_32^lstm_120/while/lstm_cell_120/split/ReadVariableOp4^lstm_120/while/lstm_cell_120/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_120/while/NoOp";
lstm_120_while_identity lstm_120/while/Identity:output:0"?
lstm_120_while_identity_1"lstm_120/while/Identity_1:output:0"?
lstm_120_while_identity_2"lstm_120/while/Identity_2:output:0"?
lstm_120_while_identity_3"lstm_120/while/Identity_3:output:0"?
lstm_120_while_identity_4"lstm_120/while/Identity_4:output:0"?
lstm_120_while_identity_5"lstm_120/while/Identity_5:output:0"T
'lstm_120_while_lstm_120_strided_slice_1)lstm_120_while_lstm_120_strided_slice_1_0"n
4lstm_120_while_lstm_cell_120_readvariableop_resource6lstm_120_while_lstm_cell_120_readvariableop_resource_0"~
<lstm_120_while_lstm_cell_120_split_1_readvariableop_resource>lstm_120_while_lstm_cell_120_split_1_readvariableop_resource_0"z
:lstm_120_while_lstm_cell_120_split_readvariableop_resource<lstm_120_while_lstm_cell_120_split_readvariableop_resource_0"Ì
clstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensorelstm_120_while_tensorarrayv2read_tensorlistgetitem_lstm_120_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2Z
+lstm_120/while/lstm_cell_120/ReadVariableOp+lstm_120/while/lstm_cell_120/ReadVariableOp2^
-lstm_120/while/lstm_cell_120/ReadVariableOp_1-lstm_120/while/lstm_cell_120/ReadVariableOp_12^
-lstm_120/while/lstm_cell_120/ReadVariableOp_2-lstm_120/while/lstm_cell_120/ReadVariableOp_22^
-lstm_120/while/lstm_cell_120/ReadVariableOp_3-lstm_120/while/lstm_cell_120/ReadVariableOp_32f
1lstm_120/while/lstm_cell_120/split/ReadVariableOp1lstm_120/while/lstm_cell_120/split/ReadVariableOp2j
3lstm_120/while/lstm_cell_120/split_1/ReadVariableOp3lstm_120/while/lstm_cell_120/split_1/ReadVariableOp: 
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
*__inference_lstm_120_layer_call_fn_3892005

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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38911042
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
Ú
È
while_cond_3892389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3892389___redundant_placeholder05
1while_while_cond_3892389___redundant_placeholder15
1while_while_cond_3892389___redundant_placeholder25
1while_while_cond_3892389___redundant_placeholder3
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
lstm_120_while_cond_3891458.
*lstm_120_while_lstm_120_while_loop_counter4
0lstm_120_while_lstm_120_while_maximum_iterations
lstm_120_while_placeholder 
lstm_120_while_placeholder_1 
lstm_120_while_placeholder_2 
lstm_120_while_placeholder_30
,lstm_120_while_less_lstm_120_strided_slice_1G
Clstm_120_while_lstm_120_while_cond_3891458___redundant_placeholder0G
Clstm_120_while_lstm_120_while_cond_3891458___redundant_placeholder1G
Clstm_120_while_lstm_120_while_cond_3891458___redundant_placeholder2G
Clstm_120_while_lstm_120_while_cond_3891458___redundant_placeholder3
lstm_120_while_identity

lstm_120/while/LessLesslstm_120_while_placeholder,lstm_120_while_less_lstm_120_strided_slice_1*
T0*
_output_shapes
: 2
lstm_120/while/Lessx
lstm_120/while/IdentityIdentitylstm_120/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_120/while/Identity";
lstm_120_while_identity lstm_120/while/Identity:output:0*(
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
ÈÒ
´
E__inference_lstm_120_layer_call_and_return_conditional_losses_3891104

inputs>
+lstm_cell_120_split_readvariableop_resource:	<
-lstm_cell_120_split_1_readvariableop_resource:	8
%lstm_cell_120_readvariableop_resource:	 
identity¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_120/ReadVariableOp¢lstm_cell_120/ReadVariableOp_1¢lstm_cell_120/ReadVariableOp_2¢lstm_cell_120/ReadVariableOp_3¢"lstm_cell_120/split/ReadVariableOp¢$lstm_cell_120/split_1/ReadVariableOp¢whileD
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
lstm_cell_120/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_120/ones_like/Shape
lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_120/ones_like/Const¼
lstm_cell_120/ones_likeFill&lstm_cell_120/ones_like/Shape:output:0&lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/ones_like
lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout/Const·
lstm_cell_120/dropout/MulMul lstm_cell_120/ones_like:output:0$lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Mul
lstm_cell_120/dropout/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout/Shapeû
2lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform$lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2çÿ¨24
2lstm_cell_120/dropout/random_uniform/RandomUniform
$lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2&
$lstm_cell_120/dropout/GreaterEqual/yö
"lstm_cell_120/dropout/GreaterEqualGreaterEqual;lstm_cell_120/dropout/random_uniform/RandomUniform:output:0-lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_120/dropout/GreaterEqual©
lstm_cell_120/dropout/CastCast&lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Cast²
lstm_cell_120/dropout/Mul_1Mullstm_cell_120/dropout/Mul:z:0lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout/Mul_1
lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_1/Const½
lstm_cell_120/dropout_1/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Mul
lstm_cell_120/dropout_1/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_1/Shape
4lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ñ¼ò26
4lstm_cell_120/dropout_1/random_uniform/RandomUniform
&lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_1/GreaterEqual/yþ
$lstm_cell_120/dropout_1/GreaterEqualGreaterEqual=lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_1/GreaterEqual¯
lstm_cell_120/dropout_1/CastCast(lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Castº
lstm_cell_120/dropout_1/Mul_1Mullstm_cell_120/dropout_1/Mul:z:0 lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_1/Mul_1
lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_2/Const½
lstm_cell_120/dropout_2/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Mul
lstm_cell_120/dropout_2/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_2/Shape
4lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ì÷26
4lstm_cell_120/dropout_2/random_uniform/RandomUniform
&lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_2/GreaterEqual/yþ
$lstm_cell_120/dropout_2/GreaterEqualGreaterEqual=lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_2/GreaterEqual¯
lstm_cell_120/dropout_2/CastCast(lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Castº
lstm_cell_120/dropout_2/Mul_1Mullstm_cell_120/dropout_2/Mul:z:0 lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_2/Mul_1
lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_120/dropout_3/Const½
lstm_cell_120/dropout_3/MulMul lstm_cell_120/ones_like:output:0&lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Mul
lstm_cell_120/dropout_3/ShapeShape lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_120/dropout_3/Shape
4lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform&lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Î26
4lstm_cell_120/dropout_3/random_uniform/RandomUniform
&lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2(
&lstm_cell_120/dropout_3/GreaterEqual/yþ
$lstm_cell_120/dropout_3/GreaterEqualGreaterEqual=lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:0/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_cell_120/dropout_3/GreaterEqual¯
lstm_cell_120/dropout_3/CastCast(lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Castº
lstm_cell_120/dropout_3/Mul_1Mullstm_cell_120/dropout_3/Mul:z:0 lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/dropout_3/Mul_1
lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_120/split/split_dimµ
"lstm_cell_120/split/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_120/split/ReadVariableOpß
lstm_cell_120/splitSplit&lstm_cell_120/split/split_dim:output:0*lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_120/split 
lstm_cell_120/MatMulMatMulstrided_slice_2:output:0lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul¤
lstm_cell_120/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_1¤
lstm_cell_120/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_2¤
lstm_cell_120/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_3
lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
lstm_cell_120/split_1/split_dim·
$lstm_cell_120/split_1/ReadVariableOpReadVariableOp-lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02&
$lstm_cell_120/split_1/ReadVariableOp×
lstm_cell_120/split_1Split(lstm_cell_120/split_1/split_dim:output:0,lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_120/split_1«
lstm_cell_120/BiasAddBiasAddlstm_cell_120/MatMul:product:0lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd±
lstm_cell_120/BiasAdd_1BiasAdd lstm_cell_120/MatMul_1:product:0lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_1±
lstm_cell_120/BiasAdd_2BiasAdd lstm_cell_120/MatMul_2:product:0lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_2±
lstm_cell_120/BiasAdd_3BiasAdd lstm_cell_120/MatMul_3:product:0lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/BiasAdd_3
lstm_cell_120/mulMulzeros:output:0lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul
lstm_cell_120/mul_1Mulzeros:output:0!lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_1
lstm_cell_120/mul_2Mulzeros:output:0!lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_2
lstm_cell_120/mul_3Mulzeros:output:0!lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_3£
lstm_cell_120/ReadVariableOpReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_120/ReadVariableOp
!lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_120/strided_slice/stack
#lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice/stack_1
#lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_120/strided_slice/stack_2Ð
lstm_cell_120/strided_sliceStridedSlice$lstm_cell_120/ReadVariableOp:value:0*lstm_cell_120/strided_slice/stack:output:0,lstm_cell_120/strided_slice/stack_1:output:0,lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice©
lstm_cell_120/MatMul_4MatMullstm_cell_120/mul:z:0$lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_4£
lstm_cell_120/addAddV2lstm_cell_120/BiasAdd:output:0 lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add
lstm_cell_120/SigmoidSigmoidlstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid§
lstm_cell_120/ReadVariableOp_1ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_1
#lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_120/strided_slice_1/stack
%lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%lstm_cell_120/strided_slice_1/stack_1
%lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_1/stack_2Ü
lstm_cell_120/strided_slice_1StridedSlice&lstm_cell_120/ReadVariableOp_1:value:0,lstm_cell_120/strided_slice_1/stack:output:0.lstm_cell_120/strided_slice_1/stack_1:output:0.lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_1­
lstm_cell_120/MatMul_5MatMullstm_cell_120/mul_1:z:0&lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_5©
lstm_cell_120/add_1AddV2 lstm_cell_120/BiasAdd_1:output:0 lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_1
lstm_cell_120/Sigmoid_1Sigmoidlstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_1
lstm_cell_120/mul_4Mullstm_cell_120/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_4§
lstm_cell_120/ReadVariableOp_2ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_2
#lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_120/strided_slice_2/stack
%lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2'
%lstm_cell_120/strided_slice_2/stack_1
%lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_2/stack_2Ü
lstm_cell_120/strided_slice_2StridedSlice&lstm_cell_120/ReadVariableOp_2:value:0,lstm_cell_120/strided_slice_2/stack:output:0.lstm_cell_120/strided_slice_2/stack_1:output:0.lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_2­
lstm_cell_120/MatMul_6MatMullstm_cell_120/mul_2:z:0&lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_6©
lstm_cell_120/add_2AddV2 lstm_cell_120/BiasAdd_2:output:0 lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_2{
lstm_cell_120/ReluRelulstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu 
lstm_cell_120/mul_5Mullstm_cell_120/Sigmoid:y:0 lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_5
lstm_cell_120/add_3AddV2lstm_cell_120/mul_4:z:0lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_3§
lstm_cell_120/ReadVariableOp_3ReadVariableOp%lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype02 
lstm_cell_120/ReadVariableOp_3
#lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_120/strided_slice_3/stack
%lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm_cell_120/strided_slice_3/stack_1
%lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%lstm_cell_120/strided_slice_3/stack_2Ü
lstm_cell_120/strided_slice_3StridedSlice&lstm_cell_120/ReadVariableOp_3:value:0,lstm_cell_120/strided_slice_3/stack:output:0.lstm_cell_120/strided_slice_3/stack_1:output:0.lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_120/strided_slice_3­
lstm_cell_120/MatMul_7MatMullstm_cell_120/mul_3:z:0&lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/MatMul_7©
lstm_cell_120/add_4AddV2 lstm_cell_120/BiasAdd_3:output:0 lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/add_4
lstm_cell_120/Sigmoid_2Sigmoidlstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Sigmoid_2
lstm_cell_120/Relu_1Relulstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/Relu_1¤
lstm_cell_120/mul_6Mullstm_cell_120/Sigmoid_2:y:0"lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_120/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_120_split_readvariableop_resource-lstm_cell_120_split_1_readvariableop_resource%lstm_cell_120_readvariableop_resource*
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
while_body_3890939*
condR
while_cond_3890938*K
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityæ
NoOpNoOp@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_120/ReadVariableOp^lstm_cell_120/ReadVariableOp_1^lstm_cell_120/ReadVariableOp_2^lstm_cell_120/ReadVariableOp_3#^lstm_cell_120/split/ReadVariableOp%^lstm_cell_120/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2<
lstm_cell_120/ReadVariableOplstm_cell_120/ReadVariableOp2@
lstm_cell_120/ReadVariableOp_1lstm_cell_120/ReadVariableOp_12@
lstm_cell_120/ReadVariableOp_2lstm_cell_120/ReadVariableOp_22@
lstm_cell_120/ReadVariableOp_3lstm_cell_120/ReadVariableOp_32H
"lstm_cell_120/split/ReadVariableOp"lstm_cell_120/split/ReadVariableOp2L
$lstm_cell_120/split_1/ReadVariableOp$lstm_cell_120/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ûR
í
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3889757

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2,
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
Ã
	
"__inference__wrapped_model_3889633
input_49U
Bsequential_48_lstm_120_lstm_cell_120_split_readvariableop_resource:	S
Dsequential_48_lstm_120_lstm_cell_120_split_1_readvariableop_resource:	O
<sequential_48_lstm_120_lstm_cell_120_readvariableop_resource:	 H
6sequential_48_dense_144_matmul_readvariableop_resource:  E
7sequential_48_dense_144_biasadd_readvariableop_resource: H
6sequential_48_dense_145_matmul_readvariableop_resource: E
7sequential_48_dense_145_biasadd_readvariableop_resource:
identity¢.sequential_48/dense_144/BiasAdd/ReadVariableOp¢-sequential_48/dense_144/MatMul/ReadVariableOp¢.sequential_48/dense_145/BiasAdd/ReadVariableOp¢-sequential_48/dense_145/MatMul/ReadVariableOp¢3sequential_48/lstm_120/lstm_cell_120/ReadVariableOp¢5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_1¢5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_2¢5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_3¢9sequential_48/lstm_120/lstm_cell_120/split/ReadVariableOp¢;sequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOp¢sequential_48/lstm_120/whilet
sequential_48/lstm_120/ShapeShapeinput_49*
T0*
_output_shapes
:2
sequential_48/lstm_120/Shape¢
*sequential_48/lstm_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_48/lstm_120/strided_slice/stack¦
,sequential_48/lstm_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_48/lstm_120/strided_slice/stack_1¦
,sequential_48/lstm_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_48/lstm_120/strided_slice/stack_2ì
$sequential_48/lstm_120/strided_sliceStridedSlice%sequential_48/lstm_120/Shape:output:03sequential_48/lstm_120/strided_slice/stack:output:05sequential_48/lstm_120/strided_slice/stack_1:output:05sequential_48/lstm_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_48/lstm_120/strided_slice
"sequential_48/lstm_120/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_48/lstm_120/zeros/mul/yÈ
 sequential_48/lstm_120/zeros/mulMul-sequential_48/lstm_120/strided_slice:output:0+sequential_48/lstm_120/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_48/lstm_120/zeros/mul
#sequential_48/lstm_120/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_48/lstm_120/zeros/Less/yÃ
!sequential_48/lstm_120/zeros/LessLess$sequential_48/lstm_120/zeros/mul:z:0,sequential_48/lstm_120/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_48/lstm_120/zeros/Less
%sequential_48/lstm_120/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_48/lstm_120/zeros/packed/1ß
#sequential_48/lstm_120/zeros/packedPack-sequential_48/lstm_120/strided_slice:output:0.sequential_48/lstm_120/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_48/lstm_120/zeros/packed
"sequential_48/lstm_120/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_48/lstm_120/zeros/ConstÑ
sequential_48/lstm_120/zerosFill,sequential_48/lstm_120/zeros/packed:output:0+sequential_48/lstm_120/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_48/lstm_120/zeros
$sequential_48/lstm_120/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_48/lstm_120/zeros_1/mul/yÎ
"sequential_48/lstm_120/zeros_1/mulMul-sequential_48/lstm_120/strided_slice:output:0-sequential_48/lstm_120/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2$
"sequential_48/lstm_120/zeros_1/mul
%sequential_48/lstm_120/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2'
%sequential_48/lstm_120/zeros_1/Less/yË
#sequential_48/lstm_120/zeros_1/LessLess&sequential_48/lstm_120/zeros_1/mul:z:0.sequential_48/lstm_120/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2%
#sequential_48/lstm_120/zeros_1/Less
'sequential_48/lstm_120/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_48/lstm_120/zeros_1/packed/1å
%sequential_48/lstm_120/zeros_1/packedPack-sequential_48/lstm_120/strided_slice:output:00sequential_48/lstm_120/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_48/lstm_120/zeros_1/packed
$sequential_48/lstm_120/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$sequential_48/lstm_120/zeros_1/ConstÙ
sequential_48/lstm_120/zeros_1Fill.sequential_48/lstm_120/zeros_1/packed:output:0-sequential_48/lstm_120/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_48/lstm_120/zeros_1£
%sequential_48/lstm_120/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_48/lstm_120/transpose/permÁ
 sequential_48/lstm_120/transpose	Transposeinput_49.sequential_48/lstm_120/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_48/lstm_120/transpose
sequential_48/lstm_120/Shape_1Shape$sequential_48/lstm_120/transpose:y:0*
T0*
_output_shapes
:2 
sequential_48/lstm_120/Shape_1¦
,sequential_48/lstm_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_48/lstm_120/strided_slice_1/stackª
.sequential_48/lstm_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/lstm_120/strided_slice_1/stack_1ª
.sequential_48/lstm_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/lstm_120/strided_slice_1/stack_2ø
&sequential_48/lstm_120/strided_slice_1StridedSlice'sequential_48/lstm_120/Shape_1:output:05sequential_48/lstm_120/strided_slice_1/stack:output:07sequential_48/lstm_120/strided_slice_1/stack_1:output:07sequential_48/lstm_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_48/lstm_120/strided_slice_1³
2sequential_48/lstm_120/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2sequential_48/lstm_120/TensorArrayV2/element_shape
$sequential_48/lstm_120/TensorArrayV2TensorListReserve;sequential_48/lstm_120/TensorArrayV2/element_shape:output:0/sequential_48/lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_48/lstm_120/TensorArrayV2í
Lsequential_48/lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_48/lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shapeÔ
>sequential_48/lstm_120/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_48/lstm_120/transpose:y:0Usequential_48/lstm_120/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_48/lstm_120/TensorArrayUnstack/TensorListFromTensor¦
,sequential_48/lstm_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_48/lstm_120/strided_slice_2/stackª
.sequential_48/lstm_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/lstm_120/strided_slice_2/stack_1ª
.sequential_48/lstm_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/lstm_120/strided_slice_2/stack_2
&sequential_48/lstm_120/strided_slice_2StridedSlice$sequential_48/lstm_120/transpose:y:05sequential_48/lstm_120/strided_slice_2/stack:output:07sequential_48/lstm_120/strided_slice_2/stack_1:output:07sequential_48/lstm_120/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2(
&sequential_48/lstm_120/strided_slice_2Á
4sequential_48/lstm_120/lstm_cell_120/ones_like/ShapeShape%sequential_48/lstm_120/zeros:output:0*
T0*
_output_shapes
:26
4sequential_48/lstm_120/lstm_cell_120/ones_like/Shape±
4sequential_48/lstm_120/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4sequential_48/lstm_120/lstm_cell_120/ones_like/Const
.sequential_48/lstm_120/lstm_cell_120/ones_likeFill=sequential_48/lstm_120/lstm_cell_120/ones_like/Shape:output:0=sequential_48/lstm_120/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/lstm_cell_120/ones_like®
4sequential_48/lstm_120/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_48/lstm_120/lstm_cell_120/split/split_dimú
9sequential_48/lstm_120/lstm_cell_120/split/ReadVariableOpReadVariableOpBsequential_48_lstm_120_lstm_cell_120_split_readvariableop_resource*
_output_shapes
:	*
dtype02;
9sequential_48/lstm_120/lstm_cell_120/split/ReadVariableOp»
*sequential_48/lstm_120/lstm_cell_120/splitSplit=sequential_48/lstm_120/lstm_cell_120/split/split_dim:output:0Asequential_48/lstm_120/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2,
*sequential_48/lstm_120/lstm_cell_120/splitü
+sequential_48/lstm_120/lstm_cell_120/MatMulMatMul/sequential_48/lstm_120/strided_slice_2:output:03sequential_48/lstm_120/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_48/lstm_120/lstm_cell_120/MatMul
-sequential_48/lstm_120/lstm_cell_120/MatMul_1MatMul/sequential_48/lstm_120/strided_slice_2:output:03sequential_48/lstm_120/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_1
-sequential_48/lstm_120/lstm_cell_120/MatMul_2MatMul/sequential_48/lstm_120/strided_slice_2:output:03sequential_48/lstm_120/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_2
-sequential_48/lstm_120/lstm_cell_120/MatMul_3MatMul/sequential_48/lstm_120/strided_slice_2:output:03sequential_48/lstm_120/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_3²
6sequential_48/lstm_120/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 28
6sequential_48/lstm_120/lstm_cell_120/split_1/split_dimü
;sequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOpReadVariableOpDsequential_48_lstm_120_lstm_cell_120_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOp³
,sequential_48/lstm_120/lstm_cell_120/split_1Split?sequential_48/lstm_120/lstm_cell_120/split_1/split_dim:output:0Csequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2.
,sequential_48/lstm_120/lstm_cell_120/split_1
,sequential_48/lstm_120/lstm_cell_120/BiasAddBiasAdd5sequential_48/lstm_120/lstm_cell_120/MatMul:product:05sequential_48/lstm_120/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_48/lstm_120/lstm_cell_120/BiasAdd
.sequential_48/lstm_120/lstm_cell_120/BiasAdd_1BiasAdd7sequential_48/lstm_120/lstm_cell_120/MatMul_1:product:05sequential_48/lstm_120/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/lstm_cell_120/BiasAdd_1
.sequential_48/lstm_120/lstm_cell_120/BiasAdd_2BiasAdd7sequential_48/lstm_120/lstm_cell_120/MatMul_2:product:05sequential_48/lstm_120/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/lstm_cell_120/BiasAdd_2
.sequential_48/lstm_120/lstm_cell_120/BiasAdd_3BiasAdd7sequential_48/lstm_120/lstm_cell_120/MatMul_3:product:05sequential_48/lstm_120/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/lstm_cell_120/BiasAdd_3í
(sequential_48/lstm_120/lstm_cell_120/mulMul%sequential_48/lstm_120/zeros:output:07sequential_48/lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_48/lstm_120/lstm_cell_120/mulñ
*sequential_48/lstm_120/lstm_cell_120/mul_1Mul%sequential_48/lstm_120/zeros:output:07sequential_48/lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/mul_1ñ
*sequential_48/lstm_120/lstm_cell_120/mul_2Mul%sequential_48/lstm_120/zeros:output:07sequential_48/lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/mul_2ñ
*sequential_48/lstm_120/lstm_cell_120/mul_3Mul%sequential_48/lstm_120/zeros:output:07sequential_48/lstm_120/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/mul_3è
3sequential_48/lstm_120/lstm_cell_120/ReadVariableOpReadVariableOp<sequential_48_lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_48/lstm_120/lstm_cell_120/ReadVariableOpÅ
8sequential_48/lstm_120/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_48/lstm_120/lstm_cell_120/strided_slice/stackÉ
:sequential_48/lstm_120/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_48/lstm_120/lstm_cell_120/strided_slice/stack_1É
:sequential_48/lstm_120/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_48/lstm_120/lstm_cell_120/strided_slice/stack_2Ú
2sequential_48/lstm_120/lstm_cell_120/strided_sliceStridedSlice;sequential_48/lstm_120/lstm_cell_120/ReadVariableOp:value:0Asequential_48/lstm_120/lstm_cell_120/strided_slice/stack:output:0Csequential_48/lstm_120/lstm_cell_120/strided_slice/stack_1:output:0Csequential_48/lstm_120/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_48/lstm_120/lstm_cell_120/strided_slice
-sequential_48/lstm_120/lstm_cell_120/MatMul_4MatMul,sequential_48/lstm_120/lstm_cell_120/mul:z:0;sequential_48/lstm_120/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_4ÿ
(sequential_48/lstm_120/lstm_cell_120/addAddV25sequential_48/lstm_120/lstm_cell_120/BiasAdd:output:07sequential_48/lstm_120/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_48/lstm_120/lstm_cell_120/addÇ
,sequential_48/lstm_120/lstm_cell_120/SigmoidSigmoid,sequential_48/lstm_120/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_48/lstm_120/lstm_cell_120/Sigmoidì
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_1ReadVariableOp<sequential_48_lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_1É
:sequential_48/lstm_120/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_48/lstm_120/lstm_cell_120/strided_slice_1/stackÍ
<sequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2>
<sequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack_1Í
<sequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack_2æ
4sequential_48/lstm_120/lstm_cell_120/strided_slice_1StridedSlice=sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_1:value:0Csequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack:output:0Esequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack_1:output:0Esequential_48/lstm_120/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_48/lstm_120/lstm_cell_120/strided_slice_1
-sequential_48/lstm_120/lstm_cell_120/MatMul_5MatMul.sequential_48/lstm_120/lstm_cell_120/mul_1:z:0=sequential_48/lstm_120/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_5
*sequential_48/lstm_120/lstm_cell_120/add_1AddV27sequential_48/lstm_120/lstm_cell_120/BiasAdd_1:output:07sequential_48/lstm_120/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/add_1Í
.sequential_48/lstm_120/lstm_cell_120/Sigmoid_1Sigmoid.sequential_48/lstm_120/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/lstm_cell_120/Sigmoid_1î
*sequential_48/lstm_120/lstm_cell_120/mul_4Mul2sequential_48/lstm_120/lstm_cell_120/Sigmoid_1:y:0'sequential_48/lstm_120/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/mul_4ì
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_2ReadVariableOp<sequential_48_lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_2É
:sequential_48/lstm_120/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_48/lstm_120/lstm_cell_120/strided_slice_2/stackÍ
<sequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2>
<sequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack_1Í
<sequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack_2æ
4sequential_48/lstm_120/lstm_cell_120/strided_slice_2StridedSlice=sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_2:value:0Csequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack:output:0Esequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack_1:output:0Esequential_48/lstm_120/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_48/lstm_120/lstm_cell_120/strided_slice_2
-sequential_48/lstm_120/lstm_cell_120/MatMul_6MatMul.sequential_48/lstm_120/lstm_cell_120/mul_2:z:0=sequential_48/lstm_120/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_6
*sequential_48/lstm_120/lstm_cell_120/add_2AddV27sequential_48/lstm_120/lstm_cell_120/BiasAdd_2:output:07sequential_48/lstm_120/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/add_2À
)sequential_48/lstm_120/lstm_cell_120/ReluRelu.sequential_48/lstm_120/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_48/lstm_120/lstm_cell_120/Reluü
*sequential_48/lstm_120/lstm_cell_120/mul_5Mul0sequential_48/lstm_120/lstm_cell_120/Sigmoid:y:07sequential_48/lstm_120/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/mul_5ó
*sequential_48/lstm_120/lstm_cell_120/add_3AddV2.sequential_48/lstm_120/lstm_cell_120/mul_4:z:0.sequential_48/lstm_120/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/add_3ì
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_3ReadVariableOp<sequential_48_lstm_120_lstm_cell_120_readvariableop_resource*
_output_shapes
:	 *
dtype027
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_3É
:sequential_48/lstm_120/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_48/lstm_120/lstm_cell_120/strided_slice_3/stackÍ
<sequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack_1Í
<sequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack_2æ
4sequential_48/lstm_120/lstm_cell_120/strided_slice_3StridedSlice=sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_3:value:0Csequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack:output:0Esequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack_1:output:0Esequential_48/lstm_120/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask26
4sequential_48/lstm_120/lstm_cell_120/strided_slice_3
-sequential_48/lstm_120/lstm_cell_120/MatMul_7MatMul.sequential_48/lstm_120/lstm_cell_120/mul_3:z:0=sequential_48/lstm_120/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_48/lstm_120/lstm_cell_120/MatMul_7
*sequential_48/lstm_120/lstm_cell_120/add_4AddV27sequential_48/lstm_120/lstm_cell_120/BiasAdd_3:output:07sequential_48/lstm_120/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/add_4Í
.sequential_48/lstm_120/lstm_cell_120/Sigmoid_2Sigmoid.sequential_48/lstm_120/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_48/lstm_120/lstm_cell_120/Sigmoid_2Ä
+sequential_48/lstm_120/lstm_cell_120/Relu_1Relu.sequential_48/lstm_120/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_48/lstm_120/lstm_cell_120/Relu_1
*sequential_48/lstm_120/lstm_cell_120/mul_6Mul2sequential_48/lstm_120/lstm_cell_120/Sigmoid_2:y:09sequential_48/lstm_120/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_48/lstm_120/lstm_cell_120/mul_6½
4sequential_48/lstm_120/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    26
4sequential_48/lstm_120/TensorArrayV2_1/element_shape
&sequential_48/lstm_120/TensorArrayV2_1TensorListReserve=sequential_48/lstm_120/TensorArrayV2_1/element_shape:output:0/sequential_48/lstm_120/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_48/lstm_120/TensorArrayV2_1|
sequential_48/lstm_120/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_48/lstm_120/time­
/sequential_48/lstm_120/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_48/lstm_120/while/maximum_iterations
)sequential_48/lstm_120/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_48/lstm_120/while/loop_counterß
sequential_48/lstm_120/whileWhile2sequential_48/lstm_120/while/loop_counter:output:08sequential_48/lstm_120/while/maximum_iterations:output:0$sequential_48/lstm_120/time:output:0/sequential_48/lstm_120/TensorArrayV2_1:handle:0%sequential_48/lstm_120/zeros:output:0'sequential_48/lstm_120/zeros_1:output:0/sequential_48/lstm_120/strided_slice_1:output:0Nsequential_48/lstm_120/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_48_lstm_120_lstm_cell_120_split_readvariableop_resourceDsequential_48_lstm_120_lstm_cell_120_split_1_readvariableop_resource<sequential_48_lstm_120_lstm_cell_120_readvariableop_resource*
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
)sequential_48_lstm_120_while_body_3889484*5
cond-R+
)sequential_48_lstm_120_while_cond_3889483*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_48/lstm_120/whileã
Gsequential_48/lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2I
Gsequential_48/lstm_120/TensorArrayV2Stack/TensorListStack/element_shapeÄ
9sequential_48/lstm_120/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_48/lstm_120/while:output:3Psequential_48/lstm_120/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02;
9sequential_48/lstm_120/TensorArrayV2Stack/TensorListStack¯
,sequential_48/lstm_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2.
,sequential_48/lstm_120/strided_slice_3/stackª
.sequential_48/lstm_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_48/lstm_120/strided_slice_3/stack_1ª
.sequential_48/lstm_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/lstm_120/strided_slice_3/stack_2¤
&sequential_48/lstm_120/strided_slice_3StridedSliceBsequential_48/lstm_120/TensorArrayV2Stack/TensorListStack:tensor:05sequential_48/lstm_120/strided_slice_3/stack:output:07sequential_48/lstm_120/strided_slice_3/stack_1:output:07sequential_48/lstm_120/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2(
&sequential_48/lstm_120/strided_slice_3§
'sequential_48/lstm_120/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_48/lstm_120/transpose_1/perm
"sequential_48/lstm_120/transpose_1	TransposeBsequential_48/lstm_120/TensorArrayV2Stack/TensorListStack:tensor:00sequential_48/lstm_120/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"sequential_48/lstm_120/transpose_1
sequential_48/lstm_120/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_48/lstm_120/runtimeÕ
-sequential_48/dense_144/MatMul/ReadVariableOpReadVariableOp6sequential_48_dense_144_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_48/dense_144/MatMul/ReadVariableOpä
sequential_48/dense_144/MatMulMatMul/sequential_48/lstm_120/strided_slice_3:output:05sequential_48/dense_144/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_48/dense_144/MatMulÔ
.sequential_48/dense_144/BiasAdd/ReadVariableOpReadVariableOp7sequential_48_dense_144_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_48/dense_144/BiasAdd/ReadVariableOpá
sequential_48/dense_144/BiasAddBiasAdd(sequential_48/dense_144/MatMul:product:06sequential_48/dense_144/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
sequential_48/dense_144/BiasAdd 
sequential_48/dense_144/ReluRelu(sequential_48/dense_144/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_48/dense_144/ReluÕ
-sequential_48/dense_145/MatMul/ReadVariableOpReadVariableOp6sequential_48_dense_145_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_48/dense_145/MatMul/ReadVariableOpß
sequential_48/dense_145/MatMulMatMul*sequential_48/dense_144/Relu:activations:05sequential_48/dense_145/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_48/dense_145/MatMulÔ
.sequential_48/dense_145/BiasAdd/ReadVariableOpReadVariableOp7sequential_48_dense_145_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_48/dense_145/BiasAdd/ReadVariableOpá
sequential_48/dense_145/BiasAddBiasAdd(sequential_48/dense_145/MatMul:product:06sequential_48/dense_145/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_48/dense_145/BiasAdd
sequential_48/reshape_72/ShapeShape(sequential_48/dense_145/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_48/reshape_72/Shape¦
,sequential_48/reshape_72/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_48/reshape_72/strided_slice/stackª
.sequential_48/reshape_72/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/reshape_72/strided_slice/stack_1ª
.sequential_48/reshape_72/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_48/reshape_72/strided_slice/stack_2ø
&sequential_48/reshape_72/strided_sliceStridedSlice'sequential_48/reshape_72/Shape:output:05sequential_48/reshape_72/strided_slice/stack:output:07sequential_48/reshape_72/strided_slice/stack_1:output:07sequential_48/reshape_72/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_48/reshape_72/strided_slice
(sequential_48/reshape_72/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_48/reshape_72/Reshape/shape/1
(sequential_48/reshape_72/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_48/reshape_72/Reshape/shape/2
&sequential_48/reshape_72/Reshape/shapePack/sequential_48/reshape_72/strided_slice:output:01sequential_48/reshape_72/Reshape/shape/1:output:01sequential_48/reshape_72/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_48/reshape_72/Reshape/shapeà
 sequential_48/reshape_72/ReshapeReshape(sequential_48/dense_145/BiasAdd:output:0/sequential_48/reshape_72/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_48/reshape_72/Reshape
IdentityIdentity)sequential_48/reshape_72/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp/^sequential_48/dense_144/BiasAdd/ReadVariableOp.^sequential_48/dense_144/MatMul/ReadVariableOp/^sequential_48/dense_145/BiasAdd/ReadVariableOp.^sequential_48/dense_145/MatMul/ReadVariableOp4^sequential_48/lstm_120/lstm_cell_120/ReadVariableOp6^sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_16^sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_26^sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_3:^sequential_48/lstm_120/lstm_cell_120/split/ReadVariableOp<^sequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOp^sequential_48/lstm_120/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_48/dense_144/BiasAdd/ReadVariableOp.sequential_48/dense_144/BiasAdd/ReadVariableOp2^
-sequential_48/dense_144/MatMul/ReadVariableOp-sequential_48/dense_144/MatMul/ReadVariableOp2`
.sequential_48/dense_145/BiasAdd/ReadVariableOp.sequential_48/dense_145/BiasAdd/ReadVariableOp2^
-sequential_48/dense_145/MatMul/ReadVariableOp-sequential_48/dense_145/MatMul/ReadVariableOp2j
3sequential_48/lstm_120/lstm_cell_120/ReadVariableOp3sequential_48/lstm_120/lstm_cell_120/ReadVariableOp2n
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_15sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_12n
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_25sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_22n
5sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_35sequential_48/lstm_120/lstm_cell_120/ReadVariableOp_32v
9sequential_48/lstm_120/lstm_cell_120/split/ReadVariableOp9sequential_48/lstm_120/lstm_cell_120/split/ReadVariableOp2z
;sequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOp;sequential_48/lstm_120/lstm_cell_120/split_1/ReadVariableOp2<
sequential_48/lstm_120/whilesequential_48/lstm_120/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_49
Â
¹
*__inference_lstm_120_layer_call_fn_3891983
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_38901432
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
while_body_3890533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_120_split_readvariableop_resource_0:	D
5while_lstm_cell_120_split_1_readvariableop_resource_0:	@
-while_lstm_cell_120_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_120_split_readvariableop_resource:	B
3while_lstm_cell_120_split_1_readvariableop_resource:	>
+while_lstm_cell_120_readvariableop_resource:	 ¢"while/lstm_cell_120/ReadVariableOp¢$while/lstm_cell_120/ReadVariableOp_1¢$while/lstm_cell_120/ReadVariableOp_2¢$while/lstm_cell_120/ReadVariableOp_3¢(while/lstm_cell_120/split/ReadVariableOp¢*while/lstm_cell_120/split_1/ReadVariableOpÃ
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
#while/lstm_cell_120/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_120/ones_like/Shape
#while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_120/ones_like/ConstÔ
while/lstm_cell_120/ones_likeFill,while/lstm_cell_120/ones_like/Shape:output:0,while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/ones_like
#while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_120/split/split_dimÉ
(while/lstm_cell_120/split/ReadVariableOpReadVariableOp3while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_120/split/ReadVariableOp÷
while/lstm_cell_120/splitSplit,while/lstm_cell_120/split/split_dim:output:00while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_120/splitÊ
while/lstm_cell_120/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMulÎ
while/lstm_cell_120/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_1Î
while/lstm_cell_120/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_2Î
while/lstm_cell_120/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_3
%while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_120/split_1/split_dimË
*while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_120/split_1/ReadVariableOpï
while/lstm_cell_120/split_1Split.while/lstm_cell_120/split_1/split_dim:output:02while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_120/split_1Ã
while/lstm_cell_120/BiasAddBiasAdd$while/lstm_cell_120/MatMul:product:0$while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAddÉ
while/lstm_cell_120/BiasAdd_1BiasAdd&while/lstm_cell_120/MatMul_1:product:0$while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_1É
while/lstm_cell_120/BiasAdd_2BiasAdd&while/lstm_cell_120/MatMul_2:product:0$while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_2É
while/lstm_cell_120/BiasAdd_3BiasAdd&while/lstm_cell_120/MatMul_3:product:0$while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_3¨
while/lstm_cell_120/mulMulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul¬
while/lstm_cell_120/mul_1Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_1¬
while/lstm_cell_120/mul_2Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_2¬
while/lstm_cell_120/mul_3Mulwhile_placeholder_2&while/lstm_cell_120/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_3·
"while/lstm_cell_120/ReadVariableOpReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_120/ReadVariableOp£
'while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_120/strided_slice/stack§
)while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice/stack_1§
)while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_120/strided_slice/stack_2ô
!while/lstm_cell_120/strided_sliceStridedSlice*while/lstm_cell_120/ReadVariableOp:value:00while/lstm_cell_120/strided_slice/stack:output:02while/lstm_cell_120/strided_slice/stack_1:output:02while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_120/strided_sliceÁ
while/lstm_cell_120/MatMul_4MatMulwhile/lstm_cell_120/mul:z:0*while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_4»
while/lstm_cell_120/addAddV2$while/lstm_cell_120/BiasAdd:output:0&while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add
while/lstm_cell_120/SigmoidSigmoidwhile/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid»
$while/lstm_cell_120/ReadVariableOp_1ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_1§
)while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice_1/stack«
+while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_120/strided_slice_1/stack_1«
+while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_1/stack_2
#while/lstm_cell_120/strided_slice_1StridedSlice,while/lstm_cell_120/ReadVariableOp_1:value:02while/lstm_cell_120/strided_slice_1/stack:output:04while/lstm_cell_120/strided_slice_1/stack_1:output:04while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_1Å
while/lstm_cell_120/MatMul_5MatMulwhile/lstm_cell_120/mul_1:z:0,while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_5Á
while/lstm_cell_120/add_1AddV2&while/lstm_cell_120/BiasAdd_1:output:0&while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_1
while/lstm_cell_120/Sigmoid_1Sigmoidwhile/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_1§
while/lstm_cell_120/mul_4Mul!while/lstm_cell_120/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_4»
$while/lstm_cell_120/ReadVariableOp_2ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_2§
)while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_120/strided_slice_2/stack«
+while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_120/strided_slice_2/stack_1«
+while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_2/stack_2
#while/lstm_cell_120/strided_slice_2StridedSlice,while/lstm_cell_120/ReadVariableOp_2:value:02while/lstm_cell_120/strided_slice_2/stack:output:04while/lstm_cell_120/strided_slice_2/stack_1:output:04while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_2Å
while/lstm_cell_120/MatMul_6MatMulwhile/lstm_cell_120/mul_2:z:0,while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_6Á
while/lstm_cell_120/add_2AddV2&while/lstm_cell_120/BiasAdd_2:output:0&while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_2
while/lstm_cell_120/ReluReluwhile/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu¸
while/lstm_cell_120/mul_5Mulwhile/lstm_cell_120/Sigmoid:y:0&while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_5¯
while/lstm_cell_120/add_3AddV2while/lstm_cell_120/mul_4:z:0while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_3»
$while/lstm_cell_120/ReadVariableOp_3ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_3§
)while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_120/strided_slice_3/stack«
+while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_120/strided_slice_3/stack_1«
+while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_3/stack_2
#while/lstm_cell_120/strided_slice_3StridedSlice,while/lstm_cell_120/ReadVariableOp_3:value:02while/lstm_cell_120/strided_slice_3/stack:output:04while/lstm_cell_120/strided_slice_3/stack_1:output:04while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_3Å
while/lstm_cell_120/MatMul_7MatMulwhile/lstm_cell_120/mul_3:z:0,while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_7Á
while/lstm_cell_120/add_4AddV2&while/lstm_cell_120/BiasAdd_3:output:0&while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_4
while/lstm_cell_120/Sigmoid_2Sigmoidwhile/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_2
while/lstm_cell_120/Relu_1Reluwhile/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu_1¼
while/lstm_cell_120/mul_6Mul!while/lstm_cell_120/Sigmoid_2:y:0(while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_120/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_120/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_120/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_120/ReadVariableOp%^while/lstm_cell_120/ReadVariableOp_1%^while/lstm_cell_120/ReadVariableOp_2%^while/lstm_cell_120/ReadVariableOp_3)^while/lstm_cell_120/split/ReadVariableOp+^while/lstm_cell_120/split_1/ReadVariableOp*"
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
+while_lstm_cell_120_readvariableop_resource-while_lstm_cell_120_readvariableop_resource_0"l
3while_lstm_cell_120_split_1_readvariableop_resource5while_lstm_cell_120_split_1_readvariableop_resource_0"h
1while_lstm_cell_120_split_readvariableop_resource3while_lstm_cell_120_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_120/ReadVariableOp"while/lstm_cell_120/ReadVariableOp2L
$while/lstm_cell_120/ReadVariableOp_1$while/lstm_cell_120/ReadVariableOp_12L
$while/lstm_cell_120/ReadVariableOp_2$while/lstm_cell_120/ReadVariableOp_22L
$while/lstm_cell_120/ReadVariableOp_3$while/lstm_cell_120/ReadVariableOp_32T
(while/lstm_cell_120/split/ReadVariableOp(while/lstm_cell_120/split/ReadVariableOp2X
*while/lstm_cell_120/split_1/ReadVariableOp*while/lstm_cell_120/split_1/ReadVariableOp: 
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
Óv
í
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3889990

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
seed2´2&
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
seed2µ@2(
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
seed2 ñ2(
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
seed2µ¢2(
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02A
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOpá
0lstm_120/lstm_cell_120/kernel/Regularizer/SquareSquareGlstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	22
0lstm_120/lstm_cell_120/kernel/Regularizer/Square³
/lstm_120/lstm_cell_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/lstm_120/lstm_cell_120/kernel/Regularizer/Constö
-lstm_120/lstm_cell_120/kernel/Regularizer/SumSum4lstm_120/lstm_cell_120/kernel/Regularizer/Square:y:08lstm_120/lstm_cell_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/Sum§
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/lstm_120/lstm_cell_120/kernel/Regularizer/mul/xø
-lstm_120/lstm_cell_120/kernel/Regularizer/mulMul8lstm_120/lstm_cell_120/kernel/Regularizer/mul/x:output:06lstm_120/lstm_cell_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-lstm_120/lstm_cell_120/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3@^lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp?lstm_120/lstm_cell_120/kernel/Regularizer/Square/ReadVariableOp2,
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
Ú
È
while_cond_3892664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3892664___redundant_placeholder05
1while_while_cond_3892664___redundant_placeholder15
1while_while_cond_3892664___redundant_placeholder25
1while_while_cond_3892664___redundant_placeholder3
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
while_cond_3890067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3890067___redundant_placeholder05
1while_while_cond_3890067___redundant_placeholder15
1while_while_cond_3890067___redundant_placeholder25
1while_while_cond_3890067___redundant_placeholder3
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
Ê
H
,__inference_reshape_72_layer_call_fn_3893174

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
G__inference_reshape_72_layer_call_and_return_conditional_losses_38907262
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
|

#__inference__traced_restore_3893631
file_prefix3
!assignvariableop_dense_144_kernel:  /
!assignvariableop_1_dense_144_bias: 5
#assignvariableop_2_dense_145_kernel: /
!assignvariableop_3_dense_145_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
0assignvariableop_9_lstm_120_lstm_cell_120_kernel:	N
;assignvariableop_10_lstm_120_lstm_cell_120_recurrent_kernel:	 >
/assignvariableop_11_lstm_120_lstm_cell_120_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: =
+assignvariableop_14_adam_dense_144_kernel_m:  7
)assignvariableop_15_adam_dense_144_bias_m: =
+assignvariableop_16_adam_dense_145_kernel_m: 7
)assignvariableop_17_adam_dense_145_bias_m:K
8assignvariableop_18_adam_lstm_120_lstm_cell_120_kernel_m:	U
Bassignvariableop_19_adam_lstm_120_lstm_cell_120_recurrent_kernel_m:	 E
6assignvariableop_20_adam_lstm_120_lstm_cell_120_bias_m:	=
+assignvariableop_21_adam_dense_144_kernel_v:  7
)assignvariableop_22_adam_dense_144_bias_v: =
+assignvariableop_23_adam_dense_145_kernel_v: 7
)assignvariableop_24_adam_dense_145_bias_v:K
8assignvariableop_25_adam_lstm_120_lstm_cell_120_kernel_v:	U
Bassignvariableop_26_adam_lstm_120_lstm_cell_120_recurrent_kernel_v:	 E
6assignvariableop_27_adam_lstm_120_lstm_cell_120_bias_v:	
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_144_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_144_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_145_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_145_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_120_lstm_cell_120_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ã
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_120_lstm_cell_120_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11·
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_120_lstm_cell_120_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_144_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_144_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_145_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_145_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18À
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_lstm_120_lstm_cell_120_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ê
AssignVariableOp_19AssignVariableOpBassignvariableop_19_adam_lstm_120_lstm_cell_120_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¾
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_120_lstm_cell_120_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_144_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_144_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_145_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_145_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25À
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_lstm_120_lstm_cell_120_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ê
AssignVariableOp_26AssignVariableOpBassignvariableop_26_adam_lstm_120_lstm_cell_120_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_120_lstm_cell_120_bias_vIdentity_27:output:0"/device:CPU:0*
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
Ú
È
while_cond_3892939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3892939___redundant_placeholder05
1while_while_cond_3892939___redundant_placeholder15
1while_while_cond_3892939___redundant_placeholder25
1while_while_cond_3892939___redundant_placeholder3
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
while_cond_3889770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3889770___redundant_placeholder05
1while_while_cond_3889770___redundant_placeholder15
1while_while_cond_3889770___redundant_placeholder25
1while_while_cond_3889770___redundant_placeholder3
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
 __inference__traced_save_3893537
file_prefix/
+savev2_dense_144_kernel_read_readvariableop-
)savev2_dense_144_bias_read_readvariableop/
+savev2_dense_145_kernel_read_readvariableop-
)savev2_dense_145_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_120_lstm_cell_120_kernel_read_readvariableopF
Bsavev2_lstm_120_lstm_cell_120_recurrent_kernel_read_readvariableop:
6savev2_lstm_120_lstm_cell_120_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_144_kernel_m_read_readvariableop4
0savev2_adam_dense_144_bias_m_read_readvariableop6
2savev2_adam_dense_145_kernel_m_read_readvariableop4
0savev2_adam_dense_145_bias_m_read_readvariableopC
?savev2_adam_lstm_120_lstm_cell_120_kernel_m_read_readvariableopM
Isavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_120_lstm_cell_120_bias_m_read_readvariableop6
2savev2_adam_dense_144_kernel_v_read_readvariableop4
0savev2_adam_dense_144_bias_v_read_readvariableop6
2savev2_adam_dense_145_kernel_v_read_readvariableop4
0savev2_adam_dense_145_bias_v_read_readvariableopC
?savev2_adam_lstm_120_lstm_cell_120_kernel_v_read_readvariableopM
Isavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_120_lstm_cell_120_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_144_kernel_read_readvariableop)savev2_dense_144_bias_read_readvariableop+savev2_dense_145_kernel_read_readvariableop)savev2_dense_145_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_120_lstm_cell_120_kernel_read_readvariableopBsavev2_lstm_120_lstm_cell_120_recurrent_kernel_read_readvariableop6savev2_lstm_120_lstm_cell_120_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_144_kernel_m_read_readvariableop0savev2_adam_dense_144_bias_m_read_readvariableop2savev2_adam_dense_145_kernel_m_read_readvariableop0savev2_adam_dense_145_bias_m_read_readvariableop?savev2_adam_lstm_120_lstm_cell_120_kernel_m_read_readvariableopIsavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_120_lstm_cell_120_bias_m_read_readvariableop2savev2_adam_dense_144_kernel_v_read_readvariableop0savev2_adam_dense_144_bias_v_read_readvariableop2savev2_adam_dense_145_kernel_v_read_readvariableop0savev2_adam_dense_145_bias_v_read_readvariableop?savev2_adam_lstm_120_lstm_cell_120_kernel_v_read_readvariableopIsavev2_adam_lstm_120_lstm_cell_120_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_120_lstm_cell_120_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

ª
F__inference_dense_145_layer_call_and_return_conditional_losses_3890707

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢0dense_145/bias/Regularizer/Square/ReadVariableOp
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
0dense_145/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_145/bias/Regularizer/Square/ReadVariableOp¯
!dense_145/bias/Regularizer/SquareSquare8dense_145/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_145/bias/Regularizer/Square
 dense_145/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_145/bias/Regularizer/Constº
dense_145/bias/Regularizer/SumSum%dense_145/bias/Regularizer/Square:y:0)dense_145/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/Sum
 dense_145/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 dense_145/bias/Regularizer/mul/x¼
dense_145/bias/Regularizer/mulMul)dense_145/bias/Regularizer/mul/x:output:0'dense_145/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_145/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_145/bias/Regularizer/Square/ReadVariableOp*"
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
0dense_145/bias/Regularizer/Square/ReadVariableOp0dense_145/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Áµ
±	
while_body_3892390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_120_split_readvariableop_resource_0:	D
5while_lstm_cell_120_split_1_readvariableop_resource_0:	@
-while_lstm_cell_120_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_120_split_readvariableop_resource:	B
3while_lstm_cell_120_split_1_readvariableop_resource:	>
+while_lstm_cell_120_readvariableop_resource:	 ¢"while/lstm_cell_120/ReadVariableOp¢$while/lstm_cell_120/ReadVariableOp_1¢$while/lstm_cell_120/ReadVariableOp_2¢$while/lstm_cell_120/ReadVariableOp_3¢(while/lstm_cell_120/split/ReadVariableOp¢*while/lstm_cell_120/split_1/ReadVariableOpÃ
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
#while/lstm_cell_120/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_120/ones_like/Shape
#while/lstm_cell_120/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_120/ones_like/ConstÔ
while/lstm_cell_120/ones_likeFill,while/lstm_cell_120/ones_like/Shape:output:0,while/lstm_cell_120/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/ones_like
!while/lstm_cell_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2#
!while/lstm_cell_120/dropout/ConstÏ
while/lstm_cell_120/dropout/MulMul&while/lstm_cell_120/ones_like:output:0*while/lstm_cell_120/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_120/dropout/Mul
!while/lstm_cell_120/dropout/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_120/dropout/Shape
8while/lstm_cell_120/dropout/random_uniform/RandomUniformRandomUniform*while/lstm_cell_120/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2óî2:
8while/lstm_cell_120/dropout/random_uniform/RandomUniform
*while/lstm_cell_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2,
*while/lstm_cell_120/dropout/GreaterEqual/y
(while/lstm_cell_120/dropout/GreaterEqualGreaterEqualAwhile/lstm_cell_120/dropout/random_uniform/RandomUniform:output:03while/lstm_cell_120/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_120/dropout/GreaterEqual»
 while/lstm_cell_120/dropout/CastCast,while/lstm_cell_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_120/dropout/CastÊ
!while/lstm_cell_120/dropout/Mul_1Mul#while/lstm_cell_120/dropout/Mul:z:0$while/lstm_cell_120/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout/Mul_1
#while/lstm_cell_120/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_1/ConstÕ
!while/lstm_cell_120/dropout_1/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_1/Mul 
#while/lstm_cell_120/dropout_1/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_1/Shape
:while/lstm_cell_120/dropout_1/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2æÞ 2<
:while/lstm_cell_120/dropout_1/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_1/GreaterEqual/y
*while/lstm_cell_120/dropout_1/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_1/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_1/GreaterEqualÁ
"while/lstm_cell_120/dropout_1/CastCast.while/lstm_cell_120/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_1/CastÒ
#while/lstm_cell_120/dropout_1/Mul_1Mul%while/lstm_cell_120/dropout_1/Mul:z:0&while/lstm_cell_120/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_1/Mul_1
#while/lstm_cell_120/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_2/ConstÕ
!while/lstm_cell_120/dropout_2/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_2/Mul 
#while/lstm_cell_120/dropout_2/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_2/Shape
:while/lstm_cell_120/dropout_2/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2·Çh2<
:while/lstm_cell_120/dropout_2/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_2/GreaterEqual/y
*while/lstm_cell_120/dropout_2/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_2/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_2/GreaterEqualÁ
"while/lstm_cell_120/dropout_2/CastCast.while/lstm_cell_120/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_2/CastÒ
#while/lstm_cell_120/dropout_2/Mul_1Mul%while/lstm_cell_120/dropout_2/Mul:z:0&while/lstm_cell_120/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_2/Mul_1
#while/lstm_cell_120/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2%
#while/lstm_cell_120/dropout_3/ConstÕ
!while/lstm_cell_120/dropout_3/MulMul&while/lstm_cell_120/ones_like:output:0,while/lstm_cell_120/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_120/dropout_3/Mul 
#while/lstm_cell_120/dropout_3/ShapeShape&while/lstm_cell_120/ones_like:output:0*
T0*
_output_shapes
:2%
#while/lstm_cell_120/dropout_3/Shape
:while/lstm_cell_120/dropout_3/random_uniform/RandomUniformRandomUniform,while/lstm_cell_120/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Àä2<
:while/lstm_cell_120/dropout_3/random_uniform/RandomUniform¡
,while/lstm_cell_120/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2.
,while/lstm_cell_120/dropout_3/GreaterEqual/y
*while/lstm_cell_120/dropout_3/GreaterEqualGreaterEqualCwhile/lstm_cell_120/dropout_3/random_uniform/RandomUniform:output:05while/lstm_cell_120/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*while/lstm_cell_120/dropout_3/GreaterEqualÁ
"while/lstm_cell_120/dropout_3/CastCast.while/lstm_cell_120/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_120/dropout_3/CastÒ
#while/lstm_cell_120/dropout_3/Mul_1Mul%while/lstm_cell_120/dropout_3/Mul:z:0&while/lstm_cell_120/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#while/lstm_cell_120/dropout_3/Mul_1
#while/lstm_cell_120/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_120/split/split_dimÉ
(while/lstm_cell_120/split/ReadVariableOpReadVariableOp3while_lstm_cell_120_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_120/split/ReadVariableOp÷
while/lstm_cell_120/splitSplit,while/lstm_cell_120/split/split_dim:output:00while/lstm_cell_120/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_120/splitÊ
while/lstm_cell_120/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMulÎ
while/lstm_cell_120/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_1Î
while/lstm_cell_120/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_2Î
while/lstm_cell_120/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell_120/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_3
%while/lstm_cell_120/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%while/lstm_cell_120/split_1/split_dimË
*while/lstm_cell_120/split_1/ReadVariableOpReadVariableOp5while_lstm_cell_120_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02,
*while/lstm_cell_120/split_1/ReadVariableOpï
while/lstm_cell_120/split_1Split.while/lstm_cell_120/split_1/split_dim:output:02while/lstm_cell_120/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_120/split_1Ã
while/lstm_cell_120/BiasAddBiasAdd$while/lstm_cell_120/MatMul:product:0$while/lstm_cell_120/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAddÉ
while/lstm_cell_120/BiasAdd_1BiasAdd&while/lstm_cell_120/MatMul_1:product:0$while/lstm_cell_120/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_1É
while/lstm_cell_120/BiasAdd_2BiasAdd&while/lstm_cell_120/MatMul_2:product:0$while/lstm_cell_120/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_2É
while/lstm_cell_120/BiasAdd_3BiasAdd&while/lstm_cell_120/MatMul_3:product:0$while/lstm_cell_120/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/BiasAdd_3§
while/lstm_cell_120/mulMulwhile_placeholder_2%while/lstm_cell_120/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul­
while/lstm_cell_120/mul_1Mulwhile_placeholder_2'while/lstm_cell_120/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_1­
while/lstm_cell_120/mul_2Mulwhile_placeholder_2'while/lstm_cell_120/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_2­
while/lstm_cell_120/mul_3Mulwhile_placeholder_2'while/lstm_cell_120/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_3·
"while/lstm_cell_120/ReadVariableOpReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02$
"while/lstm_cell_120/ReadVariableOp£
'while/lstm_cell_120/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_120/strided_slice/stack§
)while/lstm_cell_120/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice/stack_1§
)while/lstm_cell_120/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_120/strided_slice/stack_2ô
!while/lstm_cell_120/strided_sliceStridedSlice*while/lstm_cell_120/ReadVariableOp:value:00while/lstm_cell_120/strided_slice/stack:output:02while/lstm_cell_120/strided_slice/stack_1:output:02while/lstm_cell_120/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_120/strided_sliceÁ
while/lstm_cell_120/MatMul_4MatMulwhile/lstm_cell_120/mul:z:0*while/lstm_cell_120/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_4»
while/lstm_cell_120/addAddV2$while/lstm_cell_120/BiasAdd:output:0&while/lstm_cell_120/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add
while/lstm_cell_120/SigmoidSigmoidwhile/lstm_cell_120/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid»
$while/lstm_cell_120/ReadVariableOp_1ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_1§
)while/lstm_cell_120/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_120/strided_slice_1/stack«
+while/lstm_cell_120/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2-
+while/lstm_cell_120/strided_slice_1/stack_1«
+while/lstm_cell_120/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_1/stack_2
#while/lstm_cell_120/strided_slice_1StridedSlice,while/lstm_cell_120/ReadVariableOp_1:value:02while/lstm_cell_120/strided_slice_1/stack:output:04while/lstm_cell_120/strided_slice_1/stack_1:output:04while/lstm_cell_120/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_1Å
while/lstm_cell_120/MatMul_5MatMulwhile/lstm_cell_120/mul_1:z:0,while/lstm_cell_120/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_5Á
while/lstm_cell_120/add_1AddV2&while/lstm_cell_120/BiasAdd_1:output:0&while/lstm_cell_120/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_1
while/lstm_cell_120/Sigmoid_1Sigmoidwhile/lstm_cell_120/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_1§
while/lstm_cell_120/mul_4Mul!while/lstm_cell_120/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_4»
$while/lstm_cell_120/ReadVariableOp_2ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_2§
)while/lstm_cell_120/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_120/strided_slice_2/stack«
+while/lstm_cell_120/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2-
+while/lstm_cell_120/strided_slice_2/stack_1«
+while/lstm_cell_120/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_2/stack_2
#while/lstm_cell_120/strided_slice_2StridedSlice,while/lstm_cell_120/ReadVariableOp_2:value:02while/lstm_cell_120/strided_slice_2/stack:output:04while/lstm_cell_120/strided_slice_2/stack_1:output:04while/lstm_cell_120/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_2Å
while/lstm_cell_120/MatMul_6MatMulwhile/lstm_cell_120/mul_2:z:0,while/lstm_cell_120/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_6Á
while/lstm_cell_120/add_2AddV2&while/lstm_cell_120/BiasAdd_2:output:0&while/lstm_cell_120/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_2
while/lstm_cell_120/ReluReluwhile/lstm_cell_120/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu¸
while/lstm_cell_120/mul_5Mulwhile/lstm_cell_120/Sigmoid:y:0&while/lstm_cell_120/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_5¯
while/lstm_cell_120/add_3AddV2while/lstm_cell_120/mul_4:z:0while/lstm_cell_120/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_3»
$while/lstm_cell_120/ReadVariableOp_3ReadVariableOp-while_lstm_cell_120_readvariableop_resource_0*
_output_shapes
:	 *
dtype02&
$while/lstm_cell_120/ReadVariableOp_3§
)while/lstm_cell_120/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_120/strided_slice_3/stack«
+while/lstm_cell_120/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2-
+while/lstm_cell_120/strided_slice_3/stack_1«
+while/lstm_cell_120/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2-
+while/lstm_cell_120/strided_slice_3/stack_2
#while/lstm_cell_120/strided_slice_3StridedSlice,while/lstm_cell_120/ReadVariableOp_3:value:02while/lstm_cell_120/strided_slice_3/stack:output:04while/lstm_cell_120/strided_slice_3/stack_1:output:04while/lstm_cell_120/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2%
#while/lstm_cell_120/strided_slice_3Å
while/lstm_cell_120/MatMul_7MatMulwhile/lstm_cell_120/mul_3:z:0,while/lstm_cell_120/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/MatMul_7Á
while/lstm_cell_120/add_4AddV2&while/lstm_cell_120/BiasAdd_3:output:0&while/lstm_cell_120/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/add_4
while/lstm_cell_120/Sigmoid_2Sigmoidwhile/lstm_cell_120/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Sigmoid_2
while/lstm_cell_120/Relu_1Reluwhile/lstm_cell_120/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/Relu_1¼
while/lstm_cell_120/mul_6Mul!while/lstm_cell_120/Sigmoid_2:y:0(while/lstm_cell_120/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_120/mul_6á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_120/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_120/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_120/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Ì

while/NoOpNoOp#^while/lstm_cell_120/ReadVariableOp%^while/lstm_cell_120/ReadVariableOp_1%^while/lstm_cell_120/ReadVariableOp_2%^while/lstm_cell_120/ReadVariableOp_3)^while/lstm_cell_120/split/ReadVariableOp+^while/lstm_cell_120/split_1/ReadVariableOp*"
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
+while_lstm_cell_120_readvariableop_resource-while_lstm_cell_120_readvariableop_resource_0"l
3while_lstm_cell_120_split_1_readvariableop_resource5while_lstm_cell_120_split_1_readvariableop_resource_0"h
1while_lstm_cell_120_split_readvariableop_resource3while_lstm_cell_120_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2H
"while/lstm_cell_120/ReadVariableOp"while/lstm_cell_120/ReadVariableOp2L
$while/lstm_cell_120/ReadVariableOp_1$while/lstm_cell_120/ReadVariableOp_12L
$while/lstm_cell_120/ReadVariableOp_2$while/lstm_cell_120/ReadVariableOp_22L
$while/lstm_cell_120/ReadVariableOp_3$while/lstm_cell_120/ReadVariableOp_32T
(while/lstm_cell_120/split/ReadVariableOp(while/lstm_cell_120/split/ReadVariableOp2X
*while/lstm_cell_120/split_1/ReadVariableOp*while/lstm_cell_120/split_1/ReadVariableOp: 
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
ä	
¨
/__inference_sequential_48_layer_call_fn_3891349

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
J__inference_sequential_48_layer_call_and_return_conditional_losses_38911682
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
input_495
serving_default_input_49:0ÿÿÿÿÿÿÿÿÿB

reshape_724
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
":   2dense_144/kernel
: 2dense_144/bias
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
":  2dense_145/kernel
:2dense_145/bias
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
0:.	2lstm_120/lstm_cell_120/kernel
::8	 2'lstm_120/lstm_cell_120/recurrent_kernel
*:(2lstm_120/lstm_cell_120/bias
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
':%  2Adam/dense_144/kernel/m
!: 2Adam/dense_144/bias/m
':% 2Adam/dense_145/kernel/m
!:2Adam/dense_145/bias/m
5:3	2$Adam/lstm_120/lstm_cell_120/kernel/m
?:=	 2.Adam/lstm_120/lstm_cell_120/recurrent_kernel/m
/:-2"Adam/lstm_120/lstm_cell_120/bias/m
':%  2Adam/dense_144/kernel/v
!: 2Adam/dense_144/bias/v
':% 2Adam/dense_145/kernel/v
!:2Adam/dense_145/bias/v
5:3	2$Adam/lstm_120/lstm_cell_120/kernel/v
?:=	 2.Adam/lstm_120/lstm_cell_120/recurrent_kernel/v
/:-2"Adam/lstm_120/lstm_cell_120/bias/v
2
/__inference_sequential_48_layer_call_fn_3890758
/__inference_sequential_48_layer_call_fn_3891330
/__inference_sequential_48_layer_call_fn_3891349
/__inference_sequential_48_layer_call_fn_3891204À
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
"__inference__wrapped_model_3889633input_49"
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
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891620
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891955
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891238
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891272À
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
*__inference_lstm_120_layer_call_fn_3891972
*__inference_lstm_120_layer_call_fn_3891983
*__inference_lstm_120_layer_call_fn_3891994
*__inference_lstm_120_layer_call_fn_3892005Õ
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892248
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892555
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892798
E__inference_lstm_120_layer_call_and_return_conditional_losses_3893105Õ
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
F__inference_dense_144_layer_call_and_return_conditional_losses_3893116¢
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
+__inference_dense_144_layer_call_fn_3893125¢
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
F__inference_dense_145_layer_call_and_return_conditional_losses_3893147¢
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
+__inference_dense_145_layer_call_fn_3893156¢
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_3893169¢
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
,__inference_reshape_72_layer_call_fn_3893174¢
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
__inference_loss_fn_0_3893185
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
%__inference_signature_wrapper_3891311input_49"
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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3893272
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3893385¾
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
/__inference_lstm_cell_120_layer_call_fn_3893402
/__inference_lstm_cell_120_layer_call_fn_3893419¾
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
__inference_loss_fn_1_3893430
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
"__inference__wrapped_model_3889633}&('5¢2
+¢(
&#
input_49ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_72(%

reshape_72ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_144_layer_call_and_return_conditional_losses_3893116\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ~
+__inference_dense_144_layer_call_fn_3893125O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¦
F__inference_dense_145_layer_call_and_return_conditional_losses_3893147\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_145_layer_call_fn_3893156O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_3893185¢

¢ 
ª " <
__inference_loss_fn_1_3893430&¢

¢ 
ª " Æ
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892248}&('O¢L
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892555}&('O¢L
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_3892798m&('?¢<
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
E__inference_lstm_120_layer_call_and_return_conditional_losses_3893105m&('?¢<
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
*__inference_lstm_120_layer_call_fn_3891972p&('O¢L
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
*__inference_lstm_120_layer_call_fn_3891983p&('O¢L
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
*__inference_lstm_120_layer_call_fn_3891994`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
*__inference_lstm_120_layer_call_fn_3892005`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ì
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3893272ý&('¢}
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
J__inference_lstm_cell_120_layer_call_and_return_conditional_losses_3893385ý&('¢}
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
/__inference_lstm_cell_120_layer_call_fn_3893402í&('¢}
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
/__inference_lstm_cell_120_layer_call_fn_3893419í&('¢}
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
G__inference_reshape_72_layer_call_and_return_conditional_losses_3893169\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_72_layer_call_fn_3893174O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891238s&('=¢:
3¢0
&#
input_49ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891272s&('=¢:
3¢0
&#
input_49ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891620q&(';¢8
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
J__inference_sequential_48_layer_call_and_return_conditional_losses_3891955q&(';¢8
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
/__inference_sequential_48_layer_call_fn_3890758f&('=¢:
3¢0
&#
input_49ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_48_layer_call_fn_3891204f&('=¢:
3¢0
&#
input_49ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_48_layer_call_fn_3891330d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_48_layer_call_fn_3891349d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
%__inference_signature_wrapper_3891311&('A¢>
¢ 
7ª4
2
input_49&#
input_49ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_72(%

reshape_72ÿÿÿÿÿÿÿÿÿ