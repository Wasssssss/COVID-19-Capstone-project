??%
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
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ý$
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:  *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
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
lstm/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_namelstm/lstm_cell_2/kernel
?
+lstm/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell_2/kernel*
_output_shapes
:	?*
dtype0
?
!lstm/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*2
shared_name#!lstm/lstm_cell_2/recurrent_kernel
?
5lstm/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm/lstm_cell_2/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_namelstm/lstm_cell_2/bias
|
)lstm/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell_2/bias*
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
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:  *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/lstm/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name Adam/lstm/lstm_cell_2/kernel/m
?
2Adam/lstm/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell_2/kernel/m*
_output_shapes
:	?*
dtype0
?
(Adam/lstm/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*9
shared_name*(Adam/lstm/lstm_cell_2/recurrent_kernel/m
?
<Adam/lstm/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/lstm/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
Adam/lstm/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/lstm/lstm_cell_2/bias/m
?
0Adam/lstm/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:  *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/lstm/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name Adam/lstm/lstm_cell_2/kernel/v
?
2Adam/lstm/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell_2/kernel/v*
_output_shapes
:	?*
dtype0
?
(Adam/lstm/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*9
shared_name*(Adam/lstm/lstm_cell_2/recurrent_kernel/v
?
<Adam/lstm/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/lstm/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
Adam/lstm/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/lstm/lstm_cell_2/bias/v
?
0Adam/lstm/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell_2/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?+
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
regularization_losses
	variables
		keras_api


signatures
l
cell

state_spec
trainable_variables
regularization_losses
	variables
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
 
1
&0
'1
(2
3
4
5
6
?
)non_trainable_variables
trainable_variables
*metrics
+layer_metrics

,layers
-layer_regularization_losses
regularization_losses
	variables
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
 

&0
'1
(2
?
3non_trainable_variables

4states
trainable_variables
5metrics
6layer_metrics

7layers
8layer_regularization_losses
regularization_losses
	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
9non_trainable_variables
	variables
trainable_variables
:metrics
;layer_metrics

<layers
regularization_losses
=layer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
>non_trainable_variables
	variables
trainable_variables
?metrics
@layer_metrics

Alayers
regularization_losses
Blayer_regularization_losses
 
 
 
?
Cnon_trainable_variables
	variables
trainable_variables
Dmetrics
Elayer_metrics

Flayers
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
][
VARIABLE_VALUElstm/lstm_cell_2/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE!lstm/lstm_cell_2/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell_2/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

H0
 

0
1
2
3
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
Inon_trainable_variables
/	variables
0trainable_variables
Jmetrics
Klayer_metrics

Llayers
1regularization_losses
Mlayer_regularization_losses
 
 
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
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm/lstm_cell_2/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/lstm/lstm_cell_2/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell_2/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm/lstm_cell_2/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/lstm/lstm_cell_2/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell_2/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1lstm/lstm_cell_2/kernellstm/lstm_cell_2/bias!lstm/lstm_cell_2/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/bias*
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
$__inference_signature_wrapper_180117
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp+lstm/lstm_cell_2/kernel/Read/ReadVariableOp5lstm/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp)lstm/lstm_cell_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp2Adam/lstm/lstm_cell_2/kernel/m/Read/ReadVariableOp<Adam/lstm/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp0Adam/lstm/lstm_cell_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp2Adam/lstm/lstm_cell_2/kernel/v/Read/ReadVariableOp<Adam/lstm/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp0Adam/lstm/lstm_cell_2/bias/v/Read/ReadVariableOpConst*)
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
__inference__traced_save_182343
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell_2/kernel!lstm/lstm_cell_2/recurrent_kernellstm/lstm_cell_2/biastotalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/lstm/lstm_cell_2/kernel/m(Adam/lstm/lstm_cell_2/recurrent_kernel/mAdam/lstm/lstm_cell_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/lstm/lstm_cell_2/kernel/v(Adam/lstm/lstm_cell_2/recurrent_kernel/vAdam/lstm/lstm_cell_2/bias/v*(
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
"__inference__traced_restore_182437??#
?
?
while_cond_180920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180920___redundant_placeholder04
0while_while_cond_180920___redundant_placeholder14
0while_while_cond_180920___redundant_placeholder24
0while_while_cond_180920___redundant_placeholder3
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
C__inference_dense_1_layer_call_and_return_conditional_losses_181962

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_1/bias/Regularizer/Square/ReadVariableOp?
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
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_180136

inputs
unknown:	?
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1795472
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
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_179564
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1795472
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
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
&__inference_dense_layer_call_fn_181920

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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1794912
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
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_179472

inputs<
)lstm_cell_2_split_readvariableop_resource:	?:
+lstm_cell_2_split_1_readvariableop_resource:	?6
#lstm_cell_2_readvariableop_resource:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_2/ReadVariableOp?lstm_cell_2/ReadVariableOp_1?lstm_cell_2/ReadVariableOp_2?lstm_cell_2/ReadVariableOp_3? lstm_cell_2/split/ReadVariableOp?"lstm_cell_2/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_2/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/ones_like|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_2/split/ReadVariableOp?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/split?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul?
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_1?
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_2?
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_3?
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim?
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/split_1/ReadVariableOp?
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_2/split_1?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd?
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_1?
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_2?
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_3?
lstm_cell_2/mulMulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul?
lstm_cell_2/mul_1Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1?
lstm_cell_2/mul_2Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/mul_3Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp?
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack?
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice/stack_1?
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2?
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice?
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul:z:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_4?
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add|
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_1?
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice_1/stack?
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_2/strided_slice_1/stack_1?
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2?
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1?
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_1:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_5?
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_4Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_4?
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_2?
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_2/strided_slice_2/stack?
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_2/strided_slice_2/stack_1?
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2?
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2?
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_2:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_6?
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_2u
lstm_cell_2/ReluRelulstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_5Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_5?
lstm_cell_2/add_3AddV2lstm_cell_2/mul_4:z:0lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_3?
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_3?
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_2/strided_slice_3/stack?
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1?
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2?
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3?
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_3:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_7?
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_4?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_6Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
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
while_body_179339*
condR
while_cond_179338*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
while_body_179745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	?B
3while_lstm_cell_2_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_2_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	?@
1while_lstm_cell_2_split_1_readvariableop_resource:	?<
)while_lstm_cell_2_readvariableop_resource:	 ??? while/lstm_cell_2/ReadVariableOp?"while/lstm_cell_2/ReadVariableOp_1?"while/lstm_cell_2/ReadVariableOp_2?"while/lstm_cell_2/ReadVariableOp_3?&while/lstm_cell_2/split/ReadVariableOp?(while/lstm_cell_2/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell_2/dropout/Const?
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/dropout/Mul?
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape?
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform?
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_2/dropout/GreaterEqual/y?
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_2/dropout/GreaterEqual?
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_2/dropout/Cast?
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout/Mul_1?
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_1/Const?
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_1/Mul?
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape?
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??Z2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y?
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_1/GreaterEqual?
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_1/Cast?
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_1/Mul_1?
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_2/Const?
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_2/Mul?
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape?
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y?
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_2/GreaterEqual?
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_2/Cast?
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_2/Mul_1?
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_3/Const?
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_3/Mul?
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape?
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y?
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_3/GreaterEqual?
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_3/Cast?
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_3/Mul_1?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul?
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_2?
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_3?
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dim?
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOp?
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_2/split_1?
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd?
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_1?
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_2?
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_3?
while/lstm_cell_2/mulMulwhile_placeholder_2#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul?
while/lstm_cell_2/mul_1Mulwhile_placeholder_2%while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/mul_2Mulwhile_placeholder_2%while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/mul_3Mulwhile_placeholder_2%while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_2/ReadVariableOp?
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack?
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice/stack_1?
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2?
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice?
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_4?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add?
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1?
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice_1/stack?
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_2/strided_slice_1/stack_1?
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2?
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1?
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_1:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_5?
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_4Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_4?
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2?
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_2/strided_slice_2/stack?
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_2/strided_slice_2/stack_1?
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2?
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2?
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_2:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_6?
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_2?
while/lstm_cell_2/ReluReluwhile/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_5Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_5?
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_4:z:0while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_3?
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3?
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_2/strided_slice_3/stack?
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1?
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2?
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3?
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_3:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_7?
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_4?
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_6Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 
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
__inference_loss_fn_0_181991E
7dense_1_bias_regularizer_square_readvariableop_resource:
identity??.dense_1/bias/Regularizer/Square/ReadVariableOp?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_1_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulj
IdentityIdentity dense_1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp/^dense_1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp
?Q
?
@__inference_lstm_layer_call_and_return_conditional_losses_178652

inputs%
lstm_cell_2_178564:	?!
lstm_cell_2_178566:	?%
lstm_cell_2_178568:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?#lstm_cell_2/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_178564lstm_cell_2_178566lstm_cell_2_178568*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1785632%
#lstm_cell_2/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_178564lstm_cell_2_178566lstm_cell_2_178568*
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
while_body_178577*
condR
while_cond_178576*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_2_178564*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_181604

inputs<
)lstm_cell_2_split_readvariableop_resource:	?:
+lstm_cell_2_split_1_readvariableop_resource:	?6
#lstm_cell_2_readvariableop_resource:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_2/ReadVariableOp?lstm_cell_2/ReadVariableOp_1?lstm_cell_2/ReadVariableOp_2?lstm_cell_2/ReadVariableOp_3? lstm_cell_2/split/ReadVariableOp?"lstm_cell_2/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_2/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/ones_like|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_2/split/ReadVariableOp?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/split?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul?
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_1?
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_2?
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_3?
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim?
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/split_1/ReadVariableOp?
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_2/split_1?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd?
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_1?
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_2?
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_3?
lstm_cell_2/mulMulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul?
lstm_cell_2/mul_1Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1?
lstm_cell_2/mul_2Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/mul_3Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp?
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack?
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice/stack_1?
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2?
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice?
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul:z:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_4?
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add|
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_1?
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice_1/stack?
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_2/strided_slice_1/stack_1?
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2?
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1?
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_1:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_5?
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_4Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_4?
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_2?
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_2/strided_slice_2/stack?
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_2/strided_slice_2/stack_1?
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2?
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2?
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_2:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_6?
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_2u
lstm_cell_2/ReluRelulstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_5Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_5?
lstm_cell_2/add_3AddV2lstm_cell_2/mul_4:z:0lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_3?
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_3?
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_2/strided_slice_3/stack?
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1?
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2?
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3?
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_3:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_7?
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_4?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_6Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
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
while_body_181471*
condR
while_cond_181470*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_lstm_layer_call_fn_180778
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1786522
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
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_179338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179338___redundant_placeholder04
0while_while_cond_179338___redundant_placeholder14
0while_while_cond_179338___redundant_placeholder24
0while_while_cond_179338___redundant_placeholder3
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
_
C__inference_reshape_layer_call_and_return_conditional_losses_181980

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
while_body_181196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	?B
3while_lstm_cell_2_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_2_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	?@
1while_lstm_cell_2_split_1_readvariableop_resource:	?<
)while_lstm_cell_2_readvariableop_resource:	 ??? while/lstm_cell_2/ReadVariableOp?"while/lstm_cell_2/ReadVariableOp_1?"while/lstm_cell_2/ReadVariableOp_2?"while/lstm_cell_2/ReadVariableOp_3?&while/lstm_cell_2/split/ReadVariableOp?(while/lstm_cell_2/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell_2/dropout/Const?
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/dropout/Mul?
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape?
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform?
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_2/dropout/GreaterEqual/y?
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_2/dropout/GreaterEqual?
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_2/dropout/Cast?
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout/Mul_1?
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_1/Const?
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_1/Mul?
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape?
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2Տ?2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y?
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_1/GreaterEqual?
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_1/Cast?
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_1/Mul_1?
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_2/Const?
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_2/Mul?
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape?
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??32:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y?
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_2/GreaterEqual?
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_2/Cast?
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_2/Mul_1?
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_3/Const?
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_3/Mul?
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape?
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ρ2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y?
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_3/GreaterEqual?
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_3/Cast?
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_3/Mul_1?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul?
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_2?
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_3?
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dim?
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOp?
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_2/split_1?
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd?
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_1?
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_2?
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_3?
while/lstm_cell_2/mulMulwhile_placeholder_2#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul?
while/lstm_cell_2/mul_1Mulwhile_placeholder_2%while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/mul_2Mulwhile_placeholder_2%while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/mul_3Mulwhile_placeholder_2%while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_2/ReadVariableOp?
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack?
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice/stack_1?
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2?
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice?
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_4?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add?
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1?
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice_1/stack?
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_2/strided_slice_1/stack_1?
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2?
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1?
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_1:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_5?
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_4Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_4?
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2?
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_2/strided_slice_2/stack?
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_2/strided_slice_2/stack_1?
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2?
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2?
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_2:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_6?
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_2?
while/lstm_cell_2/ReluReluwhile/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_5Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_5?
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_4:z:0while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_3?
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3?
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_2/strided_slice_3/stack?
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1?
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2?
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3?
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_3:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_7?
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_4?
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_6Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 
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
while_body_181746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	?B
3while_lstm_cell_2_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_2_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	?@
1while_lstm_cell_2_split_1_readvariableop_resource:	?<
)while_lstm_cell_2_readvariableop_resource:	 ??? while/lstm_cell_2/ReadVariableOp?"while/lstm_cell_2/ReadVariableOp_1?"while/lstm_cell_2/ReadVariableOp_2?"while/lstm_cell_2/ReadVariableOp_3?&while/lstm_cell_2/split/ReadVariableOp?(while/lstm_cell_2/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/ones_like?
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
while/lstm_cell_2/dropout/Const?
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/dropout/Mul?
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape?
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform?
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_2/dropout/GreaterEqual/y?
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_2/dropout/GreaterEqual?
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_2/dropout/Cast?
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout/Mul_1?
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_1/Const?
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_1/Mul?
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape?
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y?
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_1/GreaterEqual?
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_1/Cast?
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_1/Mul_1?
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_2/Const?
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_2/Mul?
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape?
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2۸?2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y?
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_2/GreaterEqual?
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_2/Cast?
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_2/Mul_1?
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2#
!while/lstm_cell_2/dropout_3/Const?
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_2/dropout_3/Mul?
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape?
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ں?2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y?
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_2/dropout_3/GreaterEqual?
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_2/dropout_3/Cast?
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_2/dropout_3/Mul_1?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul?
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_2?
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_3?
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dim?
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOp?
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_2/split_1?
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd?
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_1?
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_2?
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_3?
while/lstm_cell_2/mulMulwhile_placeholder_2#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul?
while/lstm_cell_2/mul_1Mulwhile_placeholder_2%while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/mul_2Mulwhile_placeholder_2%while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/mul_3Mulwhile_placeholder_2%while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_2/ReadVariableOp?
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack?
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice/stack_1?
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2?
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice?
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_4?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add?
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1?
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice_1/stack?
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_2/strided_slice_1/stack_1?
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2?
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1?
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_1:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_5?
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_4Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_4?
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2?
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_2/strided_slice_2/stack?
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_2/strided_slice_2/stack_1?
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2?
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2?
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_2:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_6?
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_2?
while/lstm_cell_2/ReluReluwhile/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_5Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_5?
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_4:z:0while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_3?
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3?
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_2/strided_slice_3/stack?
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1?
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2?
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3?
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_3:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_7?
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_4?
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_6Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 
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
@__inference_lstm_layer_call_and_return_conditional_losses_179910

inputs<
)lstm_cell_2_split_readvariableop_resource:	?:
+lstm_cell_2_split_1_readvariableop_resource:	?6
#lstm_cell_2_readvariableop_resource:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_2/ReadVariableOp?lstm_cell_2/ReadVariableOp_1?lstm_cell_2/ReadVariableOp_2?lstm_cell_2/ReadVariableOp_3? lstm_cell_2/split/ReadVariableOp?"lstm_cell_2/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_2/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout/Const?
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Mul?
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shape?
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_2/dropout/random_uniform/RandomUniform?
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_2/dropout/GreaterEqual/y?
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_2/dropout/GreaterEqual?
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Cast?
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_1/Const?
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Mul?
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shape?
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform?
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_1/GreaterEqual/y?
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_1/GreaterEqual?
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Cast?
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_2/Const?
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Mul?
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shape?
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform?
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_2/GreaterEqual/y?
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_2/GreaterEqual?
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Cast?
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_3/Const?
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Mul?
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shape?
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??;24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform?
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_3/GreaterEqual/y?
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_3/GreaterEqual?
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Cast?
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Mul_1|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_2/split/ReadVariableOp?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/split?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul?
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_1?
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_2?
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_3?
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim?
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/split_1/ReadVariableOp?
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_2/split_1?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd?
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_1?
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_2?
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_3?
lstm_cell_2/mulMulzeros:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul?
lstm_cell_2/mul_1Mulzeros:output:0lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1?
lstm_cell_2/mul_2Mulzeros:output:0lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/mul_3Mulzeros:output:0lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp?
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack?
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice/stack_1?
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2?
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice?
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul:z:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_4?
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add|
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_1?
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice_1/stack?
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_2/strided_slice_1/stack_1?
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2?
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1?
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_1:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_5?
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_4Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_4?
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_2?
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_2/strided_slice_2/stack?
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_2/strided_slice_2/stack_1?
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2?
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2?
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_2:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_6?
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_2u
lstm_cell_2/ReluRelulstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_5Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_5?
lstm_cell_2/add_3AddV2lstm_cell_2/mul_4:z:0lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_3?
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_3?
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_2/strided_slice_3/stack?
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1?
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2?
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3?
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_3:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_7?
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_4?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_6Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
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
while_body_179745*
condR
while_cond_179744*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_180010
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1799742
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
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
while_cond_181195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181195___redundant_placeholder04
0while_while_cond_181195___redundant_placeholder14
0while_while_cond_181195___redundant_placeholder24
0while_while_cond_181195___redundant_placeholder3
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
?
D
(__inference_reshape_layer_call_fn_181967

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
GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_1795322
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
?
,__inference_lstm_cell_2_layer_call_fn_182014

inputs
states_0
states_1
unknown:	?
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1785632
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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
?A
?
__inference__traced_save_182343
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop6
2savev2_lstm_lstm_cell_2_kernel_read_readvariableop@
<savev2_lstm_lstm_cell_2_recurrent_kernel_read_readvariableop4
0savev2_lstm_lstm_cell_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop=
9savev2_adam_lstm_lstm_cell_2_kernel_m_read_readvariableopG
Csavev2_adam_lstm_lstm_cell_2_recurrent_kernel_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop=
9savev2_adam_lstm_lstm_cell_2_kernel_v_read_readvariableopG
Csavev2_adam_lstm_lstm_cell_2_recurrent_kernel_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_2_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop2savev2_lstm_lstm_cell_2_kernel_read_readvariableop<savev2_lstm_lstm_cell_2_recurrent_kernel_read_readvariableop0savev2_lstm_lstm_cell_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop9savev2_adam_lstm_lstm_cell_2_kernel_m_read_readvariableopCsavev2_adam_lstm_lstm_cell_2_recurrent_kernel_m_read_readvariableop7savev2_adam_lstm_lstm_cell_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop9savev2_adam_lstm_lstm_cell_2_kernel_v_read_readvariableopCsavev2_adam_lstm_lstm_cell_2_recurrent_kernel_v_read_readvariableop7savev2_adam_lstm_lstm_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :  : : :: : : : : :	?:	 ?:?: : :  : : ::	?:	 ?:?:  : : ::	?:	 ?:?: 2(
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
:	?:%!

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
:	?:%!

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
:	?:%!

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
$__inference_signature_wrapper_180117
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
!__inference__wrapped_model_1784392
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
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
??
?
!sequential_lstm_while_body_178290<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0T
Asequential_lstm_while_lstm_cell_2_split_readvariableop_resource_0:	?R
Csequential_lstm_while_lstm_cell_2_split_1_readvariableop_resource_0:	?N
;sequential_lstm_while_lstm_cell_2_readvariableop_resource_0:	 ?"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorR
?sequential_lstm_while_lstm_cell_2_split_readvariableop_resource:	?P
Asequential_lstm_while_lstm_cell_2_split_1_readvariableop_resource:	?L
9sequential_lstm_while_lstm_cell_2_readvariableop_resource:	 ???0sequential/lstm/while/lstm_cell_2/ReadVariableOp?2sequential/lstm/while/lstm_cell_2/ReadVariableOp_1?2sequential/lstm/while/lstm_cell_2/ReadVariableOp_2?2sequential/lstm/while/lstm_cell_2/ReadVariableOp_3?6sequential/lstm/while/lstm_cell_2/split/ReadVariableOp?8sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOp?
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2I
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02;
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItem?
1sequential/lstm/while/lstm_cell_2/ones_like/ShapeShape#sequential_lstm_while_placeholder_2*
T0*
_output_shapes
:23
1sequential/lstm/while/lstm_cell_2/ones_like/Shape?
1sequential/lstm/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1sequential/lstm/while/lstm_cell_2/ones_like/Const?
+sequential/lstm/while/lstm_cell_2/ones_likeFill:sequential/lstm/while/lstm_cell_2/ones_like/Shape:output:0:sequential/lstm/while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential/lstm/while/lstm_cell_2/ones_like?
1sequential/lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential/lstm/while/lstm_cell_2/split/split_dim?
6sequential/lstm/while/lstm_cell_2/split/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype028
6sequential/lstm/while/lstm_cell_2/split/ReadVariableOp?
'sequential/lstm/while/lstm_cell_2/splitSplit:sequential/lstm/while/lstm_cell_2/split/split_dim:output:0>sequential/lstm/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2)
'sequential/lstm/while/lstm_cell_2/split?
(sequential/lstm/while/lstm_cell_2/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential/lstm/while/lstm_cell_2/MatMul?
*sequential/lstm/while/lstm_cell_2/MatMul_1MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_1?
*sequential/lstm/while/lstm_cell_2/MatMul_2MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_2?
*sequential/lstm/while/lstm_cell_2/MatMul_3MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:00sequential/lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_3?
3sequential/lstm/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3sequential/lstm/while/lstm_cell_2/split_1/split_dim?
8sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOpCsequential_lstm_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02:
8sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOp?
)sequential/lstm/while/lstm_cell_2/split_1Split<sequential/lstm/while/lstm_cell_2/split_1/split_dim:output:0@sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2+
)sequential/lstm/while/lstm_cell_2/split_1?
)sequential/lstm/while/lstm_cell_2/BiasAddBiasAdd2sequential/lstm/while/lstm_cell_2/MatMul:product:02sequential/lstm/while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential/lstm/while/lstm_cell_2/BiasAdd?
+sequential/lstm/while/lstm_cell_2/BiasAdd_1BiasAdd4sequential/lstm/while/lstm_cell_2/MatMul_1:product:02sequential/lstm/while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential/lstm/while/lstm_cell_2/BiasAdd_1?
+sequential/lstm/while/lstm_cell_2/BiasAdd_2BiasAdd4sequential/lstm/while/lstm_cell_2/MatMul_2:product:02sequential/lstm/while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential/lstm/while/lstm_cell_2/BiasAdd_2?
+sequential/lstm/while/lstm_cell_2/BiasAdd_3BiasAdd4sequential/lstm/while/lstm_cell_2/MatMul_3:product:02sequential/lstm/while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential/lstm/while/lstm_cell_2/BiasAdd_3?
%sequential/lstm/while/lstm_cell_2/mulMul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/while/lstm_cell_2/mul?
'sequential/lstm/while/lstm_cell_2/mul_1Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/mul_1?
'sequential/lstm/while/lstm_cell_2/mul_2Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/mul_2?
'sequential/lstm/while/lstm_cell_2/mul_3Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/mul_3?
0sequential/lstm/while/lstm_cell_2/ReadVariableOpReadVariableOp;sequential_lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype022
0sequential/lstm/while/lstm_cell_2/ReadVariableOp?
5sequential/lstm/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential/lstm/while/lstm_cell_2/strided_slice/stack?
7sequential/lstm/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential/lstm/while/lstm_cell_2/strided_slice/stack_1?
7sequential/lstm/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell_2/strided_slice/stack_2?
/sequential/lstm/while/lstm_cell_2/strided_sliceStridedSlice8sequential/lstm/while/lstm_cell_2/ReadVariableOp:value:0>sequential/lstm/while/lstm_cell_2/strided_slice/stack:output:0@sequential/lstm/while/lstm_cell_2/strided_slice/stack_1:output:0@sequential/lstm/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell_2/strided_slice?
*sequential/lstm/while/lstm_cell_2/MatMul_4MatMul)sequential/lstm/while/lstm_cell_2/mul:z:08sequential/lstm/while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_4?
%sequential/lstm/while/lstm_cell_2/addAddV22sequential/lstm/while/lstm_cell_2/BiasAdd:output:04sequential/lstm/while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/while/lstm_cell_2/add?
)sequential/lstm/while/lstm_cell_2/SigmoidSigmoid)sequential/lstm/while/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential/lstm/while/lstm_cell_2/Sigmoid?
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp;sequential_lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_1?
7sequential/lstm/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential/lstm/while/lstm_cell_2/strided_slice_1/stack?
9sequential/lstm/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2;
9sequential/lstm/while/lstm_cell_2/strided_slice_1/stack_1?
9sequential/lstm/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential/lstm/while/lstm_cell_2/strided_slice_1/stack_2?
1sequential/lstm/while/lstm_cell_2/strided_slice_1StridedSlice:sequential/lstm/while/lstm_cell_2/ReadVariableOp_1:value:0@sequential/lstm/while/lstm_cell_2/strided_slice_1/stack:output:0Bsequential/lstm/while/lstm_cell_2/strided_slice_1/stack_1:output:0Bsequential/lstm/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential/lstm/while/lstm_cell_2/strided_slice_1?
*sequential/lstm/while/lstm_cell_2/MatMul_5MatMul+sequential/lstm/while/lstm_cell_2/mul_1:z:0:sequential/lstm/while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_5?
'sequential/lstm/while/lstm_cell_2/add_1AddV24sequential/lstm/while/lstm_cell_2/BiasAdd_1:output:04sequential/lstm/while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/add_1?
+sequential/lstm/while/lstm_cell_2/Sigmoid_1Sigmoid+sequential/lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential/lstm/while/lstm_cell_2/Sigmoid_1?
'sequential/lstm/while/lstm_cell_2/mul_4Mul/sequential/lstm/while/lstm_cell_2/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/mul_4?
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp;sequential_lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_2?
7sequential/lstm/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential/lstm/while/lstm_cell_2/strided_slice_2/stack?
9sequential/lstm/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2;
9sequential/lstm/while/lstm_cell_2/strided_slice_2/stack_1?
9sequential/lstm/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential/lstm/while/lstm_cell_2/strided_slice_2/stack_2?
1sequential/lstm/while/lstm_cell_2/strided_slice_2StridedSlice:sequential/lstm/while/lstm_cell_2/ReadVariableOp_2:value:0@sequential/lstm/while/lstm_cell_2/strided_slice_2/stack:output:0Bsequential/lstm/while/lstm_cell_2/strided_slice_2/stack_1:output:0Bsequential/lstm/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential/lstm/while/lstm_cell_2/strided_slice_2?
*sequential/lstm/while/lstm_cell_2/MatMul_6MatMul+sequential/lstm/while/lstm_cell_2/mul_2:z:0:sequential/lstm/while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_6?
'sequential/lstm/while/lstm_cell_2/add_2AddV24sequential/lstm/while/lstm_cell_2/BiasAdd_2:output:04sequential/lstm/while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/add_2?
&sequential/lstm/while/lstm_cell_2/ReluRelu+sequential/lstm/while/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2(
&sequential/lstm/while/lstm_cell_2/Relu?
'sequential/lstm/while/lstm_cell_2/mul_5Mul-sequential/lstm/while/lstm_cell_2/Sigmoid:y:04sequential/lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/mul_5?
'sequential/lstm/while/lstm_cell_2/add_3AddV2+sequential/lstm/while/lstm_cell_2/mul_4:z:0+sequential/lstm/while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/add_3?
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp;sequential_lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype024
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_3?
7sequential/lstm/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   29
7sequential/lstm/while/lstm_cell_2/strided_slice_3/stack?
9sequential/lstm/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential/lstm/while/lstm_cell_2/strided_slice_3/stack_1?
9sequential/lstm/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential/lstm/while/lstm_cell_2/strided_slice_3/stack_2?
1sequential/lstm/while/lstm_cell_2/strided_slice_3StridedSlice:sequential/lstm/while/lstm_cell_2/ReadVariableOp_3:value:0@sequential/lstm/while/lstm_cell_2/strided_slice_3/stack:output:0Bsequential/lstm/while/lstm_cell_2/strided_slice_3/stack_1:output:0Bsequential/lstm/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask23
1sequential/lstm/while/lstm_cell_2/strided_slice_3?
*sequential/lstm/while/lstm_cell_2/MatMul_7MatMul+sequential/lstm/while/lstm_cell_2/mul_3:z:0:sequential/lstm/while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential/lstm/while/lstm_cell_2/MatMul_7?
'sequential/lstm/while/lstm_cell_2/add_4AddV24sequential/lstm/while/lstm_cell_2/BiasAdd_3:output:04sequential/lstm/while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/add_4?
+sequential/lstm/while/lstm_cell_2/Sigmoid_2Sigmoid+sequential/lstm/while/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential/lstm/while/lstm_cell_2/Sigmoid_2?
(sequential/lstm/while/lstm_cell_2/Relu_1Relu+sequential/lstm/while/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential/lstm/while/lstm_cell_2/Relu_1?
'sequential/lstm/while/lstm_cell_2/mul_6Mul/sequential/lstm/while/lstm_cell_2/Sigmoid_2:y:06sequential/lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2)
'sequential/lstm/while/lstm_cell_2/mul_6?
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder+sequential/lstm/while/lstm_cell_2/mul_6:z:0*
_output_shapes
: *
element_dtype02<
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItem|
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add/y?
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add?
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add_1/y?
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add_1?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 2 
sequential/lstm/while/Identity?
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_1?
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_2?
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_3?
 sequential/lstm/while/Identity_4Identity+sequential/lstm/while/lstm_cell_2/mul_6:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:????????? 2"
 sequential/lstm/while/Identity_4?
 sequential/lstm/while/Identity_5Identity+sequential/lstm/while/lstm_cell_2/add_3:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:????????? 2"
 sequential/lstm/while/Identity_5?
sequential/lstm/while/NoOpNoOp1^sequential/lstm/while/lstm_cell_2/ReadVariableOp3^sequential/lstm/while/lstm_cell_2/ReadVariableOp_13^sequential/lstm/while/lstm_cell_2/ReadVariableOp_23^sequential/lstm/while/lstm_cell_2/ReadVariableOp_37^sequential/lstm/while/lstm_cell_2/split/ReadVariableOp9^sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
sequential/lstm/while/NoOp"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"x
9sequential_lstm_while_lstm_cell_2_readvariableop_resource;sequential_lstm_while_lstm_cell_2_readvariableop_resource_0"?
Asequential_lstm_while_lstm_cell_2_split_1_readvariableop_resourceCsequential_lstm_while_lstm_cell_2_split_1_readvariableop_resource_0"?
?sequential_lstm_while_lstm_cell_2_split_readvariableop_resourceAsequential_lstm_while_lstm_cell_2_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"?
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2d
0sequential/lstm/while/lstm_cell_2/ReadVariableOp0sequential/lstm/while/lstm_cell_2/ReadVariableOp2h
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_12sequential/lstm/while/lstm_cell_2/ReadVariableOp_12h
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_22sequential/lstm/while/lstm_cell_2/ReadVariableOp_22h
2sequential/lstm/while/lstm_cell_2/ReadVariableOp_32sequential/lstm/while/lstm_cell_2/ReadVariableOp_32p
6sequential/lstm/while/lstm_cell_2/split/ReadVariableOp6sequential/lstm/while/lstm_cell_2/split/ReadVariableOp2t
8sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOp8sequential/lstm/while/lstm_cell_2/split_1/ReadVariableOp: 
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
?~
?	
while_body_179339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	?B
3while_lstm_cell_2_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_2_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	?@
1while_lstm_cell_2_split_1_readvariableop_resource:	?<
)while_lstm_cell_2_readvariableop_resource:	 ??? while/lstm_cell_2/ReadVariableOp?"while/lstm_cell_2/ReadVariableOp_1?"while/lstm_cell_2/ReadVariableOp_2?"while/lstm_cell_2/ReadVariableOp_3?&while/lstm_cell_2/split/ReadVariableOp?(while/lstm_cell_2/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/ones_like?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul?
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_2?
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_3?
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dim?
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOp?
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_2/split_1?
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd?
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_1?
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_2?
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_3?
while/lstm_cell_2/mulMulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul?
while/lstm_cell_2/mul_1Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/mul_2Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/mul_3Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_2/ReadVariableOp?
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack?
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice/stack_1?
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2?
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice?
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_4?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add?
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1?
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice_1/stack?
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_2/strided_slice_1/stack_1?
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2?
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1?
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_1:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_5?
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_4Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_4?
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2?
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_2/strided_slice_2/stack?
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_2/strided_slice_2/stack_1?
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2?
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2?
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_2:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_6?
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_2?
while/lstm_cell_2/ReluReluwhile/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_5Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_5?
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_4:z:0while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_3?
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3?
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_2/strided_slice_3/stack?
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1?
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2?
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3?
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_3:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_7?
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_4?
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_6Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 
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
while_cond_179744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179744___redundant_placeholder04
0while_while_cond_179744___redundant_placeholder14
0while_while_cond_179744___redundant_placeholder24
0while_while_cond_179744___redundant_placeholder3
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
?~
?	
while_body_181471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	?B
3while_lstm_cell_2_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_2_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	?@
1while_lstm_cell_2_split_1_readvariableop_resource:	?<
)while_lstm_cell_2_readvariableop_resource:	 ??? while/lstm_cell_2/ReadVariableOp?"while/lstm_cell_2/ReadVariableOp_1?"while/lstm_cell_2/ReadVariableOp_2?"while/lstm_cell_2/ReadVariableOp_3?&while/lstm_cell_2/split/ReadVariableOp?(while/lstm_cell_2/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/ones_like?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul?
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_2?
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_3?
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dim?
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOp?
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_2/split_1?
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd?
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_1?
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_2?
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_3?
while/lstm_cell_2/mulMulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul?
while/lstm_cell_2/mul_1Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/mul_2Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/mul_3Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_2/ReadVariableOp?
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack?
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice/stack_1?
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2?
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice?
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_4?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add?
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1?
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice_1/stack?
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_2/strided_slice_1/stack_1?
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2?
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1?
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_1:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_5?
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_4Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_4?
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2?
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_2/strided_slice_2/stack?
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_2/strided_slice_2/stack_1?
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2?
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2?
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_2:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_6?
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_2?
while/lstm_cell_2/ReluReluwhile/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_5Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_5?
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_4:z:0while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_3?
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3?
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_2/strided_slice_3/stack?
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1?
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2?
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3?
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_3:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_7?
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_4?
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_6Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 
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
?
?
__inference_loss_fn_1_182236U
Blstm_lstm_cell_2_kernel_regularizer_square_readvariableop_resource:	?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBlstm_lstm_cell_2_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mulu
IdentityIdentity+lstm/lstm_cell_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp
?{
?
"__inference__traced_restore_182437
file_prefix/
assignvariableop_dense_kernel:  +
assignvariableop_1_dense_bias: 3
!assignvariableop_2_dense_1_kernel: -
assignvariableop_3_dense_1_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: =
*assignvariableop_9_lstm_lstm_cell_2_kernel:	?H
5assignvariableop_10_lstm_lstm_cell_2_recurrent_kernel:	 ?8
)assignvariableop_11_lstm_lstm_cell_2_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: 9
'assignvariableop_14_adam_dense_kernel_m:  3
%assignvariableop_15_adam_dense_bias_m: ;
)assignvariableop_16_adam_dense_1_kernel_m: 5
'assignvariableop_17_adam_dense_1_bias_m:E
2assignvariableop_18_adam_lstm_lstm_cell_2_kernel_m:	?O
<assignvariableop_19_adam_lstm_lstm_cell_2_recurrent_kernel_m:	 ??
0assignvariableop_20_adam_lstm_lstm_cell_2_bias_m:	?9
'assignvariableop_21_adam_dense_kernel_v:  3
%assignvariableop_22_adam_dense_bias_v: ;
)assignvariableop_23_adam_dense_1_kernel_v: 5
'assignvariableop_24_adam_dense_1_bias_v:E
2assignvariableop_25_adam_lstm_lstm_cell_2_kernel_v:	?O
<assignvariableop_26_adam_lstm_lstm_cell_2_recurrent_kernel_v:	 ??
0assignvariableop_27_adam_lstm_lstm_cell_2_bias_v:	?
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
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_lstm_cell_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp5assignvariableop_10_lstm_lstm_cell_2_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_lstm_lstm_cell_2_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp%assignvariableop_15_adam_dense_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_1_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_lstm_lstm_cell_2_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_lstm_lstm_cell_2_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_lstm_lstm_cell_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_lstm_lstm_cell_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp<assignvariableop_26_adam_lstm_lstm_cell_2_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_lstm_lstm_cell_2_bias_vIdentity_27:output:0"/device:CPU:0*
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
?
?
%__inference_lstm_layer_call_fn_180811

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1799102
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
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_180426

