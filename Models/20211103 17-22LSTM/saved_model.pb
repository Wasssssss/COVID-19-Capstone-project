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
dense_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_96/kernel
s
#dense_96/kernel/Read/ReadVariableOpReadVariableOpdense_96/kernel*
_output_shapes

:  *
dtype0
r
dense_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_96/bias
k
!dense_96/bias/Read/ReadVariableOpReadVariableOpdense_96/bias*
_output_shapes
: *
dtype0
z
dense_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_97/kernel
s
#dense_97/kernel/Read/ReadVariableOpReadVariableOpdense_97/kernel*
_output_shapes

: *
dtype0
r
dense_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_97/bias
k
!dense_97/bias/Read/ReadVariableOpReadVariableOpdense_97/bias*
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
lstm_80/lstm_cell_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_80/lstm_cell_80/kernel
?
/lstm_80/lstm_cell_80/kernel/Read/ReadVariableOpReadVariableOplstm_80/lstm_cell_80/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_80/lstm_cell_80/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_80/lstm_cell_80/recurrent_kernel
?
9lstm_80/lstm_cell_80/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_80/lstm_cell_80/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_80/lstm_cell_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_80/lstm_cell_80/bias
?
-lstm_80/lstm_cell_80/bias/Read/ReadVariableOpReadVariableOplstm_80/lstm_cell_80/bias*
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
Adam/dense_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_96/kernel/m
?
*Adam/dense_96/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_96/bias/m
y
(Adam/dense_96/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_97/kernel/m
?
*Adam/dense_97/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/m
y
(Adam/dense_97/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_80/lstm_cell_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_80/lstm_cell_80/kernel/m
?
6Adam/lstm_80/lstm_cell_80/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_80/lstm_cell_80/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_80/lstm_cell_80/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m
?
@Adam/lstm_80/lstm_cell_80/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_80/lstm_cell_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_80/lstm_cell_80/bias/m
?
4Adam/lstm_80/lstm_cell_80/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_80/lstm_cell_80/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_96/kernel/v
?
*Adam/dense_96/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_96/bias/v
y
(Adam/dense_96/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_97/kernel/v
?
*Adam/dense_97/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/v
y
(Adam/dense_97/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_80/lstm_cell_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_80/lstm_cell_80/kernel/v
?
6Adam/lstm_80/lstm_cell_80/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_80/lstm_cell_80/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_80/lstm_cell_80/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v
?
@Adam/lstm_80/lstm_cell_80/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_80/lstm_cell_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_80/lstm_cell_80/bias/v
?
4Adam/lstm_80/lstm_cell_80/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_80/lstm_cell_80/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?*
?
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
*layer_regularization_losses
	variables
trainable_variables
+layer_metrics
,metrics
regularization_losses
-non_trainable_variables
 
?
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
?

3layers
4layer_regularization_losses

5states
	variables
trainable_variables
6layer_metrics
7metrics
regularization_losses
8non_trainable_variables
[Y
VARIABLE_VALUEdense_96/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_96/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

9layers
	variables
:non_trainable_variables
trainable_variables
;layer_metrics
<metrics
regularization_losses
=layer_regularization_losses
[Y
VARIABLE_VALUEdense_97/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_97/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

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
?

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
WU
VARIABLE_VALUElstm_80/lstm_cell_80/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_80/lstm_cell_80/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_80/lstm_cell_80/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
?

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
~|
VARIABLE_VALUEAdam/dense_96/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_80/lstm_cell_80/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_80/lstm_cell_80/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_80/lstm_cell_80/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_96/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_80/lstm_cell_80/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_80/lstm_cell_80/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_80/lstm_cell_80/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_33Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_33lstm_80/lstm_cell_80/kernellstm_80/lstm_cell_80/bias%lstm_80/lstm_cell_80/recurrent_kerneldense_96/kerneldense_96/biasdense_97/kerneldense_97/bias*
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
%__inference_signature_wrapper_2644576
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_96/kernel/Read/ReadVariableOp!dense_96/bias/Read/ReadVariableOp#dense_97/kernel/Read/ReadVariableOp!dense_97/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_80/lstm_cell_80/kernel/Read/ReadVariableOp9lstm_80/lstm_cell_80/recurrent_kernel/Read/ReadVariableOp-lstm_80/lstm_cell_80/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_96/kernel/m/Read/ReadVariableOp(Adam/dense_96/bias/m/Read/ReadVariableOp*Adam/dense_97/kernel/m/Read/ReadVariableOp(Adam/dense_97/bias/m/Read/ReadVariableOp6Adam/lstm_80/lstm_cell_80/kernel/m/Read/ReadVariableOp@Adam/lstm_80/lstm_cell_80/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_80/lstm_cell_80/bias/m/Read/ReadVariableOp*Adam/dense_96/kernel/v/Read/ReadVariableOp(Adam/dense_96/bias/v/Read/ReadVariableOp*Adam/dense_97/kernel/v/Read/ReadVariableOp(Adam/dense_97/bias/v/Read/ReadVariableOp6Adam/lstm_80/lstm_cell_80/kernel/v/Read/ReadVariableOp@Adam/lstm_80/lstm_cell_80/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_80/lstm_cell_80/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_2646802
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_96/kerneldense_96/biasdense_97/kerneldense_97/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_80/lstm_cell_80/kernel%lstm_80/lstm_cell_80/recurrent_kernellstm_80/lstm_cell_80/biastotalcountAdam/dense_96/kernel/mAdam/dense_96/bias/mAdam/dense_97/kernel/mAdam/dense_97/bias/m"Adam/lstm_80/lstm_cell_80/kernel/m,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m Adam/lstm_80/lstm_cell_80/bias/mAdam/dense_96/kernel/vAdam/dense_96/bias/vAdam/dense_97/kernel/vAdam/dense_97/bias/v"Adam/lstm_80/lstm_cell_80/kernel/v,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v Adam/lstm_80/lstm_cell_80/bias/v*(
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
#__inference__traced_restore_2646896??$
?

?
lstm_80_while_cond_2644723,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3.
*lstm_80_while_less_lstm_80_strided_slice_1E
Alstm_80_while_lstm_80_while_cond_2644723___redundant_placeholder0E
Alstm_80_while_lstm_80_while_cond_2644723___redundant_placeholder1E
Alstm_80_while_lstm_80_while_cond_2644723___redundant_placeholder2E
Alstm_80_while_lstm_80_while_cond_2644723___redundant_placeholder3
lstm_80_while_identity
?
lstm_80/while/LessLesslstm_80_while_placeholder*lstm_80_while_less_lstm_80_strided_slice_1*
T0*
_output_shapes
: 2
lstm_80/while/Lessu
lstm_80/while/IdentityIdentitylstm_80/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_80/while/Identity"9
lstm_80_while_identitylstm_80/while/Identity:output:0*(
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
E__inference_dense_96_layer_call_and_return_conditional_losses_2643950

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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2643022

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2,
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
?A
?
 __inference__traced_save_2646802
file_prefix.
*savev2_dense_96_kernel_read_readvariableop,
(savev2_dense_96_bias_read_readvariableop.
*savev2_dense_97_kernel_read_readvariableop,
(savev2_dense_97_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_80_lstm_cell_80_kernel_read_readvariableopD
@savev2_lstm_80_lstm_cell_80_recurrent_kernel_read_readvariableop8
4savev2_lstm_80_lstm_cell_80_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_96_kernel_m_read_readvariableop3
/savev2_adam_dense_96_bias_m_read_readvariableop5
1savev2_adam_dense_97_kernel_m_read_readvariableop3
/savev2_adam_dense_97_bias_m_read_readvariableopA
=savev2_adam_lstm_80_lstm_cell_80_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_80_lstm_cell_80_bias_m_read_readvariableop5
1savev2_adam_dense_96_kernel_v_read_readvariableop3
/savev2_adam_dense_96_bias_v_read_readvariableop5
1savev2_adam_dense_97_kernel_v_read_readvariableop3
/savev2_adam_dense_97_bias_v_read_readvariableopA
=savev2_adam_lstm_80_lstm_cell_80_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_80_lstm_cell_80_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_96_kernel_read_readvariableop(savev2_dense_96_bias_read_readvariableop*savev2_dense_97_kernel_read_readvariableop(savev2_dense_97_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_80_lstm_cell_80_kernel_read_readvariableop@savev2_lstm_80_lstm_cell_80_recurrent_kernel_read_readvariableop4savev2_lstm_80_lstm_cell_80_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_96_kernel_m_read_readvariableop/savev2_adam_dense_96_bias_m_read_readvariableop1savev2_adam_dense_97_kernel_m_read_readvariableop/savev2_adam_dense_97_bias_m_read_readvariableop=savev2_adam_lstm_80_lstm_cell_80_kernel_m_read_readvariableopGsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_80_lstm_cell_80_bias_m_read_readvariableop1savev2_adam_dense_96_kernel_v_read_readvariableop/savev2_adam_dense_96_bias_v_read_readvariableop1savev2_adam_dense_97_kernel_v_read_readvariableop/savev2_adam_dense_97_bias_v_read_readvariableop=savev2_adam_lstm_80_lstm_cell_80_kernel_v_read_readvariableopGsavev2_adam_lstm_80_lstm_cell_80_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_80_lstm_cell_80_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
/__inference_sequential_32_layer_call_fn_2644614

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
J__inference_sequential_32_layer_call_and_return_conditional_losses_26444332
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2643931

inputs=
*lstm_cell_80_split_readvariableop_resource:	?;
,lstm_cell_80_split_1_readvariableop_resource:	?7
$lstm_cell_80_readvariableop_resource:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_80/ReadVariableOp?lstm_cell_80/ReadVariableOp_1?lstm_cell_80/ReadVariableOp_2?lstm_cell_80/ReadVariableOp_3?!lstm_cell_80/split/ReadVariableOp?#lstm_cell_80/split_1/ReadVariableOp?whileD
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
lstm_cell_80/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_80/ones_like/Shape?
lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_80/ones_like/Const?
lstm_cell_80/ones_likeFill%lstm_cell_80/ones_like/Shape:output:0%lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/ones_like~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim?
!lstm_cell_80/split/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_80/split/ReadVariableOp?
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0)lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_80/split?
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul?
lstm_cell_80/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_1?
lstm_cell_80/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_2?
lstm_cell_80/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_3?
lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_80/split_1/split_dim?
#lstm_cell_80/split_1/ReadVariableOpReadVariableOp,lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_80/split_1/ReadVariableOp?
lstm_cell_80/split_1Split'lstm_cell_80/split_1/split_dim:output:0+lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_80/split_1?
lstm_cell_80/BiasAddBiasAddlstm_cell_80/MatMul:product:0lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd?
lstm_cell_80/BiasAdd_1BiasAddlstm_cell_80/MatMul_1:product:0lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_1?
lstm_cell_80/BiasAdd_2BiasAddlstm_cell_80/MatMul_2:product:0lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_2?
lstm_cell_80/BiasAdd_3BiasAddlstm_cell_80/MatMul_3:product:0lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_3?
lstm_cell_80/mulMulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul?
lstm_cell_80/mul_1Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_1?
lstm_cell_80/mul_2Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_2?
lstm_cell_80/mul_3Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_3?
lstm_cell_80/ReadVariableOpReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp?
 lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_80/strided_slice/stack?
"lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice/stack_1?
"lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_80/strided_slice/stack_2?
lstm_cell_80/strided_sliceStridedSlice#lstm_cell_80/ReadVariableOp:value:0)lstm_cell_80/strided_slice/stack:output:0+lstm_cell_80/strided_slice/stack_1:output:0+lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice?
lstm_cell_80/MatMul_4MatMullstm_cell_80/mul:z:0#lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_4?
lstm_cell_80/addAddV2lstm_cell_80/BiasAdd:output:0lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add
lstm_cell_80/SigmoidSigmoidlstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid?
lstm_cell_80/ReadVariableOp_1ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_1?
"lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice_1/stack?
$lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_80/strided_slice_1/stack_1?
$lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_1/stack_2?
lstm_cell_80/strided_slice_1StridedSlice%lstm_cell_80/ReadVariableOp_1:value:0+lstm_cell_80/strided_slice_1/stack:output:0-lstm_cell_80/strided_slice_1/stack_1:output:0-lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_1?
lstm_cell_80/MatMul_5MatMullstm_cell_80/mul_1:z:0%lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_5?
lstm_cell_80/add_1AddV2lstm_cell_80/BiasAdd_1:output:0lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_1?
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_1?
lstm_cell_80/mul_4Mullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_4?
lstm_cell_80/ReadVariableOp_2ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_2?
"lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_80/strided_slice_2/stack?
$lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_80/strided_slice_2/stack_1?
$lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_2/stack_2?
lstm_cell_80/strided_slice_2StridedSlice%lstm_cell_80/ReadVariableOp_2:value:0+lstm_cell_80/strided_slice_2/stack:output:0-lstm_cell_80/strided_slice_2/stack_1:output:0-lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_2?
lstm_cell_80/MatMul_6MatMullstm_cell_80/mul_2:z:0%lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_6?
lstm_cell_80/add_2AddV2lstm_cell_80/BiasAdd_2:output:0lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_2x
lstm_cell_80/ReluRelulstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu?
lstm_cell_80/mul_5Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_5?
lstm_cell_80/add_3AddV2lstm_cell_80/mul_4:z:0lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_3?
lstm_cell_80/ReadVariableOp_3ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_3?
"lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_80/strided_slice_3/stack?
$lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_80/strided_slice_3/stack_1?
$lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_3/stack_2?
lstm_cell_80/strided_slice_3StridedSlice%lstm_cell_80/ReadVariableOp_3:value:0+lstm_cell_80/strided_slice_3/stack:output:0-lstm_cell_80/strided_slice_3/stack_1:output:0-lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_3?
lstm_cell_80/MatMul_7MatMullstm_cell_80/mul_3:z:0%lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_7?
lstm_cell_80/add_4AddV2lstm_cell_80/BiasAdd_3:output:0lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_4?
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu_1?
lstm_cell_80/mul_6Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_80_split_readvariableop_resource,lstm_cell_80_split_1_readvariableop_resource$lstm_cell_80_readvariableop_resource*
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
while_body_2643798*
condR
while_cond_2643797*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_80/ReadVariableOp^lstm_cell_80/ReadVariableOp_1^lstm_cell_80/ReadVariableOp_2^lstm_cell_80/ReadVariableOp_3"^lstm_cell_80/split/ReadVariableOp$^lstm_cell_80/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_80/ReadVariableOplstm_cell_80/ReadVariableOp2>
lstm_cell_80/ReadVariableOp_1lstm_cell_80/ReadVariableOp_12>
lstm_cell_80/ReadVariableOp_2lstm_cell_80/ReadVariableOp_22>
lstm_cell_80/ReadVariableOp_3lstm_cell_80/ReadVariableOp_32F
!lstm_cell_80/split/ReadVariableOp!lstm_cell_80/split/ReadVariableOp2J
#lstm_cell_80/split_1/ReadVariableOp#lstm_cell_80/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
D__inference_lstm_80_layer_call_and_return_conditional_losses_2643111

inputs'
lstm_cell_80_2643023:	?#
lstm_cell_80_2643025:	?'
lstm_cell_80_2643027:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_80/StatefulPartitionedCall?whileD
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
$lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_80_2643023lstm_cell_80_2643025lstm_cell_80_2643027*
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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_26430222&
$lstm_cell_80/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_80_2643023lstm_cell_80_2643025lstm_cell_80_2643027*
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
while_body_2643036*
condR
while_cond_2643035*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_80_2643023*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_80/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_80/StatefulPartitionedCall$lstm_cell_80/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644885

inputsE
2lstm_80_lstm_cell_80_split_readvariableop_resource:	?C
4lstm_80_lstm_cell_80_split_1_readvariableop_resource:	??
,lstm_80_lstm_cell_80_readvariableop_resource:	 ?9
'dense_96_matmul_readvariableop_resource:  6
(dense_96_biasadd_readvariableop_resource: 9
'dense_97_matmul_readvariableop_resource: 6
(dense_97_biasadd_readvariableop_resource:
identity??dense_96/BiasAdd/ReadVariableOp?dense_96/MatMul/ReadVariableOp?dense_97/BiasAdd/ReadVariableOp?dense_97/MatMul/ReadVariableOp?/dense_97/bias/Regularizer/Square/ReadVariableOp?#lstm_80/lstm_cell_80/ReadVariableOp?%lstm_80/lstm_cell_80/ReadVariableOp_1?%lstm_80/lstm_cell_80/ReadVariableOp_2?%lstm_80/lstm_cell_80/ReadVariableOp_3?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?)lstm_80/lstm_cell_80/split/ReadVariableOp?+lstm_80/lstm_cell_80/split_1/ReadVariableOp?lstm_80/whileT
lstm_80/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_80/Shape?
lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice/stack?
lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_1?
lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_2?
lstm_80/strided_sliceStridedSlicelstm_80/Shape:output:0$lstm_80/strided_slice/stack:output:0&lstm_80/strided_slice/stack_1:output:0&lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slicel
lstm_80/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros/mul/y?
lstm_80/zeros/mulMullstm_80/strided_slice:output:0lstm_80/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/mulo
lstm_80/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_80/zeros/Less/y?
lstm_80/zeros/LessLesslstm_80/zeros/mul:z:0lstm_80/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/Lessr
lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros/packed/1?
lstm_80/zeros/packedPacklstm_80/strided_slice:output:0lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros/packedo
lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros/Const?
lstm_80/zerosFilllstm_80/zeros/packed:output:0lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/zerosp
lstm_80/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros_1/mul/y?
lstm_80/zeros_1/mulMullstm_80/strided_slice:output:0lstm_80/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/muls
lstm_80/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_80/zeros_1/Less/y?
lstm_80/zeros_1/LessLesslstm_80/zeros_1/mul:z:0lstm_80/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/Lessv
lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros_1/packed/1?
lstm_80/zeros_1/packedPacklstm_80/strided_slice:output:0!lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros_1/packeds
lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros_1/Const?
lstm_80/zeros_1Filllstm_80/zeros_1/packed:output:0lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/zeros_1?
lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose/perm?
lstm_80/transpose	Transposeinputslstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_80/transposeg
lstm_80/Shape_1Shapelstm_80/transpose:y:0*
T0*
_output_shapes
:2
lstm_80/Shape_1?
lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_1/stack?
lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_1?
lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_2?
lstm_80/strided_slice_1StridedSlicelstm_80/Shape_1:output:0&lstm_80/strided_slice_1/stack:output:0(lstm_80/strided_slice_1/stack_1:output:0(lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slice_1?
#lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_80/TensorArrayV2/element_shape?
lstm_80/TensorArrayV2TensorListReserve,lstm_80/TensorArrayV2/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2?
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_80/transpose:y:0Flstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_80/TensorArrayUnstack/TensorListFromTensor?
lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_2/stack?
lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_1?
lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_2?
lstm_80/strided_slice_2StridedSlicelstm_80/transpose:y:0&lstm_80/strided_slice_2/stack:output:0(lstm_80/strided_slice_2/stack_1:output:0(lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_80/strided_slice_2?
$lstm_80/lstm_cell_80/ones_like/ShapeShapelstm_80/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_80/lstm_cell_80/ones_like/Shape?
$lstm_80/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_80/lstm_cell_80/ones_like/Const?
lstm_80/lstm_cell_80/ones_likeFill-lstm_80/lstm_cell_80/ones_like/Shape:output:0-lstm_80/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/ones_like?
$lstm_80/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_80/lstm_cell_80/split/split_dim?
)lstm_80/lstm_cell_80/split/ReadVariableOpReadVariableOp2lstm_80_lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_80/lstm_cell_80/split/ReadVariableOp?
lstm_80/lstm_cell_80/splitSplit-lstm_80/lstm_cell_80/split/split_dim:output:01lstm_80/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_80/lstm_cell_80/split?
lstm_80/lstm_cell_80/MatMulMatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul?
lstm_80/lstm_cell_80/MatMul_1MatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_1?
lstm_80/lstm_cell_80/MatMul_2MatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_2?
lstm_80/lstm_cell_80/MatMul_3MatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_3?
&lstm_80/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_80/lstm_cell_80/split_1/split_dim?
+lstm_80/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4lstm_80_lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_80/lstm_cell_80/split_1/ReadVariableOp?
lstm_80/lstm_cell_80/split_1Split/lstm_80/lstm_cell_80/split_1/split_dim:output:03lstm_80/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_80/lstm_cell_80/split_1?
lstm_80/lstm_cell_80/BiasAddBiasAdd%lstm_80/lstm_cell_80/MatMul:product:0%lstm_80/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/BiasAdd?
lstm_80/lstm_cell_80/BiasAdd_1BiasAdd'lstm_80/lstm_cell_80/MatMul_1:product:0%lstm_80/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/BiasAdd_1?
lstm_80/lstm_cell_80/BiasAdd_2BiasAdd'lstm_80/lstm_cell_80/MatMul_2:product:0%lstm_80/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/BiasAdd_2?
lstm_80/lstm_cell_80/BiasAdd_3BiasAdd'lstm_80/lstm_cell_80/MatMul_3:product:0%lstm_80/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/BiasAdd_3?
lstm_80/lstm_cell_80/mulMullstm_80/zeros:output:0'lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul?
lstm_80/lstm_cell_80/mul_1Mullstm_80/zeros:output:0'lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_1?
lstm_80/lstm_cell_80/mul_2Mullstm_80/zeros:output:0'lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_2?
lstm_80/lstm_cell_80/mul_3Mullstm_80/zeros:output:0'lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_3?
#lstm_80/lstm_cell_80/ReadVariableOpReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_80/lstm_cell_80/ReadVariableOp?
(lstm_80/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_80/lstm_cell_80/strided_slice/stack?
*lstm_80/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_80/lstm_cell_80/strided_slice/stack_1?
*lstm_80/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_80/lstm_cell_80/strided_slice/stack_2?
"lstm_80/lstm_cell_80/strided_sliceStridedSlice+lstm_80/lstm_cell_80/ReadVariableOp:value:01lstm_80/lstm_cell_80/strided_slice/stack:output:03lstm_80/lstm_cell_80/strided_slice/stack_1:output:03lstm_80/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_80/lstm_cell_80/strided_slice?
lstm_80/lstm_cell_80/MatMul_4MatMullstm_80/lstm_cell_80/mul:z:0+lstm_80/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_4?
lstm_80/lstm_cell_80/addAddV2%lstm_80/lstm_cell_80/BiasAdd:output:0'lstm_80/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add?
lstm_80/lstm_cell_80/SigmoidSigmoidlstm_80/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/Sigmoid?
%lstm_80/lstm_cell_80/ReadVariableOp_1ReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_80/lstm_cell_80/ReadVariableOp_1?
*lstm_80/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_80/lstm_cell_80/strided_slice_1/stack?
,lstm_80/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_80/lstm_cell_80/strided_slice_1/stack_1?
,lstm_80/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_80/lstm_cell_80/strided_slice_1/stack_2?
$lstm_80/lstm_cell_80/strided_slice_1StridedSlice-lstm_80/lstm_cell_80/ReadVariableOp_1:value:03lstm_80/lstm_cell_80/strided_slice_1/stack:output:05lstm_80/lstm_cell_80/strided_slice_1/stack_1:output:05lstm_80/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_80/lstm_cell_80/strided_slice_1?
lstm_80/lstm_cell_80/MatMul_5MatMullstm_80/lstm_cell_80/mul_1:z:0-lstm_80/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_5?
lstm_80/lstm_cell_80/add_1AddV2'lstm_80/lstm_cell_80/BiasAdd_1:output:0'lstm_80/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_1?
lstm_80/lstm_cell_80/Sigmoid_1Sigmoidlstm_80/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/Sigmoid_1?
lstm_80/lstm_cell_80/mul_4Mul"lstm_80/lstm_cell_80/Sigmoid_1:y:0lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_4?
%lstm_80/lstm_cell_80/ReadVariableOp_2ReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_80/lstm_cell_80/ReadVariableOp_2?
*lstm_80/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_80/lstm_cell_80/strided_slice_2/stack?
,lstm_80/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_80/lstm_cell_80/strided_slice_2/stack_1?
,lstm_80/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_80/lstm_cell_80/strided_slice_2/stack_2?
$lstm_80/lstm_cell_80/strided_slice_2StridedSlice-lstm_80/lstm_cell_80/ReadVariableOp_2:value:03lstm_80/lstm_cell_80/strided_slice_2/stack:output:05lstm_80/lstm_cell_80/strided_slice_2/stack_1:output:05lstm_80/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_80/lstm_cell_80/strided_slice_2?
lstm_80/lstm_cell_80/MatMul_6MatMullstm_80/lstm_cell_80/mul_2:z:0-lstm_80/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_6?
lstm_80/lstm_cell_80/add_2AddV2'lstm_80/lstm_cell_80/BiasAdd_2:output:0'lstm_80/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_2?
lstm_80/lstm_cell_80/ReluRelulstm_80/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/Relu?
lstm_80/lstm_cell_80/mul_5Mul lstm_80/lstm_cell_80/Sigmoid:y:0'lstm_80/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_5?
lstm_80/lstm_cell_80/add_3AddV2lstm_80/lstm_cell_80/mul_4:z:0lstm_80/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_3?
%lstm_80/lstm_cell_80/ReadVariableOp_3ReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_80/lstm_cell_80/ReadVariableOp_3?
*lstm_80/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_80/lstm_cell_80/strided_slice_3/stack?
,lstm_80/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_80/lstm_cell_80/strided_slice_3/stack_1?
,lstm_80/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_80/lstm_cell_80/strided_slice_3/stack_2?
$lstm_80/lstm_cell_80/strided_slice_3StridedSlice-lstm_80/lstm_cell_80/ReadVariableOp_3:value:03lstm_80/lstm_cell_80/strided_slice_3/stack:output:05lstm_80/lstm_cell_80/strided_slice_3/stack_1:output:05lstm_80/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_80/lstm_cell_80/strided_slice_3?
lstm_80/lstm_cell_80/MatMul_7MatMullstm_80/lstm_cell_80/mul_3:z:0-lstm_80/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_7?
lstm_80/lstm_cell_80/add_4AddV2'lstm_80/lstm_cell_80/BiasAdd_3:output:0'lstm_80/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_4?
lstm_80/lstm_cell_80/Sigmoid_2Sigmoidlstm_80/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/Sigmoid_2?
lstm_80/lstm_cell_80/Relu_1Relulstm_80/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/Relu_1?
lstm_80/lstm_cell_80/mul_6Mul"lstm_80/lstm_cell_80/Sigmoid_2:y:0)lstm_80/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_6?
%lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_80/TensorArrayV2_1/element_shape?
lstm_80/TensorArrayV2_1TensorListReserve.lstm_80/TensorArrayV2_1/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2_1^
lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/time?
 lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_80/while/maximum_iterationsz
lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/while/loop_counter?
lstm_80/whileWhile#lstm_80/while/loop_counter:output:0)lstm_80/while/maximum_iterations:output:0lstm_80/time:output:0 lstm_80/TensorArrayV2_1:handle:0lstm_80/zeros:output:0lstm_80/zeros_1:output:0 lstm_80/strided_slice_1:output:0?lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_80_lstm_cell_80_split_readvariableop_resource4lstm_80_lstm_cell_80_split_1_readvariableop_resource,lstm_80_lstm_cell_80_readvariableop_resource*
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
lstm_80_while_body_2644724*&
condR
lstm_80_while_cond_2644723*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_80/while?
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_80/TensorArrayV2Stack/TensorListStackTensorListStacklstm_80/while:output:3Alstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_80/TensorArrayV2Stack/TensorListStack?
lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_80/strided_slice_3/stack?
lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_80/strided_slice_3/stack_1?
lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_3/stack_2?
lstm_80/strided_slice_3StridedSlice3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_80/strided_slice_3/stack:output:0(lstm_80/strided_slice_3/stack_1:output:0(lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_80/strided_slice_3?
lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose_1/perm?
lstm_80/transpose_1	Transpose3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_80/transpose_1v
lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/runtime?
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_96/MatMul/ReadVariableOp?
dense_96/MatMulMatMul lstm_80/strided_slice_3:output:0&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_96/MatMul?
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_96/BiasAdd/ReadVariableOp?
dense_96/BiasAddBiasAdddense_96/MatMul:product:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_96/BiasAdds
dense_96/ReluReludense_96/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_96/Relu?
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_97/MatMul/ReadVariableOp?
dense_97/MatMulMatMuldense_96/Relu:activations:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/MatMul?
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp?
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/BiasAddm
reshape_48/ShapeShapedense_97/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_48/Shape?
reshape_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_48/strided_slice/stack?
 reshape_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_1?
 reshape_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_2?
reshape_48/strided_sliceStridedSlicereshape_48/Shape:output:0'reshape_48/strided_slice/stack:output:0)reshape_48/strided_slice/stack_1:output:0)reshape_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_48/strided_slicez
reshape_48/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_48/Reshape/shape/1z
reshape_48/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_48/Reshape/shape/2?
reshape_48/Reshape/shapePack!reshape_48/strided_slice:output:0#reshape_48/Reshape/shape/1:output:0#reshape_48/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_48/Reshape/shape?
reshape_48/ReshapeReshapedense_97/BiasAdd:output:0!reshape_48/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_48/Reshape?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_80_lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/mul?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mulz
IdentityIdentityreshape_48/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_96/BiasAdd/ReadVariableOp^dense_96/MatMul/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp0^dense_97/bias/Regularizer/Square/ReadVariableOp$^lstm_80/lstm_cell_80/ReadVariableOp&^lstm_80/lstm_cell_80/ReadVariableOp_1&^lstm_80/lstm_cell_80/ReadVariableOp_2&^lstm_80/lstm_cell_80/ReadVariableOp_3>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*^lstm_80/lstm_cell_80/split/ReadVariableOp,^lstm_80/lstm_cell_80/split_1/ReadVariableOp^lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp2J
#lstm_80/lstm_cell_80/ReadVariableOp#lstm_80/lstm_cell_80/ReadVariableOp2N
%lstm_80/lstm_cell_80/ReadVariableOp_1%lstm_80/lstm_cell_80/ReadVariableOp_12N
%lstm_80/lstm_cell_80/ReadVariableOp_2%lstm_80/lstm_cell_80/ReadVariableOp_22N
%lstm_80/lstm_cell_80/ReadVariableOp_3%lstm_80/lstm_cell_80/ReadVariableOp_32~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_80/lstm_cell_80/split/ReadVariableOp)lstm_80/lstm_cell_80/split/ReadVariableOp2Z
+lstm_80/lstm_cell_80/split_1/ReadVariableOp+lstm_80/lstm_cell_80/split_1/ReadVariableOp2
lstm_80/whilelstm_80/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
lstm_80_while_body_2645027,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3+
'lstm_80_while_lstm_80_strided_slice_1_0g
clstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_80_while_lstm_cell_80_split_readvariableop_resource_0:	?K
<lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0:	?G
4lstm_80_while_lstm_cell_80_readvariableop_resource_0:	 ?
lstm_80_while_identity
lstm_80_while_identity_1
lstm_80_while_identity_2
lstm_80_while_identity_3
lstm_80_while_identity_4
lstm_80_while_identity_5)
%lstm_80_while_lstm_80_strided_slice_1e
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorK
8lstm_80_while_lstm_cell_80_split_readvariableop_resource:	?I
:lstm_80_while_lstm_cell_80_split_1_readvariableop_resource:	?E
2lstm_80_while_lstm_cell_80_readvariableop_resource:	 ???)lstm_80/while/lstm_cell_80/ReadVariableOp?+lstm_80/while/lstm_cell_80/ReadVariableOp_1?+lstm_80/while/lstm_cell_80/ReadVariableOp_2?+lstm_80/while/lstm_cell_80/ReadVariableOp_3?/lstm_80/while/lstm_cell_80/split/ReadVariableOp?1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0lstm_80_while_placeholderHlstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_80/while/TensorArrayV2Read/TensorListGetItem?
*lstm_80/while/lstm_cell_80/ones_like/ShapeShapelstm_80_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_80/while/lstm_cell_80/ones_like/Shape?
*lstm_80/while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_80/while/lstm_cell_80/ones_like/Const?
$lstm_80/while/lstm_cell_80/ones_likeFill3lstm_80/while/lstm_cell_80/ones_like/Shape:output:03lstm_80/while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/ones_like?
(lstm_80/while/lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2*
(lstm_80/while/lstm_cell_80/dropout/Const?
&lstm_80/while/lstm_cell_80/dropout/MulMul-lstm_80/while/lstm_cell_80/ones_like:output:01lstm_80/while/lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_80/while/lstm_cell_80/dropout/Mul?
(lstm_80/while/lstm_cell_80/dropout/ShapeShape-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_80/while/lstm_cell_80/dropout/Shape?
?lstm_80/while/lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform1lstm_80/while/lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??\2A
?lstm_80/while/lstm_cell_80/dropout/random_uniform/RandomUniform?
1lstm_80/while/lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_80/while/lstm_cell_80/dropout/GreaterEqual/y?
/lstm_80/while/lstm_cell_80/dropout/GreaterEqualGreaterEqualHlstm_80/while/lstm_cell_80/dropout/random_uniform/RandomUniform:output:0:lstm_80/while/lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_80/while/lstm_cell_80/dropout/GreaterEqual?
'lstm_80/while/lstm_cell_80/dropout/CastCast3lstm_80/while/lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_80/while/lstm_cell_80/dropout/Cast?
(lstm_80/while/lstm_cell_80/dropout/Mul_1Mul*lstm_80/while/lstm_cell_80/dropout/Mul:z:0+lstm_80/while/lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_80/while/lstm_cell_80/dropout/Mul_1?
*lstm_80/while/lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_80/while/lstm_cell_80/dropout_1/Const?
(lstm_80/while/lstm_cell_80/dropout_1/MulMul-lstm_80/while/lstm_cell_80/ones_like:output:03lstm_80/while/lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_80/while/lstm_cell_80/dropout_1/Mul?
*lstm_80/while/lstm_cell_80/dropout_1/ShapeShape-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_80/while/lstm_cell_80/dropout_1/Shape?
Alstm_80/while/lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_80/while/lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_80/while/lstm_cell_80/dropout_1/random_uniform/RandomUniform?
3lstm_80/while/lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_80/while/lstm_cell_80/dropout_1/GreaterEqual/y?
1lstm_80/while/lstm_cell_80/dropout_1/GreaterEqualGreaterEqualJlstm_80/while/lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:0<lstm_80/while/lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_80/while/lstm_cell_80/dropout_1/GreaterEqual?
)lstm_80/while/lstm_cell_80/dropout_1/CastCast5lstm_80/while/lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_80/while/lstm_cell_80/dropout_1/Cast?
*lstm_80/while/lstm_cell_80/dropout_1/Mul_1Mul,lstm_80/while/lstm_cell_80/dropout_1/Mul:z:0-lstm_80/while/lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_80/while/lstm_cell_80/dropout_1/Mul_1?
*lstm_80/while/lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_80/while/lstm_cell_80/dropout_2/Const?
(lstm_80/while/lstm_cell_80/dropout_2/MulMul-lstm_80/while/lstm_cell_80/ones_like:output:03lstm_80/while/lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_80/while/lstm_cell_80/dropout_2/Mul?
*lstm_80/while/lstm_cell_80/dropout_2/ShapeShape-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_80/while/lstm_cell_80/dropout_2/Shape?
Alstm_80/while/lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_80/while/lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_80/while/lstm_cell_80/dropout_2/random_uniform/RandomUniform?
3lstm_80/while/lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_80/while/lstm_cell_80/dropout_2/GreaterEqual/y?
1lstm_80/while/lstm_cell_80/dropout_2/GreaterEqualGreaterEqualJlstm_80/while/lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:0<lstm_80/while/lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_80/while/lstm_cell_80/dropout_2/GreaterEqual?
)lstm_80/while/lstm_cell_80/dropout_2/CastCast5lstm_80/while/lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_80/while/lstm_cell_80/dropout_2/Cast?
*lstm_80/while/lstm_cell_80/dropout_2/Mul_1Mul,lstm_80/while/lstm_cell_80/dropout_2/Mul:z:0-lstm_80/while/lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_80/while/lstm_cell_80/dropout_2/Mul_1?
*lstm_80/while/lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_80/while/lstm_cell_80/dropout_3/Const?
(lstm_80/while/lstm_cell_80/dropout_3/MulMul-lstm_80/while/lstm_cell_80/ones_like:output:03lstm_80/while/lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_80/while/lstm_cell_80/dropout_3/Mul?
*lstm_80/while/lstm_cell_80/dropout_3/ShapeShape-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_80/while/lstm_cell_80/dropout_3/Shape?
Alstm_80/while/lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_80/while/lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??=2C
Alstm_80/while/lstm_cell_80/dropout_3/random_uniform/RandomUniform?
3lstm_80/while/lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_80/while/lstm_cell_80/dropout_3/GreaterEqual/y?
1lstm_80/while/lstm_cell_80/dropout_3/GreaterEqualGreaterEqualJlstm_80/while/lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:0<lstm_80/while/lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_80/while/lstm_cell_80/dropout_3/GreaterEqual?
)lstm_80/while/lstm_cell_80/dropout_3/CastCast5lstm_80/while/lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_80/while/lstm_cell_80/dropout_3/Cast?
*lstm_80/while/lstm_cell_80/dropout_3/Mul_1Mul,lstm_80/while/lstm_cell_80/dropout_3/Mul:z:0-lstm_80/while/lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_80/while/lstm_cell_80/dropout_3/Mul_1?
*lstm_80/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_80/while/lstm_cell_80/split/split_dim?
/lstm_80/while/lstm_cell_80/split/ReadVariableOpReadVariableOp:lstm_80_while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_80/while/lstm_cell_80/split/ReadVariableOp?
 lstm_80/while/lstm_cell_80/splitSplit3lstm_80/while/lstm_cell_80/split/split_dim:output:07lstm_80/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_80/while/lstm_cell_80/split?
!lstm_80/while/lstm_cell_80/MatMulMatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_80/while/lstm_cell_80/MatMul?
#lstm_80/while/lstm_cell_80/MatMul_1MatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_1?
#lstm_80/while/lstm_cell_80/MatMul_2MatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_2?
#lstm_80/while/lstm_cell_80/MatMul_3MatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_3?
,lstm_80/while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_80/while/lstm_cell_80/split_1/split_dim?
1lstm_80/while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp<lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?
"lstm_80/while/lstm_cell_80/split_1Split5lstm_80/while/lstm_cell_80/split_1/split_dim:output:09lstm_80/while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_80/while/lstm_cell_80/split_1?
"lstm_80/while/lstm_cell_80/BiasAddBiasAdd+lstm_80/while/lstm_cell_80/MatMul:product:0+lstm_80/while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/while/lstm_cell_80/BiasAdd?
$lstm_80/while/lstm_cell_80/BiasAdd_1BiasAdd-lstm_80/while/lstm_cell_80/MatMul_1:product:0+lstm_80/while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/BiasAdd_1?
$lstm_80/while/lstm_cell_80/BiasAdd_2BiasAdd-lstm_80/while/lstm_cell_80/MatMul_2:product:0+lstm_80/while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/BiasAdd_2?
$lstm_80/while/lstm_cell_80/BiasAdd_3BiasAdd-lstm_80/while/lstm_cell_80/MatMul_3:product:0+lstm_80/while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/BiasAdd_3?
lstm_80/while/lstm_cell_80/mulMullstm_80_while_placeholder_2,lstm_80/while/lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/while/lstm_cell_80/mul?
 lstm_80/while/lstm_cell_80/mul_1Mullstm_80_while_placeholder_2.lstm_80/while/lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_1?
 lstm_80/while/lstm_cell_80/mul_2Mullstm_80_while_placeholder_2.lstm_80/while/lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_2?
 lstm_80/while/lstm_cell_80/mul_3Mullstm_80_while_placeholder_2.lstm_80/while/lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_3?
)lstm_80/while/lstm_cell_80/ReadVariableOpReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_80/while/lstm_cell_80/ReadVariableOp?
.lstm_80/while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_80/while/lstm_cell_80/strided_slice/stack?
0lstm_80/while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_80/while/lstm_cell_80/strided_slice/stack_1?
0lstm_80/while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_80/while/lstm_cell_80/strided_slice/stack_2?
(lstm_80/while/lstm_cell_80/strided_sliceStridedSlice1lstm_80/while/lstm_cell_80/ReadVariableOp:value:07lstm_80/while/lstm_cell_80/strided_slice/stack:output:09lstm_80/while/lstm_cell_80/strided_slice/stack_1:output:09lstm_80/while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_80/while/lstm_cell_80/strided_slice?
#lstm_80/while/lstm_cell_80/MatMul_4MatMul"lstm_80/while/lstm_cell_80/mul:z:01lstm_80/while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_4?
lstm_80/while/lstm_cell_80/addAddV2+lstm_80/while/lstm_cell_80/BiasAdd:output:0-lstm_80/while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/while/lstm_cell_80/add?
"lstm_80/while/lstm_cell_80/SigmoidSigmoid"lstm_80/while/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/while/lstm_cell_80/Sigmoid?
+lstm_80/while/lstm_cell_80/ReadVariableOp_1ReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_80/while/lstm_cell_80/ReadVariableOp_1?
0lstm_80/while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_80/while/lstm_cell_80/strided_slice_1/stack?
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_1?
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_2?
*lstm_80/while/lstm_cell_80/strided_slice_1StridedSlice3lstm_80/while/lstm_cell_80/ReadVariableOp_1:value:09lstm_80/while/lstm_cell_80/strided_slice_1/stack:output:0;lstm_80/while/lstm_cell_80/strided_slice_1/stack_1:output:0;lstm_80/while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_80/while/lstm_cell_80/strided_slice_1?
#lstm_80/while/lstm_cell_80/MatMul_5MatMul$lstm_80/while/lstm_cell_80/mul_1:z:03lstm_80/while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_5?
 lstm_80/while/lstm_cell_80/add_1AddV2-lstm_80/while/lstm_cell_80/BiasAdd_1:output:0-lstm_80/while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_1?
$lstm_80/while/lstm_cell_80/Sigmoid_1Sigmoid$lstm_80/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/Sigmoid_1?
 lstm_80/while/lstm_cell_80/mul_4Mul(lstm_80/while/lstm_cell_80/Sigmoid_1:y:0lstm_80_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_4?
+lstm_80/while/lstm_cell_80/ReadVariableOp_2ReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_80/while/lstm_cell_80/ReadVariableOp_2?
0lstm_80/while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_80/while/lstm_cell_80/strided_slice_2/stack?
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_1?
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_2?
*lstm_80/while/lstm_cell_80/strided_slice_2StridedSlice3lstm_80/while/lstm_cell_80/ReadVariableOp_2:value:09lstm_80/while/lstm_cell_80/strided_slice_2/stack:output:0;lstm_80/while/lstm_cell_80/strided_slice_2/stack_1:output:0;lstm_80/while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_80/while/lstm_cell_80/strided_slice_2?
#lstm_80/while/lstm_cell_80/MatMul_6MatMul$lstm_80/while/lstm_cell_80/mul_2:z:03lstm_80/while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_6?
 lstm_80/while/lstm_cell_80/add_2AddV2-lstm_80/while/lstm_cell_80/BiasAdd_2:output:0-lstm_80/while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_2?
lstm_80/while/lstm_cell_80/ReluRelu$lstm_80/while/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_80/while/lstm_cell_80/Relu?
 lstm_80/while/lstm_cell_80/mul_5Mul&lstm_80/while/lstm_cell_80/Sigmoid:y:0-lstm_80/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_5?
 lstm_80/while/lstm_cell_80/add_3AddV2$lstm_80/while/lstm_cell_80/mul_4:z:0$lstm_80/while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_3?
+lstm_80/while/lstm_cell_80/ReadVariableOp_3ReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_80/while/lstm_cell_80/ReadVariableOp_3?
0lstm_80/while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_80/while/lstm_cell_80/strided_slice_3/stack?
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_1?
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_2?
*lstm_80/while/lstm_cell_80/strided_slice_3StridedSlice3lstm_80/while/lstm_cell_80/ReadVariableOp_3:value:09lstm_80/while/lstm_cell_80/strided_slice_3/stack:output:0;lstm_80/while/lstm_cell_80/strided_slice_3/stack_1:output:0;lstm_80/while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_80/while/lstm_cell_80/strided_slice_3?
#lstm_80/while/lstm_cell_80/MatMul_7MatMul$lstm_80/while/lstm_cell_80/mul_3:z:03lstm_80/while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_7?
 lstm_80/while/lstm_cell_80/add_4AddV2-lstm_80/while/lstm_cell_80/BiasAdd_3:output:0-lstm_80/while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_4?
$lstm_80/while/lstm_cell_80/Sigmoid_2Sigmoid$lstm_80/while/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/Sigmoid_2?
!lstm_80/while/lstm_cell_80/Relu_1Relu$lstm_80/while/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_80/while/lstm_cell_80/Relu_1?
 lstm_80/while/lstm_cell_80/mul_6Mul(lstm_80/while/lstm_cell_80/Sigmoid_2:y:0/lstm_80/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_6?
2lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_80_while_placeholder_1lstm_80_while_placeholder$lstm_80/while/lstm_cell_80/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_80/while/TensorArrayV2Write/TensorListSetIteml
lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add/y?
lstm_80/while/addAddV2lstm_80_while_placeholderlstm_80/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/addp
lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add_1/y?
lstm_80/while/add_1AddV2(lstm_80_while_lstm_80_while_loop_counterlstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/add_1?
lstm_80/while/IdentityIdentitylstm_80/while/add_1:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity?
lstm_80/while/Identity_1Identity.lstm_80_while_lstm_80_while_maximum_iterations^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_1?
lstm_80/while/Identity_2Identitylstm_80/while/add:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_2?
lstm_80/while/Identity_3IdentityBlstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_3?
lstm_80/while/Identity_4Identity$lstm_80/while/lstm_cell_80/mul_6:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_80/while/Identity_4?
lstm_80/while/Identity_5Identity$lstm_80/while/lstm_cell_80/add_3:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_80/while/Identity_5?
lstm_80/while/NoOpNoOp*^lstm_80/while/lstm_cell_80/ReadVariableOp,^lstm_80/while/lstm_cell_80/ReadVariableOp_1,^lstm_80/while/lstm_cell_80/ReadVariableOp_2,^lstm_80/while/lstm_cell_80/ReadVariableOp_30^lstm_80/while/lstm_cell_80/split/ReadVariableOp2^lstm_80/while/lstm_cell_80/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_80/while/NoOp"9
lstm_80_while_identitylstm_80/while/Identity:output:0"=
lstm_80_while_identity_1!lstm_80/while/Identity_1:output:0"=
lstm_80_while_identity_2!lstm_80/while/Identity_2:output:0"=
lstm_80_while_identity_3!lstm_80/while/Identity_3:output:0"=
lstm_80_while_identity_4!lstm_80/while/Identity_4:output:0"=
lstm_80_while_identity_5!lstm_80/while/Identity_5:output:0"P
%lstm_80_while_lstm_80_strided_slice_1'lstm_80_while_lstm_80_strided_slice_1_0"j
2lstm_80_while_lstm_cell_80_readvariableop_resource4lstm_80_while_lstm_cell_80_readvariableop_resource_0"z
:lstm_80_while_lstm_cell_80_split_1_readvariableop_resource<lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0"v
8lstm_80_while_lstm_cell_80_split_readvariableop_resource:lstm_80_while_lstm_cell_80_split_readvariableop_resource_0"?
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_80/while/lstm_cell_80/ReadVariableOp)lstm_80/while/lstm_cell_80/ReadVariableOp2Z
+lstm_80/while/lstm_cell_80/ReadVariableOp_1+lstm_80/while/lstm_cell_80/ReadVariableOp_12Z
+lstm_80/while/lstm_cell_80/ReadVariableOp_2+lstm_80/while/lstm_cell_80/ReadVariableOp_22Z
+lstm_80/while/lstm_cell_80/ReadVariableOp_3+lstm_80/while/lstm_cell_80/ReadVariableOp_32b
/lstm_80/while/lstm_cell_80/split/ReadVariableOp/lstm_80/while/lstm_cell_80/split/ReadVariableOp2f
1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp: 
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
?
.__inference_lstm_cell_80_layer_call_fn_2646684

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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_26432552
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
?
?
*__inference_dense_96_layer_call_fn_2646390

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
GPU 2J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_26439502
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
c
G__inference_reshape_48_layer_call_and_return_conditional_losses_2643991

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
"__inference__wrapped_model_2642898
input_33S
@sequential_32_lstm_80_lstm_cell_80_split_readvariableop_resource:	?Q
Bsequential_32_lstm_80_lstm_cell_80_split_1_readvariableop_resource:	?M
:sequential_32_lstm_80_lstm_cell_80_readvariableop_resource:	 ?G
5sequential_32_dense_96_matmul_readvariableop_resource:  D
6sequential_32_dense_96_biasadd_readvariableop_resource: G
5sequential_32_dense_97_matmul_readvariableop_resource: D
6sequential_32_dense_97_biasadd_readvariableop_resource:
identity??-sequential_32/dense_96/BiasAdd/ReadVariableOp?,sequential_32/dense_96/MatMul/ReadVariableOp?-sequential_32/dense_97/BiasAdd/ReadVariableOp?,sequential_32/dense_97/MatMul/ReadVariableOp?1sequential_32/lstm_80/lstm_cell_80/ReadVariableOp?3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_1?3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_2?3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_3?7sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOp?9sequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOp?sequential_32/lstm_80/whiler
sequential_32/lstm_80/ShapeShapeinput_33*
T0*
_output_shapes
:2
sequential_32/lstm_80/Shape?
)sequential_32/lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_32/lstm_80/strided_slice/stack?
+sequential_32/lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_32/lstm_80/strided_slice/stack_1?
+sequential_32/lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_32/lstm_80/strided_slice/stack_2?
#sequential_32/lstm_80/strided_sliceStridedSlice$sequential_32/lstm_80/Shape:output:02sequential_32/lstm_80/strided_slice/stack:output:04sequential_32/lstm_80/strided_slice/stack_1:output:04sequential_32/lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_32/lstm_80/strided_slice?
!sequential_32/lstm_80/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_32/lstm_80/zeros/mul/y?
sequential_32/lstm_80/zeros/mulMul,sequential_32/lstm_80/strided_slice:output:0*sequential_32/lstm_80/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_32/lstm_80/zeros/mul?
"sequential_32/lstm_80/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_32/lstm_80/zeros/Less/y?
 sequential_32/lstm_80/zeros/LessLess#sequential_32/lstm_80/zeros/mul:z:0+sequential_32/lstm_80/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_32/lstm_80/zeros/Less?
$sequential_32/lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_32/lstm_80/zeros/packed/1?
"sequential_32/lstm_80/zeros/packedPack,sequential_32/lstm_80/strided_slice:output:0-sequential_32/lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_32/lstm_80/zeros/packed?
!sequential_32/lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_32/lstm_80/zeros/Const?
sequential_32/lstm_80/zerosFill+sequential_32/lstm_80/zeros/packed:output:0*sequential_32/lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_32/lstm_80/zeros?
#sequential_32/lstm_80/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_32/lstm_80/zeros_1/mul/y?
!sequential_32/lstm_80/zeros_1/mulMul,sequential_32/lstm_80/strided_slice:output:0,sequential_32/lstm_80/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_32/lstm_80/zeros_1/mul?
$sequential_32/lstm_80/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_32/lstm_80/zeros_1/Less/y?
"sequential_32/lstm_80/zeros_1/LessLess%sequential_32/lstm_80/zeros_1/mul:z:0-sequential_32/lstm_80/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_32/lstm_80/zeros_1/Less?
&sequential_32/lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_32/lstm_80/zeros_1/packed/1?
$sequential_32/lstm_80/zeros_1/packedPack,sequential_32/lstm_80/strided_slice:output:0/sequential_32/lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_32/lstm_80/zeros_1/packed?
#sequential_32/lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_32/lstm_80/zeros_1/Const?
sequential_32/lstm_80/zeros_1Fill-sequential_32/lstm_80/zeros_1/packed:output:0,sequential_32/lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_32/lstm_80/zeros_1?
$sequential_32/lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_32/lstm_80/transpose/perm?
sequential_32/lstm_80/transpose	Transposeinput_33-sequential_32/lstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_32/lstm_80/transpose?
sequential_32/lstm_80/Shape_1Shape#sequential_32/lstm_80/transpose:y:0*
T0*
_output_shapes
:2
sequential_32/lstm_80/Shape_1?
+sequential_32/lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_32/lstm_80/strided_slice_1/stack?
-sequential_32/lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_32/lstm_80/strided_slice_1/stack_1?
-sequential_32/lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_32/lstm_80/strided_slice_1/stack_2?
%sequential_32/lstm_80/strided_slice_1StridedSlice&sequential_32/lstm_80/Shape_1:output:04sequential_32/lstm_80/strided_slice_1/stack:output:06sequential_32/lstm_80/strided_slice_1/stack_1:output:06sequential_32/lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_32/lstm_80/strided_slice_1?
1sequential_32/lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_32/lstm_80/TensorArrayV2/element_shape?
#sequential_32/lstm_80/TensorArrayV2TensorListReserve:sequential_32/lstm_80/TensorArrayV2/element_shape:output:0.sequential_32/lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_32/lstm_80/TensorArrayV2?
Ksequential_32/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_32/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_32/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_32/lstm_80/transpose:y:0Tsequential_32/lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_32/lstm_80/TensorArrayUnstack/TensorListFromTensor?
+sequential_32/lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_32/lstm_80/strided_slice_2/stack?
-sequential_32/lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_32/lstm_80/strided_slice_2/stack_1?
-sequential_32/lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_32/lstm_80/strided_slice_2/stack_2?
%sequential_32/lstm_80/strided_slice_2StridedSlice#sequential_32/lstm_80/transpose:y:04sequential_32/lstm_80/strided_slice_2/stack:output:06sequential_32/lstm_80/strided_slice_2/stack_1:output:06sequential_32/lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_32/lstm_80/strided_slice_2?
2sequential_32/lstm_80/lstm_cell_80/ones_like/ShapeShape$sequential_32/lstm_80/zeros:output:0*
T0*
_output_shapes
:24
2sequential_32/lstm_80/lstm_cell_80/ones_like/Shape?
2sequential_32/lstm_80/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential_32/lstm_80/lstm_cell_80/ones_like/Const?
,sequential_32/lstm_80/lstm_cell_80/ones_likeFill;sequential_32/lstm_80/lstm_cell_80/ones_like/Shape:output:0;sequential_32/lstm_80/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/lstm_cell_80/ones_like?
2sequential_32/lstm_80/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_32/lstm_80/lstm_cell_80/split/split_dim?
7sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOpReadVariableOp@sequential_32_lstm_80_lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOp?
(sequential_32/lstm_80/lstm_cell_80/splitSplit;sequential_32/lstm_80/lstm_cell_80/split/split_dim:output:0?sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_32/lstm_80/lstm_cell_80/split?
)sequential_32/lstm_80/lstm_cell_80/MatMulMatMul.sequential_32/lstm_80/strided_slice_2:output:01sequential_32/lstm_80/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_32/lstm_80/lstm_cell_80/MatMul?
+sequential_32/lstm_80/lstm_cell_80/MatMul_1MatMul.sequential_32/lstm_80/strided_slice_2:output:01sequential_32/lstm_80/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_1?
+sequential_32/lstm_80/lstm_cell_80/MatMul_2MatMul.sequential_32/lstm_80/strided_slice_2:output:01sequential_32/lstm_80/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_2?
+sequential_32/lstm_80/lstm_cell_80/MatMul_3MatMul.sequential_32/lstm_80/strided_slice_2:output:01sequential_32/lstm_80/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_3?
4sequential_32/lstm_80/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_32/lstm_80/lstm_cell_80/split_1/split_dim?
9sequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOpReadVariableOpBsequential_32_lstm_80_lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOp?
*sequential_32/lstm_80/lstm_cell_80/split_1Split=sequential_32/lstm_80/lstm_cell_80/split_1/split_dim:output:0Asequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_32/lstm_80/lstm_cell_80/split_1?
*sequential_32/lstm_80/lstm_cell_80/BiasAddBiasAdd3sequential_32/lstm_80/lstm_cell_80/MatMul:product:03sequential_32/lstm_80/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_32/lstm_80/lstm_cell_80/BiasAdd?
,sequential_32/lstm_80/lstm_cell_80/BiasAdd_1BiasAdd5sequential_32/lstm_80/lstm_cell_80/MatMul_1:product:03sequential_32/lstm_80/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/lstm_cell_80/BiasAdd_1?
,sequential_32/lstm_80/lstm_cell_80/BiasAdd_2BiasAdd5sequential_32/lstm_80/lstm_cell_80/MatMul_2:product:03sequential_32/lstm_80/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/lstm_cell_80/BiasAdd_2?
,sequential_32/lstm_80/lstm_cell_80/BiasAdd_3BiasAdd5sequential_32/lstm_80/lstm_cell_80/MatMul_3:product:03sequential_32/lstm_80/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/lstm_cell_80/BiasAdd_3?
&sequential_32/lstm_80/lstm_cell_80/mulMul$sequential_32/lstm_80/zeros:output:05sequential_32/lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_32/lstm_80/lstm_cell_80/mul?
(sequential_32/lstm_80/lstm_cell_80/mul_1Mul$sequential_32/lstm_80/zeros:output:05sequential_32/lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/mul_1?
(sequential_32/lstm_80/lstm_cell_80/mul_2Mul$sequential_32/lstm_80/zeros:output:05sequential_32/lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/mul_2?
(sequential_32/lstm_80/lstm_cell_80/mul_3Mul$sequential_32/lstm_80/zeros:output:05sequential_32/lstm_80/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/mul_3?
1sequential_32/lstm_80/lstm_cell_80/ReadVariableOpReadVariableOp:sequential_32_lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1sequential_32/lstm_80/lstm_cell_80/ReadVariableOp?
6sequential_32/lstm_80/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_32/lstm_80/lstm_cell_80/strided_slice/stack?
8sequential_32/lstm_80/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_32/lstm_80/lstm_cell_80/strided_slice/stack_1?
8sequential_32/lstm_80/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_32/lstm_80/lstm_cell_80/strided_slice/stack_2?
0sequential_32/lstm_80/lstm_cell_80/strided_sliceStridedSlice9sequential_32/lstm_80/lstm_cell_80/ReadVariableOp:value:0?sequential_32/lstm_80/lstm_cell_80/strided_slice/stack:output:0Asequential_32/lstm_80/lstm_cell_80/strided_slice/stack_1:output:0Asequential_32/lstm_80/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_32/lstm_80/lstm_cell_80/strided_slice?
+sequential_32/lstm_80/lstm_cell_80/MatMul_4MatMul*sequential_32/lstm_80/lstm_cell_80/mul:z:09sequential_32/lstm_80/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_4?
&sequential_32/lstm_80/lstm_cell_80/addAddV23sequential_32/lstm_80/lstm_cell_80/BiasAdd:output:05sequential_32/lstm_80/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2(
&sequential_32/lstm_80/lstm_cell_80/add?
*sequential_32/lstm_80/lstm_cell_80/SigmoidSigmoid*sequential_32/lstm_80/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_32/lstm_80/lstm_cell_80/Sigmoid?
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_1ReadVariableOp:sequential_32_lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_1?
8sequential_32/lstm_80/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack?
:sequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack_1?
:sequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack_2?
2sequential_32/lstm_80/lstm_cell_80/strided_slice_1StridedSlice;sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_1:value:0Asequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack:output:0Csequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack_1:output:0Csequential_32/lstm_80/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_32/lstm_80/lstm_cell_80/strided_slice_1?
+sequential_32/lstm_80/lstm_cell_80/MatMul_5MatMul,sequential_32/lstm_80/lstm_cell_80/mul_1:z:0;sequential_32/lstm_80/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_5?
(sequential_32/lstm_80/lstm_cell_80/add_1AddV25sequential_32/lstm_80/lstm_cell_80/BiasAdd_1:output:05sequential_32/lstm_80/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/add_1?
,sequential_32/lstm_80/lstm_cell_80/Sigmoid_1Sigmoid,sequential_32/lstm_80/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/lstm_cell_80/Sigmoid_1?
(sequential_32/lstm_80/lstm_cell_80/mul_4Mul0sequential_32/lstm_80/lstm_cell_80/Sigmoid_1:y:0&sequential_32/lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/mul_4?
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_2ReadVariableOp:sequential_32_lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_2?
8sequential_32/lstm_80/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack?
:sequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack_1?
:sequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack_2?
2sequential_32/lstm_80/lstm_cell_80/strided_slice_2StridedSlice;sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_2:value:0Asequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack:output:0Csequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack_1:output:0Csequential_32/lstm_80/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_32/lstm_80/lstm_cell_80/strided_slice_2?
+sequential_32/lstm_80/lstm_cell_80/MatMul_6MatMul,sequential_32/lstm_80/lstm_cell_80/mul_2:z:0;sequential_32/lstm_80/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_6?
(sequential_32/lstm_80/lstm_cell_80/add_2AddV25sequential_32/lstm_80/lstm_cell_80/BiasAdd_2:output:05sequential_32/lstm_80/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/add_2?
'sequential_32/lstm_80/lstm_cell_80/ReluRelu,sequential_32/lstm_80/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_32/lstm_80/lstm_cell_80/Relu?
(sequential_32/lstm_80/lstm_cell_80/mul_5Mul.sequential_32/lstm_80/lstm_cell_80/Sigmoid:y:05sequential_32/lstm_80/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/mul_5?
(sequential_32/lstm_80/lstm_cell_80/add_3AddV2,sequential_32/lstm_80/lstm_cell_80/mul_4:z:0,sequential_32/lstm_80/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/add_3?
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_3ReadVariableOp:sequential_32_lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_3?
8sequential_32/lstm_80/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack?
:sequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack_1?
:sequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack_2?
2sequential_32/lstm_80/lstm_cell_80/strided_slice_3StridedSlice;sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_3:value:0Asequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack:output:0Csequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack_1:output:0Csequential_32/lstm_80/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_32/lstm_80/lstm_cell_80/strided_slice_3?
+sequential_32/lstm_80/lstm_cell_80/MatMul_7MatMul,sequential_32/lstm_80/lstm_cell_80/mul_3:z:0;sequential_32/lstm_80/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_32/lstm_80/lstm_cell_80/MatMul_7?
(sequential_32/lstm_80/lstm_cell_80/add_4AddV25sequential_32/lstm_80/lstm_cell_80/BiasAdd_3:output:05sequential_32/lstm_80/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/add_4?
,sequential_32/lstm_80/lstm_cell_80/Sigmoid_2Sigmoid,sequential_32/lstm_80/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/lstm_cell_80/Sigmoid_2?
)sequential_32/lstm_80/lstm_cell_80/Relu_1Relu,sequential_32/lstm_80/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_32/lstm_80/lstm_cell_80/Relu_1?
(sequential_32/lstm_80/lstm_cell_80/mul_6Mul0sequential_32/lstm_80/lstm_cell_80/Sigmoid_2:y:07sequential_32/lstm_80/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_32/lstm_80/lstm_cell_80/mul_6?
3sequential_32/lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    25
3sequential_32/lstm_80/TensorArrayV2_1/element_shape?
%sequential_32/lstm_80/TensorArrayV2_1TensorListReserve<sequential_32/lstm_80/TensorArrayV2_1/element_shape:output:0.sequential_32/lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_32/lstm_80/TensorArrayV2_1z
sequential_32/lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_32/lstm_80/time?
.sequential_32/lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_32/lstm_80/while/maximum_iterations?
(sequential_32/lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_32/lstm_80/while/loop_counter?
sequential_32/lstm_80/whileWhile1sequential_32/lstm_80/while/loop_counter:output:07sequential_32/lstm_80/while/maximum_iterations:output:0#sequential_32/lstm_80/time:output:0.sequential_32/lstm_80/TensorArrayV2_1:handle:0$sequential_32/lstm_80/zeros:output:0&sequential_32/lstm_80/zeros_1:output:0.sequential_32/lstm_80/strided_slice_1:output:0Msequential_32/lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_32_lstm_80_lstm_cell_80_split_readvariableop_resourceBsequential_32_lstm_80_lstm_cell_80_split_1_readvariableop_resource:sequential_32_lstm_80_lstm_cell_80_readvariableop_resource*
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
(sequential_32_lstm_80_while_body_2642749*4
cond,R*
(sequential_32_lstm_80_while_cond_2642748*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_32/lstm_80/while?
Fsequential_32/lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fsequential_32/lstm_80/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_32/lstm_80/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_32/lstm_80/while:output:3Osequential_32/lstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02:
8sequential_32/lstm_80/TensorArrayV2Stack/TensorListStack?
+sequential_32/lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_32/lstm_80/strided_slice_3/stack?
-sequential_32/lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_32/lstm_80/strided_slice_3/stack_1?
-sequential_32/lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_32/lstm_80/strided_slice_3/stack_2?
%sequential_32/lstm_80/strided_slice_3StridedSliceAsequential_32/lstm_80/TensorArrayV2Stack/TensorListStack:tensor:04sequential_32/lstm_80/strided_slice_3/stack:output:06sequential_32/lstm_80/strided_slice_3/stack_1:output:06sequential_32/lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2'
%sequential_32/lstm_80/strided_slice_3?
&sequential_32/lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_32/lstm_80/transpose_1/perm?
!sequential_32/lstm_80/transpose_1	TransposeAsequential_32/lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_32/lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2#
!sequential_32/lstm_80/transpose_1?
sequential_32/lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_32/lstm_80/runtime?
,sequential_32/dense_96/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_96_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_32/dense_96/MatMul/ReadVariableOp?
sequential_32/dense_96/MatMulMatMul.sequential_32/lstm_80/strided_slice_3:output:04sequential_32/dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_32/dense_96/MatMul?
-sequential_32/dense_96/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_96_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_32/dense_96/BiasAdd/ReadVariableOp?
sequential_32/dense_96/BiasAddBiasAdd'sequential_32/dense_96/MatMul:product:05sequential_32/dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_32/dense_96/BiasAdd?
sequential_32/dense_96/ReluRelu'sequential_32/dense_96/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_32/dense_96/Relu?
,sequential_32/dense_97/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_97_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_32/dense_97/MatMul/ReadVariableOp?
sequential_32/dense_97/MatMulMatMul)sequential_32/dense_96/Relu:activations:04sequential_32/dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_32/dense_97/MatMul?
-sequential_32/dense_97/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_97/BiasAdd/ReadVariableOp?
sequential_32/dense_97/BiasAddBiasAdd'sequential_32/dense_97/MatMul:product:05sequential_32/dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_32/dense_97/BiasAdd?
sequential_32/reshape_48/ShapeShape'sequential_32/dense_97/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_32/reshape_48/Shape?
,sequential_32/reshape_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_32/reshape_48/strided_slice/stack?
.sequential_32/reshape_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_32/reshape_48/strided_slice/stack_1?
.sequential_32/reshape_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_32/reshape_48/strided_slice/stack_2?
&sequential_32/reshape_48/strided_sliceStridedSlice'sequential_32/reshape_48/Shape:output:05sequential_32/reshape_48/strided_slice/stack:output:07sequential_32/reshape_48/strided_slice/stack_1:output:07sequential_32/reshape_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_32/reshape_48/strided_slice?
(sequential_32/reshape_48/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_32/reshape_48/Reshape/shape/1?
(sequential_32/reshape_48/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_32/reshape_48/Reshape/shape/2?
&sequential_32/reshape_48/Reshape/shapePack/sequential_32/reshape_48/strided_slice:output:01sequential_32/reshape_48/Reshape/shape/1:output:01sequential_32/reshape_48/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_32/reshape_48/Reshape/shape?
 sequential_32/reshape_48/ReshapeReshape'sequential_32/dense_97/BiasAdd:output:0/sequential_32/reshape_48/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_32/reshape_48/Reshape?
IdentityIdentity)sequential_32/reshape_48/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp.^sequential_32/dense_96/BiasAdd/ReadVariableOp-^sequential_32/dense_96/MatMul/ReadVariableOp.^sequential_32/dense_97/BiasAdd/ReadVariableOp-^sequential_32/dense_97/MatMul/ReadVariableOp2^sequential_32/lstm_80/lstm_cell_80/ReadVariableOp4^sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_14^sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_24^sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_38^sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOp:^sequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOp^sequential_32/lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2^
-sequential_32/dense_96/BiasAdd/ReadVariableOp-sequential_32/dense_96/BiasAdd/ReadVariableOp2\
,sequential_32/dense_96/MatMul/ReadVariableOp,sequential_32/dense_96/MatMul/ReadVariableOp2^
-sequential_32/dense_97/BiasAdd/ReadVariableOp-sequential_32/dense_97/BiasAdd/ReadVariableOp2\
,sequential_32/dense_97/MatMul/ReadVariableOp,sequential_32/dense_97/MatMul/ReadVariableOp2f
1sequential_32/lstm_80/lstm_cell_80/ReadVariableOp1sequential_32/lstm_80/lstm_cell_80/ReadVariableOp2j
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_13sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_12j
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_23sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_22j
3sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_33sequential_32/lstm_80/lstm_cell_80/ReadVariableOp_32r
7sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOp7sequential_32/lstm_80/lstm_cell_80/split/ReadVariableOp2v
9sequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOp9sequential_32/lstm_80/lstm_cell_80/split_1/ReadVariableOp2:
sequential_32/lstm_80/whilesequential_32/lstm_80/while:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_33
?+
?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644503
input_33"
lstm_80_2644472:	?
lstm_80_2644474:	?"
lstm_80_2644476:	 ?"
dense_96_2644479:  
dense_96_2644481: "
dense_97_2644484: 
dense_97_2644486:
identity?? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?/dense_97/bias/Regularizer/Square/ReadVariableOp?lstm_80/StatefulPartitionedCall?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
lstm_80/StatefulPartitionedCallStatefulPartitionedCallinput_33lstm_80_2644472lstm_80_2644474lstm_80_2644476*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26439312!
lstm_80/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_96_2644479dense_96_2644481*
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
GPU 2J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_26439502"
 dense_96/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_2644484dense_97_2644486*
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
GPU 2J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_26439722"
 dense_97/StatefulPartitionedCall?
reshape_48/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_26439912
reshape_48/PartitionedCall?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_80_2644472*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/mul?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_97_2644486*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mul?
IdentityIdentity#reshape_48/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall0^dense_97/bias/Regularizer/Square/ReadVariableOp ^lstm_80/StatefulPartitionedCall>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_33
??
?	
while_body_2645930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_80_split_readvariableop_resource_0:	?C
4while_lstm_cell_80_split_1_readvariableop_resource_0:	??
,while_lstm_cell_80_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_80_split_readvariableop_resource:	?A
2while_lstm_cell_80_split_1_readvariableop_resource:	?=
*while_lstm_cell_80_readvariableop_resource:	 ???!while/lstm_cell_80/ReadVariableOp?#while/lstm_cell_80/ReadVariableOp_1?#while/lstm_cell_80/ReadVariableOp_2?#while/lstm_cell_80/ReadVariableOp_3?'while/lstm_cell_80/split/ReadVariableOp?)while/lstm_cell_80/split_1/ReadVariableOp?
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
"while/lstm_cell_80/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_80/ones_like/Shape?
"while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_80/ones_like/Const?
while/lstm_cell_80/ones_likeFill+while/lstm_cell_80/ones_like/Shape:output:0+while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/ones_like?
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim?
'while/lstm_cell_80/split/ReadVariableOpReadVariableOp2while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_80/split/ReadVariableOp?
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_80/split?
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul?
while/lstm_cell_80/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_1?
while/lstm_cell_80/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_2?
while/lstm_cell_80/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_3?
$while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_80/split_1/split_dim?
)while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_80/split_1/ReadVariableOp?
while/lstm_cell_80/split_1Split-while/lstm_cell_80/split_1/split_dim:output:01while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_80/split_1?
while/lstm_cell_80/BiasAddBiasAdd#while/lstm_cell_80/MatMul:product:0#while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd?
while/lstm_cell_80/BiasAdd_1BiasAdd%while/lstm_cell_80/MatMul_1:product:0#while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_1?
while/lstm_cell_80/BiasAdd_2BiasAdd%while/lstm_cell_80/MatMul_2:product:0#while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_2?
while/lstm_cell_80/BiasAdd_3BiasAdd%while/lstm_cell_80/MatMul_3:product:0#while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_3?
while/lstm_cell_80/mulMulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul?
while/lstm_cell_80/mul_1Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_1?
while/lstm_cell_80/mul_2Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_2?
while/lstm_cell_80/mul_3Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_3?
!while/lstm_cell_80/ReadVariableOpReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_80/ReadVariableOp?
&while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_80/strided_slice/stack?
(while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice/stack_1?
(while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_80/strided_slice/stack_2?
 while/lstm_cell_80/strided_sliceStridedSlice)while/lstm_cell_80/ReadVariableOp:value:0/while/lstm_cell_80/strided_slice/stack:output:01while/lstm_cell_80/strided_slice/stack_1:output:01while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_80/strided_slice?
while/lstm_cell_80/MatMul_4MatMulwhile/lstm_cell_80/mul:z:0)while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_4?
while/lstm_cell_80/addAddV2#while/lstm_cell_80/BiasAdd:output:0%while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add?
while/lstm_cell_80/SigmoidSigmoidwhile/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid?
#while/lstm_cell_80/ReadVariableOp_1ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_1?
(while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice_1/stack?
*while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_80/strided_slice_1/stack_1?
*while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_1/stack_2?
"while/lstm_cell_80/strided_slice_1StridedSlice+while/lstm_cell_80/ReadVariableOp_1:value:01while/lstm_cell_80/strided_slice_1/stack:output:03while/lstm_cell_80/strided_slice_1/stack_1:output:03while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_1?
while/lstm_cell_80/MatMul_5MatMulwhile/lstm_cell_80/mul_1:z:0+while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_5?
while/lstm_cell_80/add_1AddV2%while/lstm_cell_80/BiasAdd_1:output:0%while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_1?
while/lstm_cell_80/Sigmoid_1Sigmoidwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_1?
while/lstm_cell_80/mul_4Mul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_4?
#while/lstm_cell_80/ReadVariableOp_2ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_2?
(while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_80/strided_slice_2/stack?
*while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_80/strided_slice_2/stack_1?
*while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_2/stack_2?
"while/lstm_cell_80/strided_slice_2StridedSlice+while/lstm_cell_80/ReadVariableOp_2:value:01while/lstm_cell_80/strided_slice_2/stack:output:03while/lstm_cell_80/strided_slice_2/stack_1:output:03while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_2?
while/lstm_cell_80/MatMul_6MatMulwhile/lstm_cell_80/mul_2:z:0+while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_6?
while/lstm_cell_80/add_2AddV2%while/lstm_cell_80/BiasAdd_2:output:0%while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_2?
while/lstm_cell_80/ReluReluwhile/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu?
while/lstm_cell_80/mul_5Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_5?
while/lstm_cell_80/add_3AddV2while/lstm_cell_80/mul_4:z:0while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_3?
#while/lstm_cell_80/ReadVariableOp_3ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_3?
(while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_80/strided_slice_3/stack?
*while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_80/strided_slice_3/stack_1?
*while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_3/stack_2?
"while/lstm_cell_80/strided_slice_3StridedSlice+while/lstm_cell_80/ReadVariableOp_3:value:01while/lstm_cell_80/strided_slice_3/stack:output:03while/lstm_cell_80/strided_slice_3/stack_1:output:03while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_3?
while/lstm_cell_80/MatMul_7MatMulwhile/lstm_cell_80/mul_3:z:0+while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_7?
while/lstm_cell_80/add_4AddV2%while/lstm_cell_80/BiasAdd_3:output:0%while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_4?
while/lstm_cell_80/Sigmoid_2Sigmoidwhile/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_2?
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu_1?
while/lstm_cell_80/mul_6Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_80/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_80/ReadVariableOp$^while/lstm_cell_80/ReadVariableOp_1$^while/lstm_cell_80/ReadVariableOp_2$^while/lstm_cell_80/ReadVariableOp_3(^while/lstm_cell_80/split/ReadVariableOp*^while/lstm_cell_80/split_1/ReadVariableOp*"
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
*while_lstm_cell_80_readvariableop_resource,while_lstm_cell_80_readvariableop_resource_0"j
2while_lstm_cell_80_split_1_readvariableop_resource4while_lstm_cell_80_split_1_readvariableop_resource_0"f
0while_lstm_cell_80_split_readvariableop_resource2while_lstm_cell_80_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_80/ReadVariableOp!while/lstm_cell_80/ReadVariableOp2J
#while/lstm_cell_80/ReadVariableOp_1#while/lstm_cell_80/ReadVariableOp_12J
#while/lstm_cell_80/ReadVariableOp_2#while/lstm_cell_80/ReadVariableOp_22J
#while/lstm_cell_80/ReadVariableOp_3#while/lstm_cell_80/ReadVariableOp_32R
'while/lstm_cell_80/split/ReadVariableOp'while/lstm_cell_80/split/ReadVariableOp2V
)while/lstm_cell_80/split_1/ReadVariableOp)while/lstm_cell_80/split_1/ReadVariableOp: 
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2646370

inputs=
*lstm_cell_80_split_readvariableop_resource:	?;
,lstm_cell_80_split_1_readvariableop_resource:	?7
$lstm_cell_80_readvariableop_resource:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_80/ReadVariableOp?lstm_cell_80/ReadVariableOp_1?lstm_cell_80/ReadVariableOp_2?lstm_cell_80/ReadVariableOp_3?!lstm_cell_80/split/ReadVariableOp?#lstm_cell_80/split_1/ReadVariableOp?whileD
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
lstm_cell_80/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_80/ones_like/Shape?
lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_80/ones_like/Const?
lstm_cell_80/ones_likeFill%lstm_cell_80/ones_like/Shape:output:0%lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/ones_like}
lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout/Const?
lstm_cell_80/dropout/MulMullstm_cell_80/ones_like:output:0#lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Mul?
lstm_cell_80/dropout/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout/Shape?
1lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?؊23
1lstm_cell_80/dropout/random_uniform/RandomUniform?
#lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_80/dropout/GreaterEqual/y?
!lstm_cell_80/dropout/GreaterEqualGreaterEqual:lstm_cell_80/dropout/random_uniform/RandomUniform:output:0,lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_80/dropout/GreaterEqual?
lstm_cell_80/dropout/CastCast%lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Cast?
lstm_cell_80/dropout/Mul_1Mullstm_cell_80/dropout/Mul:z:0lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Mul_1?
lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_1/Const?
lstm_cell_80/dropout_1/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Mul?
lstm_cell_80/dropout_1/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_1/Shape?
3lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2݁'25
3lstm_cell_80/dropout_1/random_uniform/RandomUniform?
%lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_1/GreaterEqual/y?
#lstm_cell_80/dropout_1/GreaterEqualGreaterEqual<lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_1/GreaterEqual?
lstm_cell_80/dropout_1/CastCast'lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Cast?
lstm_cell_80/dropout_1/Mul_1Mullstm_cell_80/dropout_1/Mul:z:0lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Mul_1?
lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_2/Const?
lstm_cell_80/dropout_2/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Mul?
lstm_cell_80/dropout_2/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_2/Shape?
3lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_80/dropout_2/random_uniform/RandomUniform?
%lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_2/GreaterEqual/y?
#lstm_cell_80/dropout_2/GreaterEqualGreaterEqual<lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_2/GreaterEqual?
lstm_cell_80/dropout_2/CastCast'lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Cast?
lstm_cell_80/dropout_2/Mul_1Mullstm_cell_80/dropout_2/Mul:z:0lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Mul_1?
lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_3/Const?
lstm_cell_80/dropout_3/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Mul?
lstm_cell_80/dropout_3/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_3/Shape?
3lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_80/dropout_3/random_uniform/RandomUniform?
%lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_3/GreaterEqual/y?
#lstm_cell_80/dropout_3/GreaterEqualGreaterEqual<lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_3/GreaterEqual?
lstm_cell_80/dropout_3/CastCast'lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Cast?
lstm_cell_80/dropout_3/Mul_1Mullstm_cell_80/dropout_3/Mul:z:0lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Mul_1~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim?
!lstm_cell_80/split/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_80/split/ReadVariableOp?
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0)lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_80/split?
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul?
lstm_cell_80/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_1?
lstm_cell_80/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_2?
lstm_cell_80/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_3?
lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_80/split_1/split_dim?
#lstm_cell_80/split_1/ReadVariableOpReadVariableOp,lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_80/split_1/ReadVariableOp?
lstm_cell_80/split_1Split'lstm_cell_80/split_1/split_dim:output:0+lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_80/split_1?
lstm_cell_80/BiasAddBiasAddlstm_cell_80/MatMul:product:0lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd?
lstm_cell_80/BiasAdd_1BiasAddlstm_cell_80/MatMul_1:product:0lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_1?
lstm_cell_80/BiasAdd_2BiasAddlstm_cell_80/MatMul_2:product:0lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_2?
lstm_cell_80/BiasAdd_3BiasAddlstm_cell_80/MatMul_3:product:0lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_3?
lstm_cell_80/mulMulzeros:output:0lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul?
lstm_cell_80/mul_1Mulzeros:output:0 lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_1?
lstm_cell_80/mul_2Mulzeros:output:0 lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_2?
lstm_cell_80/mul_3Mulzeros:output:0 lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_3?
lstm_cell_80/ReadVariableOpReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp?
 lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_80/strided_slice/stack?
"lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice/stack_1?
"lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_80/strided_slice/stack_2?
lstm_cell_80/strided_sliceStridedSlice#lstm_cell_80/ReadVariableOp:value:0)lstm_cell_80/strided_slice/stack:output:0+lstm_cell_80/strided_slice/stack_1:output:0+lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice?
lstm_cell_80/MatMul_4MatMullstm_cell_80/mul:z:0#lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_4?
lstm_cell_80/addAddV2lstm_cell_80/BiasAdd:output:0lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add
lstm_cell_80/SigmoidSigmoidlstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid?
lstm_cell_80/ReadVariableOp_1ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_1?
"lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice_1/stack?
$lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_80/strided_slice_1/stack_1?
$lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_1/stack_2?
lstm_cell_80/strided_slice_1StridedSlice%lstm_cell_80/ReadVariableOp_1:value:0+lstm_cell_80/strided_slice_1/stack:output:0-lstm_cell_80/strided_slice_1/stack_1:output:0-lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_1?
lstm_cell_80/MatMul_5MatMullstm_cell_80/mul_1:z:0%lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_5?
lstm_cell_80/add_1AddV2lstm_cell_80/BiasAdd_1:output:0lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_1?
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_1?
lstm_cell_80/mul_4Mullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_4?
lstm_cell_80/ReadVariableOp_2ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_2?
"lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_80/strided_slice_2/stack?
$lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_80/strided_slice_2/stack_1?
$lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_2/stack_2?
lstm_cell_80/strided_slice_2StridedSlice%lstm_cell_80/ReadVariableOp_2:value:0+lstm_cell_80/strided_slice_2/stack:output:0-lstm_cell_80/strided_slice_2/stack_1:output:0-lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_2?
lstm_cell_80/MatMul_6MatMullstm_cell_80/mul_2:z:0%lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_6?
lstm_cell_80/add_2AddV2lstm_cell_80/BiasAdd_2:output:0lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_2x
lstm_cell_80/ReluRelulstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu?
lstm_cell_80/mul_5Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_5?
lstm_cell_80/add_3AddV2lstm_cell_80/mul_4:z:0lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_3?
lstm_cell_80/ReadVariableOp_3ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_3?
"lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_80/strided_slice_3/stack?
$lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_80/strided_slice_3/stack_1?
$lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_3/stack_2?
lstm_cell_80/strided_slice_3StridedSlice%lstm_cell_80/ReadVariableOp_3:value:0+lstm_cell_80/strided_slice_3/stack:output:0-lstm_cell_80/strided_slice_3/stack_1:output:0-lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_3?
lstm_cell_80/MatMul_7MatMullstm_cell_80/mul_3:z:0%lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_7?
lstm_cell_80/add_4AddV2lstm_cell_80/BiasAdd_3:output:0lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_4?
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu_1?
lstm_cell_80/mul_6Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_80_split_readvariableop_resource,lstm_cell_80_split_1_readvariableop_resource$lstm_cell_80_readvariableop_resource*
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
while_body_2646205*
condR
while_cond_2646204*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_80/ReadVariableOp^lstm_cell_80/ReadVariableOp_1^lstm_cell_80/ReadVariableOp_2^lstm_cell_80/ReadVariableOp_3"^lstm_cell_80/split/ReadVariableOp$^lstm_cell_80/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_80/ReadVariableOplstm_cell_80/ReadVariableOp2>
lstm_cell_80/ReadVariableOp_1lstm_cell_80/ReadVariableOp_12>
lstm_cell_80/ReadVariableOp_2lstm_cell_80/ReadVariableOp_22>
lstm_cell_80/ReadVariableOp_3lstm_cell_80/ReadVariableOp_32F
!lstm_cell_80/split/ReadVariableOp!lstm_cell_80/split/ReadVariableOp2J
#lstm_cell_80/split_1/ReadVariableOp#lstm_cell_80/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_97_layer_call_fn_2646421

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
GPU 2J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_26439722
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
while_cond_2643332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643332___redundant_placeholder05
1while_while_cond_2643332___redundant_placeholder15
1while_while_cond_2643332___redundant_placeholder25
1while_while_cond_2643332___redundant_placeholder3
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
E__inference_dense_96_layer_call_and_return_conditional_losses_2646381

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
)__inference_lstm_80_layer_call_fn_2645259

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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26439312
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
?
D__inference_lstm_80_layer_call_and_return_conditional_losses_2645513
inputs_0=
*lstm_cell_80_split_readvariableop_resource:	?;
,lstm_cell_80_split_1_readvariableop_resource:	?7
$lstm_cell_80_readvariableop_resource:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_80/ReadVariableOp?lstm_cell_80/ReadVariableOp_1?lstm_cell_80/ReadVariableOp_2?lstm_cell_80/ReadVariableOp_3?!lstm_cell_80/split/ReadVariableOp?#lstm_cell_80/split_1/ReadVariableOp?whileF
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
lstm_cell_80/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_80/ones_like/Shape?
lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_80/ones_like/Const?
lstm_cell_80/ones_likeFill%lstm_cell_80/ones_like/Shape:output:0%lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/ones_like~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim?
!lstm_cell_80/split/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_80/split/ReadVariableOp?
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0)lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_80/split?
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul?
lstm_cell_80/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_1?
lstm_cell_80/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_2?
lstm_cell_80/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_3?
lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_80/split_1/split_dim?
#lstm_cell_80/split_1/ReadVariableOpReadVariableOp,lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_80/split_1/ReadVariableOp?
lstm_cell_80/split_1Split'lstm_cell_80/split_1/split_dim:output:0+lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_80/split_1?
lstm_cell_80/BiasAddBiasAddlstm_cell_80/MatMul:product:0lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd?
lstm_cell_80/BiasAdd_1BiasAddlstm_cell_80/MatMul_1:product:0lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_1?
lstm_cell_80/BiasAdd_2BiasAddlstm_cell_80/MatMul_2:product:0lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_2?
lstm_cell_80/BiasAdd_3BiasAddlstm_cell_80/MatMul_3:product:0lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_3?
lstm_cell_80/mulMulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul?
lstm_cell_80/mul_1Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_1?
lstm_cell_80/mul_2Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_2?
lstm_cell_80/mul_3Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_3?
lstm_cell_80/ReadVariableOpReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp?
 lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_80/strided_slice/stack?
"lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice/stack_1?
"lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_80/strided_slice/stack_2?
lstm_cell_80/strided_sliceStridedSlice#lstm_cell_80/ReadVariableOp:value:0)lstm_cell_80/strided_slice/stack:output:0+lstm_cell_80/strided_slice/stack_1:output:0+lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice?
lstm_cell_80/MatMul_4MatMullstm_cell_80/mul:z:0#lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_4?
lstm_cell_80/addAddV2lstm_cell_80/BiasAdd:output:0lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add
lstm_cell_80/SigmoidSigmoidlstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid?
lstm_cell_80/ReadVariableOp_1ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_1?
"lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice_1/stack?
$lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_80/strided_slice_1/stack_1?
$lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_1/stack_2?
lstm_cell_80/strided_slice_1StridedSlice%lstm_cell_80/ReadVariableOp_1:value:0+lstm_cell_80/strided_slice_1/stack:output:0-lstm_cell_80/strided_slice_1/stack_1:output:0-lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_1?
lstm_cell_80/MatMul_5MatMullstm_cell_80/mul_1:z:0%lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_5?
lstm_cell_80/add_1AddV2lstm_cell_80/BiasAdd_1:output:0lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_1?
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_1?
lstm_cell_80/mul_4Mullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_4?
lstm_cell_80/ReadVariableOp_2ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_2?
"lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_80/strided_slice_2/stack?
$lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_80/strided_slice_2/stack_1?
$lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_2/stack_2?
lstm_cell_80/strided_slice_2StridedSlice%lstm_cell_80/ReadVariableOp_2:value:0+lstm_cell_80/strided_slice_2/stack:output:0-lstm_cell_80/strided_slice_2/stack_1:output:0-lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_2?
lstm_cell_80/MatMul_6MatMullstm_cell_80/mul_2:z:0%lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_6?
lstm_cell_80/add_2AddV2lstm_cell_80/BiasAdd_2:output:0lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_2x
lstm_cell_80/ReluRelulstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu?
lstm_cell_80/mul_5Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_5?
lstm_cell_80/add_3AddV2lstm_cell_80/mul_4:z:0lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_3?
lstm_cell_80/ReadVariableOp_3ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_3?
"lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_80/strided_slice_3/stack?
$lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_80/strided_slice_3/stack_1?
$lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_3/stack_2?
lstm_cell_80/strided_slice_3StridedSlice%lstm_cell_80/ReadVariableOp_3:value:0+lstm_cell_80/strided_slice_3/stack:output:0-lstm_cell_80/strided_slice_3/stack_1:output:0-lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_3?
lstm_cell_80/MatMul_7MatMullstm_cell_80/mul_3:z:0%lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_7?
lstm_cell_80/add_4AddV2lstm_cell_80/BiasAdd_3:output:0lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_4?
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu_1?
lstm_cell_80/mul_6Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_80_split_readvariableop_resource,lstm_cell_80_split_1_readvariableop_resource$lstm_cell_80_readvariableop_resource*
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
while_body_2645380*
condR
while_cond_2645379*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_80/ReadVariableOp^lstm_cell_80/ReadVariableOp_1^lstm_cell_80/ReadVariableOp_2^lstm_cell_80/ReadVariableOp_3"^lstm_cell_80/split/ReadVariableOp$^lstm_cell_80/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_80/ReadVariableOplstm_cell_80/ReadVariableOp2>
lstm_cell_80/ReadVariableOp_1lstm_cell_80/ReadVariableOp_12>
lstm_cell_80/ReadVariableOp_2lstm_cell_80/ReadVariableOp_22>
lstm_cell_80/ReadVariableOp_3lstm_cell_80/ReadVariableOp_32F
!lstm_cell_80/split/ReadVariableOp!lstm_cell_80/split/ReadVariableOp2J
#lstm_cell_80/split_1/ReadVariableOp#lstm_cell_80/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?+
?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644537
input_33"
lstm_80_2644506:	?
lstm_80_2644508:	?"
lstm_80_2644510:	 ?"
dense_96_2644513:  
dense_96_2644515: "
dense_97_2644518: 
dense_97_2644520:
identity?? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?/dense_97/bias/Regularizer/Square/ReadVariableOp?lstm_80/StatefulPartitionedCall?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
lstm_80/StatefulPartitionedCallStatefulPartitionedCallinput_33lstm_80_2644506lstm_80_2644508lstm_80_2644510*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26443692!
lstm_80/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_96_2644513dense_96_2644515*
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
GPU 2J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_26439502"
 dense_96/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_2644518dense_97_2644520*
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
GPU 2J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_26439722"
 dense_97/StatefulPartitionedCall?
reshape_48/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_26439912
reshape_48/PartitionedCall?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_80_2644506*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/mul?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_97_2644520*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mul?
IdentityIdentity#reshape_48/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall0^dense_97/bias/Regularizer/Square/ReadVariableOp ^lstm_80/StatefulPartitionedCall>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_33
??
?
D__inference_lstm_80_layer_call_and_return_conditional_losses_2645820
inputs_0=
*lstm_cell_80_split_readvariableop_resource:	?;
,lstm_cell_80_split_1_readvariableop_resource:	?7
$lstm_cell_80_readvariableop_resource:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_80/ReadVariableOp?lstm_cell_80/ReadVariableOp_1?lstm_cell_80/ReadVariableOp_2?lstm_cell_80/ReadVariableOp_3?!lstm_cell_80/split/ReadVariableOp?#lstm_cell_80/split_1/ReadVariableOp?whileF
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
lstm_cell_80/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_80/ones_like/Shape?
lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_80/ones_like/Const?
lstm_cell_80/ones_likeFill%lstm_cell_80/ones_like/Shape:output:0%lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/ones_like}
lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout/Const?
lstm_cell_80/dropout/MulMullstm_cell_80/ones_like:output:0#lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Mul?
lstm_cell_80/dropout/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout/Shape?
1lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_80/dropout/random_uniform/RandomUniform?
#lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_80/dropout/GreaterEqual/y?
!lstm_cell_80/dropout/GreaterEqualGreaterEqual:lstm_cell_80/dropout/random_uniform/RandomUniform:output:0,lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_80/dropout/GreaterEqual?
lstm_cell_80/dropout/CastCast%lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Cast?
lstm_cell_80/dropout/Mul_1Mullstm_cell_80/dropout/Mul:z:0lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Mul_1?
lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_1/Const?
lstm_cell_80/dropout_1/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Mul?
lstm_cell_80/dropout_1/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_1/Shape?
3lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?Ξ25
3lstm_cell_80/dropout_1/random_uniform/RandomUniform?
%lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_1/GreaterEqual/y?
#lstm_cell_80/dropout_1/GreaterEqualGreaterEqual<lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_1/GreaterEqual?
lstm_cell_80/dropout_1/CastCast'lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Cast?
lstm_cell_80/dropout_1/Mul_1Mullstm_cell_80/dropout_1/Mul:z:0lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Mul_1?
lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_2/Const?
lstm_cell_80/dropout_2/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Mul?
lstm_cell_80/dropout_2/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_2/Shape?
3lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2܉?25
3lstm_cell_80/dropout_2/random_uniform/RandomUniform?
%lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_2/GreaterEqual/y?
#lstm_cell_80/dropout_2/GreaterEqualGreaterEqual<lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_2/GreaterEqual?
lstm_cell_80/dropout_2/CastCast'lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Cast?
lstm_cell_80/dropout_2/Mul_1Mullstm_cell_80/dropout_2/Mul:z:0lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Mul_1?
lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_3/Const?
lstm_cell_80/dropout_3/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Mul?
lstm_cell_80/dropout_3/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_3/Shape?
3lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??/25
3lstm_cell_80/dropout_3/random_uniform/RandomUniform?
%lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_3/GreaterEqual/y?
#lstm_cell_80/dropout_3/GreaterEqualGreaterEqual<lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_3/GreaterEqual?
lstm_cell_80/dropout_3/CastCast'lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Cast?
lstm_cell_80/dropout_3/Mul_1Mullstm_cell_80/dropout_3/Mul:z:0lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Mul_1~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim?
!lstm_cell_80/split/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_80/split/ReadVariableOp?
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0)lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_80/split?
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul?
lstm_cell_80/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_1?
lstm_cell_80/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_2?
lstm_cell_80/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_3?
lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_80/split_1/split_dim?
#lstm_cell_80/split_1/ReadVariableOpReadVariableOp,lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_80/split_1/ReadVariableOp?
lstm_cell_80/split_1Split'lstm_cell_80/split_1/split_dim:output:0+lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_80/split_1?
lstm_cell_80/BiasAddBiasAddlstm_cell_80/MatMul:product:0lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd?
lstm_cell_80/BiasAdd_1BiasAddlstm_cell_80/MatMul_1:product:0lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_1?
lstm_cell_80/BiasAdd_2BiasAddlstm_cell_80/MatMul_2:product:0lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_2?
lstm_cell_80/BiasAdd_3BiasAddlstm_cell_80/MatMul_3:product:0lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_3?
lstm_cell_80/mulMulzeros:output:0lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul?
lstm_cell_80/mul_1Mulzeros:output:0 lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_1?
lstm_cell_80/mul_2Mulzeros:output:0 lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_2?
lstm_cell_80/mul_3Mulzeros:output:0 lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_3?
lstm_cell_80/ReadVariableOpReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp?
 lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_80/strided_slice/stack?
"lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice/stack_1?
"lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_80/strided_slice/stack_2?
lstm_cell_80/strided_sliceStridedSlice#lstm_cell_80/ReadVariableOp:value:0)lstm_cell_80/strided_slice/stack:output:0+lstm_cell_80/strided_slice/stack_1:output:0+lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice?
lstm_cell_80/MatMul_4MatMullstm_cell_80/mul:z:0#lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_4?
lstm_cell_80/addAddV2lstm_cell_80/BiasAdd:output:0lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add
lstm_cell_80/SigmoidSigmoidlstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid?
lstm_cell_80/ReadVariableOp_1ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_1?
"lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice_1/stack?
$lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_80/strided_slice_1/stack_1?
$lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_1/stack_2?
lstm_cell_80/strided_slice_1StridedSlice%lstm_cell_80/ReadVariableOp_1:value:0+lstm_cell_80/strided_slice_1/stack:output:0-lstm_cell_80/strided_slice_1/stack_1:output:0-lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_1?
lstm_cell_80/MatMul_5MatMullstm_cell_80/mul_1:z:0%lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_5?
lstm_cell_80/add_1AddV2lstm_cell_80/BiasAdd_1:output:0lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_1?
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_1?
lstm_cell_80/mul_4Mullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_4?
lstm_cell_80/ReadVariableOp_2ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_2?
"lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_80/strided_slice_2/stack?
$lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_80/strided_slice_2/stack_1?
$lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_2/stack_2?
lstm_cell_80/strided_slice_2StridedSlice%lstm_cell_80/ReadVariableOp_2:value:0+lstm_cell_80/strided_slice_2/stack:output:0-lstm_cell_80/strided_slice_2/stack_1:output:0-lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_2?
lstm_cell_80/MatMul_6MatMullstm_cell_80/mul_2:z:0%lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_6?
lstm_cell_80/add_2AddV2lstm_cell_80/BiasAdd_2:output:0lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_2x
lstm_cell_80/ReluRelulstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu?
lstm_cell_80/mul_5Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_5?
lstm_cell_80/add_3AddV2lstm_cell_80/mul_4:z:0lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_3?
lstm_cell_80/ReadVariableOp_3ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_3?
"lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_80/strided_slice_3/stack?
$lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_80/strided_slice_3/stack_1?
$lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_3/stack_2?
lstm_cell_80/strided_slice_3StridedSlice%lstm_cell_80/ReadVariableOp_3:value:0+lstm_cell_80/strided_slice_3/stack:output:0-lstm_cell_80/strided_slice_3/stack_1:output:0-lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_3?
lstm_cell_80/MatMul_7MatMullstm_cell_80/mul_3:z:0%lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_7?
lstm_cell_80/add_4AddV2lstm_cell_80/BiasAdd_3:output:0lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_4?
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu_1?
lstm_cell_80/mul_6Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_80_split_readvariableop_resource,lstm_cell_80_split_1_readvariableop_resource$lstm_cell_80_readvariableop_resource*
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
while_body_2645655*
condR
while_cond_2645654*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_80/ReadVariableOp^lstm_cell_80/ReadVariableOp_1^lstm_cell_80/ReadVariableOp_2^lstm_cell_80/ReadVariableOp_3"^lstm_cell_80/split/ReadVariableOp$^lstm_cell_80/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_80/ReadVariableOplstm_cell_80/ReadVariableOp2>
lstm_cell_80/ReadVariableOp_1lstm_cell_80/ReadVariableOp_12>
lstm_cell_80/ReadVariableOp_2lstm_cell_80/ReadVariableOp_22>
lstm_cell_80/ReadVariableOp_3lstm_cell_80/ReadVariableOp_32F
!lstm_cell_80/split/ReadVariableOp!lstm_cell_80/split/ReadVariableOp2J
#lstm_cell_80/split_1/ReadVariableOp#lstm_cell_80/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?+
?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644006

inputs"
lstm_80_2643932:	?
lstm_80_2643934:	?"
lstm_80_2643936:	 ?"
dense_96_2643951:  
dense_96_2643953: "
dense_97_2643973: 
dense_97_2643975:
identity?? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?/dense_97/bias/Regularizer/Square/ReadVariableOp?lstm_80/StatefulPartitionedCall?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
lstm_80/StatefulPartitionedCallStatefulPartitionedCallinputslstm_80_2643932lstm_80_2643934lstm_80_2643936*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26439312!
lstm_80/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_96_2643951dense_96_2643953*
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
GPU 2J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_26439502"
 dense_96/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_2643973dense_97_2643975*
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
GPU 2J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_26439722"
 dense_97/StatefulPartitionedCall?
reshape_48/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_26439912
reshape_48/PartitionedCall?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_80_2643932*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/mul?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_97_2643975*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mul?
IdentityIdentity#reshape_48/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall0^dense_97/bias/Regularizer/Square/ReadVariableOp ^lstm_80/StatefulPartitionedCall>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_reshape_48_layer_call_and_return_conditional_losses_2646434

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
while_body_2646205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_80_split_readvariableop_resource_0:	?C
4while_lstm_cell_80_split_1_readvariableop_resource_0:	??
,while_lstm_cell_80_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_80_split_readvariableop_resource:	?A
2while_lstm_cell_80_split_1_readvariableop_resource:	?=
*while_lstm_cell_80_readvariableop_resource:	 ???!while/lstm_cell_80/ReadVariableOp?#while/lstm_cell_80/ReadVariableOp_1?#while/lstm_cell_80/ReadVariableOp_2?#while/lstm_cell_80/ReadVariableOp_3?'while/lstm_cell_80/split/ReadVariableOp?)while/lstm_cell_80/split_1/ReadVariableOp?
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
"while/lstm_cell_80/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_80/ones_like/Shape?
"while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_80/ones_like/Const?
while/lstm_cell_80/ones_likeFill+while/lstm_cell_80/ones_like/Shape:output:0+while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/ones_like?
 while/lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_80/dropout/Const?
while/lstm_cell_80/dropout/MulMul%while/lstm_cell_80/ones_like:output:0)while/lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_80/dropout/Mul?
 while/lstm_cell_80/dropout/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_80/dropout/Shape?
7while/lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_80/dropout/random_uniform/RandomUniform?
)while/lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_80/dropout/GreaterEqual/y?
'while/lstm_cell_80/dropout/GreaterEqualGreaterEqual@while/lstm_cell_80/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_80/dropout/GreaterEqual?
while/lstm_cell_80/dropout/CastCast+while/lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_80/dropout/Cast?
 while/lstm_cell_80/dropout/Mul_1Mul"while/lstm_cell_80/dropout/Mul:z:0#while/lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout/Mul_1?
"while/lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_1/Const?
 while/lstm_cell_80/dropout_1/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_1/Mul?
"while/lstm_cell_80/dropout_1/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_1/Shape?
9while/lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_80/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_1/GreaterEqual/y?
)while/lstm_cell_80/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_1/GreaterEqual?
!while/lstm_cell_80/dropout_1/CastCast-while/lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_1/Cast?
"while/lstm_cell_80/dropout_1/Mul_1Mul$while/lstm_cell_80/dropout_1/Mul:z:0%while/lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_1/Mul_1?
"while/lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_2/Const?
 while/lstm_cell_80/dropout_2/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_2/Mul?
"while/lstm_cell_80/dropout_2/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_2/Shape?
9while/lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ⱦ?2;
9while/lstm_cell_80/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_2/GreaterEqual/y?
)while/lstm_cell_80/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_2/GreaterEqual?
!while/lstm_cell_80/dropout_2/CastCast-while/lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_2/Cast?
"while/lstm_cell_80/dropout_2/Mul_1Mul$while/lstm_cell_80/dropout_2/Mul:z:0%while/lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_2/Mul_1?
"while/lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_3/Const?
 while/lstm_cell_80/dropout_3/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_3/Mul?
"while/lstm_cell_80/dropout_3/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_3/Shape?
9while/lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ր?2;
9while/lstm_cell_80/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_3/GreaterEqual/y?
)while/lstm_cell_80/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_3/GreaterEqual?
!while/lstm_cell_80/dropout_3/CastCast-while/lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_3/Cast?
"while/lstm_cell_80/dropout_3/Mul_1Mul$while/lstm_cell_80/dropout_3/Mul:z:0%while/lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_3/Mul_1?
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim?
'while/lstm_cell_80/split/ReadVariableOpReadVariableOp2while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_80/split/ReadVariableOp?
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_80/split?
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul?
while/lstm_cell_80/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_1?
while/lstm_cell_80/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_2?
while/lstm_cell_80/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_3?
$while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_80/split_1/split_dim?
)while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_80/split_1/ReadVariableOp?
while/lstm_cell_80/split_1Split-while/lstm_cell_80/split_1/split_dim:output:01while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_80/split_1?
while/lstm_cell_80/BiasAddBiasAdd#while/lstm_cell_80/MatMul:product:0#while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd?
while/lstm_cell_80/BiasAdd_1BiasAdd%while/lstm_cell_80/MatMul_1:product:0#while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_1?
while/lstm_cell_80/BiasAdd_2BiasAdd%while/lstm_cell_80/MatMul_2:product:0#while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_2?
while/lstm_cell_80/BiasAdd_3BiasAdd%while/lstm_cell_80/MatMul_3:product:0#while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_3?
while/lstm_cell_80/mulMulwhile_placeholder_2$while/lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul?
while/lstm_cell_80/mul_1Mulwhile_placeholder_2&while/lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_1?
while/lstm_cell_80/mul_2Mulwhile_placeholder_2&while/lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_2?
while/lstm_cell_80/mul_3Mulwhile_placeholder_2&while/lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_3?
!while/lstm_cell_80/ReadVariableOpReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_80/ReadVariableOp?
&while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_80/strided_slice/stack?
(while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice/stack_1?
(while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_80/strided_slice/stack_2?
 while/lstm_cell_80/strided_sliceStridedSlice)while/lstm_cell_80/ReadVariableOp:value:0/while/lstm_cell_80/strided_slice/stack:output:01while/lstm_cell_80/strided_slice/stack_1:output:01while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_80/strided_slice?
while/lstm_cell_80/MatMul_4MatMulwhile/lstm_cell_80/mul:z:0)while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_4?
while/lstm_cell_80/addAddV2#while/lstm_cell_80/BiasAdd:output:0%while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add?
while/lstm_cell_80/SigmoidSigmoidwhile/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid?
#while/lstm_cell_80/ReadVariableOp_1ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_1?
(while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice_1/stack?
*while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_80/strided_slice_1/stack_1?
*while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_1/stack_2?
"while/lstm_cell_80/strided_slice_1StridedSlice+while/lstm_cell_80/ReadVariableOp_1:value:01while/lstm_cell_80/strided_slice_1/stack:output:03while/lstm_cell_80/strided_slice_1/stack_1:output:03while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_1?
while/lstm_cell_80/MatMul_5MatMulwhile/lstm_cell_80/mul_1:z:0+while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_5?
while/lstm_cell_80/add_1AddV2%while/lstm_cell_80/BiasAdd_1:output:0%while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_1?
while/lstm_cell_80/Sigmoid_1Sigmoidwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_1?
while/lstm_cell_80/mul_4Mul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_4?
#while/lstm_cell_80/ReadVariableOp_2ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_2?
(while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_80/strided_slice_2/stack?
*while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_80/strided_slice_2/stack_1?
*while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_2/stack_2?
"while/lstm_cell_80/strided_slice_2StridedSlice+while/lstm_cell_80/ReadVariableOp_2:value:01while/lstm_cell_80/strided_slice_2/stack:output:03while/lstm_cell_80/strided_slice_2/stack_1:output:03while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_2?
while/lstm_cell_80/MatMul_6MatMulwhile/lstm_cell_80/mul_2:z:0+while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_6?
while/lstm_cell_80/add_2AddV2%while/lstm_cell_80/BiasAdd_2:output:0%while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_2?
while/lstm_cell_80/ReluReluwhile/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu?
while/lstm_cell_80/mul_5Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_5?
while/lstm_cell_80/add_3AddV2while/lstm_cell_80/mul_4:z:0while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_3?
#while/lstm_cell_80/ReadVariableOp_3ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_3?
(while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_80/strided_slice_3/stack?
*while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_80/strided_slice_3/stack_1?
*while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_3/stack_2?
"while/lstm_cell_80/strided_slice_3StridedSlice+while/lstm_cell_80/ReadVariableOp_3:value:01while/lstm_cell_80/strided_slice_3/stack:output:03while/lstm_cell_80/strided_slice_3/stack_1:output:03while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_3?
while/lstm_cell_80/MatMul_7MatMulwhile/lstm_cell_80/mul_3:z:0+while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_7?
while/lstm_cell_80/add_4AddV2%while/lstm_cell_80/BiasAdd_3:output:0%while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_4?
while/lstm_cell_80/Sigmoid_2Sigmoidwhile/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_2?
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu_1?
while/lstm_cell_80/mul_6Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_80/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_80/ReadVariableOp$^while/lstm_cell_80/ReadVariableOp_1$^while/lstm_cell_80/ReadVariableOp_2$^while/lstm_cell_80/ReadVariableOp_3(^while/lstm_cell_80/split/ReadVariableOp*^while/lstm_cell_80/split_1/ReadVariableOp*"
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
*while_lstm_cell_80_readvariableop_resource,while_lstm_cell_80_readvariableop_resource_0"j
2while_lstm_cell_80_split_1_readvariableop_resource4while_lstm_cell_80_split_1_readvariableop_resource_0"f
0while_lstm_cell_80_split_readvariableop_resource2while_lstm_cell_80_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_80/ReadVariableOp!while/lstm_cell_80/ReadVariableOp2J
#while/lstm_cell_80/ReadVariableOp_1#while/lstm_cell_80/ReadVariableOp_12J
#while/lstm_cell_80/ReadVariableOp_2#while/lstm_cell_80/ReadVariableOp_22J
#while/lstm_cell_80/ReadVariableOp_3#while/lstm_cell_80/ReadVariableOp_32R
'while/lstm_cell_80/split/ReadVariableOp'while/lstm_cell_80/split/ReadVariableOp2V
)while/lstm_cell_80/split_1/ReadVariableOp)while/lstm_cell_80/split_1/ReadVariableOp: 
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
while_cond_2644203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2644203___redundant_placeholder05
1while_while_cond_2644203___redundant_placeholder15
1while_while_cond_2644203___redundant_placeholder25
1while_while_cond_2644203___redundant_placeholder3
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
?
(sequential_32_lstm_80_while_body_2642749H
Dsequential_32_lstm_80_while_sequential_32_lstm_80_while_loop_counterN
Jsequential_32_lstm_80_while_sequential_32_lstm_80_while_maximum_iterations+
'sequential_32_lstm_80_while_placeholder-
)sequential_32_lstm_80_while_placeholder_1-
)sequential_32_lstm_80_while_placeholder_2-
)sequential_32_lstm_80_while_placeholder_3G
Csequential_32_lstm_80_while_sequential_32_lstm_80_strided_slice_1_0?
sequential_32_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_80_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_32_lstm_80_while_lstm_cell_80_split_readvariableop_resource_0:	?Y
Jsequential_32_lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0:	?U
Bsequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource_0:	 ?(
$sequential_32_lstm_80_while_identity*
&sequential_32_lstm_80_while_identity_1*
&sequential_32_lstm_80_while_identity_2*
&sequential_32_lstm_80_while_identity_3*
&sequential_32_lstm_80_while_identity_4*
&sequential_32_lstm_80_while_identity_5E
Asequential_32_lstm_80_while_sequential_32_lstm_80_strided_slice_1?
}sequential_32_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_80_tensorarrayunstack_tensorlistfromtensorY
Fsequential_32_lstm_80_while_lstm_cell_80_split_readvariableop_resource:	?W
Hsequential_32_lstm_80_while_lstm_cell_80_split_1_readvariableop_resource:	?S
@sequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource:	 ???7sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp?9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_1?9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_2?9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_3?=sequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOp??sequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?
Msequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_32_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_80_tensorarrayunstack_tensorlistfromtensor_0'sequential_32_lstm_80_while_placeholderVsequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem?
8sequential_32/lstm_80/while/lstm_cell_80/ones_like/ShapeShape)sequential_32_lstm_80_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_32/lstm_80/while/lstm_cell_80/ones_like/Shape?
8sequential_32/lstm_80/while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8sequential_32/lstm_80/while/lstm_cell_80/ones_like/Const?
2sequential_32/lstm_80/while/lstm_cell_80/ones_likeFillAsequential_32/lstm_80/while/lstm_cell_80/ones_like/Shape:output:0Asequential_32/lstm_80/while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_32/lstm_80/while/lstm_cell_80/ones_like?
8sequential_32/lstm_80/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_32/lstm_80/while/lstm_cell_80/split/split_dim?
=sequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOpReadVariableOpHsequential_32_lstm_80_while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOp?
.sequential_32/lstm_80/while/lstm_cell_80/splitSplitAsequential_32/lstm_80/while/lstm_cell_80/split/split_dim:output:0Esequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_32/lstm_80/while/lstm_cell_80/split?
/sequential_32/lstm_80/while/lstm_cell_80/MatMulMatMulFsequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_32/lstm_80/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_32/lstm_80/while/lstm_cell_80/MatMul?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_1MatMulFsequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_32/lstm_80/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_1?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_2MatMulFsequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_32/lstm_80/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_2?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_3MatMulFsequential_32/lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_32/lstm_80/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_3?
:sequential_32/lstm_80/while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_32/lstm_80/while/lstm_cell_80/split_1/split_dim?
?sequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOpReadVariableOpJsequential_32_lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?
0sequential_32/lstm_80/while/lstm_cell_80/split_1SplitCsequential_32/lstm_80/while/lstm_cell_80/split_1/split_dim:output:0Gsequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_32/lstm_80/while/lstm_cell_80/split_1?
0sequential_32/lstm_80/while/lstm_cell_80/BiasAddBiasAdd9sequential_32/lstm_80/while/lstm_cell_80/MatMul:product:09sequential_32/lstm_80/while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_32/lstm_80/while/lstm_cell_80/BiasAdd?
2sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_1BiasAdd;sequential_32/lstm_80/while/lstm_cell_80/MatMul_1:product:09sequential_32/lstm_80/while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 24
2sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_1?
2sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_2BiasAdd;sequential_32/lstm_80/while/lstm_cell_80/MatMul_2:product:09sequential_32/lstm_80/while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 24
2sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_2?
2sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_3BiasAdd;sequential_32/lstm_80/while/lstm_cell_80/MatMul_3:product:09sequential_32/lstm_80/while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 24
2sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_3?
,sequential_32/lstm_80/while/lstm_cell_80/mulMul)sequential_32_lstm_80_while_placeholder_2;sequential_32/lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/while/lstm_cell_80/mul?
.sequential_32/lstm_80/while/lstm_cell_80/mul_1Mul)sequential_32_lstm_80_while_placeholder_2;sequential_32/lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/mul_1?
.sequential_32/lstm_80/while/lstm_cell_80/mul_2Mul)sequential_32_lstm_80_while_placeholder_2;sequential_32/lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/mul_2?
.sequential_32/lstm_80/while/lstm_cell_80/mul_3Mul)sequential_32_lstm_80_while_placeholder_2;sequential_32/lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/mul_3?
7sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOpReadVariableOpBsequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype029
7sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp?
<sequential_32/lstm_80/while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack?
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack_1?
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack_2?
6sequential_32/lstm_80/while/lstm_cell_80/strided_sliceStridedSlice?sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp:value:0Esequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack:output:0Gsequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack_1:output:0Gsequential_32/lstm_80/while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_32/lstm_80/while/lstm_cell_80/strided_slice?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_4MatMul0sequential_32/lstm_80/while/lstm_cell_80/mul:z:0?sequential_32/lstm_80/while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_4?
,sequential_32/lstm_80/while/lstm_cell_80/addAddV29sequential_32/lstm_80/while/lstm_cell_80/BiasAdd:output:0;sequential_32/lstm_80/while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2.
,sequential_32/lstm_80/while/lstm_cell_80/add?
0sequential_32/lstm_80/while/lstm_cell_80/SigmoidSigmoid0sequential_32/lstm_80/while/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_32/lstm_80/while/lstm_cell_80/Sigmoid?
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_1ReadVariableOpBsequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_1?
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack?
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack_1?
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack_2?
8sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1StridedSliceAsequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_1:value:0Gsequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack:output:0Isequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack_1:output:0Isequential_32/lstm_80/while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_32/lstm_80/while/lstm_cell_80/strided_slice_1?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_5MatMul2sequential_32/lstm_80/while/lstm_cell_80/mul_1:z:0Asequential_32/lstm_80/while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_5?
.sequential_32/lstm_80/while/lstm_cell_80/add_1AddV2;sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_1:output:0;sequential_32/lstm_80/while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/add_1?
2sequential_32/lstm_80/while/lstm_cell_80/Sigmoid_1Sigmoid2sequential_32/lstm_80/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_32/lstm_80/while/lstm_cell_80/Sigmoid_1?
.sequential_32/lstm_80/while/lstm_cell_80/mul_4Mul6sequential_32/lstm_80/while/lstm_cell_80/Sigmoid_1:y:0)sequential_32_lstm_80_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/mul_4?
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_2ReadVariableOpBsequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_2?
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack?
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack_1?
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack_2?
8sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2StridedSliceAsequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_2:value:0Gsequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack:output:0Isequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack_1:output:0Isequential_32/lstm_80/while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_32/lstm_80/while/lstm_cell_80/strided_slice_2?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_6MatMul2sequential_32/lstm_80/while/lstm_cell_80/mul_2:z:0Asequential_32/lstm_80/while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_6?
.sequential_32/lstm_80/while/lstm_cell_80/add_2AddV2;sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_2:output:0;sequential_32/lstm_80/while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/add_2?
-sequential_32/lstm_80/while/lstm_cell_80/ReluRelu2sequential_32/lstm_80/while/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_32/lstm_80/while/lstm_cell_80/Relu?
.sequential_32/lstm_80/while/lstm_cell_80/mul_5Mul4sequential_32/lstm_80/while/lstm_cell_80/Sigmoid:y:0;sequential_32/lstm_80/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/mul_5?
.sequential_32/lstm_80/while/lstm_cell_80/add_3AddV22sequential_32/lstm_80/while/lstm_cell_80/mul_4:z:02sequential_32/lstm_80/while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/add_3?
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_3ReadVariableOpBsequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_3?
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack?
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack_1?
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack_2?
8sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3StridedSliceAsequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_3:value:0Gsequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack:output:0Isequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack_1:output:0Isequential_32/lstm_80/while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_32/lstm_80/while/lstm_cell_80/strided_slice_3?
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_7MatMul2sequential_32/lstm_80/while/lstm_cell_80/mul_3:z:0Asequential_32/lstm_80/while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_32/lstm_80/while/lstm_cell_80/MatMul_7?
.sequential_32/lstm_80/while/lstm_cell_80/add_4AddV2;sequential_32/lstm_80/while/lstm_cell_80/BiasAdd_3:output:0;sequential_32/lstm_80/while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/add_4?
2sequential_32/lstm_80/while/lstm_cell_80/Sigmoid_2Sigmoid2sequential_32/lstm_80/while/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_32/lstm_80/while/lstm_cell_80/Sigmoid_2?
/sequential_32/lstm_80/while/lstm_cell_80/Relu_1Relu2sequential_32/lstm_80/while/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_32/lstm_80/while/lstm_cell_80/Relu_1?
.sequential_32/lstm_80/while/lstm_cell_80/mul_6Mul6sequential_32/lstm_80/while/lstm_cell_80/Sigmoid_2:y:0=sequential_32/lstm_80/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_32/lstm_80/while/lstm_cell_80/mul_6?
@sequential_32/lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_32_lstm_80_while_placeholder_1'sequential_32_lstm_80_while_placeholder2sequential_32/lstm_80/while/lstm_cell_80/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_32/lstm_80/while/TensorArrayV2Write/TensorListSetItem?
!sequential_32/lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_32/lstm_80/while/add/y?
sequential_32/lstm_80/while/addAddV2'sequential_32_lstm_80_while_placeholder*sequential_32/lstm_80/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_32/lstm_80/while/add?
#sequential_32/lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_32/lstm_80/while/add_1/y?
!sequential_32/lstm_80/while/add_1AddV2Dsequential_32_lstm_80_while_sequential_32_lstm_80_while_loop_counter,sequential_32/lstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_32/lstm_80/while/add_1?
$sequential_32/lstm_80/while/IdentityIdentity%sequential_32/lstm_80/while/add_1:z:0!^sequential_32/lstm_80/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_32/lstm_80/while/Identity?
&sequential_32/lstm_80/while/Identity_1IdentityJsequential_32_lstm_80_while_sequential_32_lstm_80_while_maximum_iterations!^sequential_32/lstm_80/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_32/lstm_80/while/Identity_1?
&sequential_32/lstm_80/while/Identity_2Identity#sequential_32/lstm_80/while/add:z:0!^sequential_32/lstm_80/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_32/lstm_80/while/Identity_2?
&sequential_32/lstm_80/while/Identity_3IdentityPsequential_32/lstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_32/lstm_80/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_32/lstm_80/while/Identity_3?
&sequential_32/lstm_80/while/Identity_4Identity2sequential_32/lstm_80/while/lstm_cell_80/mul_6:z:0!^sequential_32/lstm_80/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_32/lstm_80/while/Identity_4?
&sequential_32/lstm_80/while/Identity_5Identity2sequential_32/lstm_80/while/lstm_cell_80/add_3:z:0!^sequential_32/lstm_80/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_32/lstm_80/while/Identity_5?
 sequential_32/lstm_80/while/NoOpNoOp8^sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp:^sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_1:^sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_2:^sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_3>^sequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOp@^sequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_32/lstm_80/while/NoOp"U
$sequential_32_lstm_80_while_identity-sequential_32/lstm_80/while/Identity:output:0"Y
&sequential_32_lstm_80_while_identity_1/sequential_32/lstm_80/while/Identity_1:output:0"Y
&sequential_32_lstm_80_while_identity_2/sequential_32/lstm_80/while/Identity_2:output:0"Y
&sequential_32_lstm_80_while_identity_3/sequential_32/lstm_80/while/Identity_3:output:0"Y
&sequential_32_lstm_80_while_identity_4/sequential_32/lstm_80/while/Identity_4:output:0"Y
&sequential_32_lstm_80_while_identity_5/sequential_32/lstm_80/while/Identity_5:output:0"?
@sequential_32_lstm_80_while_lstm_cell_80_readvariableop_resourceBsequential_32_lstm_80_while_lstm_cell_80_readvariableop_resource_0"?
Hsequential_32_lstm_80_while_lstm_cell_80_split_1_readvariableop_resourceJsequential_32_lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0"?
Fsequential_32_lstm_80_while_lstm_cell_80_split_readvariableop_resourceHsequential_32_lstm_80_while_lstm_cell_80_split_readvariableop_resource_0"?
Asequential_32_lstm_80_while_sequential_32_lstm_80_strided_slice_1Csequential_32_lstm_80_while_sequential_32_lstm_80_strided_slice_1_0"?
}sequential_32_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_80_tensorarrayunstack_tensorlistfromtensorsequential_32_lstm_80_while_tensorarrayv2read_tensorlistgetitem_sequential_32_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2r
7sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp7sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp2v
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_19sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_12v
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_29sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_22v
9sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_39sequential_32/lstm_80/while/lstm_cell_80/ReadVariableOp_32~
=sequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOp=sequential_32/lstm_80/while/lstm_cell_80/split/ReadVariableOp2?
?sequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?sequential_32/lstm_80/while/lstm_cell_80/split_1/ReadVariableOp: 
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
__inference_loss_fn_1_2646695Y
Flstm_80_lstm_cell_80_kernel_regularizer_square_readvariableop_resource:	?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_80_lstm_cell_80_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muly
IdentityIdentity/lstm_80/lstm_cell_80/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp
?R
?
D__inference_lstm_80_layer_call_and_return_conditional_losses_2643408

inputs'
lstm_cell_80_2643320:	?#
lstm_cell_80_2643322:	?'
lstm_cell_80_2643324:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_80/StatefulPartitionedCall?whileD
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
$lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_80_2643320lstm_cell_80_2643322lstm_cell_80_2643324*
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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_26432552&
$lstm_cell_80/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_80_2643320lstm_cell_80_2643322lstm_cell_80_2643324*
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
while_body_2643333*
condR
while_cond_2643332*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_80_2643320*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_80/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_80/StatefulPartitionedCall$lstm_cell_80/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_80_layer_call_fn_2645248
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26434082
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
?%
?
while_body_2643036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_80_2643060_0:	?+
while_lstm_cell_80_2643062_0:	?/
while_lstm_cell_80_2643064_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_80_2643060:	?)
while_lstm_cell_80_2643062:	?-
while_lstm_cell_80_2643064:	 ???*while/lstm_cell_80/StatefulPartitionedCall?
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
*while/lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_80_2643060_0while_lstm_cell_80_2643062_0while_lstm_cell_80_2643064_0*
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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_26430222,
*while/lstm_cell_80/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_80/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_80/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_80/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_80/StatefulPartitionedCall*"
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
while_lstm_cell_80_2643060while_lstm_cell_80_2643060_0":
while_lstm_cell_80_2643062while_lstm_cell_80_2643062_0":
while_lstm_cell_80_2643064while_lstm_cell_80_2643064_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_80/StatefulPartitionedCall*while/lstm_cell_80/StatefulPartitionedCall: 
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
?
?
E__inference_dense_97_layer_call_and_return_conditional_losses_2643972

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_97/bias/Regularizer/Square/ReadVariableOp?
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
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_97/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_lstm_80_layer_call_fn_2645237
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26431112
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
?
?
E__inference_dense_97_layer_call_and_return_conditional_losses_2646412

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_97/bias/Regularizer/Square/ReadVariableOp?
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
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_97/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
D__inference_lstm_80_layer_call_and_return_conditional_losses_2646063

inputs=
*lstm_cell_80_split_readvariableop_resource:	?;
,lstm_cell_80_split_1_readvariableop_resource:	?7
$lstm_cell_80_readvariableop_resource:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_80/ReadVariableOp?lstm_cell_80/ReadVariableOp_1?lstm_cell_80/ReadVariableOp_2?lstm_cell_80/ReadVariableOp_3?!lstm_cell_80/split/ReadVariableOp?#lstm_cell_80/split_1/ReadVariableOp?whileD
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
lstm_cell_80/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_80/ones_like/Shape?
lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_80/ones_like/Const?
lstm_cell_80/ones_likeFill%lstm_cell_80/ones_like/Shape:output:0%lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/ones_like~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim?
!lstm_cell_80/split/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_80/split/ReadVariableOp?
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0)lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_80/split?
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul?
lstm_cell_80/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_1?
lstm_cell_80/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_2?
lstm_cell_80/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_3?
lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_80/split_1/split_dim?
#lstm_cell_80/split_1/ReadVariableOpReadVariableOp,lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_80/split_1/ReadVariableOp?
lstm_cell_80/split_1Split'lstm_cell_80/split_1/split_dim:output:0+lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_80/split_1?
lstm_cell_80/BiasAddBiasAddlstm_cell_80/MatMul:product:0lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd?
lstm_cell_80/BiasAdd_1BiasAddlstm_cell_80/MatMul_1:product:0lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_1?
lstm_cell_80/BiasAdd_2BiasAddlstm_cell_80/MatMul_2:product:0lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_2?
lstm_cell_80/BiasAdd_3BiasAddlstm_cell_80/MatMul_3:product:0lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_3?
lstm_cell_80/mulMulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul?
lstm_cell_80/mul_1Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_1?
lstm_cell_80/mul_2Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_2?
lstm_cell_80/mul_3Mulzeros:output:0lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_3?
lstm_cell_80/ReadVariableOpReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp?
 lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_80/strided_slice/stack?
"lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice/stack_1?
"lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_80/strided_slice/stack_2?
lstm_cell_80/strided_sliceStridedSlice#lstm_cell_80/ReadVariableOp:value:0)lstm_cell_80/strided_slice/stack:output:0+lstm_cell_80/strided_slice/stack_1:output:0+lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice?
lstm_cell_80/MatMul_4MatMullstm_cell_80/mul:z:0#lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_4?
lstm_cell_80/addAddV2lstm_cell_80/BiasAdd:output:0lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add
lstm_cell_80/SigmoidSigmoidlstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid?
lstm_cell_80/ReadVariableOp_1ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_1?
"lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice_1/stack?
$lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_80/strided_slice_1/stack_1?
$lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_1/stack_2?
lstm_cell_80/strided_slice_1StridedSlice%lstm_cell_80/ReadVariableOp_1:value:0+lstm_cell_80/strided_slice_1/stack:output:0-lstm_cell_80/strided_slice_1/stack_1:output:0-lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_1?
lstm_cell_80/MatMul_5MatMullstm_cell_80/mul_1:z:0%lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_5?
lstm_cell_80/add_1AddV2lstm_cell_80/BiasAdd_1:output:0lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_1?
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_1?
lstm_cell_80/mul_4Mullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_4?
lstm_cell_80/ReadVariableOp_2ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_2?
"lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_80/strided_slice_2/stack?
$lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_80/strided_slice_2/stack_1?
$lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_2/stack_2?
lstm_cell_80/strided_slice_2StridedSlice%lstm_cell_80/ReadVariableOp_2:value:0+lstm_cell_80/strided_slice_2/stack:output:0-lstm_cell_80/strided_slice_2/stack_1:output:0-lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_2?
lstm_cell_80/MatMul_6MatMullstm_cell_80/mul_2:z:0%lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_6?
lstm_cell_80/add_2AddV2lstm_cell_80/BiasAdd_2:output:0lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_2x
lstm_cell_80/ReluRelulstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu?
lstm_cell_80/mul_5Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_5?
lstm_cell_80/add_3AddV2lstm_cell_80/mul_4:z:0lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_3?
lstm_cell_80/ReadVariableOp_3ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_3?
"lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_80/strided_slice_3/stack?
$lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_80/strided_slice_3/stack_1?
$lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_3/stack_2?
lstm_cell_80/strided_slice_3StridedSlice%lstm_cell_80/ReadVariableOp_3:value:0+lstm_cell_80/strided_slice_3/stack:output:0-lstm_cell_80/strided_slice_3/stack_1:output:0-lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_3?
lstm_cell_80/MatMul_7MatMullstm_cell_80/mul_3:z:0%lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_7?
lstm_cell_80/add_4AddV2lstm_cell_80/BiasAdd_3:output:0lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_4?
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu_1?
lstm_cell_80/mul_6Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_80_split_readvariableop_resource,lstm_cell_80_split_1_readvariableop_resource$lstm_cell_80_readvariableop_resource*
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
while_body_2645930*
condR
while_cond_2645929*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_80/ReadVariableOp^lstm_cell_80/ReadVariableOp_1^lstm_cell_80/ReadVariableOp_2^lstm_cell_80/ReadVariableOp_3"^lstm_cell_80/split/ReadVariableOp$^lstm_cell_80/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_80/ReadVariableOplstm_cell_80/ReadVariableOp2>
lstm_cell_80/ReadVariableOp_1lstm_cell_80/ReadVariableOp_12>
lstm_cell_80/ReadVariableOp_2lstm_cell_80/ReadVariableOp_22>
lstm_cell_80/ReadVariableOp_3lstm_cell_80/ReadVariableOp_32F
!lstm_cell_80/split/ReadVariableOp!lstm_cell_80/split/ReadVariableOp2J
#lstm_cell_80/split_1/ReadVariableOp#lstm_cell_80/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?v
?
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2646650

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed?	*
seed2???2(
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2,
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
?%
?
while_body_2643333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_80_2643357_0:	?+
while_lstm_cell_80_2643359_0:	?/
while_lstm_cell_80_2643361_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_80_2643357:	?)
while_lstm_cell_80_2643359:	?-
while_lstm_cell_80_2643361:	 ???*while/lstm_cell_80/StatefulPartitionedCall?
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
*while/lstm_cell_80/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_80_2643357_0while_lstm_cell_80_2643359_0while_lstm_cell_80_2643361_0*
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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_26432552,
*while/lstm_cell_80/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_80/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_80/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_80/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_80/StatefulPartitionedCall*"
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
while_lstm_cell_80_2643357while_lstm_cell_80_2643357_0":
while_lstm_cell_80_2643359while_lstm_cell_80_2643359_0":
while_lstm_cell_80_2643361while_lstm_cell_80_2643361_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_80/StatefulPartitionedCall*while/lstm_cell_80/StatefulPartitionedCall: 
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
?
.__inference_lstm_cell_80_layer_call_fn_2646667

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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_26430222
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
while_body_2645655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_80_split_readvariableop_resource_0:	?C
4while_lstm_cell_80_split_1_readvariableop_resource_0:	??
,while_lstm_cell_80_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_80_split_readvariableop_resource:	?A
2while_lstm_cell_80_split_1_readvariableop_resource:	?=
*while_lstm_cell_80_readvariableop_resource:	 ???!while/lstm_cell_80/ReadVariableOp?#while/lstm_cell_80/ReadVariableOp_1?#while/lstm_cell_80/ReadVariableOp_2?#while/lstm_cell_80/ReadVariableOp_3?'while/lstm_cell_80/split/ReadVariableOp?)while/lstm_cell_80/split_1/ReadVariableOp?
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
"while/lstm_cell_80/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_80/ones_like/Shape?
"while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_80/ones_like/Const?
while/lstm_cell_80/ones_likeFill+while/lstm_cell_80/ones_like/Shape:output:0+while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/ones_like?
 while/lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_80/dropout/Const?
while/lstm_cell_80/dropout/MulMul%while/lstm_cell_80/ones_like:output:0)while/lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_80/dropout/Mul?
 while/lstm_cell_80/dropout/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_80/dropout/Shape?
7while/lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_80/dropout/random_uniform/RandomUniform?
)while/lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_80/dropout/GreaterEqual/y?
'while/lstm_cell_80/dropout/GreaterEqualGreaterEqual@while/lstm_cell_80/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_80/dropout/GreaterEqual?
while/lstm_cell_80/dropout/CastCast+while/lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_80/dropout/Cast?
 while/lstm_cell_80/dropout/Mul_1Mul"while/lstm_cell_80/dropout/Mul:z:0#while/lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout/Mul_1?
"while/lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_1/Const?
 while/lstm_cell_80/dropout_1/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_1/Mul?
"while/lstm_cell_80/dropout_1/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_1/Shape?
9while/lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_80/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_1/GreaterEqual/y?
)while/lstm_cell_80/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_1/GreaterEqual?
!while/lstm_cell_80/dropout_1/CastCast-while/lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_1/Cast?
"while/lstm_cell_80/dropout_1/Mul_1Mul$while/lstm_cell_80/dropout_1/Mul:z:0%while/lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_1/Mul_1?
"while/lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_2/Const?
 while/lstm_cell_80/dropout_2/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_2/Mul?
"while/lstm_cell_80/dropout_2/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_2/Shape?
9while/lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_80/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_2/GreaterEqual/y?
)while/lstm_cell_80/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_2/GreaterEqual?
!while/lstm_cell_80/dropout_2/CastCast-while/lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_2/Cast?
"while/lstm_cell_80/dropout_2/Mul_1Mul$while/lstm_cell_80/dropout_2/Mul:z:0%while/lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_2/Mul_1?
"while/lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_3/Const?
 while/lstm_cell_80/dropout_3/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_3/Mul?
"while/lstm_cell_80/dropout_3/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_3/Shape?
9while/lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_80/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_3/GreaterEqual/y?
)while/lstm_cell_80/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_3/GreaterEqual?
!while/lstm_cell_80/dropout_3/CastCast-while/lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_3/Cast?
"while/lstm_cell_80/dropout_3/Mul_1Mul$while/lstm_cell_80/dropout_3/Mul:z:0%while/lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_3/Mul_1?
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim?
'while/lstm_cell_80/split/ReadVariableOpReadVariableOp2while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_80/split/ReadVariableOp?
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_80/split?
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul?
while/lstm_cell_80/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_1?
while/lstm_cell_80/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_2?
while/lstm_cell_80/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_3?
$while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_80/split_1/split_dim?
)while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_80/split_1/ReadVariableOp?
while/lstm_cell_80/split_1Split-while/lstm_cell_80/split_1/split_dim:output:01while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_80/split_1?
while/lstm_cell_80/BiasAddBiasAdd#while/lstm_cell_80/MatMul:product:0#while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd?
while/lstm_cell_80/BiasAdd_1BiasAdd%while/lstm_cell_80/MatMul_1:product:0#while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_1?
while/lstm_cell_80/BiasAdd_2BiasAdd%while/lstm_cell_80/MatMul_2:product:0#while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_2?
while/lstm_cell_80/BiasAdd_3BiasAdd%while/lstm_cell_80/MatMul_3:product:0#while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_3?
while/lstm_cell_80/mulMulwhile_placeholder_2$while/lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul?
while/lstm_cell_80/mul_1Mulwhile_placeholder_2&while/lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_1?
while/lstm_cell_80/mul_2Mulwhile_placeholder_2&while/lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_2?
while/lstm_cell_80/mul_3Mulwhile_placeholder_2&while/lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_3?
!while/lstm_cell_80/ReadVariableOpReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_80/ReadVariableOp?
&while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_80/strided_slice/stack?
(while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice/stack_1?
(while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_80/strided_slice/stack_2?
 while/lstm_cell_80/strided_sliceStridedSlice)while/lstm_cell_80/ReadVariableOp:value:0/while/lstm_cell_80/strided_slice/stack:output:01while/lstm_cell_80/strided_slice/stack_1:output:01while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_80/strided_slice?
while/lstm_cell_80/MatMul_4MatMulwhile/lstm_cell_80/mul:z:0)while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_4?
while/lstm_cell_80/addAddV2#while/lstm_cell_80/BiasAdd:output:0%while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add?
while/lstm_cell_80/SigmoidSigmoidwhile/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid?
#while/lstm_cell_80/ReadVariableOp_1ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_1?
(while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice_1/stack?
*while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_80/strided_slice_1/stack_1?
*while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_1/stack_2?
"while/lstm_cell_80/strided_slice_1StridedSlice+while/lstm_cell_80/ReadVariableOp_1:value:01while/lstm_cell_80/strided_slice_1/stack:output:03while/lstm_cell_80/strided_slice_1/stack_1:output:03while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_1?
while/lstm_cell_80/MatMul_5MatMulwhile/lstm_cell_80/mul_1:z:0+while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_5?
while/lstm_cell_80/add_1AddV2%while/lstm_cell_80/BiasAdd_1:output:0%while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_1?
while/lstm_cell_80/Sigmoid_1Sigmoidwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_1?
while/lstm_cell_80/mul_4Mul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_4?
#while/lstm_cell_80/ReadVariableOp_2ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_2?
(while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_80/strided_slice_2/stack?
*while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_80/strided_slice_2/stack_1?
*while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_2/stack_2?
"while/lstm_cell_80/strided_slice_2StridedSlice+while/lstm_cell_80/ReadVariableOp_2:value:01while/lstm_cell_80/strided_slice_2/stack:output:03while/lstm_cell_80/strided_slice_2/stack_1:output:03while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_2?
while/lstm_cell_80/MatMul_6MatMulwhile/lstm_cell_80/mul_2:z:0+while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_6?
while/lstm_cell_80/add_2AddV2%while/lstm_cell_80/BiasAdd_2:output:0%while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_2?
while/lstm_cell_80/ReluReluwhile/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu?
while/lstm_cell_80/mul_5Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_5?
while/lstm_cell_80/add_3AddV2while/lstm_cell_80/mul_4:z:0while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_3?
#while/lstm_cell_80/ReadVariableOp_3ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_3?
(while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_80/strided_slice_3/stack?
*while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_80/strided_slice_3/stack_1?
*while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_3/stack_2?
"while/lstm_cell_80/strided_slice_3StridedSlice+while/lstm_cell_80/ReadVariableOp_3:value:01while/lstm_cell_80/strided_slice_3/stack:output:03while/lstm_cell_80/strided_slice_3/stack_1:output:03while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_3?
while/lstm_cell_80/MatMul_7MatMulwhile/lstm_cell_80/mul_3:z:0+while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_7?
while/lstm_cell_80/add_4AddV2%while/lstm_cell_80/BiasAdd_3:output:0%while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_4?
while/lstm_cell_80/Sigmoid_2Sigmoidwhile/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_2?
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu_1?
while/lstm_cell_80/mul_6Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_80/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_80/ReadVariableOp$^while/lstm_cell_80/ReadVariableOp_1$^while/lstm_cell_80/ReadVariableOp_2$^while/lstm_cell_80/ReadVariableOp_3(^while/lstm_cell_80/split/ReadVariableOp*^while/lstm_cell_80/split_1/ReadVariableOp*"
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
*while_lstm_cell_80_readvariableop_resource,while_lstm_cell_80_readvariableop_resource_0"j
2while_lstm_cell_80_split_1_readvariableop_resource4while_lstm_cell_80_split_1_readvariableop_resource_0"f
0while_lstm_cell_80_split_readvariableop_resource2while_lstm_cell_80_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_80/ReadVariableOp!while/lstm_cell_80/ReadVariableOp2J
#while/lstm_cell_80/ReadVariableOp_1#while/lstm_cell_80/ReadVariableOp_12J
#while/lstm_cell_80/ReadVariableOp_2#while/lstm_cell_80/ReadVariableOp_22J
#while/lstm_cell_80/ReadVariableOp_3#while/lstm_cell_80/ReadVariableOp_32R
'while/lstm_cell_80/split/ReadVariableOp'while/lstm_cell_80/split/ReadVariableOp2V
)while/lstm_cell_80/split_1/ReadVariableOp)while/lstm_cell_80/split_1/ReadVariableOp: 
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2644369

inputs=
*lstm_cell_80_split_readvariableop_resource:	?;
,lstm_cell_80_split_1_readvariableop_resource:	?7
$lstm_cell_80_readvariableop_resource:	 ?
identity??=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_80/ReadVariableOp?lstm_cell_80/ReadVariableOp_1?lstm_cell_80/ReadVariableOp_2?lstm_cell_80/ReadVariableOp_3?!lstm_cell_80/split/ReadVariableOp?#lstm_cell_80/split_1/ReadVariableOp?whileD
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
lstm_cell_80/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_80/ones_like/Shape?
lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_80/ones_like/Const?
lstm_cell_80/ones_likeFill%lstm_cell_80/ones_like/Shape:output:0%lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/ones_like}
lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout/Const?
lstm_cell_80/dropout/MulMullstm_cell_80/ones_like:output:0#lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Mul?
lstm_cell_80/dropout/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout/Shape?
1lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??23
1lstm_cell_80/dropout/random_uniform/RandomUniform?
#lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_80/dropout/GreaterEqual/y?
!lstm_cell_80/dropout/GreaterEqualGreaterEqual:lstm_cell_80/dropout/random_uniform/RandomUniform:output:0,lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_80/dropout/GreaterEqual?
lstm_cell_80/dropout/CastCast%lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Cast?
lstm_cell_80/dropout/Mul_1Mullstm_cell_80/dropout/Mul:z:0lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout/Mul_1?
lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_1/Const?
lstm_cell_80/dropout_1/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Mul?
lstm_cell_80/dropout_1/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_1/Shape?
3lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??O25
3lstm_cell_80/dropout_1/random_uniform/RandomUniform?
%lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_1/GreaterEqual/y?
#lstm_cell_80/dropout_1/GreaterEqualGreaterEqual<lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_1/GreaterEqual?
lstm_cell_80/dropout_1/CastCast'lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Cast?
lstm_cell_80/dropout_1/Mul_1Mullstm_cell_80/dropout_1/Mul:z:0lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_1/Mul_1?
lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_2/Const?
lstm_cell_80/dropout_2/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Mul?
lstm_cell_80/dropout_2/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_2/Shape?
3lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_80/dropout_2/random_uniform/RandomUniform?
%lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_2/GreaterEqual/y?
#lstm_cell_80/dropout_2/GreaterEqualGreaterEqual<lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_2/GreaterEqual?
lstm_cell_80/dropout_2/CastCast'lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Cast?
lstm_cell_80/dropout_2/Mul_1Mullstm_cell_80/dropout_2/Mul:z:0lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_2/Mul_1?
lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_80/dropout_3/Const?
lstm_cell_80/dropout_3/MulMullstm_cell_80/ones_like:output:0%lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Mul?
lstm_cell_80/dropout_3/ShapeShapelstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_80/dropout_3/Shape?
3lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_80/dropout_3/random_uniform/RandomUniform?
%lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_80/dropout_3/GreaterEqual/y?
#lstm_cell_80/dropout_3/GreaterEqualGreaterEqual<lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_80/dropout_3/GreaterEqual?
lstm_cell_80/dropout_3/CastCast'lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Cast?
lstm_cell_80/dropout_3/Mul_1Mullstm_cell_80/dropout_3/Mul:z:0lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/dropout_3/Mul_1~
lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_80/split/split_dim?
!lstm_cell_80/split/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_80/split/ReadVariableOp?
lstm_cell_80/splitSplit%lstm_cell_80/split/split_dim:output:0)lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_80/split?
lstm_cell_80/MatMulMatMulstrided_slice_2:output:0lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul?
lstm_cell_80/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_1?
lstm_cell_80/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_2?
lstm_cell_80/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_3?
lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_80/split_1/split_dim?
#lstm_cell_80/split_1/ReadVariableOpReadVariableOp,lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_80/split_1/ReadVariableOp?
lstm_cell_80/split_1Split'lstm_cell_80/split_1/split_dim:output:0+lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_80/split_1?
lstm_cell_80/BiasAddBiasAddlstm_cell_80/MatMul:product:0lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd?
lstm_cell_80/BiasAdd_1BiasAddlstm_cell_80/MatMul_1:product:0lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_1?
lstm_cell_80/BiasAdd_2BiasAddlstm_cell_80/MatMul_2:product:0lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_2?
lstm_cell_80/BiasAdd_3BiasAddlstm_cell_80/MatMul_3:product:0lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/BiasAdd_3?
lstm_cell_80/mulMulzeros:output:0lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul?
lstm_cell_80/mul_1Mulzeros:output:0 lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_1?
lstm_cell_80/mul_2Mulzeros:output:0 lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_2?
lstm_cell_80/mul_3Mulzeros:output:0 lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_3?
lstm_cell_80/ReadVariableOpReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp?
 lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_80/strided_slice/stack?
"lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice/stack_1?
"lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_80/strided_slice/stack_2?
lstm_cell_80/strided_sliceStridedSlice#lstm_cell_80/ReadVariableOp:value:0)lstm_cell_80/strided_slice/stack:output:0+lstm_cell_80/strided_slice/stack_1:output:0+lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice?
lstm_cell_80/MatMul_4MatMullstm_cell_80/mul:z:0#lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_4?
lstm_cell_80/addAddV2lstm_cell_80/BiasAdd:output:0lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add
lstm_cell_80/SigmoidSigmoidlstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid?
lstm_cell_80/ReadVariableOp_1ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_1?
"lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_80/strided_slice_1/stack?
$lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_80/strided_slice_1/stack_1?
$lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_1/stack_2?
lstm_cell_80/strided_slice_1StridedSlice%lstm_cell_80/ReadVariableOp_1:value:0+lstm_cell_80/strided_slice_1/stack:output:0-lstm_cell_80/strided_slice_1/stack_1:output:0-lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_1?
lstm_cell_80/MatMul_5MatMullstm_cell_80/mul_1:z:0%lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_5?
lstm_cell_80/add_1AddV2lstm_cell_80/BiasAdd_1:output:0lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_1?
lstm_cell_80/Sigmoid_1Sigmoidlstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_1?
lstm_cell_80/mul_4Mullstm_cell_80/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_4?
lstm_cell_80/ReadVariableOp_2ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_2?
"lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_80/strided_slice_2/stack?
$lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_80/strided_slice_2/stack_1?
$lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_2/stack_2?
lstm_cell_80/strided_slice_2StridedSlice%lstm_cell_80/ReadVariableOp_2:value:0+lstm_cell_80/strided_slice_2/stack:output:0-lstm_cell_80/strided_slice_2/stack_1:output:0-lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_2?
lstm_cell_80/MatMul_6MatMullstm_cell_80/mul_2:z:0%lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_6?
lstm_cell_80/add_2AddV2lstm_cell_80/BiasAdd_2:output:0lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_2x
lstm_cell_80/ReluRelulstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu?
lstm_cell_80/mul_5Mullstm_cell_80/Sigmoid:y:0lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_5?
lstm_cell_80/add_3AddV2lstm_cell_80/mul_4:z:0lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_3?
lstm_cell_80/ReadVariableOp_3ReadVariableOp$lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_80/ReadVariableOp_3?
"lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_80/strided_slice_3/stack?
$lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_80/strided_slice_3/stack_1?
$lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_80/strided_slice_3/stack_2?
lstm_cell_80/strided_slice_3StridedSlice%lstm_cell_80/ReadVariableOp_3:value:0+lstm_cell_80/strided_slice_3/stack:output:0-lstm_cell_80/strided_slice_3/stack_1:output:0-lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_80/strided_slice_3?
lstm_cell_80/MatMul_7MatMullstm_cell_80/mul_3:z:0%lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/MatMul_7?
lstm_cell_80/add_4AddV2lstm_cell_80/BiasAdd_3:output:0lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/add_4?
lstm_cell_80/Sigmoid_2Sigmoidlstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Sigmoid_2|
lstm_cell_80/Relu_1Relulstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/Relu_1?
lstm_cell_80/mul_6Mullstm_cell_80/Sigmoid_2:y:0!lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_80/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_80_split_readvariableop_resource,lstm_cell_80_split_1_readvariableop_resource$lstm_cell_80_readvariableop_resource*
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
while_body_2644204*
condR
while_cond_2644203*K
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_80/ReadVariableOp^lstm_cell_80/ReadVariableOp_1^lstm_cell_80/ReadVariableOp_2^lstm_cell_80/ReadVariableOp_3"^lstm_cell_80/split/ReadVariableOp$^lstm_cell_80/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_80/ReadVariableOplstm_cell_80/ReadVariableOp2>
lstm_cell_80/ReadVariableOp_1lstm_cell_80/ReadVariableOp_12>
lstm_cell_80/ReadVariableOp_2lstm_cell_80/ReadVariableOp_22>
lstm_cell_80/ReadVariableOp_3lstm_cell_80/ReadVariableOp_32F
!lstm_cell_80/split/ReadVariableOp!lstm_cell_80/split/ReadVariableOp2J
#lstm_cell_80/split_1/ReadVariableOp#lstm_cell_80/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_80_layer_call_fn_2645270

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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26443692
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
?
?
while_cond_2645929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645929___redundant_placeholder05
1while_while_cond_2645929___redundant_placeholder15
1while_while_cond_2645929___redundant_placeholder25
1while_while_cond_2645929___redundant_placeholder3
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
while_cond_2643797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643797___redundant_placeholder05
1while_while_cond_2643797___redundant_placeholder15
1while_while_cond_2643797___redundant_placeholder25
1while_while_cond_2643797___redundant_placeholder3
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
lstm_80_while_body_2644724,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3+
'lstm_80_while_lstm_80_strided_slice_1_0g
clstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_80_while_lstm_cell_80_split_readvariableop_resource_0:	?K
<lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0:	?G
4lstm_80_while_lstm_cell_80_readvariableop_resource_0:	 ?
lstm_80_while_identity
lstm_80_while_identity_1
lstm_80_while_identity_2
lstm_80_while_identity_3
lstm_80_while_identity_4
lstm_80_while_identity_5)
%lstm_80_while_lstm_80_strided_slice_1e
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorK
8lstm_80_while_lstm_cell_80_split_readvariableop_resource:	?I
:lstm_80_while_lstm_cell_80_split_1_readvariableop_resource:	?E
2lstm_80_while_lstm_cell_80_readvariableop_resource:	 ???)lstm_80/while/lstm_cell_80/ReadVariableOp?+lstm_80/while/lstm_cell_80/ReadVariableOp_1?+lstm_80/while/lstm_cell_80/ReadVariableOp_2?+lstm_80/while/lstm_cell_80/ReadVariableOp_3?/lstm_80/while/lstm_cell_80/split/ReadVariableOp?1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_80/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0lstm_80_while_placeholderHlstm_80/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_80/while/TensorArrayV2Read/TensorListGetItem?
*lstm_80/while/lstm_cell_80/ones_like/ShapeShapelstm_80_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_80/while/lstm_cell_80/ones_like/Shape?
*lstm_80/while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_80/while/lstm_cell_80/ones_like/Const?
$lstm_80/while/lstm_cell_80/ones_likeFill3lstm_80/while/lstm_cell_80/ones_like/Shape:output:03lstm_80/while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/ones_like?
*lstm_80/while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_80/while/lstm_cell_80/split/split_dim?
/lstm_80/while/lstm_cell_80/split/ReadVariableOpReadVariableOp:lstm_80_while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_80/while/lstm_cell_80/split/ReadVariableOp?
 lstm_80/while/lstm_cell_80/splitSplit3lstm_80/while/lstm_cell_80/split/split_dim:output:07lstm_80/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_80/while/lstm_cell_80/split?
!lstm_80/while/lstm_cell_80/MatMulMatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_80/while/lstm_cell_80/MatMul?
#lstm_80/while/lstm_cell_80/MatMul_1MatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_1?
#lstm_80/while/lstm_cell_80/MatMul_2MatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_2?
#lstm_80/while/lstm_cell_80/MatMul_3MatMul8lstm_80/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_80/while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_3?
,lstm_80/while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_80/while/lstm_cell_80/split_1/split_dim?
1lstm_80/while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp<lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp?
"lstm_80/while/lstm_cell_80/split_1Split5lstm_80/while/lstm_cell_80/split_1/split_dim:output:09lstm_80/while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_80/while/lstm_cell_80/split_1?
"lstm_80/while/lstm_cell_80/BiasAddBiasAdd+lstm_80/while/lstm_cell_80/MatMul:product:0+lstm_80/while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/while/lstm_cell_80/BiasAdd?
$lstm_80/while/lstm_cell_80/BiasAdd_1BiasAdd-lstm_80/while/lstm_cell_80/MatMul_1:product:0+lstm_80/while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/BiasAdd_1?
$lstm_80/while/lstm_cell_80/BiasAdd_2BiasAdd-lstm_80/while/lstm_cell_80/MatMul_2:product:0+lstm_80/while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/BiasAdd_2?
$lstm_80/while/lstm_cell_80/BiasAdd_3BiasAdd-lstm_80/while/lstm_cell_80/MatMul_3:product:0+lstm_80/while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/BiasAdd_3?
lstm_80/while/lstm_cell_80/mulMullstm_80_while_placeholder_2-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/while/lstm_cell_80/mul?
 lstm_80/while/lstm_cell_80/mul_1Mullstm_80_while_placeholder_2-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_1?
 lstm_80/while/lstm_cell_80/mul_2Mullstm_80_while_placeholder_2-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_2?
 lstm_80/while/lstm_cell_80/mul_3Mullstm_80_while_placeholder_2-lstm_80/while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_3?
)lstm_80/while/lstm_cell_80/ReadVariableOpReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_80/while/lstm_cell_80/ReadVariableOp?
.lstm_80/while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_80/while/lstm_cell_80/strided_slice/stack?
0lstm_80/while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_80/while/lstm_cell_80/strided_slice/stack_1?
0lstm_80/while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_80/while/lstm_cell_80/strided_slice/stack_2?
(lstm_80/while/lstm_cell_80/strided_sliceStridedSlice1lstm_80/while/lstm_cell_80/ReadVariableOp:value:07lstm_80/while/lstm_cell_80/strided_slice/stack:output:09lstm_80/while/lstm_cell_80/strided_slice/stack_1:output:09lstm_80/while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_80/while/lstm_cell_80/strided_slice?
#lstm_80/while/lstm_cell_80/MatMul_4MatMul"lstm_80/while/lstm_cell_80/mul:z:01lstm_80/while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_4?
lstm_80/while/lstm_cell_80/addAddV2+lstm_80/while/lstm_cell_80/BiasAdd:output:0-lstm_80/while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/while/lstm_cell_80/add?
"lstm_80/while/lstm_cell_80/SigmoidSigmoid"lstm_80/while/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/while/lstm_cell_80/Sigmoid?
+lstm_80/while/lstm_cell_80/ReadVariableOp_1ReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_80/while/lstm_cell_80/ReadVariableOp_1?
0lstm_80/while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_80/while/lstm_cell_80/strided_slice_1/stack?
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_1?
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_80/while/lstm_cell_80/strided_slice_1/stack_2?
*lstm_80/while/lstm_cell_80/strided_slice_1StridedSlice3lstm_80/while/lstm_cell_80/ReadVariableOp_1:value:09lstm_80/while/lstm_cell_80/strided_slice_1/stack:output:0;lstm_80/while/lstm_cell_80/strided_slice_1/stack_1:output:0;lstm_80/while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_80/while/lstm_cell_80/strided_slice_1?
#lstm_80/while/lstm_cell_80/MatMul_5MatMul$lstm_80/while/lstm_cell_80/mul_1:z:03lstm_80/while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_5?
 lstm_80/while/lstm_cell_80/add_1AddV2-lstm_80/while/lstm_cell_80/BiasAdd_1:output:0-lstm_80/while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_1?
$lstm_80/while/lstm_cell_80/Sigmoid_1Sigmoid$lstm_80/while/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/Sigmoid_1?
 lstm_80/while/lstm_cell_80/mul_4Mul(lstm_80/while/lstm_cell_80/Sigmoid_1:y:0lstm_80_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_4?
+lstm_80/while/lstm_cell_80/ReadVariableOp_2ReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_80/while/lstm_cell_80/ReadVariableOp_2?
0lstm_80/while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_80/while/lstm_cell_80/strided_slice_2/stack?
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_1?
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_80/while/lstm_cell_80/strided_slice_2/stack_2?
*lstm_80/while/lstm_cell_80/strided_slice_2StridedSlice3lstm_80/while/lstm_cell_80/ReadVariableOp_2:value:09lstm_80/while/lstm_cell_80/strided_slice_2/stack:output:0;lstm_80/while/lstm_cell_80/strided_slice_2/stack_1:output:0;lstm_80/while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_80/while/lstm_cell_80/strided_slice_2?
#lstm_80/while/lstm_cell_80/MatMul_6MatMul$lstm_80/while/lstm_cell_80/mul_2:z:03lstm_80/while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_6?
 lstm_80/while/lstm_cell_80/add_2AddV2-lstm_80/while/lstm_cell_80/BiasAdd_2:output:0-lstm_80/while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_2?
lstm_80/while/lstm_cell_80/ReluRelu$lstm_80/while/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_80/while/lstm_cell_80/Relu?
 lstm_80/while/lstm_cell_80/mul_5Mul&lstm_80/while/lstm_cell_80/Sigmoid:y:0-lstm_80/while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_5?
 lstm_80/while/lstm_cell_80/add_3AddV2$lstm_80/while/lstm_cell_80/mul_4:z:0$lstm_80/while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_3?
+lstm_80/while/lstm_cell_80/ReadVariableOp_3ReadVariableOp4lstm_80_while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_80/while/lstm_cell_80/ReadVariableOp_3?
0lstm_80/while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_80/while/lstm_cell_80/strided_slice_3/stack?
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_1?
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_80/while/lstm_cell_80/strided_slice_3/stack_2?
*lstm_80/while/lstm_cell_80/strided_slice_3StridedSlice3lstm_80/while/lstm_cell_80/ReadVariableOp_3:value:09lstm_80/while/lstm_cell_80/strided_slice_3/stack:output:0;lstm_80/while/lstm_cell_80/strided_slice_3/stack_1:output:0;lstm_80/while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_80/while/lstm_cell_80/strided_slice_3?
#lstm_80/while/lstm_cell_80/MatMul_7MatMul$lstm_80/while/lstm_cell_80/mul_3:z:03lstm_80/while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_80/while/lstm_cell_80/MatMul_7?
 lstm_80/while/lstm_cell_80/add_4AddV2-lstm_80/while/lstm_cell_80/BiasAdd_3:output:0-lstm_80/while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/add_4?
$lstm_80/while/lstm_cell_80/Sigmoid_2Sigmoid$lstm_80/while/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/while/lstm_cell_80/Sigmoid_2?
!lstm_80/while/lstm_cell_80/Relu_1Relu$lstm_80/while/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_80/while/lstm_cell_80/Relu_1?
 lstm_80/while/lstm_cell_80/mul_6Mul(lstm_80/while/lstm_cell_80/Sigmoid_2:y:0/lstm_80/while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/while/lstm_cell_80/mul_6?
2lstm_80/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_80_while_placeholder_1lstm_80_while_placeholder$lstm_80/while/lstm_cell_80/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_80/while/TensorArrayV2Write/TensorListSetIteml
lstm_80/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add/y?
lstm_80/while/addAddV2lstm_80_while_placeholderlstm_80/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/addp
lstm_80/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_80/while/add_1/y?
lstm_80/while/add_1AddV2(lstm_80_while_lstm_80_while_loop_counterlstm_80/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_80/while/add_1?
lstm_80/while/IdentityIdentitylstm_80/while/add_1:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity?
lstm_80/while/Identity_1Identity.lstm_80_while_lstm_80_while_maximum_iterations^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_1?
lstm_80/while/Identity_2Identitylstm_80/while/add:z:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_2?
lstm_80/while/Identity_3IdentityBlstm_80/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_80/while/NoOp*
T0*
_output_shapes
: 2
lstm_80/while/Identity_3?
lstm_80/while/Identity_4Identity$lstm_80/while/lstm_cell_80/mul_6:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_80/while/Identity_4?
lstm_80/while/Identity_5Identity$lstm_80/while/lstm_cell_80/add_3:z:0^lstm_80/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_80/while/Identity_5?
lstm_80/while/NoOpNoOp*^lstm_80/while/lstm_cell_80/ReadVariableOp,^lstm_80/while/lstm_cell_80/ReadVariableOp_1,^lstm_80/while/lstm_cell_80/ReadVariableOp_2,^lstm_80/while/lstm_cell_80/ReadVariableOp_30^lstm_80/while/lstm_cell_80/split/ReadVariableOp2^lstm_80/while/lstm_cell_80/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_80/while/NoOp"9
lstm_80_while_identitylstm_80/while/Identity:output:0"=
lstm_80_while_identity_1!lstm_80/while/Identity_1:output:0"=
lstm_80_while_identity_2!lstm_80/while/Identity_2:output:0"=
lstm_80_while_identity_3!lstm_80/while/Identity_3:output:0"=
lstm_80_while_identity_4!lstm_80/while/Identity_4:output:0"=
lstm_80_while_identity_5!lstm_80/while/Identity_5:output:0"P
%lstm_80_while_lstm_80_strided_slice_1'lstm_80_while_lstm_80_strided_slice_1_0"j
2lstm_80_while_lstm_cell_80_readvariableop_resource4lstm_80_while_lstm_cell_80_readvariableop_resource_0"z
:lstm_80_while_lstm_cell_80_split_1_readvariableop_resource<lstm_80_while_lstm_cell_80_split_1_readvariableop_resource_0"v
8lstm_80_while_lstm_cell_80_split_readvariableop_resource:lstm_80_while_lstm_cell_80_split_readvariableop_resource_0"?
alstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensorclstm_80_while_tensorarrayv2read_tensorlistgetitem_lstm_80_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_80/while/lstm_cell_80/ReadVariableOp)lstm_80/while/lstm_cell_80/ReadVariableOp2Z
+lstm_80/while/lstm_cell_80/ReadVariableOp_1+lstm_80/while/lstm_cell_80/ReadVariableOp_12Z
+lstm_80/while/lstm_cell_80/ReadVariableOp_2+lstm_80/while/lstm_cell_80/ReadVariableOp_22Z
+lstm_80/while/lstm_cell_80/ReadVariableOp_3+lstm_80/while/lstm_cell_80/ReadVariableOp_32b
/lstm_80/while/lstm_cell_80/split/ReadVariableOp/lstm_80/while/lstm_cell_80/split/ReadVariableOp2f
1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp1lstm_80/while/lstm_cell_80/split_1/ReadVariableOp: 
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

?
lstm_80_while_cond_2645026,
(lstm_80_while_lstm_80_while_loop_counter2
.lstm_80_while_lstm_80_while_maximum_iterations
lstm_80_while_placeholder
lstm_80_while_placeholder_1
lstm_80_while_placeholder_2
lstm_80_while_placeholder_3.
*lstm_80_while_less_lstm_80_strided_slice_1E
Alstm_80_while_lstm_80_while_cond_2645026___redundant_placeholder0E
Alstm_80_while_lstm_80_while_cond_2645026___redundant_placeholder1E
Alstm_80_while_lstm_80_while_cond_2645026___redundant_placeholder2E
Alstm_80_while_lstm_80_while_cond_2645026___redundant_placeholder3
lstm_80_while_identity
?
lstm_80/while/LessLesslstm_80_while_placeholder*lstm_80_while_less_lstm_80_strided_slice_1*
T0*
_output_shapes
: 2
lstm_80/while/Lessu
lstm_80/while/IdentityIdentitylstm_80/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_80/while/Identity"9
lstm_80_while_identitylstm_80/while/Identity:output:0*(
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
while_cond_2645654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645654___redundant_placeholder05
1while_while_cond_2645654___redundant_placeholder15
1while_while_cond_2645654___redundant_placeholder25
1while_while_cond_2645654___redundant_placeholder3
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
while_cond_2646204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2646204___redundant_placeholder05
1while_while_cond_2646204___redundant_placeholder15
1while_while_cond_2646204___redundant_placeholder25
1while_while_cond_2646204___redundant_placeholder3
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
while_body_2644204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_80_split_readvariableop_resource_0:	?C
4while_lstm_cell_80_split_1_readvariableop_resource_0:	??
,while_lstm_cell_80_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_80_split_readvariableop_resource:	?A
2while_lstm_cell_80_split_1_readvariableop_resource:	?=
*while_lstm_cell_80_readvariableop_resource:	 ???!while/lstm_cell_80/ReadVariableOp?#while/lstm_cell_80/ReadVariableOp_1?#while/lstm_cell_80/ReadVariableOp_2?#while/lstm_cell_80/ReadVariableOp_3?'while/lstm_cell_80/split/ReadVariableOp?)while/lstm_cell_80/split_1/ReadVariableOp?
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
"while/lstm_cell_80/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_80/ones_like/Shape?
"while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_80/ones_like/Const?
while/lstm_cell_80/ones_likeFill+while/lstm_cell_80/ones_like/Shape:output:0+while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/ones_like?
 while/lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_80/dropout/Const?
while/lstm_cell_80/dropout/MulMul%while/lstm_cell_80/ones_like:output:0)while/lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_80/dropout/Mul?
 while/lstm_cell_80/dropout/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_80/dropout/Shape?
7while/lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_80/dropout/random_uniform/RandomUniform?
)while/lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_80/dropout/GreaterEqual/y?
'while/lstm_cell_80/dropout/GreaterEqualGreaterEqual@while/lstm_cell_80/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_80/dropout/GreaterEqual?
while/lstm_cell_80/dropout/CastCast+while/lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_80/dropout/Cast?
 while/lstm_cell_80/dropout/Mul_1Mul"while/lstm_cell_80/dropout/Mul:z:0#while/lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout/Mul_1?
"while/lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_1/Const?
 while/lstm_cell_80/dropout_1/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_1/Mul?
"while/lstm_cell_80/dropout_1/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_1/Shape?
9while/lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??w2;
9while/lstm_cell_80/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_1/GreaterEqual/y?
)while/lstm_cell_80/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_1/GreaterEqual?
!while/lstm_cell_80/dropout_1/CastCast-while/lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_1/Cast?
"while/lstm_cell_80/dropout_1/Mul_1Mul$while/lstm_cell_80/dropout_1/Mul:z:0%while/lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_1/Mul_1?
"while/lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_2/Const?
 while/lstm_cell_80/dropout_2/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_2/Mul?
"while/lstm_cell_80/dropout_2/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_2/Shape?
9while/lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_80/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_2/GreaterEqual/y?
)while/lstm_cell_80/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_2/GreaterEqual?
!while/lstm_cell_80/dropout_2/CastCast-while/lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_2/Cast?
"while/lstm_cell_80/dropout_2/Mul_1Mul$while/lstm_cell_80/dropout_2/Mul:z:0%while/lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_2/Mul_1?
"while/lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_80/dropout_3/Const?
 while/lstm_cell_80/dropout_3/MulMul%while/lstm_cell_80/ones_like:output:0+while/lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_80/dropout_3/Mul?
"while/lstm_cell_80/dropout_3/ShapeShape%while/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_80/dropout_3/Shape?
9while/lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_80/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_80/dropout_3/GreaterEqual/y?
)while/lstm_cell_80/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_80/dropout_3/GreaterEqual?
!while/lstm_cell_80/dropout_3/CastCast-while/lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_80/dropout_3/Cast?
"while/lstm_cell_80/dropout_3/Mul_1Mul$while/lstm_cell_80/dropout_3/Mul:z:0%while/lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_80/dropout_3/Mul_1?
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim?
'while/lstm_cell_80/split/ReadVariableOpReadVariableOp2while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_80/split/ReadVariableOp?
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_80/split?
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul?
while/lstm_cell_80/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_1?
while/lstm_cell_80/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_2?
while/lstm_cell_80/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_3?
$while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_80/split_1/split_dim?
)while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_80/split_1/ReadVariableOp?
while/lstm_cell_80/split_1Split-while/lstm_cell_80/split_1/split_dim:output:01while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_80/split_1?
while/lstm_cell_80/BiasAddBiasAdd#while/lstm_cell_80/MatMul:product:0#while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd?
while/lstm_cell_80/BiasAdd_1BiasAdd%while/lstm_cell_80/MatMul_1:product:0#while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_1?
while/lstm_cell_80/BiasAdd_2BiasAdd%while/lstm_cell_80/MatMul_2:product:0#while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_2?
while/lstm_cell_80/BiasAdd_3BiasAdd%while/lstm_cell_80/MatMul_3:product:0#while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_3?
while/lstm_cell_80/mulMulwhile_placeholder_2$while/lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul?
while/lstm_cell_80/mul_1Mulwhile_placeholder_2&while/lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_1?
while/lstm_cell_80/mul_2Mulwhile_placeholder_2&while/lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_2?
while/lstm_cell_80/mul_3Mulwhile_placeholder_2&while/lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_3?
!while/lstm_cell_80/ReadVariableOpReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_80/ReadVariableOp?
&while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_80/strided_slice/stack?
(while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice/stack_1?
(while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_80/strided_slice/stack_2?
 while/lstm_cell_80/strided_sliceStridedSlice)while/lstm_cell_80/ReadVariableOp:value:0/while/lstm_cell_80/strided_slice/stack:output:01while/lstm_cell_80/strided_slice/stack_1:output:01while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_80/strided_slice?
while/lstm_cell_80/MatMul_4MatMulwhile/lstm_cell_80/mul:z:0)while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_4?
while/lstm_cell_80/addAddV2#while/lstm_cell_80/BiasAdd:output:0%while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add?
while/lstm_cell_80/SigmoidSigmoidwhile/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid?
#while/lstm_cell_80/ReadVariableOp_1ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_1?
(while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice_1/stack?
*while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_80/strided_slice_1/stack_1?
*while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_1/stack_2?
"while/lstm_cell_80/strided_slice_1StridedSlice+while/lstm_cell_80/ReadVariableOp_1:value:01while/lstm_cell_80/strided_slice_1/stack:output:03while/lstm_cell_80/strided_slice_1/stack_1:output:03while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_1?
while/lstm_cell_80/MatMul_5MatMulwhile/lstm_cell_80/mul_1:z:0+while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_5?
while/lstm_cell_80/add_1AddV2%while/lstm_cell_80/BiasAdd_1:output:0%while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_1?
while/lstm_cell_80/Sigmoid_1Sigmoidwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_1?
while/lstm_cell_80/mul_4Mul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_4?
#while/lstm_cell_80/ReadVariableOp_2ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_2?
(while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_80/strided_slice_2/stack?
*while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_80/strided_slice_2/stack_1?
*while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_2/stack_2?
"while/lstm_cell_80/strided_slice_2StridedSlice+while/lstm_cell_80/ReadVariableOp_2:value:01while/lstm_cell_80/strided_slice_2/stack:output:03while/lstm_cell_80/strided_slice_2/stack_1:output:03while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_2?
while/lstm_cell_80/MatMul_6MatMulwhile/lstm_cell_80/mul_2:z:0+while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_6?
while/lstm_cell_80/add_2AddV2%while/lstm_cell_80/BiasAdd_2:output:0%while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_2?
while/lstm_cell_80/ReluReluwhile/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu?
while/lstm_cell_80/mul_5Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_5?
while/lstm_cell_80/add_3AddV2while/lstm_cell_80/mul_4:z:0while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_3?
#while/lstm_cell_80/ReadVariableOp_3ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_3?
(while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_80/strided_slice_3/stack?
*while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_80/strided_slice_3/stack_1?
*while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_3/stack_2?
"while/lstm_cell_80/strided_slice_3StridedSlice+while/lstm_cell_80/ReadVariableOp_3:value:01while/lstm_cell_80/strided_slice_3/stack:output:03while/lstm_cell_80/strided_slice_3/stack_1:output:03while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_3?
while/lstm_cell_80/MatMul_7MatMulwhile/lstm_cell_80/mul_3:z:0+while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_7?
while/lstm_cell_80/add_4AddV2%while/lstm_cell_80/BiasAdd_3:output:0%while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_4?
while/lstm_cell_80/Sigmoid_2Sigmoidwhile/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_2?
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu_1?
while/lstm_cell_80/mul_6Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_80/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_80/ReadVariableOp$^while/lstm_cell_80/ReadVariableOp_1$^while/lstm_cell_80/ReadVariableOp_2$^while/lstm_cell_80/ReadVariableOp_3(^while/lstm_cell_80/split/ReadVariableOp*^while/lstm_cell_80/split_1/ReadVariableOp*"
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
*while_lstm_cell_80_readvariableop_resource,while_lstm_cell_80_readvariableop_resource_0"j
2while_lstm_cell_80_split_1_readvariableop_resource4while_lstm_cell_80_split_1_readvariableop_resource_0"f
0while_lstm_cell_80_split_readvariableop_resource2while_lstm_cell_80_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_80/ReadVariableOp!while/lstm_cell_80/ReadVariableOp2J
#while/lstm_cell_80/ReadVariableOp_1#while/lstm_cell_80/ReadVariableOp_12J
#while/lstm_cell_80/ReadVariableOp_2#while/lstm_cell_80/ReadVariableOp_22J
#while/lstm_cell_80/ReadVariableOp_3#while/lstm_cell_80/ReadVariableOp_32R
'while/lstm_cell_80/split/ReadVariableOp'while/lstm_cell_80/split/ReadVariableOp2V
)while/lstm_cell_80/split_1/ReadVariableOp)while/lstm_cell_80/split_1/ReadVariableOp: 
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
while_body_2643798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_80_split_readvariableop_resource_0:	?C
4while_lstm_cell_80_split_1_readvariableop_resource_0:	??
,while_lstm_cell_80_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_80_split_readvariableop_resource:	?A
2while_lstm_cell_80_split_1_readvariableop_resource:	?=
*while_lstm_cell_80_readvariableop_resource:	 ???!while/lstm_cell_80/ReadVariableOp?#while/lstm_cell_80/ReadVariableOp_1?#while/lstm_cell_80/ReadVariableOp_2?#while/lstm_cell_80/ReadVariableOp_3?'while/lstm_cell_80/split/ReadVariableOp?)while/lstm_cell_80/split_1/ReadVariableOp?
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
"while/lstm_cell_80/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_80/ones_like/Shape?
"while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_80/ones_like/Const?
while/lstm_cell_80/ones_likeFill+while/lstm_cell_80/ones_like/Shape:output:0+while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/ones_like?
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim?
'while/lstm_cell_80/split/ReadVariableOpReadVariableOp2while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_80/split/ReadVariableOp?
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_80/split?
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul?
while/lstm_cell_80/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_1?
while/lstm_cell_80/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_2?
while/lstm_cell_80/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_3?
$while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_80/split_1/split_dim?
)while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_80/split_1/ReadVariableOp?
while/lstm_cell_80/split_1Split-while/lstm_cell_80/split_1/split_dim:output:01while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_80/split_1?
while/lstm_cell_80/BiasAddBiasAdd#while/lstm_cell_80/MatMul:product:0#while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd?
while/lstm_cell_80/BiasAdd_1BiasAdd%while/lstm_cell_80/MatMul_1:product:0#while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_1?
while/lstm_cell_80/BiasAdd_2BiasAdd%while/lstm_cell_80/MatMul_2:product:0#while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_2?
while/lstm_cell_80/BiasAdd_3BiasAdd%while/lstm_cell_80/MatMul_3:product:0#while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_3?
while/lstm_cell_80/mulMulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul?
while/lstm_cell_80/mul_1Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_1?
while/lstm_cell_80/mul_2Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_2?
while/lstm_cell_80/mul_3Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_3?
!while/lstm_cell_80/ReadVariableOpReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_80/ReadVariableOp?
&while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_80/strided_slice/stack?
(while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice/stack_1?
(while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_80/strided_slice/stack_2?
 while/lstm_cell_80/strided_sliceStridedSlice)while/lstm_cell_80/ReadVariableOp:value:0/while/lstm_cell_80/strided_slice/stack:output:01while/lstm_cell_80/strided_slice/stack_1:output:01while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_80/strided_slice?
while/lstm_cell_80/MatMul_4MatMulwhile/lstm_cell_80/mul:z:0)while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_4?
while/lstm_cell_80/addAddV2#while/lstm_cell_80/BiasAdd:output:0%while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add?
while/lstm_cell_80/SigmoidSigmoidwhile/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid?
#while/lstm_cell_80/ReadVariableOp_1ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_1?
(while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice_1/stack?
*while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_80/strided_slice_1/stack_1?
*while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_1/stack_2?
"while/lstm_cell_80/strided_slice_1StridedSlice+while/lstm_cell_80/ReadVariableOp_1:value:01while/lstm_cell_80/strided_slice_1/stack:output:03while/lstm_cell_80/strided_slice_1/stack_1:output:03while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_1?
while/lstm_cell_80/MatMul_5MatMulwhile/lstm_cell_80/mul_1:z:0+while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_5?
while/lstm_cell_80/add_1AddV2%while/lstm_cell_80/BiasAdd_1:output:0%while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_1?
while/lstm_cell_80/Sigmoid_1Sigmoidwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_1?
while/lstm_cell_80/mul_4Mul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_4?
#while/lstm_cell_80/ReadVariableOp_2ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_2?
(while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_80/strided_slice_2/stack?
*while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_80/strided_slice_2/stack_1?
*while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_2/stack_2?
"while/lstm_cell_80/strided_slice_2StridedSlice+while/lstm_cell_80/ReadVariableOp_2:value:01while/lstm_cell_80/strided_slice_2/stack:output:03while/lstm_cell_80/strided_slice_2/stack_1:output:03while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_2?
while/lstm_cell_80/MatMul_6MatMulwhile/lstm_cell_80/mul_2:z:0+while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_6?
while/lstm_cell_80/add_2AddV2%while/lstm_cell_80/BiasAdd_2:output:0%while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_2?
while/lstm_cell_80/ReluReluwhile/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu?
while/lstm_cell_80/mul_5Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_5?
while/lstm_cell_80/add_3AddV2while/lstm_cell_80/mul_4:z:0while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_3?
#while/lstm_cell_80/ReadVariableOp_3ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_3?
(while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_80/strided_slice_3/stack?
*while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_80/strided_slice_3/stack_1?
*while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_3/stack_2?
"while/lstm_cell_80/strided_slice_3StridedSlice+while/lstm_cell_80/ReadVariableOp_3:value:01while/lstm_cell_80/strided_slice_3/stack:output:03while/lstm_cell_80/strided_slice_3/stack_1:output:03while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_3?
while/lstm_cell_80/MatMul_7MatMulwhile/lstm_cell_80/mul_3:z:0+while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_7?
while/lstm_cell_80/add_4AddV2%while/lstm_cell_80/BiasAdd_3:output:0%while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_4?
while/lstm_cell_80/Sigmoid_2Sigmoidwhile/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_2?
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu_1?
while/lstm_cell_80/mul_6Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_80/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_80/ReadVariableOp$^while/lstm_cell_80/ReadVariableOp_1$^while/lstm_cell_80/ReadVariableOp_2$^while/lstm_cell_80/ReadVariableOp_3(^while/lstm_cell_80/split/ReadVariableOp*^while/lstm_cell_80/split_1/ReadVariableOp*"
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
*while_lstm_cell_80_readvariableop_resource,while_lstm_cell_80_readvariableop_resource_0"j
2while_lstm_cell_80_split_1_readvariableop_resource4while_lstm_cell_80_split_1_readvariableop_resource_0"f
0while_lstm_cell_80_split_readvariableop_resource2while_lstm_cell_80_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_80/ReadVariableOp!while/lstm_cell_80/ReadVariableOp2J
#while/lstm_cell_80/ReadVariableOp_1#while/lstm_cell_80/ReadVariableOp_12J
#while/lstm_cell_80/ReadVariableOp_2#while/lstm_cell_80/ReadVariableOp_22J
#while/lstm_cell_80/ReadVariableOp_3#while/lstm_cell_80/ReadVariableOp_32R
'while/lstm_cell_80/split/ReadVariableOp'while/lstm_cell_80/split/ReadVariableOp2V
)while/lstm_cell_80/split_1/ReadVariableOp)while/lstm_cell_80/split_1/ReadVariableOp: 
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
while_cond_2645379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2645379___redundant_placeholder05
1while_while_cond_2645379___redundant_placeholder15
1while_while_cond_2645379___redundant_placeholder25
1while_while_cond_2645379___redundant_placeholder3
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
/__inference_sequential_32_layer_call_fn_2644023
input_33
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_33unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_32_layer_call_and_return_conditional_losses_26440062
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
input_33
?{
?
#__inference__traced_restore_2646896
file_prefix2
 assignvariableop_dense_96_kernel:  .
 assignvariableop_1_dense_96_bias: 4
"assignvariableop_2_dense_97_kernel: .
 assignvariableop_3_dense_97_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_80_lstm_cell_80_kernel:	?L
9assignvariableop_10_lstm_80_lstm_cell_80_recurrent_kernel:	 ?<
-assignvariableop_11_lstm_80_lstm_cell_80_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_96_kernel_m:  6
(assignvariableop_15_adam_dense_96_bias_m: <
*assignvariableop_16_adam_dense_97_kernel_m: 6
(assignvariableop_17_adam_dense_97_bias_m:I
6assignvariableop_18_adam_lstm_80_lstm_cell_80_kernel_m:	?S
@assignvariableop_19_adam_lstm_80_lstm_cell_80_recurrent_kernel_m:	 ?C
4assignvariableop_20_adam_lstm_80_lstm_cell_80_bias_m:	?<
*assignvariableop_21_adam_dense_96_kernel_v:  6
(assignvariableop_22_adam_dense_96_bias_v: <
*assignvariableop_23_adam_dense_97_kernel_v: 6
(assignvariableop_24_adam_dense_97_bias_v:I
6assignvariableop_25_adam_lstm_80_lstm_cell_80_kernel_v:	?S
@assignvariableop_26_adam_lstm_80_lstm_cell_80_recurrent_kernel_v:	 ?C
4assignvariableop_27_adam_lstm_80_lstm_cell_80_bias_v:	?
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOpAssignVariableOp assignvariableop_dense_96_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_96_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_97_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_97_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_80_lstm_cell_80_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_80_lstm_cell_80_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_80_lstm_cell_80_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_96_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_96_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_97_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_97_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_80_lstm_cell_80_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_80_lstm_cell_80_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_80_lstm_cell_80_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_96_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_96_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_97_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_97_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_80_lstm_cell_80_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_80_lstm_cell_80_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_80_lstm_cell_80_bias_vIdentity_27:output:0"/device:CPU:0*
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
/__inference_sequential_32_layer_call_fn_2644595

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
J__inference_sequential_32_layer_call_and_return_conditional_losses_26440062
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
?
H
,__inference_reshape_48_layer_call_fn_2646439

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
G__inference_reshape_48_layer_call_and_return_conditional_losses_26439912
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
??
?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2645220

inputsE
2lstm_80_lstm_cell_80_split_readvariableop_resource:	?C
4lstm_80_lstm_cell_80_split_1_readvariableop_resource:	??
,lstm_80_lstm_cell_80_readvariableop_resource:	 ?9
'dense_96_matmul_readvariableop_resource:  6
(dense_96_biasadd_readvariableop_resource: 9
'dense_97_matmul_readvariableop_resource: 6
(dense_97_biasadd_readvariableop_resource:
identity??dense_96/BiasAdd/ReadVariableOp?dense_96/MatMul/ReadVariableOp?dense_97/BiasAdd/ReadVariableOp?dense_97/MatMul/ReadVariableOp?/dense_97/bias/Regularizer/Square/ReadVariableOp?#lstm_80/lstm_cell_80/ReadVariableOp?%lstm_80/lstm_cell_80/ReadVariableOp_1?%lstm_80/lstm_cell_80/ReadVariableOp_2?%lstm_80/lstm_cell_80/ReadVariableOp_3?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?)lstm_80/lstm_cell_80/split/ReadVariableOp?+lstm_80/lstm_cell_80/split_1/ReadVariableOp?lstm_80/whileT
lstm_80/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_80/Shape?
lstm_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice/stack?
lstm_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_1?
lstm_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_80/strided_slice/stack_2?
lstm_80/strided_sliceStridedSlicelstm_80/Shape:output:0$lstm_80/strided_slice/stack:output:0&lstm_80/strided_slice/stack_1:output:0&lstm_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slicel
lstm_80/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros/mul/y?
lstm_80/zeros/mulMullstm_80/strided_slice:output:0lstm_80/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/mulo
lstm_80/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_80/zeros/Less/y?
lstm_80/zeros/LessLesslstm_80/zeros/mul:z:0lstm_80/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros/Lessr
lstm_80/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros/packed/1?
lstm_80/zeros/packedPacklstm_80/strided_slice:output:0lstm_80/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros/packedo
lstm_80/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros/Const?
lstm_80/zerosFilllstm_80/zeros/packed:output:0lstm_80/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/zerosp
lstm_80/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros_1/mul/y?
lstm_80/zeros_1/mulMullstm_80/strided_slice:output:0lstm_80/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/muls
lstm_80/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_80/zeros_1/Less/y?
lstm_80/zeros_1/LessLesslstm_80/zeros_1/mul:z:0lstm_80/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_80/zeros_1/Lessv
lstm_80/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/zeros_1/packed/1?
lstm_80/zeros_1/packedPacklstm_80/strided_slice:output:0!lstm_80/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_80/zeros_1/packeds
lstm_80/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/zeros_1/Const?
lstm_80/zeros_1Filllstm_80/zeros_1/packed:output:0lstm_80/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/zeros_1?
lstm_80/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose/perm?
lstm_80/transpose	Transposeinputslstm_80/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_80/transposeg
lstm_80/Shape_1Shapelstm_80/transpose:y:0*
T0*
_output_shapes
:2
lstm_80/Shape_1?
lstm_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_1/stack?
lstm_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_1?
lstm_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_1/stack_2?
lstm_80/strided_slice_1StridedSlicelstm_80/Shape_1:output:0&lstm_80/strided_slice_1/stack:output:0(lstm_80/strided_slice_1/stack_1:output:0(lstm_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_80/strided_slice_1?
#lstm_80/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_80/TensorArrayV2/element_shape?
lstm_80/TensorArrayV2TensorListReserve,lstm_80/TensorArrayV2/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2?
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_80/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_80/transpose:y:0Flstm_80/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_80/TensorArrayUnstack/TensorListFromTensor?
lstm_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_80/strided_slice_2/stack?
lstm_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_1?
lstm_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_2/stack_2?
lstm_80/strided_slice_2StridedSlicelstm_80/transpose:y:0&lstm_80/strided_slice_2/stack:output:0(lstm_80/strided_slice_2/stack_1:output:0(lstm_80/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_80/strided_slice_2?
$lstm_80/lstm_cell_80/ones_like/ShapeShapelstm_80/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_80/lstm_cell_80/ones_like/Shape?
$lstm_80/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_80/lstm_cell_80/ones_like/Const?
lstm_80/lstm_cell_80/ones_likeFill-lstm_80/lstm_cell_80/ones_like/Shape:output:0-lstm_80/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/ones_like?
"lstm_80/lstm_cell_80/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm_80/lstm_cell_80/dropout/Const?
 lstm_80/lstm_cell_80/dropout/MulMul'lstm_80/lstm_cell_80/ones_like:output:0+lstm_80/lstm_cell_80/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_80/lstm_cell_80/dropout/Mul?
"lstm_80/lstm_cell_80/dropout/ShapeShape'lstm_80/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_80/lstm_cell_80/dropout/Shape?
9lstm_80/lstm_cell_80/dropout/random_uniform/RandomUniformRandomUniform+lstm_80/lstm_cell_80/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??2;
9lstm_80/lstm_cell_80/dropout/random_uniform/RandomUniform?
+lstm_80/lstm_cell_80/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_80/lstm_cell_80/dropout/GreaterEqual/y?
)lstm_80/lstm_cell_80/dropout/GreaterEqualGreaterEqualBlstm_80/lstm_cell_80/dropout/random_uniform/RandomUniform:output:04lstm_80/lstm_cell_80/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_80/lstm_cell_80/dropout/GreaterEqual?
!lstm_80/lstm_cell_80/dropout/CastCast-lstm_80/lstm_cell_80/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_80/lstm_cell_80/dropout/Cast?
"lstm_80/lstm_cell_80/dropout/Mul_1Mul$lstm_80/lstm_cell_80/dropout/Mul:z:0%lstm_80/lstm_cell_80/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/lstm_cell_80/dropout/Mul_1?
$lstm_80/lstm_cell_80/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_80/lstm_cell_80/dropout_1/Const?
"lstm_80/lstm_cell_80/dropout_1/MulMul'lstm_80/lstm_cell_80/ones_like:output:0-lstm_80/lstm_cell_80/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/lstm_cell_80/dropout_1/Mul?
$lstm_80/lstm_cell_80/dropout_1/ShapeShape'lstm_80/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_80/lstm_cell_80/dropout_1/Shape?
;lstm_80/lstm_cell_80/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_80/lstm_cell_80/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_80/lstm_cell_80/dropout_1/random_uniform/RandomUniform?
-lstm_80/lstm_cell_80/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_80/lstm_cell_80/dropout_1/GreaterEqual/y?
+lstm_80/lstm_cell_80/dropout_1/GreaterEqualGreaterEqualDlstm_80/lstm_cell_80/dropout_1/random_uniform/RandomUniform:output:06lstm_80/lstm_cell_80/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_80/lstm_cell_80/dropout_1/GreaterEqual?
#lstm_80/lstm_cell_80/dropout_1/CastCast/lstm_80/lstm_cell_80/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_80/lstm_cell_80/dropout_1/Cast?
$lstm_80/lstm_cell_80/dropout_1/Mul_1Mul&lstm_80/lstm_cell_80/dropout_1/Mul:z:0'lstm_80/lstm_cell_80/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/lstm_cell_80/dropout_1/Mul_1?
$lstm_80/lstm_cell_80/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_80/lstm_cell_80/dropout_2/Const?
"lstm_80/lstm_cell_80/dropout_2/MulMul'lstm_80/lstm_cell_80/ones_like:output:0-lstm_80/lstm_cell_80/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/lstm_cell_80/dropout_2/Mul?
$lstm_80/lstm_cell_80/dropout_2/ShapeShape'lstm_80/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_80/lstm_cell_80/dropout_2/Shape?
;lstm_80/lstm_cell_80/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_80/lstm_cell_80/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2͂?2=
;lstm_80/lstm_cell_80/dropout_2/random_uniform/RandomUniform?
-lstm_80/lstm_cell_80/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_80/lstm_cell_80/dropout_2/GreaterEqual/y?
+lstm_80/lstm_cell_80/dropout_2/GreaterEqualGreaterEqualDlstm_80/lstm_cell_80/dropout_2/random_uniform/RandomUniform:output:06lstm_80/lstm_cell_80/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_80/lstm_cell_80/dropout_2/GreaterEqual?
#lstm_80/lstm_cell_80/dropout_2/CastCast/lstm_80/lstm_cell_80/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_80/lstm_cell_80/dropout_2/Cast?
$lstm_80/lstm_cell_80/dropout_2/Mul_1Mul&lstm_80/lstm_cell_80/dropout_2/Mul:z:0'lstm_80/lstm_cell_80/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/lstm_cell_80/dropout_2/Mul_1?
$lstm_80/lstm_cell_80/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_80/lstm_cell_80/dropout_3/Const?
"lstm_80/lstm_cell_80/dropout_3/MulMul'lstm_80/lstm_cell_80/ones_like:output:0-lstm_80/lstm_cell_80/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_80/lstm_cell_80/dropout_3/Mul?
$lstm_80/lstm_cell_80/dropout_3/ShapeShape'lstm_80/lstm_cell_80/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_80/lstm_cell_80/dropout_3/Shape?
;lstm_80/lstm_cell_80/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_80/lstm_cell_80/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_80/lstm_cell_80/dropout_3/random_uniform/RandomUniform?
-lstm_80/lstm_cell_80/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_80/lstm_cell_80/dropout_3/GreaterEqual/y?
+lstm_80/lstm_cell_80/dropout_3/GreaterEqualGreaterEqualDlstm_80/lstm_cell_80/dropout_3/random_uniform/RandomUniform:output:06lstm_80/lstm_cell_80/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_80/lstm_cell_80/dropout_3/GreaterEqual?
#lstm_80/lstm_cell_80/dropout_3/CastCast/lstm_80/lstm_cell_80/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_80/lstm_cell_80/dropout_3/Cast?
$lstm_80/lstm_cell_80/dropout_3/Mul_1Mul&lstm_80/lstm_cell_80/dropout_3/Mul:z:0'lstm_80/lstm_cell_80/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_80/lstm_cell_80/dropout_3/Mul_1?
$lstm_80/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_80/lstm_cell_80/split/split_dim?
)lstm_80/lstm_cell_80/split/ReadVariableOpReadVariableOp2lstm_80_lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_80/lstm_cell_80/split/ReadVariableOp?
lstm_80/lstm_cell_80/splitSplit-lstm_80/lstm_cell_80/split/split_dim:output:01lstm_80/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_80/lstm_cell_80/split?
lstm_80/lstm_cell_80/MatMulMatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul?
lstm_80/lstm_cell_80/MatMul_1MatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_1?
lstm_80/lstm_cell_80/MatMul_2MatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_2?
lstm_80/lstm_cell_80/MatMul_3MatMul lstm_80/strided_slice_2:output:0#lstm_80/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_3?
&lstm_80/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_80/lstm_cell_80/split_1/split_dim?
+lstm_80/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4lstm_80_lstm_cell_80_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_80/lstm_cell_80/split_1/ReadVariableOp?
lstm_80/lstm_cell_80/split_1Split/lstm_80/lstm_cell_80/split_1/split_dim:output:03lstm_80/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_80/lstm_cell_80/split_1?
lstm_80/lstm_cell_80/BiasAddBiasAdd%lstm_80/lstm_cell_80/MatMul:product:0%lstm_80/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/BiasAdd?
lstm_80/lstm_cell_80/BiasAdd_1BiasAdd'lstm_80/lstm_cell_80/MatMul_1:product:0%lstm_80/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/BiasAdd_1?
lstm_80/lstm_cell_80/BiasAdd_2BiasAdd'lstm_80/lstm_cell_80/MatMul_2:product:0%lstm_80/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/BiasAdd_2?
lstm_80/lstm_cell_80/BiasAdd_3BiasAdd'lstm_80/lstm_cell_80/MatMul_3:product:0%lstm_80/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/BiasAdd_3?
lstm_80/lstm_cell_80/mulMullstm_80/zeros:output:0&lstm_80/lstm_cell_80/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul?
lstm_80/lstm_cell_80/mul_1Mullstm_80/zeros:output:0(lstm_80/lstm_cell_80/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_1?
lstm_80/lstm_cell_80/mul_2Mullstm_80/zeros:output:0(lstm_80/lstm_cell_80/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_2?
lstm_80/lstm_cell_80/mul_3Mullstm_80/zeros:output:0(lstm_80/lstm_cell_80/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_3?
#lstm_80/lstm_cell_80/ReadVariableOpReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_80/lstm_cell_80/ReadVariableOp?
(lstm_80/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_80/lstm_cell_80/strided_slice/stack?
*lstm_80/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_80/lstm_cell_80/strided_slice/stack_1?
*lstm_80/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_80/lstm_cell_80/strided_slice/stack_2?
"lstm_80/lstm_cell_80/strided_sliceStridedSlice+lstm_80/lstm_cell_80/ReadVariableOp:value:01lstm_80/lstm_cell_80/strided_slice/stack:output:03lstm_80/lstm_cell_80/strided_slice/stack_1:output:03lstm_80/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_80/lstm_cell_80/strided_slice?
lstm_80/lstm_cell_80/MatMul_4MatMullstm_80/lstm_cell_80/mul:z:0+lstm_80/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_4?
lstm_80/lstm_cell_80/addAddV2%lstm_80/lstm_cell_80/BiasAdd:output:0'lstm_80/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add?
lstm_80/lstm_cell_80/SigmoidSigmoidlstm_80/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/Sigmoid?
%lstm_80/lstm_cell_80/ReadVariableOp_1ReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_80/lstm_cell_80/ReadVariableOp_1?
*lstm_80/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_80/lstm_cell_80/strided_slice_1/stack?
,lstm_80/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_80/lstm_cell_80/strided_slice_1/stack_1?
,lstm_80/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_80/lstm_cell_80/strided_slice_1/stack_2?
$lstm_80/lstm_cell_80/strided_slice_1StridedSlice-lstm_80/lstm_cell_80/ReadVariableOp_1:value:03lstm_80/lstm_cell_80/strided_slice_1/stack:output:05lstm_80/lstm_cell_80/strided_slice_1/stack_1:output:05lstm_80/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_80/lstm_cell_80/strided_slice_1?
lstm_80/lstm_cell_80/MatMul_5MatMullstm_80/lstm_cell_80/mul_1:z:0-lstm_80/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_5?
lstm_80/lstm_cell_80/add_1AddV2'lstm_80/lstm_cell_80/BiasAdd_1:output:0'lstm_80/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_1?
lstm_80/lstm_cell_80/Sigmoid_1Sigmoidlstm_80/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/Sigmoid_1?
lstm_80/lstm_cell_80/mul_4Mul"lstm_80/lstm_cell_80/Sigmoid_1:y:0lstm_80/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_4?
%lstm_80/lstm_cell_80/ReadVariableOp_2ReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_80/lstm_cell_80/ReadVariableOp_2?
*lstm_80/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_80/lstm_cell_80/strided_slice_2/stack?
,lstm_80/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_80/lstm_cell_80/strided_slice_2/stack_1?
,lstm_80/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_80/lstm_cell_80/strided_slice_2/stack_2?
$lstm_80/lstm_cell_80/strided_slice_2StridedSlice-lstm_80/lstm_cell_80/ReadVariableOp_2:value:03lstm_80/lstm_cell_80/strided_slice_2/stack:output:05lstm_80/lstm_cell_80/strided_slice_2/stack_1:output:05lstm_80/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_80/lstm_cell_80/strided_slice_2?
lstm_80/lstm_cell_80/MatMul_6MatMullstm_80/lstm_cell_80/mul_2:z:0-lstm_80/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_6?
lstm_80/lstm_cell_80/add_2AddV2'lstm_80/lstm_cell_80/BiasAdd_2:output:0'lstm_80/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_2?
lstm_80/lstm_cell_80/ReluRelulstm_80/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/Relu?
lstm_80/lstm_cell_80/mul_5Mul lstm_80/lstm_cell_80/Sigmoid:y:0'lstm_80/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_5?
lstm_80/lstm_cell_80/add_3AddV2lstm_80/lstm_cell_80/mul_4:z:0lstm_80/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_3?
%lstm_80/lstm_cell_80/ReadVariableOp_3ReadVariableOp,lstm_80_lstm_cell_80_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_80/lstm_cell_80/ReadVariableOp_3?
*lstm_80/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_80/lstm_cell_80/strided_slice_3/stack?
,lstm_80/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_80/lstm_cell_80/strided_slice_3/stack_1?
,lstm_80/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_80/lstm_cell_80/strided_slice_3/stack_2?
$lstm_80/lstm_cell_80/strided_slice_3StridedSlice-lstm_80/lstm_cell_80/ReadVariableOp_3:value:03lstm_80/lstm_cell_80/strided_slice_3/stack:output:05lstm_80/lstm_cell_80/strided_slice_3/stack_1:output:05lstm_80/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_80/lstm_cell_80/strided_slice_3?
lstm_80/lstm_cell_80/MatMul_7MatMullstm_80/lstm_cell_80/mul_3:z:0-lstm_80/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/MatMul_7?
lstm_80/lstm_cell_80/add_4AddV2'lstm_80/lstm_cell_80/BiasAdd_3:output:0'lstm_80/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/add_4?
lstm_80/lstm_cell_80/Sigmoid_2Sigmoidlstm_80/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_80/lstm_cell_80/Sigmoid_2?
lstm_80/lstm_cell_80/Relu_1Relulstm_80/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/Relu_1?
lstm_80/lstm_cell_80/mul_6Mul"lstm_80/lstm_cell_80/Sigmoid_2:y:0)lstm_80/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_80/lstm_cell_80/mul_6?
%lstm_80/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_80/TensorArrayV2_1/element_shape?
lstm_80/TensorArrayV2_1TensorListReserve.lstm_80/TensorArrayV2_1/element_shape:output:0 lstm_80/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_80/TensorArrayV2_1^
lstm_80/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/time?
 lstm_80/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_80/while/maximum_iterationsz
lstm_80/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_80/while/loop_counter?
lstm_80/whileWhile#lstm_80/while/loop_counter:output:0)lstm_80/while/maximum_iterations:output:0lstm_80/time:output:0 lstm_80/TensorArrayV2_1:handle:0lstm_80/zeros:output:0lstm_80/zeros_1:output:0 lstm_80/strided_slice_1:output:0?lstm_80/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_80_lstm_cell_80_split_readvariableop_resource4lstm_80_lstm_cell_80_split_1_readvariableop_resource,lstm_80_lstm_cell_80_readvariableop_resource*
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
lstm_80_while_body_2645027*&
condR
lstm_80_while_cond_2645026*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_80/while?
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_80/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_80/TensorArrayV2Stack/TensorListStackTensorListStacklstm_80/while:output:3Alstm_80/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_80/TensorArrayV2Stack/TensorListStack?
lstm_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_80/strided_slice_3/stack?
lstm_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_80/strided_slice_3/stack_1?
lstm_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_80/strided_slice_3/stack_2?
lstm_80/strided_slice_3StridedSlice3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_80/strided_slice_3/stack:output:0(lstm_80/strided_slice_3/stack_1:output:0(lstm_80/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_80/strided_slice_3?
lstm_80/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_80/transpose_1/perm?
lstm_80/transpose_1	Transpose3lstm_80/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_80/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_80/transpose_1v
lstm_80/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_80/runtime?
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_96/MatMul/ReadVariableOp?
dense_96/MatMulMatMul lstm_80/strided_slice_3:output:0&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_96/MatMul?
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_96/BiasAdd/ReadVariableOp?
dense_96/BiasAddBiasAdddense_96/MatMul:product:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_96/BiasAdds
dense_96/ReluReludense_96/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_96/Relu?
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_97/MatMul/ReadVariableOp?
dense_97/MatMulMatMuldense_96/Relu:activations:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/MatMul?
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp?
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/BiasAddm
reshape_48/ShapeShapedense_97/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_48/Shape?
reshape_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_48/strided_slice/stack?
 reshape_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_1?
 reshape_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_48/strided_slice/stack_2?
reshape_48/strided_sliceStridedSlicereshape_48/Shape:output:0'reshape_48/strided_slice/stack:output:0)reshape_48/strided_slice/stack_1:output:0)reshape_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_48/strided_slicez
reshape_48/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_48/Reshape/shape/1z
reshape_48/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_48/Reshape/shape/2?
reshape_48/Reshape/shapePack!reshape_48/strided_slice:output:0#reshape_48/Reshape/shape/1:output:0#reshape_48/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_48/Reshape/shape?
reshape_48/ReshapeReshapedense_97/BiasAdd:output:0!reshape_48/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_48/Reshape?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_80_lstm_cell_80_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/mul?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mulz
IdentityIdentityreshape_48/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_96/BiasAdd/ReadVariableOp^dense_96/MatMul/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp0^dense_97/bias/Regularizer/Square/ReadVariableOp$^lstm_80/lstm_cell_80/ReadVariableOp&^lstm_80/lstm_cell_80/ReadVariableOp_1&^lstm_80/lstm_cell_80/ReadVariableOp_2&^lstm_80/lstm_cell_80/ReadVariableOp_3>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*^lstm_80/lstm_cell_80/split/ReadVariableOp,^lstm_80/lstm_cell_80/split_1/ReadVariableOp^lstm_80/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp2J
#lstm_80/lstm_cell_80/ReadVariableOp#lstm_80/lstm_cell_80/ReadVariableOp2N
%lstm_80/lstm_cell_80/ReadVariableOp_1%lstm_80/lstm_cell_80/ReadVariableOp_12N
%lstm_80/lstm_cell_80/ReadVariableOp_2%lstm_80/lstm_cell_80/ReadVariableOp_22N
%lstm_80/lstm_cell_80/ReadVariableOp_3%lstm_80/lstm_cell_80/ReadVariableOp_32~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_80/lstm_cell_80/split/ReadVariableOp)lstm_80/lstm_cell_80/split/ReadVariableOp2Z
+lstm_80/lstm_cell_80/split_1/ReadVariableOp+lstm_80/lstm_cell_80/split_1/ReadVariableOp2
lstm_80/whilelstm_80/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
/__inference_sequential_32_layer_call_fn_2644469
input_33
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_33unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_32_layer_call_and_return_conditional_losses_26444332
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
input_33
?v
?
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2643255

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed?	*
seed2??2(
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
seed2???2(
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
seed2ᡫ2(
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2,
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
?
__inference_loss_fn_0_2646450F
8dense_97_bias_regularizer_square_readvariableop_resource:
identity??/dense_97/bias/Regularizer/Square/ReadVariableOp?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_97_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mulk
IdentityIdentity!dense_97/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp0^dense_97/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp
?+
?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644433

inputs"
lstm_80_2644402:	?
lstm_80_2644404:	?"
lstm_80_2644406:	 ?"
dense_96_2644409:  
dense_96_2644411: "
dense_97_2644414: 
dense_97_2644416:
identity?? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?/dense_97/bias/Regularizer/Square/ReadVariableOp?lstm_80/StatefulPartitionedCall?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
lstm_80/StatefulPartitionedCallStatefulPartitionedCallinputslstm_80_2644402lstm_80_2644404lstm_80_2644406*
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_26443692!
lstm_80/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall(lstm_80/StatefulPartitionedCall:output:0dense_96_2644409dense_96_2644411*
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
GPU 2J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_26439502"
 dense_96/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_2644414dense_97_2644416*
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
GPU 2J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_26439722"
 dense_97/StatefulPartitionedCall?
reshape_48/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_26439912
reshape_48/PartitionedCall?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_80_2644402*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/mul?
/dense_97/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_97_2644416*
_output_shapes
:*
dtype021
/dense_97/bias/Regularizer/Square/ReadVariableOp?
 dense_97/bias/Regularizer/SquareSquare7dense_97/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_97/bias/Regularizer/Square?
dense_97/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_97/bias/Regularizer/Const?
dense_97/bias/Regularizer/SumSum$dense_97/bias/Regularizer/Square:y:0(dense_97/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/Sum?
dense_97/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2!
dense_97/bias/Regularizer/mul/x?
dense_97/bias/Regularizer/mulMul(dense_97/bias/Regularizer/mul/x:output:0&dense_97/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_97/bias/Regularizer/mul?
IdentityIdentity#reshape_48/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall0^dense_97/bias/Regularizer/Square/ReadVariableOp ^lstm_80/StatefulPartitionedCall>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2b
/dense_97/bias/Regularizer/Square/ReadVariableOp/dense_97/bias/Regularizer/Square/ReadVariableOp2B
lstm_80/StatefulPartitionedCalllstm_80/StatefulPartitionedCall2~
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_2644576
input_33
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_33unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_26428982
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
input_33
?R
?
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2646537

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp?
.lstm_80/lstm_cell_80/kernel/Regularizer/SquareSquareElstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_80/lstm_cell_80/kernel/Regularizer/Square?
-lstm_80/lstm_cell_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_80/lstm_cell_80/kernel/Regularizer/Const?
+lstm_80/lstm_cell_80/kernel/Regularizer/SumSum2lstm_80/lstm_cell_80/kernel/Regularizer/Square:y:06lstm_80/lstm_cell_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/Sum?
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_80/lstm_cell_80/kernel/Regularizer/mul/x?
+lstm_80/lstm_cell_80/kernel/Regularizer/mulMul6lstm_80/lstm_cell_80/kernel/Regularizer/mul/x:output:04lstm_80/lstm_cell_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_80/lstm_cell_80/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp=lstm_80/lstm_cell_80/kernel/Regularizer/Square/ReadVariableOp2,
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
while_body_2645380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_80_split_readvariableop_resource_0:	?C
4while_lstm_cell_80_split_1_readvariableop_resource_0:	??
,while_lstm_cell_80_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_80_split_readvariableop_resource:	?A
2while_lstm_cell_80_split_1_readvariableop_resource:	?=
*while_lstm_cell_80_readvariableop_resource:	 ???!while/lstm_cell_80/ReadVariableOp?#while/lstm_cell_80/ReadVariableOp_1?#while/lstm_cell_80/ReadVariableOp_2?#while/lstm_cell_80/ReadVariableOp_3?'while/lstm_cell_80/split/ReadVariableOp?)while/lstm_cell_80/split_1/ReadVariableOp?
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
"while/lstm_cell_80/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_80/ones_like/Shape?
"while/lstm_cell_80/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_80/ones_like/Const?
while/lstm_cell_80/ones_likeFill+while/lstm_cell_80/ones_like/Shape:output:0+while/lstm_cell_80/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/ones_like?
"while/lstm_cell_80/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_80/split/split_dim?
'while/lstm_cell_80/split/ReadVariableOpReadVariableOp2while_lstm_cell_80_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_80/split/ReadVariableOp?
while/lstm_cell_80/splitSplit+while/lstm_cell_80/split/split_dim:output:0/while/lstm_cell_80/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_80/split?
while/lstm_cell_80/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul?
while/lstm_cell_80/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_1?
while/lstm_cell_80/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_2?
while/lstm_cell_80/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_80/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_3?
$while/lstm_cell_80/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_80/split_1/split_dim?
)while/lstm_cell_80/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_80_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_80/split_1/ReadVariableOp?
while/lstm_cell_80/split_1Split-while/lstm_cell_80/split_1/split_dim:output:01while/lstm_cell_80/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_80/split_1?
while/lstm_cell_80/BiasAddBiasAdd#while/lstm_cell_80/MatMul:product:0#while/lstm_cell_80/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd?
while/lstm_cell_80/BiasAdd_1BiasAdd%while/lstm_cell_80/MatMul_1:product:0#while/lstm_cell_80/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_1?
while/lstm_cell_80/BiasAdd_2BiasAdd%while/lstm_cell_80/MatMul_2:product:0#while/lstm_cell_80/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_2?
while/lstm_cell_80/BiasAdd_3BiasAdd%while/lstm_cell_80/MatMul_3:product:0#while/lstm_cell_80/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/BiasAdd_3?
while/lstm_cell_80/mulMulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul?
while/lstm_cell_80/mul_1Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_1?
while/lstm_cell_80/mul_2Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_2?
while/lstm_cell_80/mul_3Mulwhile_placeholder_2%while/lstm_cell_80/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_3?
!while/lstm_cell_80/ReadVariableOpReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_80/ReadVariableOp?
&while/lstm_cell_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_80/strided_slice/stack?
(while/lstm_cell_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice/stack_1?
(while/lstm_cell_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_80/strided_slice/stack_2?
 while/lstm_cell_80/strided_sliceStridedSlice)while/lstm_cell_80/ReadVariableOp:value:0/while/lstm_cell_80/strided_slice/stack:output:01while/lstm_cell_80/strided_slice/stack_1:output:01while/lstm_cell_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_80/strided_slice?
while/lstm_cell_80/MatMul_4MatMulwhile/lstm_cell_80/mul:z:0)while/lstm_cell_80/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_4?
while/lstm_cell_80/addAddV2#while/lstm_cell_80/BiasAdd:output:0%while/lstm_cell_80/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add?
while/lstm_cell_80/SigmoidSigmoidwhile/lstm_cell_80/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid?
#while/lstm_cell_80/ReadVariableOp_1ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_1?
(while/lstm_cell_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_80/strided_slice_1/stack?
*while/lstm_cell_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_80/strided_slice_1/stack_1?
*while/lstm_cell_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_1/stack_2?
"while/lstm_cell_80/strided_slice_1StridedSlice+while/lstm_cell_80/ReadVariableOp_1:value:01while/lstm_cell_80/strided_slice_1/stack:output:03while/lstm_cell_80/strided_slice_1/stack_1:output:03while/lstm_cell_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_1?
while/lstm_cell_80/MatMul_5MatMulwhile/lstm_cell_80/mul_1:z:0+while/lstm_cell_80/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_5?
while/lstm_cell_80/add_1AddV2%while/lstm_cell_80/BiasAdd_1:output:0%while/lstm_cell_80/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_1?
while/lstm_cell_80/Sigmoid_1Sigmoidwhile/lstm_cell_80/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_1?
while/lstm_cell_80/mul_4Mul while/lstm_cell_80/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_4?
#while/lstm_cell_80/ReadVariableOp_2ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_2?
(while/lstm_cell_80/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_80/strided_slice_2/stack?
*while/lstm_cell_80/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_80/strided_slice_2/stack_1?
*while/lstm_cell_80/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_2/stack_2?
"while/lstm_cell_80/strided_slice_2StridedSlice+while/lstm_cell_80/ReadVariableOp_2:value:01while/lstm_cell_80/strided_slice_2/stack:output:03while/lstm_cell_80/strided_slice_2/stack_1:output:03while/lstm_cell_80/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_2?
while/lstm_cell_80/MatMul_6MatMulwhile/lstm_cell_80/mul_2:z:0+while/lstm_cell_80/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_6?
while/lstm_cell_80/add_2AddV2%while/lstm_cell_80/BiasAdd_2:output:0%while/lstm_cell_80/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_2?
while/lstm_cell_80/ReluReluwhile/lstm_cell_80/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu?
while/lstm_cell_80/mul_5Mulwhile/lstm_cell_80/Sigmoid:y:0%while/lstm_cell_80/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_5?
while/lstm_cell_80/add_3AddV2while/lstm_cell_80/mul_4:z:0while/lstm_cell_80/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_3?
#while/lstm_cell_80/ReadVariableOp_3ReadVariableOp,while_lstm_cell_80_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_80/ReadVariableOp_3?
(while/lstm_cell_80/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_80/strided_slice_3/stack?
*while/lstm_cell_80/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_80/strided_slice_3/stack_1?
*while/lstm_cell_80/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_80/strided_slice_3/stack_2?
"while/lstm_cell_80/strided_slice_3StridedSlice+while/lstm_cell_80/ReadVariableOp_3:value:01while/lstm_cell_80/strided_slice_3/stack:output:03while/lstm_cell_80/strided_slice_3/stack_1:output:03while/lstm_cell_80/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_80/strided_slice_3?
while/lstm_cell_80/MatMul_7MatMulwhile/lstm_cell_80/mul_3:z:0+while/lstm_cell_80/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/MatMul_7?
while/lstm_cell_80/add_4AddV2%while/lstm_cell_80/BiasAdd_3:output:0%while/lstm_cell_80/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/add_4?
while/lstm_cell_80/Sigmoid_2Sigmoidwhile/lstm_cell_80/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Sigmoid_2?
while/lstm_cell_80/Relu_1Reluwhile/lstm_cell_80/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/Relu_1?
while/lstm_cell_80/mul_6Mul while/lstm_cell_80/Sigmoid_2:y:0'while/lstm_cell_80/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_80/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_80/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_80/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_80/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_80/ReadVariableOp$^while/lstm_cell_80/ReadVariableOp_1$^while/lstm_cell_80/ReadVariableOp_2$^while/lstm_cell_80/ReadVariableOp_3(^while/lstm_cell_80/split/ReadVariableOp*^while/lstm_cell_80/split_1/ReadVariableOp*"
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
*while_lstm_cell_80_readvariableop_resource,while_lstm_cell_80_readvariableop_resource_0"j
2while_lstm_cell_80_split_1_readvariableop_resource4while_lstm_cell_80_split_1_readvariableop_resource_0"f
0while_lstm_cell_80_split_readvariableop_resource2while_lstm_cell_80_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_80/ReadVariableOp!while/lstm_cell_80/ReadVariableOp2J
#while/lstm_cell_80/ReadVariableOp_1#while/lstm_cell_80/ReadVariableOp_12J
#while/lstm_cell_80/ReadVariableOp_2#while/lstm_cell_80/ReadVariableOp_22J
#while/lstm_cell_80/ReadVariableOp_3#while/lstm_cell_80/ReadVariableOp_32R
'while/lstm_cell_80/split/ReadVariableOp'while/lstm_cell_80/split/ReadVariableOp2V
)while/lstm_cell_80/split_1/ReadVariableOp)while/lstm_cell_80/split_1/ReadVariableOp: 
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
?
(sequential_32_lstm_80_while_cond_2642748H
Dsequential_32_lstm_80_while_sequential_32_lstm_80_while_loop_counterN
Jsequential_32_lstm_80_while_sequential_32_lstm_80_while_maximum_iterations+
'sequential_32_lstm_80_while_placeholder-
)sequential_32_lstm_80_while_placeholder_1-
)sequential_32_lstm_80_while_placeholder_2-
)sequential_32_lstm_80_while_placeholder_3J
Fsequential_32_lstm_80_while_less_sequential_32_lstm_80_strided_slice_1a
]sequential_32_lstm_80_while_sequential_32_lstm_80_while_cond_2642748___redundant_placeholder0a
]sequential_32_lstm_80_while_sequential_32_lstm_80_while_cond_2642748___redundant_placeholder1a
]sequential_32_lstm_80_while_sequential_32_lstm_80_while_cond_2642748___redundant_placeholder2a
]sequential_32_lstm_80_while_sequential_32_lstm_80_while_cond_2642748___redundant_placeholder3(
$sequential_32_lstm_80_while_identity
?
 sequential_32/lstm_80/while/LessLess'sequential_32_lstm_80_while_placeholderFsequential_32_lstm_80_while_less_sequential_32_lstm_80_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_32/lstm_80/while/Less?
$sequential_32/lstm_80/while/IdentityIdentity$sequential_32/lstm_80/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_32/lstm_80/while/Identity"U
$sequential_32_lstm_80_while_identity-sequential_32/lstm_80/while/Identity:output:0*(
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
while_cond_2643035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2643035___redundant_placeholder05
1while_while_cond_2643035___redundant_placeholder15
1while_while_cond_2643035___redundant_placeholder25
1while_while_cond_2643035___redundant_placeholder3
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
input_335
serving_default_input_33:0?????????B

reshape_484
StatefulPartitionedCall:0?????????tensorflow/serving/predict:݂
?
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
?
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
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"
_tf_keras_layer
?
	variables
trainable_variables
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
?
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
?

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
!:  2dense_96/kernel
: 2dense_96/bias
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
!: 2dense_97/kernel
:2dense_97/bias
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
?

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
.:,	?2lstm_80/lstm_cell_80/kernel
8:6	 ?2%lstm_80/lstm_cell_80/recurrent_kernel
(:&?2lstm_80/lstm_cell_80/bias
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
?

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
&:$  2Adam/dense_96/kernel/m
 : 2Adam/dense_96/bias/m
&:$ 2Adam/dense_97/kernel/m
 :2Adam/dense_97/bias/m
3:1	?2"Adam/lstm_80/lstm_cell_80/kernel/m
=:;	 ?2,Adam/lstm_80/lstm_cell_80/recurrent_kernel/m
-:+?2 Adam/lstm_80/lstm_cell_80/bias/m
&:$  2Adam/dense_96/kernel/v
 : 2Adam/dense_96/bias/v
&:$ 2Adam/dense_97/kernel/v
 :2Adam/dense_97/bias/v
3:1	?2"Adam/lstm_80/lstm_cell_80/kernel/v
=:;	 ?2,Adam/lstm_80/lstm_cell_80/recurrent_kernel/v
-:+?2 Adam/lstm_80/lstm_cell_80/bias/v
?2?
/__inference_sequential_32_layer_call_fn_2644023
/__inference_sequential_32_layer_call_fn_2644595
/__inference_sequential_32_layer_call_fn_2644614
/__inference_sequential_32_layer_call_fn_2644469?
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
"__inference__wrapped_model_2642898input_33"?
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
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644885
J__inference_sequential_32_layer_call_and_return_conditional_losses_2645220
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644503
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644537?
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
)__inference_lstm_80_layer_call_fn_2645237
)__inference_lstm_80_layer_call_fn_2645248
)__inference_lstm_80_layer_call_fn_2645259
)__inference_lstm_80_layer_call_fn_2645270?
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2645513
D__inference_lstm_80_layer_call_and_return_conditional_losses_2645820
D__inference_lstm_80_layer_call_and_return_conditional_losses_2646063
D__inference_lstm_80_layer_call_and_return_conditional_losses_2646370?
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
E__inference_dense_96_layer_call_and_return_conditional_losses_2646381?
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
*__inference_dense_96_layer_call_fn_2646390?
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
E__inference_dense_97_layer_call_and_return_conditional_losses_2646412?
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
*__inference_dense_97_layer_call_fn_2646421?
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_2646434?
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
,__inference_reshape_48_layer_call_fn_2646439?
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
__inference_loss_fn_0_2646450?
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
%__inference_signature_wrapper_2644576input_33"?
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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2646537
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2646650?
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
.__inference_lstm_cell_80_layer_call_fn_2646667
.__inference_lstm_cell_80_layer_call_fn_2646684?
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
__inference_loss_fn_1_2646695?
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
"__inference__wrapped_model_2642898}&('5?2
+?(
&?#
input_33?????????
? ";?8
6

reshape_48(?%

reshape_48??????????
E__inference_dense_96_layer_call_and_return_conditional_losses_2646381\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
*__inference_dense_96_layer_call_fn_2646390O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_dense_97_layer_call_and_return_conditional_losses_2646412\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? }
*__inference_dense_97_layer_call_fn_2646421O/?,
%?"
 ?
inputs????????? 
? "??????????<
__inference_loss_fn_0_2646450?

? 
? "? <
__inference_loss_fn_1_2646695&?

? 
? "? ?
D__inference_lstm_80_layer_call_and_return_conditional_losses_2645513}&('O?L
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2645820}&('O?L
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2646063m&('??<
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
D__inference_lstm_80_layer_call_and_return_conditional_losses_2646370m&('??<
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
)__inference_lstm_80_layer_call_fn_2645237p&('O?L
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
)__inference_lstm_80_layer_call_fn_2645248p&('O?L
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
)__inference_lstm_80_layer_call_fn_2645259`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
)__inference_lstm_80_layer_call_fn_2645270`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2646537?&('??}
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
I__inference_lstm_cell_80_layer_call_and_return_conditional_losses_2646650?&('??}
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
.__inference_lstm_cell_80_layer_call_fn_2646667?&('??}
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
.__inference_lstm_cell_80_layer_call_fn_2646684?&('??}
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
G__inference_reshape_48_layer_call_and_return_conditional_losses_2646434\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? 
,__inference_reshape_48_layer_call_fn_2646439O/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644503s&('=?:
3?0
&?#
input_33?????????
p 

 
? ")?&
?
0?????????
? ?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644537s&('=?:
3?0
&?#
input_33?????????
p

 
? ")?&
?
0?????????
? ?
J__inference_sequential_32_layer_call_and_return_conditional_losses_2644885q&(';?8
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
J__inference_sequential_32_layer_call_and_return_conditional_losses_2645220q&(';?8
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
/__inference_sequential_32_layer_call_fn_2644023f&('=?:
3?0
&?#
input_33?????????
p 

 
? "???????????
/__inference_sequential_32_layer_call_fn_2644469f&('=?:
3?0
&?#
input_33?????????
p

 
? "???????????
/__inference_sequential_32_layer_call_fn_2644595d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_32_layer_call_fn_2644614d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2644576?&('A?>
? 
7?4
2
input_33&?#
input_33?????????";?8
6

reshape_48(?%

reshape_48?????????