inputsA
.lstm_lstm_cell_2_split_readvariableop_resource:	??
0lstm_lstm_cell_2_split_1_readvariableop_resource:	?;
(lstm_lstm_cell_2_readvariableop_resource:	 ?6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?.dense_1/bias/Regularizer/Square/ReadVariableOp?lstm/lstm_cell_2/ReadVariableOp?!lstm/lstm_cell_2/ReadVariableOp_1?!lstm/lstm_cell_2/ReadVariableOp_2?!lstm/lstm_cell_2/ReadVariableOp_3?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?%lstm/lstm_cell_2/split/ReadVariableOp?'lstm/lstm_cell_2/split_1/ReadVariableOp?
lstm/whileN

lstm/ShapeShapeinputs*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm/strided_slice_2?
 lstm/lstm_cell_2/ones_like/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell_2/ones_like/Shape?
 lstm/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell_2/ones_like/Const?
lstm/lstm_cell_2/ones_likeFill)lstm/lstm_cell_2/ones_like/Shape:output:0)lstm/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/ones_like?
 lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm/lstm_cell_2/split/split_dim?
%lstm/lstm_cell_2/split/ReadVariableOpReadVariableOp.lstm_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%lstm/lstm_cell_2/split/ReadVariableOp?
lstm/lstm_cell_2/splitSplit)lstm/lstm_cell_2/split/split_dim:output:0-lstm/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm/lstm_cell_2/split?
lstm/lstm_cell_2/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul?
lstm/lstm_cell_2/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_1?
lstm/lstm_cell_2/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_2?
lstm/lstm_cell_2/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_3?
"lstm/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"lstm/lstm_cell_2/split_1/split_dim?
'lstm/lstm_cell_2/split_1/ReadVariableOpReadVariableOp0lstm_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'lstm/lstm_cell_2/split_1/ReadVariableOp?
lstm/lstm_cell_2/split_1Split+lstm/lstm_cell_2/split_1/split_dim:output:0/lstm/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm/lstm_cell_2/split_1?
lstm/lstm_cell_2/BiasAddBiasAdd!lstm/lstm_cell_2/MatMul:product:0!lstm/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd?
lstm/lstm_cell_2/BiasAdd_1BiasAdd#lstm/lstm_cell_2/MatMul_1:product:0!lstm/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd_1?
lstm/lstm_cell_2/BiasAdd_2BiasAdd#lstm/lstm_cell_2/MatMul_2:product:0!lstm/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd_2?
lstm/lstm_cell_2/BiasAdd_3BiasAdd#lstm/lstm_cell_2/MatMul_3:product:0!lstm/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd_3?
lstm/lstm_cell_2/mulMullstm/zeros:output:0#lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul?
lstm/lstm_cell_2/mul_1Mullstm/zeros:output:0#lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_1?
lstm/lstm_cell_2/mul_2Mullstm/zeros:output:0#lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_2?
lstm/lstm_cell_2/mul_3Mullstm/zeros:output:0#lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_3?
lstm/lstm_cell_2/ReadVariableOpReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02!
lstm/lstm_cell_2/ReadVariableOp?
$lstm/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm/lstm_cell_2/strided_slice/stack?
&lstm/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell_2/strided_slice/stack_1?
&lstm/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell_2/strided_slice/stack_2?
lstm/lstm_cell_2/strided_sliceStridedSlice'lstm/lstm_cell_2/ReadVariableOp:value:0-lstm/lstm_cell_2/strided_slice/stack:output:0/lstm/lstm_cell_2/strided_slice/stack_1:output:0/lstm/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2 
lstm/lstm_cell_2/strided_slice?
lstm/lstm_cell_2/MatMul_4MatMullstm/lstm_cell_2/mul:z:0'lstm/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_4?
lstm/lstm_cell_2/addAddV2!lstm/lstm_cell_2/BiasAdd:output:0#lstm/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add?
lstm/lstm_cell_2/SigmoidSigmoidlstm/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Sigmoid?
!lstm/lstm_cell_2/ReadVariableOp_1ReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm/lstm_cell_2/ReadVariableOp_1?
&lstm/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell_2/strided_slice_1/stack?
(lstm/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm/lstm_cell_2/strided_slice_1/stack_1?
(lstm/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm/lstm_cell_2/strided_slice_1/stack_2?
 lstm/lstm_cell_2/strided_slice_1StridedSlice)lstm/lstm_cell_2/ReadVariableOp_1:value:0/lstm/lstm_cell_2/strided_slice_1/stack:output:01lstm/lstm_cell_2/strided_slice_1/stack_1:output:01lstm/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm/lstm_cell_2/strided_slice_1?
lstm/lstm_cell_2/MatMul_5MatMullstm/lstm_cell_2/mul_1:z:0)lstm/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_5?
lstm/lstm_cell_2/add_1AddV2#lstm/lstm_cell_2/BiasAdd_1:output:0#lstm/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_1?
lstm/lstm_cell_2/Sigmoid_1Sigmoidlstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Sigmoid_1?
lstm/lstm_cell_2/mul_4Mullstm/lstm_cell_2/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_4?
!lstm/lstm_cell_2/ReadVariableOp_2ReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm/lstm_cell_2/ReadVariableOp_2?
&lstm/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2(
&lstm/lstm_cell_2/strided_slice_2/stack?
(lstm/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2*
(lstm/lstm_cell_2/strided_slice_2/stack_1?
(lstm/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm/lstm_cell_2/strided_slice_2/stack_2?
 lstm/lstm_cell_2/strided_slice_2StridedSlice)lstm/lstm_cell_2/ReadVariableOp_2:value:0/lstm/lstm_cell_2/strided_slice_2/stack:output:01lstm/lstm_cell_2/strided_slice_2/stack_1:output:01lstm/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm/lstm_cell_2/strided_slice_2?
lstm/lstm_cell_2/MatMul_6MatMullstm/lstm_cell_2/mul_2:z:0)lstm/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_6?
lstm/lstm_cell_2/add_2AddV2#lstm/lstm_cell_2/BiasAdd_2:output:0#lstm/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_2?
lstm/lstm_cell_2/ReluRelulstm/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Relu?
lstm/lstm_cell_2/mul_5Mullstm/lstm_cell_2/Sigmoid:y:0#lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_5?
lstm/lstm_cell_2/add_3AddV2lstm/lstm_cell_2/mul_4:z:0lstm/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_3?
!lstm/lstm_cell_2/ReadVariableOp_3ReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm/lstm_cell_2/ReadVariableOp_3?
&lstm/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2(
&lstm/lstm_cell_2/strided_slice_3/stack?
(lstm/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/lstm_cell_2/strided_slice_3/stack_1?
(lstm/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm/lstm_cell_2/strided_slice_3/stack_2?
 lstm/lstm_cell_2/strided_slice_3StridedSlice)lstm/lstm_cell_2/ReadVariableOp_3:value:0/lstm/lstm_cell_2/strided_slice_3/stack:output:01lstm/lstm_cell_2/strided_slice_3/stack_1:output:01lstm/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm/lstm_cell_2/strided_slice_3?
lstm/lstm_cell_2/MatMul_7MatMullstm/lstm_cell_2/mul_3:z:0)lstm/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_7?
lstm/lstm_cell_2/add_4AddV2#lstm/lstm_cell_2/BiasAdd_3:output:0#lstm/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_4?
lstm/lstm_cell_2/Sigmoid_2Sigmoidlstm/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Sigmoid_2?
lstm/lstm_cell_2/Relu_1Relulstm/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Relu_1?
lstm/lstm_cell_2/mul_6Mullstm/lstm_cell_2/Sigmoid_2:y:0%lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_6?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0.lstm_lstm_cell_2_split_readvariableop_resource0lstm_lstm_cell_2_split_1_readvariableop_resource(lstm_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_180265*"
condR
lstm_while_cond_180264*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddf
reshape/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapedense_1/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape/Reshape?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.lstm_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mul?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulw
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp ^lstm/lstm_cell_2/ReadVariableOp"^lstm/lstm_cell_2/ReadVariableOp_1"^lstm/lstm_cell_2/ReadVariableOp_2"^lstm/lstm_cell_2/ReadVariableOp_3:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp&^lstm/lstm_cell_2/split/ReadVariableOp(^lstm/lstm_cell_2/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2B
lstm/lstm_cell_2/ReadVariableOplstm/lstm_cell_2/ReadVariableOp2F
!lstm/lstm_cell_2/ReadVariableOp_1!lstm/lstm_cell_2/ReadVariableOp_12F
!lstm/lstm_cell_2/ReadVariableOp_2!lstm/lstm_cell_2/ReadVariableOp_22F
!lstm/lstm_cell_2/ReadVariableOp_3!lstm/lstm_cell_2/ReadVariableOp_32v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2N
%lstm/lstm_cell_2/split/ReadVariableOp%lstm/lstm_cell_2/split/ReadVariableOp2R
'lstm/lstm_cell_2/split_1/ReadVariableOp'lstm/lstm_cell_2/split_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_178873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178873___redundant_placeholder04
0while_while_cond_178873___redundant_placeholder14
0while_while_cond_178873___redundant_placeholder24
0while_while_cond_178873___redundant_placeholder3
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
?%
?
while_body_178577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_2_178601_0:	?)
while_lstm_cell_2_178603_0:	?-
while_lstm_cell_2_178605_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_2_178601:	?'
while_lstm_cell_2_178603:	?+
while_lstm_cell_2_178605:	 ???)while/lstm_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_178601_0while_lstm_cell_2_178603_0while_lstm_cell_2_178605_0*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1785632+
)while/lstm_cell_2/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_178601while_lstm_cell_2_178601_0"6
while_lstm_cell_2_178603while_lstm_cell_2_178603_0"6
while_lstm_cell_2_178605while_lstm_cell_2_178605_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
%__inference_lstm_layer_call_fn_180800

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1794722
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
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
F__inference_sequential_layer_call_and_return_conditional_losses_179547

inputs
lstm_179473:	?
lstm_179475:	?
lstm_179477:	 ?
dense_179492:  
dense_179494:  
dense_1_179514: 
dense_1_179516:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?.dense_1/bias/Regularizer/Square/ReadVariableOp?lstm/StatefulPartitionedCall?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_179473lstm_179475lstm_179477*
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1794722
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_179492dense_179494*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1794912
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_179514dense_1_179516*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1795132!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_1795322
reshape/PartitionedCall?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_179473*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mul?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_179516*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp^lstm/StatefulPartitionedCall:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?~
?	
while_body_180921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_2_split_readvariableop_resource_0:	?B
3while_lstm_cell_2_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_2_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_2_split_readvariableop_resource:	?@
1while_lstm_cell_2_split_1_readvariableop_resource:	?<
)while_lstm_cell_2_readvariableop_resource:	 ??? while/lstm_cell_2/ReadVariableOp?"while/lstm_cell_2/ReadVariableOp_1?"while/lstm_cell_2/ReadVariableOp_2?"while/lstm_cell_2/ReadVariableOp_3?&while/lstm_cell_2/split/ReadVariableOp?(while/lstm_cell_2/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_2/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape?
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_2/ones_like/Const?
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/ones_like?
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dim?
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_2/split?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul?
while/lstm_cell_2/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_1?
while/lstm_cell_2/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_2?
while/lstm_cell_2/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_3?
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dim?
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOp?
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_2/split_1?
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd?
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_1?
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_2?
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/BiasAdd_3?
while/lstm_cell_2/mulMulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul?
while/lstm_cell_2/mul_1Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_1?
while/lstm_cell_2/mul_2Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_2?
while/lstm_cell_2/mul_3Mulwhile_placeholder_2$while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_3?
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_2/ReadVariableOp?
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack?
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice/stack_1?
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2?
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice?
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_4?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add?
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid?
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1?
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_2/strided_slice_1/stack?
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_2/strided_slice_1/stack_1?
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2?
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1?
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_1:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_5?
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_1?
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_1?
while/lstm_cell_2/mul_4Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_4?
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2?
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_2/strided_slice_2/stack?
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_2/strided_slice_2/stack_1?
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2?
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2?
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_2:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_6?
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_2?
while/lstm_cell_2/ReluReluwhile/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu?
while/lstm_cell_2/mul_5Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_5?
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_4:z:0while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_3?
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3?
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_2/strided_slice_3/stack?
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1?
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2?
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3?
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_3:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/MatMul_7?
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/add_4?
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Sigmoid_2?
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/Relu_1?
while/lstm_cell_2/mul_6Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_2/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 
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
@__inference_lstm_layer_call_and_return_conditional_losses_181911

inputs<
)lstm_cell_2_split_readvariableop_resource:	?:
+lstm_cell_2_split_1_readvariableop_resource:	?6
#lstm_cell_2_readvariableop_resource:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_2/ReadVariableOp?lstm_cell_2/ReadVariableOp_1?lstm_cell_2/ReadVariableOp_2?lstm_cell_2/ReadVariableOp_3? lstm_cell_2/split/ReadVariableOp?"lstm_cell_2/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_2/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout/Const?
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Mul?
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shape?
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_2/dropout/random_uniform/RandomUniform?
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_2/dropout/GreaterEqual/y?
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_2/dropout/GreaterEqual?
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Cast?
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_1/Const?
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Mul?
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shape?
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform?
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_1/GreaterEqual/y?
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_1/GreaterEqual?
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Cast?
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_2/Const?
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Mul?
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shape?
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform?
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_2/GreaterEqual/y?
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_2/GreaterEqual?
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Cast?
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_3/Const?
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Mul?
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shape?
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform?
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_3/GreaterEqual/y?
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_3/GreaterEqual?
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Cast?
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Mul_1|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_2/split/ReadVariableOp?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/split?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul?
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_1?
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_2?
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_3?
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim?
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/split_1/ReadVariableOp?
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_2/split_1?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd?
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_1?
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_2?
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_3?
lstm_cell_2/mulMulzeros:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul?
lstm_cell_2/mul_1Mulzeros:output:0lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1?
lstm_cell_2/mul_2Mulzeros:output:0lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/mul_3Mulzeros:output:0lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp?
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack?
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice/stack_1?
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2?
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice?
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul:z:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_4?
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add|
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_1?
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice_1/stack?
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_2/strided_slice_1/stack_1?
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2?
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1?
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_1:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_5?
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_4Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_4?
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_2?
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_2/strided_slice_2/stack?
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_2/strided_slice_2/stack_1?
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2?
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2?
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_2:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_6?
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_2u
lstm_cell_2/ReluRelulstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_5Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_5?
lstm_cell_2/add_3AddV2lstm_cell_2/mul_4:z:0lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_3?
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_3?
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_2/strided_slice_3/stack?
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1?
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2?
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3?
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_3:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_7?
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_4?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_6Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
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
while_body_181746*
condR
while_cond_181745*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178563

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_180761

inputsA
.lstm_lstm_cell_2_split_readvariableop_resource:	??
0lstm_lstm_cell_2_split_1_readvariableop_resource:	?;
(lstm_lstm_cell_2_readvariableop_resource:	 ?6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?.dense_1/bias/Regularizer/Square/ReadVariableOp?lstm/lstm_cell_2/ReadVariableOp?!lstm/lstm_cell_2/ReadVariableOp_1?!lstm/lstm_cell_2/ReadVariableOp_2?!lstm/lstm_cell_2/ReadVariableOp_3?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?%lstm/lstm_cell_2/split/ReadVariableOp?'lstm/lstm_cell_2/split_1/ReadVariableOp?
lstm/whileN

lstm/ShapeShapeinputs*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm/strided_slice_2?
 lstm/lstm_cell_2/ones_like/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell_2/ones_like/Shape?
 lstm/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell_2/ones_like/Const?
lstm/lstm_cell_2/ones_likeFill)lstm/lstm_cell_2/ones_like/Shape:output:0)lstm/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/ones_like?
lstm/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2 
lstm/lstm_cell_2/dropout/Const?
lstm/lstm_cell_2/dropout/MulMul#lstm/lstm_cell_2/ones_like:output:0'lstm/lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/dropout/Mul?
lstm/lstm_cell_2/dropout/ShapeShape#lstm/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell_2/dropout/Shape?
5lstm/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell_2/dropout/random_uniform/RandomUniform?
'lstm/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2)
'lstm/lstm_cell_2/dropout/GreaterEqual/y?
%lstm/lstm_cell_2/dropout/GreaterEqualGreaterEqual>lstm/lstm_cell_2/dropout/random_uniform/RandomUniform:output:00lstm/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2'
%lstm/lstm_cell_2/dropout/GreaterEqual?
lstm/lstm_cell_2/dropout/CastCast)lstm/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/dropout/Cast?
lstm/lstm_cell_2/dropout/Mul_1Mul lstm/lstm_cell_2/dropout/Mul:z:0!lstm/lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell_2/dropout/Mul_1?
 lstm/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 lstm/lstm_cell_2/dropout_1/Const?
lstm/lstm_cell_2/dropout_1/MulMul#lstm/lstm_cell_2/ones_like:output:0)lstm/lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell_2/dropout_1/Mul?
 lstm/lstm_cell_2/dropout_1/ShapeShape#lstm/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell_2/dropout_1/Shape?
7lstm/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???29
7lstm/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
)lstm/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)lstm/lstm_cell_2/dropout_1/GreaterEqual/y?
'lstm/lstm_cell_2/dropout_1/GreaterEqualGreaterEqual@lstm/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:02lstm/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'lstm/lstm_cell_2/dropout_1/GreaterEqual?
lstm/lstm_cell_2/dropout_1/CastCast+lstm/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
lstm/lstm_cell_2/dropout_1/Cast?
 lstm/lstm_cell_2/dropout_1/Mul_1Mul"lstm/lstm_cell_2/dropout_1/Mul:z:0#lstm/lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 lstm/lstm_cell_2/dropout_1/Mul_1?
 lstm/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 lstm/lstm_cell_2/dropout_2/Const?
lstm/lstm_cell_2/dropout_2/MulMul#lstm/lstm_cell_2/ones_like:output:0)lstm/lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell_2/dropout_2/Mul?
 lstm/lstm_cell_2/dropout_2/ShapeShape#lstm/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell_2/dropout_2/Shape?
7lstm/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???29
7lstm/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
)lstm/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)lstm/lstm_cell_2/dropout_2/GreaterEqual/y?
'lstm/lstm_cell_2/dropout_2/GreaterEqualGreaterEqual@lstm/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:02lstm/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'lstm/lstm_cell_2/dropout_2/GreaterEqual?
lstm/lstm_cell_2/dropout_2/CastCast+lstm/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
lstm/lstm_cell_2/dropout_2/Cast?
 lstm/lstm_cell_2/dropout_2/Mul_1Mul"lstm/lstm_cell_2/dropout_2/Mul:z:0#lstm/lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 lstm/lstm_cell_2/dropout_2/Mul_1?
 lstm/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 lstm/lstm_cell_2/dropout_3/Const?
lstm/lstm_cell_2/dropout_3/MulMul#lstm/lstm_cell_2/ones_like:output:0)lstm/lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/lstm_cell_2/dropout_3/Mul?
 lstm/lstm_cell_2/dropout_3/ShapeShape#lstm/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell_2/dropout_3/Shape?
7lstm/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?߹29
7lstm/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
)lstm/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)lstm/lstm_cell_2/dropout_3/GreaterEqual/y?
'lstm/lstm_cell_2/dropout_3/GreaterEqualGreaterEqual@lstm/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:02lstm/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'lstm/lstm_cell_2/dropout_3/GreaterEqual?
lstm/lstm_cell_2/dropout_3/CastCast+lstm/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
lstm/lstm_cell_2/dropout_3/Cast?
 lstm/lstm_cell_2/dropout_3/Mul_1Mul"lstm/lstm_cell_2/dropout_3/Mul:z:0#lstm/lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 lstm/lstm_cell_2/dropout_3/Mul_1?
 lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm/lstm_cell_2/split/split_dim?
%lstm/lstm_cell_2/split/ReadVariableOpReadVariableOp.lstm_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%lstm/lstm_cell_2/split/ReadVariableOp?
lstm/lstm_cell_2/splitSplit)lstm/lstm_cell_2/split/split_dim:output:0-lstm/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm/lstm_cell_2/split?
lstm/lstm_cell_2/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul?
lstm/lstm_cell_2/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_1?
lstm/lstm_cell_2/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_2?
lstm/lstm_cell_2/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_3?
"lstm/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"lstm/lstm_cell_2/split_1/split_dim?
'lstm/lstm_cell_2/split_1/ReadVariableOpReadVariableOp0lstm_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'lstm/lstm_cell_2/split_1/ReadVariableOp?
lstm/lstm_cell_2/split_1Split+lstm/lstm_cell_2/split_1/split_dim:output:0/lstm/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm/lstm_cell_2/split_1?
lstm/lstm_cell_2/BiasAddBiasAdd!lstm/lstm_cell_2/MatMul:product:0!lstm/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd?
lstm/lstm_cell_2/BiasAdd_1BiasAdd#lstm/lstm_cell_2/MatMul_1:product:0!lstm/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd_1?
lstm/lstm_cell_2/BiasAdd_2BiasAdd#lstm/lstm_cell_2/MatMul_2:product:0!lstm/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd_2?
lstm/lstm_cell_2/BiasAdd_3BiasAdd#lstm/lstm_cell_2/MatMul_3:product:0!lstm/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/BiasAdd_3?
lstm/lstm_cell_2/mulMullstm/zeros:output:0"lstm/lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul?
lstm/lstm_cell_2/mul_1Mullstm/zeros:output:0$lstm/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_1?
lstm/lstm_cell_2/mul_2Mullstm/zeros:output:0$lstm/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_2?
lstm/lstm_cell_2/mul_3Mullstm/zeros:output:0$lstm/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_3?
lstm/lstm_cell_2/ReadVariableOpReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02!
lstm/lstm_cell_2/ReadVariableOp?
$lstm/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm/lstm_cell_2/strided_slice/stack?
&lstm/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell_2/strided_slice/stack_1?
&lstm/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell_2/strided_slice/stack_2?
lstm/lstm_cell_2/strided_sliceStridedSlice'lstm/lstm_cell_2/ReadVariableOp:value:0-lstm/lstm_cell_2/strided_slice/stack:output:0/lstm/lstm_cell_2/strided_slice/stack_1:output:0/lstm/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2 
lstm/lstm_cell_2/strided_slice?
lstm/lstm_cell_2/MatMul_4MatMullstm/lstm_cell_2/mul:z:0'lstm/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_4?
lstm/lstm_cell_2/addAddV2!lstm/lstm_cell_2/BiasAdd:output:0#lstm/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add?
lstm/lstm_cell_2/SigmoidSigmoidlstm/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Sigmoid?
!lstm/lstm_cell_2/ReadVariableOp_1ReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm/lstm_cell_2/ReadVariableOp_1?
&lstm/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell_2/strided_slice_1/stack?
(lstm/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm/lstm_cell_2/strided_slice_1/stack_1?
(lstm/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm/lstm_cell_2/strided_slice_1/stack_2?
 lstm/lstm_cell_2/strided_slice_1StridedSlice)lstm/lstm_cell_2/ReadVariableOp_1:value:0/lstm/lstm_cell_2/strided_slice_1/stack:output:01lstm/lstm_cell_2/strided_slice_1/stack_1:output:01lstm/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm/lstm_cell_2/strided_slice_1?
lstm/lstm_cell_2/MatMul_5MatMullstm/lstm_cell_2/mul_1:z:0)lstm/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_5?
lstm/lstm_cell_2/add_1AddV2#lstm/lstm_cell_2/BiasAdd_1:output:0#lstm/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_1?
lstm/lstm_cell_2/Sigmoid_1Sigmoidlstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Sigmoid_1?
lstm/lstm_cell_2/mul_4Mullstm/lstm_cell_2/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_4?
!lstm/lstm_cell_2/ReadVariableOp_2ReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm/lstm_cell_2/ReadVariableOp_2?
&lstm/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2(
&lstm/lstm_cell_2/strided_slice_2/stack?
(lstm/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2*
(lstm/lstm_cell_2/strided_slice_2/stack_1?
(lstm/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm/lstm_cell_2/strided_slice_2/stack_2?
 lstm/lstm_cell_2/strided_slice_2StridedSlice)lstm/lstm_cell_2/ReadVariableOp_2:value:0/lstm/lstm_cell_2/strided_slice_2/stack:output:01lstm/lstm_cell_2/strided_slice_2/stack_1:output:01lstm/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm/lstm_cell_2/strided_slice_2?
lstm/lstm_cell_2/MatMul_6MatMullstm/lstm_cell_2/mul_2:z:0)lstm/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_6?
lstm/lstm_cell_2/add_2AddV2#lstm/lstm_cell_2/BiasAdd_2:output:0#lstm/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_2?
lstm/lstm_cell_2/ReluRelulstm/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Relu?
lstm/lstm_cell_2/mul_5Mullstm/lstm_cell_2/Sigmoid:y:0#lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_5?
lstm/lstm_cell_2/add_3AddV2lstm/lstm_cell_2/mul_4:z:0lstm/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_3?
!lstm/lstm_cell_2/ReadVariableOp_3ReadVariableOp(lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm/lstm_cell_2/ReadVariableOp_3?
&lstm/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2(
&lstm/lstm_cell_2/strided_slice_3/stack?
(lstm/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/lstm_cell_2/strided_slice_3/stack_1?
(lstm/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm/lstm_cell_2/strided_slice_3/stack_2?
 lstm/lstm_cell_2/strided_slice_3StridedSlice)lstm/lstm_cell_2/ReadVariableOp_3:value:0/lstm/lstm_cell_2/strided_slice_3/stack:output:01lstm/lstm_cell_2/strided_slice_3/stack_1:output:01lstm/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm/lstm_cell_2/strided_slice_3?
lstm/lstm_cell_2/MatMul_7MatMullstm/lstm_cell_2/mul_3:z:0)lstm/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/MatMul_7?
lstm/lstm_cell_2/add_4AddV2#lstm/lstm_cell_2/BiasAdd_3:output:0#lstm/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/add_4?
lstm/lstm_cell_2/Sigmoid_2Sigmoidlstm/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Sigmoid_2?
lstm/lstm_cell_2/Relu_1Relulstm/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/Relu_1?
lstm/lstm_cell_2/mul_6Mullstm/lstm_cell_2/Sigmoid_2:y:0%lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/lstm_cell_2/mul_6?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0.lstm_lstm_cell_2_split_readvariableop_resource0lstm_lstm_cell_2_split_1_readvariableop_resource(lstm_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_180568*"
condR
lstm_while_cond_180567*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddf
reshape/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapedense_1/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape/Reshape?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.lstm_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mul?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulw
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp ^lstm/lstm_cell_2/ReadVariableOp"^lstm/lstm_cell_2/ReadVariableOp_1"^lstm/lstm_cell_2/ReadVariableOp_2"^lstm/lstm_cell_2/ReadVariableOp_3:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp&^lstm/lstm_cell_2/split/ReadVariableOp(^lstm/lstm_cell_2/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2B
lstm/lstm_cell_2/ReadVariableOplstm/lstm_cell_2/ReadVariableOp2F
!lstm/lstm_cell_2/ReadVariableOp_1!lstm/lstm_cell_2/ReadVariableOp_12F
!lstm/lstm_cell_2/ReadVariableOp_2!lstm/lstm_cell_2/ReadVariableOp_22F
!lstm/lstm_cell_2/ReadVariableOp_3!lstm/lstm_cell_2/ReadVariableOp_32v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2N
%lstm/lstm_cell_2/split/ReadVariableOp%lstm/lstm_cell_2/split/ReadVariableOp2R
'lstm/lstm_cell_2/split_1/ReadVariableOp'lstm/lstm_cell_2/split_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_178439
input_1L
9sequential_lstm_lstm_cell_2_split_readvariableop_resource:	?J
;sequential_lstm_lstm_cell_2_split_1_readvariableop_resource:	?F
3sequential_lstm_lstm_cell_2_readvariableop_resource:	 ?A
/sequential_dense_matmul_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?*sequential/lstm/lstm_cell_2/ReadVariableOp?,sequential/lstm/lstm_cell_2/ReadVariableOp_1?,sequential/lstm/lstm_cell_2/ReadVariableOp_2?,sequential/lstm/lstm_cell_2/ReadVariableOp_3?0sequential/lstm/lstm_cell_2/split/ReadVariableOp?2sequential/lstm/lstm_cell_2/split_1/ReadVariableOp?sequential/lstm/whilee
sequential/lstm/ShapeShapeinput_1*
T0*
_output_shapes
:2
sequential/lstm/Shape?
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stack?
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1?
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2?
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice|
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/zeros/mul/y?
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
sequential/lstm/zeros/Less/y?
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/Less?
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2 
sequential/lstm/zeros/packed/1?
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/Const?
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential/lstm/zeros?
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/zeros_1/mul/y?
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mul?
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
sequential/lstm/zeros_1/Less/y?
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/Less?
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential/lstm/zeros_1/packed/1?
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packed?
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Const?
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential/lstm/zeros_1?
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
sequential/lstm/transpose/perm?
sequential/lstm/transpose	Transposeinput_1'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential/lstm/transpose
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:2
sequential/lstm/Shape_1?
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_1/stack?
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_1?
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_2?
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
sequential/lstm/strided_slice_1?
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential/lstm/TensorArrayV2/element_shape?
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
sequential/lstm/TensorArrayV2?
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2G
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7sequential/lstm/TensorArrayUnstack/TensorListFromTensor?
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_2/stack?
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_1?
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_2?
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2!
sequential/lstm/strided_slice_2?
+sequential/lstm/lstm_cell_2/ones_like/ShapeShapesequential/lstm/zeros:output:0*
T0*
_output_shapes
:2-
+sequential/lstm/lstm_cell_2/ones_like/Shape?
+sequential/lstm/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+sequential/lstm/lstm_cell_2/ones_like/Const?
%sequential/lstm/lstm_cell_2/ones_likeFill4sequential/lstm/lstm_cell_2/ones_like/Shape:output:04sequential/lstm/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/lstm_cell_2/ones_like?
+sequential/lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential/lstm/lstm_cell_2/split/split_dim?
0sequential/lstm/lstm_cell_2/split/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype022
0sequential/lstm/lstm_cell_2/split/ReadVariableOp?
!sequential/lstm/lstm_cell_2/splitSplit4sequential/lstm/lstm_cell_2/split/split_dim:output:08sequential/lstm/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2#
!sequential/lstm/lstm_cell_2/split?
"sequential/lstm/lstm_cell_2/MatMulMatMul(sequential/lstm/strided_slice_2:output:0*sequential/lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2$
"sequential/lstm/lstm_cell_2/MatMul?
$sequential/lstm/lstm_cell_2/MatMul_1MatMul(sequential/lstm/strided_slice_2:output:0*sequential/lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_1?
$sequential/lstm/lstm_cell_2/MatMul_2MatMul(sequential/lstm/strided_slice_2:output:0*sequential/lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_2?
$sequential/lstm/lstm_cell_2/MatMul_3MatMul(sequential/lstm/strided_slice_2:output:0*sequential/lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_3?
-sequential/lstm/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/lstm/lstm_cell_2/split_1/split_dim?
2sequential/lstm/lstm_cell_2/split_1/ReadVariableOpReadVariableOp;sequential_lstm_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype024
2sequential/lstm/lstm_cell_2/split_1/ReadVariableOp?
#sequential/lstm/lstm_cell_2/split_1Split6sequential/lstm/lstm_cell_2/split_1/split_dim:output:0:sequential/lstm/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2%
#sequential/lstm/lstm_cell_2/split_1?
#sequential/lstm/lstm_cell_2/BiasAddBiasAdd,sequential/lstm/lstm_cell_2/MatMul:product:0,sequential/lstm/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2%
#sequential/lstm/lstm_cell_2/BiasAdd?
%sequential/lstm/lstm_cell_2/BiasAdd_1BiasAdd.sequential/lstm/lstm_cell_2/MatMul_1:product:0,sequential/lstm/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/lstm_cell_2/BiasAdd_1?
%sequential/lstm/lstm_cell_2/BiasAdd_2BiasAdd.sequential/lstm/lstm_cell_2/MatMul_2:product:0,sequential/lstm/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/lstm_cell_2/BiasAdd_2?
%sequential/lstm/lstm_cell_2/BiasAdd_3BiasAdd.sequential/lstm/lstm_cell_2/MatMul_3:product:0,sequential/lstm/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/lstm_cell_2/BiasAdd_3?
sequential/lstm/lstm_cell_2/mulMulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2!
sequential/lstm/lstm_cell_2/mul?
!sequential/lstm/lstm_cell_2/mul_1Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/mul_1?
!sequential/lstm/lstm_cell_2/mul_2Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/mul_2?
!sequential/lstm/lstm_cell_2/mul_3Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/mul_3?
*sequential/lstm/lstm_cell_2/ReadVariableOpReadVariableOp3sequential_lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02,
*sequential/lstm/lstm_cell_2/ReadVariableOp?
/sequential/lstm/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        21
/sequential/lstm/lstm_cell_2/strided_slice/stack?
1sequential/lstm/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1sequential/lstm/lstm_cell_2/strided_slice/stack_1?
1sequential/lstm/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell_2/strided_slice/stack_2?
)sequential/lstm/lstm_cell_2/strided_sliceStridedSlice2sequential/lstm/lstm_cell_2/ReadVariableOp:value:08sequential/lstm/lstm_cell_2/strided_slice/stack:output:0:sequential/lstm/lstm_cell_2/strided_slice/stack_1:output:0:sequential/lstm/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell_2/strided_slice?
$sequential/lstm/lstm_cell_2/MatMul_4MatMul#sequential/lstm/lstm_cell_2/mul:z:02sequential/lstm/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_4?
sequential/lstm/lstm_cell_2/addAddV2,sequential/lstm/lstm_cell_2/BiasAdd:output:0.sequential/lstm/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2!
sequential/lstm/lstm_cell_2/add?
#sequential/lstm/lstm_cell_2/SigmoidSigmoid#sequential/lstm/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2%
#sequential/lstm/lstm_cell_2/Sigmoid?
,sequential/lstm/lstm_cell_2/ReadVariableOp_1ReadVariableOp3sequential_lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,sequential/lstm/lstm_cell_2/ReadVariableOp_1?
1sequential/lstm/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1sequential/lstm/lstm_cell_2/strided_slice_1/stack?
3sequential/lstm/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   25
3sequential/lstm/lstm_cell_2/strided_slice_1/stack_1?
3sequential/lstm/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential/lstm/lstm_cell_2/strided_slice_1/stack_2?
+sequential/lstm/lstm_cell_2/strided_slice_1StridedSlice4sequential/lstm/lstm_cell_2/ReadVariableOp_1:value:0:sequential/lstm/lstm_cell_2/strided_slice_1/stack:output:0<sequential/lstm/lstm_cell_2/strided_slice_1/stack_1:output:0<sequential/lstm/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2-
+sequential/lstm/lstm_cell_2/strided_slice_1?
$sequential/lstm/lstm_cell_2/MatMul_5MatMul%sequential/lstm/lstm_cell_2/mul_1:z:04sequential/lstm/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_5?
!sequential/lstm/lstm_cell_2/add_1AddV2.sequential/lstm/lstm_cell_2/BiasAdd_1:output:0.sequential/lstm/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/add_1?
%sequential/lstm/lstm_cell_2/Sigmoid_1Sigmoid%sequential/lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/lstm_cell_2/Sigmoid_1?
!sequential/lstm/lstm_cell_2/mul_4Mul)sequential/lstm/lstm_cell_2/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/mul_4?
,sequential/lstm/lstm_cell_2/ReadVariableOp_2ReadVariableOp3sequential_lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,sequential/lstm/lstm_cell_2/ReadVariableOp_2?
1sequential/lstm/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   23
1sequential/lstm/lstm_cell_2/strided_slice_2/stack?
3sequential/lstm/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   25
3sequential/lstm/lstm_cell_2/strided_slice_2/stack_1?
3sequential/lstm/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential/lstm/lstm_cell_2/strided_slice_2/stack_2?
+sequential/lstm/lstm_cell_2/strided_slice_2StridedSlice4sequential/lstm/lstm_cell_2/ReadVariableOp_2:value:0:sequential/lstm/lstm_cell_2/strided_slice_2/stack:output:0<sequential/lstm/lstm_cell_2/strided_slice_2/stack_1:output:0<sequential/lstm/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2-
+sequential/lstm/lstm_cell_2/strided_slice_2?
$sequential/lstm/lstm_cell_2/MatMul_6MatMul%sequential/lstm/lstm_cell_2/mul_2:z:04sequential/lstm/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_6?
!sequential/lstm/lstm_cell_2/add_2AddV2.sequential/lstm/lstm_cell_2/BiasAdd_2:output:0.sequential/lstm/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/add_2?
 sequential/lstm/lstm_cell_2/ReluRelu%sequential/lstm/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2"
 sequential/lstm/lstm_cell_2/Relu?
!sequential/lstm/lstm_cell_2/mul_5Mul'sequential/lstm/lstm_cell_2/Sigmoid:y:0.sequential/lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/mul_5?
!sequential/lstm/lstm_cell_2/add_3AddV2%sequential/lstm/lstm_cell_2/mul_4:z:0%sequential/lstm/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/add_3?
,sequential/lstm/lstm_cell_2/ReadVariableOp_3ReadVariableOp3sequential_lstm_lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02.
,sequential/lstm/lstm_cell_2/ReadVariableOp_3?
1sequential/lstm/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   23
1sequential/lstm/lstm_cell_2/strided_slice_3/stack?
3sequential/lstm/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/lstm/lstm_cell_2/strided_slice_3/stack_1?
3sequential/lstm/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential/lstm/lstm_cell_2/strided_slice_3/stack_2?
+sequential/lstm/lstm_cell_2/strided_slice_3StridedSlice4sequential/lstm/lstm_cell_2/ReadVariableOp_3:value:0:sequential/lstm/lstm_cell_2/strided_slice_3/stack:output:0<sequential/lstm/lstm_cell_2/strided_slice_3/stack_1:output:0<sequential/lstm/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2-
+sequential/lstm/lstm_cell_2/strided_slice_3?
$sequential/lstm/lstm_cell_2/MatMul_7MatMul%sequential/lstm/lstm_cell_2/mul_3:z:04sequential/lstm/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2&
$sequential/lstm/lstm_cell_2/MatMul_7?
!sequential/lstm/lstm_cell_2/add_4AddV2.sequential/lstm/lstm_cell_2/BiasAdd_3:output:0.sequential/lstm/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/add_4?
%sequential/lstm/lstm_cell_2/Sigmoid_2Sigmoid%sequential/lstm/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2'
%sequential/lstm/lstm_cell_2/Sigmoid_2?
"sequential/lstm/lstm_cell_2/Relu_1Relu%sequential/lstm/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2$
"sequential/lstm/lstm_cell_2/Relu_1?
!sequential/lstm/lstm_cell_2/mul_6Mul)sequential/lstm/lstm_cell_2/Sigmoid_2:y:00sequential/lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2#
!sequential/lstm/lstm_cell_2/mul_6?
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2/
-sequential/lstm/TensorArrayV2_1/element_shape?
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
sequential/lstm/TensorArrayV2_1n
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/time?
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(sequential/lstm/while/maximum_iterations?
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential/lstm/while/loop_counter?
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:09sequential_lstm_lstm_cell_2_split_readvariableop_resource;sequential_lstm_lstm_cell_2_split_1_readvariableop_resource3sequential_lstm_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!sequential_lstm_while_body_178290*-
cond%R#
!sequential_lstm_while_cond_178289*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential/lstm/while?
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape?
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype024
2sequential/lstm/TensorArrayV2Stack/TensorListStack?
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%sequential/lstm/strided_slice_3/stack?
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential/lstm/strided_slice_3/stack_1?
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_3/stack_2?
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2!
sequential/lstm/strided_slice_3?
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 sequential/lstm/transpose_1/perm?
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
sequential/lstm/transpose_1?
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/runtime?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul(sequential/lstm/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/Relu?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/BiasAdd?
sequential/reshape/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential/reshape/Shape?
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stack?
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1?
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_slice?
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/1?
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/2?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape?
sequential/reshape/ReshapeReshape#sequential/dense_1/BiasAdd:output:0)sequential/reshape/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
sequential/reshape/Reshape?
IdentityIdentity#sequential/reshape/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/lstm/lstm_cell_2/ReadVariableOp-^sequential/lstm/lstm_cell_2/ReadVariableOp_1-^sequential/lstm/lstm_cell_2/ReadVariableOp_2-^sequential/lstm/lstm_cell_2/ReadVariableOp_31^sequential/lstm/lstm_cell_2/split/ReadVariableOp3^sequential/lstm/lstm_cell_2/split_1/ReadVariableOp^sequential/lstm/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/lstm/lstm_cell_2/ReadVariableOp*sequential/lstm/lstm_cell_2/ReadVariableOp2\
,sequential/lstm/lstm_cell_2/ReadVariableOp_1,sequential/lstm/lstm_cell_2/ReadVariableOp_12\
,sequential/lstm/lstm_cell_2/ReadVariableOp_2,sequential/lstm/lstm_cell_2/ReadVariableOp_22\
,sequential/lstm/lstm_cell_2/ReadVariableOp_3,sequential/lstm/lstm_cell_2/ReadVariableOp_32d
0sequential/lstm/lstm_cell_2/split/ReadVariableOp0sequential/lstm/lstm_cell_2/split/ReadVariableOp2h
2sequential/lstm/lstm_cell_2/split_1/ReadVariableOp2sequential/lstm/lstm_cell_2/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
C__inference_dense_1_layer_call_and_return_conditional_losses_179513

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_1/bias/Regularizer/Square/ReadVariableOp?
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
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
!sequential_lstm_while_cond_178289<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1T
Psequential_lstm_while_sequential_lstm_while_cond_178289___redundant_placeholder0T
Psequential_lstm_while_sequential_lstm_while_cond_178289___redundant_placeholder1T
Psequential_lstm_while_sequential_lstm_while_cond_178289___redundant_placeholder2T
Psequential_lstm_while_sequential_lstm_while_cond_178289___redundant_placeholder3"
sequential_lstm_while_identity
?
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: 2
sequential/lstm/while/Less?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: 2 
sequential/lstm/while/Identity"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
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
lstm_while_cond_180264&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_180264___redundant_placeholder0>
:lstm_while_lstm_while_cond_180264___redundant_placeholder1>
:lstm_while_lstm_while_cond_180264___redundant_placeholder2>
:lstm_while_lstm_while_cond_180264___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
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
while_cond_178576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178576___redundant_placeholder04
0while_while_cond_178576___redundant_placeholder14
0while_while_cond_178576___redundant_placeholder24
0while_while_cond_178576___redundant_placeholder3
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

lstm_while_body_180265&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
6lstm_while_lstm_cell_2_split_readvariableop_resource_0:	?G
8lstm_while_lstm_cell_2_split_1_readvariableop_resource_0:	?C
0lstm_while_lstm_cell_2_readvariableop_resource_0:	 ?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
4lstm_while_lstm_cell_2_split_readvariableop_resource:	?E
6lstm_while_lstm_cell_2_split_1_readvariableop_resource:	?A
.lstm_while_lstm_cell_2_readvariableop_resource:	 ???%lstm/while/lstm_cell_2/ReadVariableOp?'lstm/while/lstm_cell_2/ReadVariableOp_1?'lstm/while/lstm_cell_2/ReadVariableOp_2?'lstm/while/lstm_cell_2/ReadVariableOp_3?+lstm/while/lstm_cell_2/split/ReadVariableOp?-lstm/while/lstm_cell_2/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
&lstm/while/lstm_cell_2/ones_like/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell_2/ones_like/Shape?
&lstm/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell_2/ones_like/Const?
 lstm/while/lstm_cell_2/ones_likeFill/lstm/while/lstm_cell_2/ones_like/Shape:output:0/lstm/while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/ones_like?
&lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm/while/lstm_cell_2/split/split_dim?
+lstm/while/lstm_cell_2/split/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02-
+lstm/while/lstm_cell_2/split/ReadVariableOp?
lstm/while/lstm_cell_2/splitSplit/lstm/while/lstm_cell_2/split/split_dim:output:03lstm/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm/while/lstm_cell_2/split?
lstm/while/lstm_cell_2/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/MatMul?
lstm/while/lstm_cell_2/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_1?
lstm/while/lstm_cell_2/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_2?
lstm/while/lstm_cell_2/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_3?
(lstm/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm/while/lstm_cell_2/split_1/split_dim?
-lstm/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02/
-lstm/while/lstm_cell_2/split_1/ReadVariableOp?
lstm/while/lstm_cell_2/split_1Split1lstm/while/lstm_cell_2/split_1/split_dim:output:05lstm/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm/while/lstm_cell_2/split_1?
lstm/while/lstm_cell_2/BiasAddBiasAdd'lstm/while/lstm_cell_2/MatMul:product:0'lstm/while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/while/lstm_cell_2/BiasAdd?
 lstm/while/lstm_cell_2/BiasAdd_1BiasAdd)lstm/while/lstm_cell_2/MatMul_1:product:0'lstm/while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/BiasAdd_1?
 lstm/while/lstm_cell_2/BiasAdd_2BiasAdd)lstm/while/lstm_cell_2/MatMul_2:product:0'lstm/while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/BiasAdd_2?
 lstm/while/lstm_cell_2/BiasAdd_3BiasAdd)lstm/while/lstm_cell_2/MatMul_3:product:0'lstm/while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/BiasAdd_3?
lstm/while/lstm_cell_2/mulMullstm_while_placeholder_2)lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul?
lstm/while/lstm_cell_2/mul_1Mullstm_while_placeholder_2)lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_1?
lstm/while/lstm_cell_2/mul_2Mullstm_while_placeholder_2)lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_2?
lstm/while/lstm_cell_2/mul_3Mullstm_while_placeholder_2)lstm/while/lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_3?
%lstm/while/lstm_cell_2/ReadVariableOpReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02'
%lstm/while/lstm_cell_2/ReadVariableOp?
*lstm/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm/while/lstm_cell_2/strided_slice/stack?
,lstm/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell_2/strided_slice/stack_1?
,lstm/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell_2/strided_slice/stack_2?
$lstm/while/lstm_cell_2/strided_sliceStridedSlice-lstm/while/lstm_cell_2/ReadVariableOp:value:03lstm/while/lstm_cell_2/strided_slice/stack:output:05lstm/while/lstm_cell_2/strided_slice/stack_1:output:05lstm/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm/while/lstm_cell_2/strided_slice?
lstm/while/lstm_cell_2/MatMul_4MatMullstm/while/lstm_cell_2/mul:z:0-lstm/while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_4?
lstm/while/lstm_cell_2/addAddV2'lstm/while/lstm_cell_2/BiasAdd:output:0)lstm/while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add?
lstm/while/lstm_cell_2/SigmoidSigmoidlstm/while/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2 
lstm/while/lstm_cell_2/Sigmoid?
'lstm/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm/while/lstm_cell_2/ReadVariableOp_1?
,lstm/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell_2/strided_slice_1/stack?
.lstm/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm/while/lstm_cell_2/strided_slice_1/stack_1?
.lstm/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm/while/lstm_cell_2/strided_slice_1/stack_2?
&lstm/while/lstm_cell_2/strided_slice_1StridedSlice/lstm/while/lstm_cell_2/ReadVariableOp_1:value:05lstm/while/lstm_cell_2/strided_slice_1/stack:output:07lstm/while/lstm_cell_2/strided_slice_1/stack_1:output:07lstm/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm/while/lstm_cell_2/strided_slice_1?
lstm/while/lstm_cell_2/MatMul_5MatMul lstm/while/lstm_cell_2/mul_1:z:0/lstm/while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_5?
lstm/while/lstm_cell_2/add_1AddV2)lstm/while/lstm_cell_2/BiasAdd_1:output:0)lstm/while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_1?
 lstm/while/lstm_cell_2/Sigmoid_1Sigmoid lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/Sigmoid_1?
lstm/while/lstm_cell_2/mul_4Mul$lstm/while/lstm_cell_2/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_4?
'lstm/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm/while/lstm_cell_2/ReadVariableOp_2?
,lstm/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm/while/lstm_cell_2/strided_slice_2/stack?
.lstm/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm/while/lstm_cell_2/strided_slice_2/stack_1?
.lstm/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm/while/lstm_cell_2/strided_slice_2/stack_2?
&lstm/while/lstm_cell_2/strided_slice_2StridedSlice/lstm/while/lstm_cell_2/ReadVariableOp_2:value:05lstm/while/lstm_cell_2/strided_slice_2/stack:output:07lstm/while/lstm_cell_2/strided_slice_2/stack_1:output:07lstm/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm/while/lstm_cell_2/strided_slice_2?
lstm/while/lstm_cell_2/MatMul_6MatMul lstm/while/lstm_cell_2/mul_2:z:0/lstm/while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_6?
lstm/while/lstm_cell_2/add_2AddV2)lstm/while/lstm_cell_2/BiasAdd_2:output:0)lstm/while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_2?
lstm/while/lstm_cell_2/ReluRelu lstm/while/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/Relu?
lstm/while/lstm_cell_2/mul_5Mul"lstm/while/lstm_cell_2/Sigmoid:y:0)lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_5?
lstm/while/lstm_cell_2/add_3AddV2 lstm/while/lstm_cell_2/mul_4:z:0 lstm/while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_3?
'lstm/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm/while/lstm_cell_2/ReadVariableOp_3?
,lstm/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm/while/lstm_cell_2/strided_slice_3/stack?
.lstm/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm/while/lstm_cell_2/strided_slice_3/stack_1?
.lstm/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm/while/lstm_cell_2/strided_slice_3/stack_2?
&lstm/while/lstm_cell_2/strided_slice_3StridedSlice/lstm/while/lstm_cell_2/ReadVariableOp_3:value:05lstm/while/lstm_cell_2/strided_slice_3/stack:output:07lstm/while/lstm_cell_2/strided_slice_3/stack_1:output:07lstm/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm/while/lstm_cell_2/strided_slice_3?
lstm/while/lstm_cell_2/MatMul_7MatMul lstm/while/lstm_cell_2/mul_3:z:0/lstm/while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_7?
lstm/while/lstm_cell_2/add_4AddV2)lstm/while/lstm_cell_2/BiasAdd_3:output:0)lstm/while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_4?
 lstm/while/lstm_cell_2/Sigmoid_2Sigmoid lstm/while/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/Sigmoid_2?
lstm/while/lstm_cell_2/Relu_1Relu lstm/while/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/Relu_1?
lstm/while/lstm_cell_2/mul_6Mul$lstm/while/lstm_cell_2/Sigmoid_2:y:0+lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_6?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder lstm/while/lstm_cell_2/mul_6:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identity lstm/while/lstm_cell_2/mul_6:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm/while/Identity_4?
lstm/while/Identity_5Identity lstm/while/lstm_cell_2/add_3:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm/while/Identity_5?
lstm/while/NoOpNoOp&^lstm/while/lstm_cell_2/ReadVariableOp(^lstm/while/lstm_cell_2/ReadVariableOp_1(^lstm/while/lstm_cell_2/ReadVariableOp_2(^lstm/while/lstm_cell_2/ReadVariableOp_3,^lstm/while/lstm_cell_2/split/ReadVariableOp.^lstm/while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm/while/NoOp"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"b
.lstm_while_lstm_cell_2_readvariableop_resource0lstm_while_lstm_cell_2_readvariableop_resource_0"r
6lstm_while_lstm_cell_2_split_1_readvariableop_resource8lstm_while_lstm_cell_2_split_1_readvariableop_resource_0"n
4lstm_while_lstm_cell_2_split_readvariableop_resource6lstm_while_lstm_cell_2_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2N
%lstm/while/lstm_cell_2/ReadVariableOp%lstm/while/lstm_cell_2/ReadVariableOp2R
'lstm/while/lstm_cell_2/ReadVariableOp_1'lstm/while/lstm_cell_2/ReadVariableOp_12R
'lstm/while/lstm_cell_2/ReadVariableOp_2'lstm/while/lstm_cell_2/ReadVariableOp_22R
'lstm/while/lstm_cell_2/ReadVariableOp_3'lstm/while/lstm_cell_2/ReadVariableOp_32Z
+lstm/while/lstm_cell_2/split/ReadVariableOp+lstm/while/lstm_cell_2/split/ReadVariableOp2^
-lstm/while/lstm_cell_2/split_1/ReadVariableOp-lstm/while/lstm_cell_2/split_1/ReadVariableOp: 
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
?Q
?
@__inference_lstm_layer_call_and_return_conditional_losses_178949

inputs%
lstm_cell_2_178861:	?!
lstm_cell_2_178863:	?%
lstm_cell_2_178865:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?#lstm_cell_2/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_178861lstm_cell_2_178863lstm_cell_2_178865*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1787962%
#lstm_cell_2/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_178861lstm_cell_2_178863lstm_cell_2_178865*
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
while_body_178874*
condR
while_cond_178873*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_2_178861*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
,__inference_lstm_cell_2_layer_call_fn_182031

inputs
states_0
states_1
unknown:	?
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1787962
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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
A__inference_dense_layer_call_and_return_conditional_losses_179491

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
?*
?
F__inference_sequential_layer_call_and_return_conditional_losses_179974

inputs
lstm_179943:	?
lstm_179945:	?
lstm_179947:	 ?
dense_179950:  
dense_179952:  
dense_1_179955: 
dense_1_179957:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?.dense_1/bias/Regularizer/Square/ReadVariableOp?lstm/StatefulPartitionedCall?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_179943lstm_179945lstm_179947*
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1799102
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_179950dense_179952*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1794912
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_179955dense_1_179957*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1795132!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_1795322
reshape/PartitionedCall?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_179943*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mul?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_179957*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp^lstm/StatefulPartitionedCall:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_lstm_layer_call_fn_180789
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
identity??StatefulPartitionedCall?
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1789492
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
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?R
?
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182112

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
?u
?
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182225

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed???)*
seed2??e2&
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
seed???)*
seed2??M2(
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
seed???)*
seed2???2(
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
seed???)*
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
_
C__inference_reshape_layer_call_and_return_conditional_losses_179532

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
@__inference_lstm_layer_call_and_return_conditional_losses_181054
inputs_0<
)lstm_cell_2_split_readvariableop_resource:	?:
+lstm_cell_2_split_1_readvariableop_resource:	?6
#lstm_cell_2_readvariableop_resource:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_2/ReadVariableOp?lstm_cell_2/ReadVariableOp_1?lstm_cell_2/ReadVariableOp_2?lstm_cell_2/ReadVariableOp_3? lstm_cell_2/split/ReadVariableOp?"lstm_cell_2/split_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_2/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/ones_like|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_2/split/ReadVariableOp?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/split?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul?
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_1?
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_2?
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_3?
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim?
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/split_1/ReadVariableOp?
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_2/split_1?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd?
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_1?
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_2?
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_3?
lstm_cell_2/mulMulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul?
lstm_cell_2/mul_1Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1?
lstm_cell_2/mul_2Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/mul_3Mulzeros:output:0lstm_cell_2/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp?
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack?
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice/stack_1?
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2?
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice?
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul:z:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_4?
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add|
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_1?
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice_1/stack?
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_2/strided_slice_1/stack_1?
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2?
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1?
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_1:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_5?
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_4Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_4?
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_2?
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_2/strided_slice_2/stack?
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_2/strided_slice_2/stack_1?
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2?
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2?
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_2:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_6?
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_2u
lstm_cell_2/ReluRelulstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_5Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_5?
lstm_cell_2/add_3AddV2lstm_cell_2/mul_4:z:0lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_3?
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_3?
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_2/strided_slice_3/stack?
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1?
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2?
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3?
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_3:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_7?
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_4?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_6Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
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
while_body_180921*
condR
while_cond_180920*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?

lstm_while_body_180568&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
6lstm_while_lstm_cell_2_split_readvariableop_resource_0:	?G
8lstm_while_lstm_cell_2_split_1_readvariableop_resource_0:	?C
0lstm_while_lstm_cell_2_readvariableop_resource_0:	 ?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
4lstm_while_lstm_cell_2_split_readvariableop_resource:	?E
6lstm_while_lstm_cell_2_split_1_readvariableop_resource:	?A
.lstm_while_lstm_cell_2_readvariableop_resource:	 ???%lstm/while/lstm_cell_2/ReadVariableOp?'lstm/while/lstm_cell_2/ReadVariableOp_1?'lstm/while/lstm_cell_2/ReadVariableOp_2?'lstm/while/lstm_cell_2/ReadVariableOp_3?+lstm/while/lstm_cell_2/split/ReadVariableOp?-lstm/while/lstm_cell_2/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
&lstm/while/lstm_cell_2/ones_like/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell_2/ones_like/Shape?
&lstm/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell_2/ones_like/Const?
 lstm/while/lstm_cell_2/ones_likeFill/lstm/while/lstm_cell_2/ones_like/Shape:output:0/lstm/while/lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/ones_like?
$lstm/while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm/while/lstm_cell_2/dropout/Const?
"lstm/while/lstm_cell_2/dropout/MulMul)lstm/while/lstm_cell_2/ones_like:output:0-lstm/while/lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm/while/lstm_cell_2/dropout/Mul?
$lstm/while/lstm_cell_2/dropout/ShapeShape)lstm/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell_2/dropout/Shape?
;lstm/while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell_2/dropout/random_uniform/RandomUniform?
-lstm/while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm/while/lstm_cell_2/dropout/GreaterEqual/y?
+lstm/while/lstm_cell_2/dropout/GreaterEqualGreaterEqualDlstm/while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:06lstm/while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm/while/lstm_cell_2/dropout/GreaterEqual?
#lstm/while/lstm_cell_2/dropout/CastCast/lstm/while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm/while/lstm_cell_2/dropout/Cast?
$lstm/while/lstm_cell_2/dropout/Mul_1Mul&lstm/while/lstm_cell_2/dropout/Mul:z:0'lstm/while/lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell_2/dropout/Mul_1?
&lstm/while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2(
&lstm/while/lstm_cell_2/dropout_1/Const?
$lstm/while/lstm_cell_2/dropout_1/MulMul)lstm/while/lstm_cell_2/ones_like:output:0/lstm/while/lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell_2/dropout_1/Mul?
&lstm/while/lstm_cell_2/dropout_1/ShapeShape)lstm/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell_2/dropout_1/Shape?
=lstm/while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=lstm/while/lstm_cell_2/dropout_1/random_uniform/RandomUniform?
/lstm/while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/lstm/while/lstm_cell_2/dropout_1/GreaterEqual/y?
-lstm/while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualFlstm/while/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-lstm/while/lstm_cell_2/dropout_1/GreaterEqual?
%lstm/while/lstm_cell_2/dropout_1/CastCast1lstm/while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%lstm/while/lstm_cell_2/dropout_1/Cast?
&lstm/while/lstm_cell_2/dropout_1/Mul_1Mul(lstm/while/lstm_cell_2/dropout_1/Mul:z:0)lstm/while/lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&lstm/while/lstm_cell_2/dropout_1/Mul_1?
&lstm/while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2(
&lstm/while/lstm_cell_2/dropout_2/Const?
$lstm/while/lstm_cell_2/dropout_2/MulMul)lstm/while/lstm_cell_2/ones_like:output:0/lstm/while/lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell_2/dropout_2/Mul?
&lstm/while/lstm_cell_2/dropout_2/ShapeShape)lstm/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell_2/dropout_2/Shape?
=lstm/while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=lstm/while/lstm_cell_2/dropout_2/random_uniform/RandomUniform?
/lstm/while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/lstm/while/lstm_cell_2/dropout_2/GreaterEqual/y?
-lstm/while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualFlstm/while/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-lstm/while/lstm_cell_2/dropout_2/GreaterEqual?
%lstm/while/lstm_cell_2/dropout_2/CastCast1lstm/while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%lstm/while/lstm_cell_2/dropout_2/Cast?
&lstm/while/lstm_cell_2/dropout_2/Mul_1Mul(lstm/while/lstm_cell_2/dropout_2/Mul:z:0)lstm/while/lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&lstm/while/lstm_cell_2/dropout_2/Mul_1?
&lstm/while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2(
&lstm/while/lstm_cell_2/dropout_3/Const?
$lstm/while/lstm_cell_2/dropout_3/MulMul)lstm/while/lstm_cell_2/ones_like:output:0/lstm/while/lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm/while/lstm_cell_2/dropout_3/Mul?
&lstm/while/lstm_cell_2/dropout_3/ShapeShape)lstm/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell_2/dropout_3/Shape?
=lstm/while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??	2?
=lstm/while/lstm_cell_2/dropout_3/random_uniform/RandomUniform?
/lstm/while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/lstm/while/lstm_cell_2/dropout_3/GreaterEqual/y?
-lstm/while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualFlstm/while/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-lstm/while/lstm_cell_2/dropout_3/GreaterEqual?
%lstm/while/lstm_cell_2/dropout_3/CastCast1lstm/while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%lstm/while/lstm_cell_2/dropout_3/Cast?
&lstm/while/lstm_cell_2/dropout_3/Mul_1Mul(lstm/while/lstm_cell_2/dropout_3/Mul:z:0)lstm/while/lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&lstm/while/lstm_cell_2/dropout_3/Mul_1?
&lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm/while/lstm_cell_2/split/split_dim?
+lstm/while/lstm_cell_2/split/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_2_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02-
+lstm/while/lstm_cell_2/split/ReadVariableOp?
lstm/while/lstm_cell_2/splitSplit/lstm/while/lstm_cell_2/split/split_dim:output:03lstm/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm/while/lstm_cell_2/split?
lstm/while/lstm_cell_2/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/MatMul?
lstm/while/lstm_cell_2/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_1?
lstm/while/lstm_cell_2/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_2?
lstm/while/lstm_cell_2/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0%lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_3?
(lstm/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(lstm/while/lstm_cell_2/split_1/split_dim?
-lstm/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02/
-lstm/while/lstm_cell_2/split_1/ReadVariableOp?
lstm/while/lstm_cell_2/split_1Split1lstm/while/lstm_cell_2/split_1/split_dim:output:05lstm/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2 
lstm/while/lstm_cell_2/split_1?
lstm/while/lstm_cell_2/BiasAddBiasAdd'lstm/while/lstm_cell_2/MatMul:product:0'lstm/while/lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2 
lstm/while/lstm_cell_2/BiasAdd?
 lstm/while/lstm_cell_2/BiasAdd_1BiasAdd)lstm/while/lstm_cell_2/MatMul_1:product:0'lstm/while/lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/BiasAdd_1?
 lstm/while/lstm_cell_2/BiasAdd_2BiasAdd)lstm/while/lstm_cell_2/MatMul_2:product:0'lstm/while/lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/BiasAdd_2?
 lstm/while/lstm_cell_2/BiasAdd_3BiasAdd)lstm/while/lstm_cell_2/MatMul_3:product:0'lstm/while/lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/BiasAdd_3?
lstm/while/lstm_cell_2/mulMullstm_while_placeholder_2(lstm/while/lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul?
lstm/while/lstm_cell_2/mul_1Mullstm_while_placeholder_2*lstm/while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_1?
lstm/while/lstm_cell_2/mul_2Mullstm_while_placeholder_2*lstm/while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_2?
lstm/while/lstm_cell_2/mul_3Mullstm_while_placeholder_2*lstm/while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_3?
%lstm/while/lstm_cell_2/ReadVariableOpReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02'
%lstm/while/lstm_cell_2/ReadVariableOp?
*lstm/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm/while/lstm_cell_2/strided_slice/stack?
,lstm/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell_2/strided_slice/stack_1?
,lstm/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell_2/strided_slice/stack_2?
$lstm/while/lstm_cell_2/strided_sliceStridedSlice-lstm/while/lstm_cell_2/ReadVariableOp:value:03lstm/while/lstm_cell_2/strided_slice/stack:output:05lstm/while/lstm_cell_2/strided_slice/stack_1:output:05lstm/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm/while/lstm_cell_2/strided_slice?
lstm/while/lstm_cell_2/MatMul_4MatMullstm/while/lstm_cell_2/mul:z:0-lstm/while/lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_4?
lstm/while/lstm_cell_2/addAddV2'lstm/while/lstm_cell_2/BiasAdd:output:0)lstm/while/lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add?
lstm/while/lstm_cell_2/SigmoidSigmoidlstm/while/lstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2 
lstm/while/lstm_cell_2/Sigmoid?
'lstm/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm/while/lstm_cell_2/ReadVariableOp_1?
,lstm/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell_2/strided_slice_1/stack?
.lstm/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm/while/lstm_cell_2/strided_slice_1/stack_1?
.lstm/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm/while/lstm_cell_2/strided_slice_1/stack_2?
&lstm/while/lstm_cell_2/strided_slice_1StridedSlice/lstm/while/lstm_cell_2/ReadVariableOp_1:value:05lstm/while/lstm_cell_2/strided_slice_1/stack:output:07lstm/while/lstm_cell_2/strided_slice_1/stack_1:output:07lstm/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm/while/lstm_cell_2/strided_slice_1?
lstm/while/lstm_cell_2/MatMul_5MatMul lstm/while/lstm_cell_2/mul_1:z:0/lstm/while/lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_5?
lstm/while/lstm_cell_2/add_1AddV2)lstm/while/lstm_cell_2/BiasAdd_1:output:0)lstm/while/lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_1?
 lstm/while/lstm_cell_2/Sigmoid_1Sigmoid lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/Sigmoid_1?
lstm/while/lstm_cell_2/mul_4Mul$lstm/while/lstm_cell_2/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_4?
'lstm/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm/while/lstm_cell_2/ReadVariableOp_2?
,lstm/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm/while/lstm_cell_2/strided_slice_2/stack?
.lstm/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm/while/lstm_cell_2/strided_slice_2/stack_1?
.lstm/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm/while/lstm_cell_2/strided_slice_2/stack_2?
&lstm/while/lstm_cell_2/strided_slice_2StridedSlice/lstm/while/lstm_cell_2/ReadVariableOp_2:value:05lstm/while/lstm_cell_2/strided_slice_2/stack:output:07lstm/while/lstm_cell_2/strided_slice_2/stack_1:output:07lstm/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm/while/lstm_cell_2/strided_slice_2?
lstm/while/lstm_cell_2/MatMul_6MatMul lstm/while/lstm_cell_2/mul_2:z:0/lstm/while/lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_6?
lstm/while/lstm_cell_2/add_2AddV2)lstm/while/lstm_cell_2/BiasAdd_2:output:0)lstm/while/lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_2?
lstm/while/lstm_cell_2/ReluRelu lstm/while/lstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/Relu?
lstm/while/lstm_cell_2/mul_5Mul"lstm/while/lstm_cell_2/Sigmoid:y:0)lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_5?
lstm/while/lstm_cell_2/add_3AddV2 lstm/while/lstm_cell_2/mul_4:z:0 lstm/while/lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_3?
'lstm/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp0lstm_while_lstm_cell_2_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm/while/lstm_cell_2/ReadVariableOp_3?
,lstm/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm/while/lstm_cell_2/strided_slice_3/stack?
.lstm/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm/while/lstm_cell_2/strided_slice_3/stack_1?
.lstm/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm/while/lstm_cell_2/strided_slice_3/stack_2?
&lstm/while/lstm_cell_2/strided_slice_3StridedSlice/lstm/while/lstm_cell_2/ReadVariableOp_3:value:05lstm/while/lstm_cell_2/strided_slice_3/stack:output:07lstm/while/lstm_cell_2/strided_slice_3/stack_1:output:07lstm/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm/while/lstm_cell_2/strided_slice_3?
lstm/while/lstm_cell_2/MatMul_7MatMul lstm/while/lstm_cell_2/mul_3:z:0/lstm/while/lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2!
lstm/while/lstm_cell_2/MatMul_7?
lstm/while/lstm_cell_2/add_4AddV2)lstm/while/lstm_cell_2/BiasAdd_3:output:0)lstm/while/lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/add_4?
 lstm/while/lstm_cell_2/Sigmoid_2Sigmoid lstm/while/lstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm/while/lstm_cell_2/Sigmoid_2?
lstm/while/lstm_cell_2/Relu_1Relu lstm/while/lstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/Relu_1?
lstm/while/lstm_cell_2/mul_6Mul$lstm/while/lstm_cell_2/Sigmoid_2:y:0+lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm/while/lstm_cell_2/mul_6?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder lstm/while/lstm_cell_2/mul_6:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identity lstm/while/lstm_cell_2/mul_6:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm/while/Identity_4?
lstm/while/Identity_5Identity lstm/while/lstm_cell_2/add_3:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm/while/Identity_5?
lstm/while/NoOpNoOp&^lstm/while/lstm_cell_2/ReadVariableOp(^lstm/while/lstm_cell_2/ReadVariableOp_1(^lstm/while/lstm_cell_2/ReadVariableOp_2(^lstm/while/lstm_cell_2/ReadVariableOp_3,^lstm/while/lstm_cell_2/split/ReadVariableOp.^lstm/while/lstm_cell_2/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm/while/NoOp"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"b
.lstm_while_lstm_cell_2_readvariableop_resource0lstm_while_lstm_cell_2_readvariableop_resource_0"r
6lstm_while_lstm_cell_2_split_1_readvariableop_resource8lstm_while_lstm_cell_2_split_1_readvariableop_resource_0"n
4lstm_while_lstm_cell_2_split_readvariableop_resource6lstm_while_lstm_cell_2_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2N
%lstm/while/lstm_cell_2/ReadVariableOp%lstm/while/lstm_cell_2/ReadVariableOp2R
'lstm/while/lstm_cell_2/ReadVariableOp_1'lstm/while/lstm_cell_2/ReadVariableOp_12R
'lstm/while/lstm_cell_2/ReadVariableOp_2'lstm/while/lstm_cell_2/ReadVariableOp_22R
'lstm/while/lstm_cell_2/ReadVariableOp_3'lstm/while/lstm_cell_2/ReadVariableOp_32Z
+lstm/while/lstm_cell_2/split/ReadVariableOp+lstm/while/lstm_cell_2/split/ReadVariableOp2^
-lstm/while/lstm_cell_2/split_1/ReadVariableOp-lstm/while/lstm_cell_2/split_1/ReadVariableOp: 
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
?
?
(__inference_dense_1_layer_call_fn_181946

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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1795132
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
?	
?
+__inference_sequential_layer_call_fn_180155

inputs
unknown:	?
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
GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1799742
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
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
lstm_while_cond_180567&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_180567___redundant_placeholder0>
:lstm_while_lstm_while_cond_180567___redundant_placeholder1>
:lstm_while_lstm_while_cond_180567___redundant_placeholder2>
:lstm_while_lstm_while_cond_180567___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
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
while_cond_181470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181470___redundant_placeholder04
0while_while_cond_181470___redundant_placeholder14
0while_while_cond_181470___redundant_placeholder24
0while_while_cond_181470___redundant_placeholder3
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
while_cond_181745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181745___redundant_placeholder04
0while_while_cond_181745___redundant_placeholder14
0while_while_cond_181745___redundant_placeholder24
0while_while_cond_181745___redundant_placeholder3
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
@__inference_lstm_layer_call_and_return_conditional_losses_181361
inputs_0<
)lstm_cell_2_split_readvariableop_resource:	?:
+lstm_cell_2_split_1_readvariableop_resource:	?6
#lstm_cell_2_readvariableop_resource:	 ?
identity??9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_2/ReadVariableOp?lstm_cell_2/ReadVariableOp_1?lstm_cell_2/ReadVariableOp_2?lstm_cell_2/ReadVariableOp_3? lstm_cell_2/split/ReadVariableOp?"lstm_cell_2/split_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_2/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_2/ones_like/Const?
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout/Const?
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Mul?
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shape?
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??22
0lstm_cell_2/dropout/random_uniform/RandomUniform?
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_2/dropout/GreaterEqual/y?
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_2/dropout/GreaterEqual?
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Cast?
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_1/Const?
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Mul?
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shape?
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ޠ?24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform?
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_1/GreaterEqual/y?
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_1/GreaterEqual?
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Cast?
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_2/Const?
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Mul?
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shape?
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ͯ24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform?
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_2/GreaterEqual/y?
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_2/GreaterEqual?
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Cast?
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_2/dropout_3/Const?
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Mul?
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shape?
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform?
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_2/dropout_3/GreaterEqual/y?
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_2/dropout_3/GreaterEqual?
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Cast?
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/dropout_3/Mul_1|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim?
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_2/split/ReadVariableOp?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_2/split?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0lstm_cell_2/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul?
lstm_cell_2/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_2/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_1?
lstm_cell_2/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_2/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_2?
lstm_cell_2/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_2/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_3?
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim?
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_2/split_1/ReadVariableOp?
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_2/split_1?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd?
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_1?
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_2?
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/BiasAdd_3?
lstm_cell_2/mulMulzeros:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul?
lstm_cell_2/mul_1Mulzeros:output:0lstm_cell_2/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_1?
lstm_cell_2/mul_2Mulzeros:output:0lstm_cell_2/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_2?
lstm_cell_2/mul_3Mulzeros:output:0lstm_cell_2/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_3?
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp?
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack?
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice/stack_1?
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2?
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice?
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul:z:0"lstm_cell_2/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_4?
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add|
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid?
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_1?
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_2/strided_slice_1/stack?
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_2/strided_slice_1/stack_1?
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2?
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1?
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_1:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_5?
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_1?
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_1?
lstm_cell_2/mul_4Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_4?
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_2?
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_2/strided_slice_2/stack?
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_2/strided_slice_2/stack_1?
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2?
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2?
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_2:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_6?
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_2u
lstm_cell_2/ReluRelulstm_cell_2/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu?
lstm_cell_2/mul_5Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_5?
lstm_cell_2/add_3AddV2lstm_cell_2/mul_4:z:0lstm_cell_2/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_3?
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_2/ReadVariableOp_3?
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_2/strided_slice_3/stack?
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1?
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2?
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3?
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_3:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/MatMul_7?
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/add_4?
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Sigmoid_2y
lstm_cell_2/Relu_1Relulstm_cell_2/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/Relu_1?
lstm_cell_2/mul_6Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_2/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
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
while_body_181196*
condR
while_cond_181195*K
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?*
?
F__inference_sequential_layer_call_and_return_conditional_losses_180078
input_1
lstm_180047:	?
lstm_180049:	?
lstm_180051:	 ?
dense_180054:  
dense_180056:  
dense_1_180059: 
dense_1_180061:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?.dense_1/bias/Regularizer/Square/ReadVariableOp?lstm/StatefulPartitionedCall?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
lstm/StatefulPartitionedCallStatefulPartitionedCallinput_1lstm_180047lstm_180049lstm_180051*
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1799102
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_180054dense_180056*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1794912
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_180059dense_1_180061*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1795132!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_1795322
reshape/PartitionedCall?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_180047*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mul?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_180061*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp^lstm/StatefulPartitionedCall:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?*
?
F__inference_sequential_layer_call_and_return_conditional_losses_180044
input_1
lstm_180013:	?
lstm_180015:	?
lstm_180017:	 ?
dense_180020:  
dense_180022:  
dense_1_180025: 
dense_1_180027:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?.dense_1/bias/Regularizer/Square/ReadVariableOp?lstm/StatefulPartitionedCall?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
lstm/StatefulPartitionedCallStatefulPartitionedCallinput_1lstm_180013lstm_180015lstm_180017*
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
GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_1794722
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_180020dense_180022*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1794912
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_180025dense_1_180027*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1795132!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_1795322
reshape/PartitionedCall?
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_180013*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/mul?
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_180027*
_output_shapes
:*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp?
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_1/bias/Regularizer/Square?
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const?
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum?
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2 
dense_1/bias/Regularizer/mul/x?
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp^lstm/StatefulPartitionedCall:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?u
?
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_178796

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed???)*
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
seed???)*
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
seed???)*
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
seed???)*
seed2??2(
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp?
*lstm/lstm_cell_2/kernel/Regularizer/SquareSquareAlstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2,
*lstm/lstm_cell_2/kernel/Regularizer/Square?
)lstm/lstm_cell_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)lstm/lstm_cell_2/kernel/Regularizer/Const?
'lstm/lstm_cell_2/kernel/Regularizer/SumSum.lstm/lstm_cell_2/kernel/Regularizer/Square:y:02lstm/lstm_cell_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/Sum?
)lstm/lstm_cell_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82+
)lstm/lstm_cell_2/kernel/Regularizer/mul/x?
'lstm/lstm_cell_2/kernel/Regularizer/mulMul2lstm/lstm_cell_2/kernel/Regularizer/mul/x:output:00lstm/lstm_cell_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'lstm/lstm_cell_2/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3:^lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32v
9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp9lstm/lstm_cell_2/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?%
?
while_body_178874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_2_178898_0:	?)
while_lstm_cell_2_178900_0:	?-
while_lstm_cell_2_178902_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_2_178898:	?'
while_lstm_cell_2_178900:	?+
while_lstm_cell_2_178902:	 ???)while/lstm_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_178898_0while_lstm_cell_2_178900_0while_lstm_cell_2_178902_0*
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
GPU 2J 8? *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_1787962+
)while/lstm_cell_2/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_178898while_lstm_cell_2_178898_0"6
while_lstm_cell_2_178900while_lstm_cell_2_178900_0"6
while_lstm_cell_2_178902while_lstm_cell_2_178902_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
A__inference_dense_layer_call_and_return_conditional_losses_181931

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_14
serving_default_input_1:0??????????
reshape4
StatefulPartitionedCall:0?????????tensorflow/serving/predict:̀
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
regularization_losses
	variables
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
trainable_variables
regularization_losses
	variables
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
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
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
'
k0"
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
?
)non_trainable_variables
trainable_variables
*metrics
+layer_metrics

,layers
-layer_regularization_losses
regularization_losses
	variables
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
'
o0"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
?
3non_trainable_variables

4states
trainable_variables
5metrics
6layer_metrics

7layers
8layer_regularization_losses
regularization_losses
	variables
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
:  2dense/kernel
: 2
dense/bias
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
9non_trainable_variables
	variables
trainable_variables
:metrics
;layer_metrics

<layers
regularization_losses
=layer_regularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_1/kernel
:2dense_1/bias
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
>non_trainable_variables
	variables
trainable_variables
?metrics
@layer_metrics

Alayers
regularization_losses
Blayer_regularization_losses
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
Cnon_trainable_variables
	variables
trainable_variables
Dmetrics
Elayer_metrics

Flayers
regularization_losses
Glayer_regularization_losses
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
*:(	?2lstm/lstm_cell_2/kernel
4:2	 ?2!lstm/lstm_cell_2/recurrent_kernel
$:"?2lstm/lstm_cell_2/bias
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
Inon_trainable_variables
/	variables
0trainable_variables
Jmetrics
Klayer_metrics

Llayers
1regularization_losses
Mlayer_regularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
#:!  2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:# 2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
/:-	?2Adam/lstm/lstm_cell_2/kernel/m
9:7	 ?2(Adam/lstm/lstm_cell_2/recurrent_kernel/m
):'?2Adam/lstm/lstm_cell_2/bias/m
#:!  2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:# 2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
/:-	?2Adam/lstm/lstm_cell_2/kernel/v
9:7	 ?2(Adam/lstm/lstm_cell_2/recurrent_kernel/v
):'?2Adam/lstm/lstm_cell_2/bias/v
?2?
+__inference_sequential_layer_call_fn_179564
+__inference_sequential_layer_call_fn_180136
+__inference_sequential_layer_call_fn_180155
+__inference_sequential_layer_call_fn_180010?
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
!__inference__wrapped_model_178439input_1"?
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
F__inference_sequential_layer_call_and_return_conditional_losses_180426
F__inference_sequential_layer_call_and_return_conditional_losses_180761
F__inference_sequential_layer_call_and_return_conditional_losses_180044
F__inference_sequential_layer_call_and_return_conditional_losses_180078?
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
?2?
%__inference_lstm_layer_call_fn_180778
%__inference_lstm_layer_call_fn_180789
%__inference_lstm_layer_call_fn_180800
%__inference_lstm_layer_call_fn_180811?
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
@__inference_lstm_layer_call_and_return_conditional_losses_181054
@__inference_lstm_layer_call_and_return_conditional_losses_181361
@__inference_lstm_layer_call_and_return_conditional_losses_181604
@__inference_lstm_layer_call_and_return_conditional_losses_181911?
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
&__inference_dense_layer_call_fn_181920?
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
A__inference_dense_layer_call_and_return_conditional_losses_181931?
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
(__inference_dense_1_layer_call_fn_181946?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_181962?
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
(__inference_reshape_layer_call_fn_181967?
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
C__inference_reshape_layer_call_and_return_conditional_losses_181980?
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
__inference_loss_fn_0_181991?
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
$__inference_signature_wrapper_180117input_1"?
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
,__inference_lstm_cell_2_layer_call_fn_182014
,__inference_lstm_cell_2_layer_call_fn_182031?
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
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182112
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182225?
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
__inference_loss_fn_1_182236?
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
!__inference__wrapped_model_178439v&('4?1
*?'
%?"
input_1?????????
? "5?2
0
reshape%?"
reshape??????????
C__inference_dense_1_layer_call_and_return_conditional_losses_181962\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_1_layer_call_fn_181946O/?,
%?"
 ?
inputs????????? 
? "???????????
A__inference_dense_layer_call_and_return_conditional_losses_181931\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? y
&__inference_dense_layer_call_fn_181920O/?,
%?"
 ?
inputs????????? 
? "?????????? ;
__inference_loss_fn_0_181991?

? 
? "? ;
__inference_loss_fn_1_182236&?

? 
? "? ?
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182112?&('??}
v?s
 ?
inputs?????????
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
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_182225?&('??}
v?s
 ?
inputs?????????
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
,__inference_lstm_cell_2_layer_call_fn_182014?&('??}
v?s
 ?
inputs?????????
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
,__inference_lstm_cell_2_layer_call_fn_182031?&('??}
v?s
 ?
inputs?????????
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
@__inference_lstm_layer_call_and_return_conditional_losses_181054}&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0????????? 
? ?
@__inference_lstm_layer_call_and_return_conditional_losses_181361}&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0????????? 
? ?
@__inference_lstm_layer_call_and_return_conditional_losses_181604m&('??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0????????? 
? ?
@__inference_lstm_layer_call_and_return_conditional_losses_181911m&('??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0????????? 
? ?
%__inference_lstm_layer_call_fn_180778p&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "?????????? ?
%__inference_lstm_layer_call_fn_180789p&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "?????????? ?
%__inference_lstm_layer_call_fn_180800`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
%__inference_lstm_layer_call_fn_180811`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
C__inference_reshape_layer_call_and_return_conditional_losses_181980\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? {
(__inference_reshape_layer_call_fn_181967O/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_sequential_layer_call_and_return_conditional_losses_180044r&('<?9
2?/
%?"
input_1?????????
p 

 
? ")?&
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_180078r&('<?9
2?/
%?"
input_1?????????
p

 
? ")?&
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_180426q&(';?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_180761q&(';?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
+__inference_sequential_layer_call_fn_179564e&('<?9
2?/
%?"
input_1?????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_180010e&('<?9
2?/
%?"
input_1?????????
p

 
? "???????????
+__inference_sequential_layer_call_fn_180136d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_180155d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_180117?&('??<
? 
5?2
0
input_1%?"
input_1?????????"5?2
0
reshape%?"
reshape?????????